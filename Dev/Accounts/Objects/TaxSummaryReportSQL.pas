unit TaxSummaryReportSQL;

interface

uses
  ERPDbComponents, DAScript, SysUtils, classes, Types, DB, ReportBaseObj;

type
  TTaxSummaryReport = class(TReportWithDateRangeBase)
  private
    fAccountingMethod: String;
    fDepartmentID: Integer;
    fReportGuiForm: TObject;
    fShowNT: Boolean;
    procedure CreateTemporyTable;

  protected
  public
    TempTableName: String;
    constructor Create; override;
    destructor Destroy; override;
    function PopulateReportSQL(SQL: TStrings; var msg: String): Boolean; override;
    function PopulateTemporyTable(var msg: String): Boolean;
    property ReportGuiForm: TObject read fReportGuiForm write fReportGuiForm;

  published
    property AccountingMethod: String read fAccountingMethod write fAccountingMethod;
    property DepartmentID: Integer read fDepartmentID write fDepartmentID;
    property ShowNT: Boolean read fShowNT write fShowNT;
  end;


implementation

uses
  AppEnvironment, DnMLib, TempTableUtils, CommonDbLib, CommonLib, MySQLConst,
  CashBasis, forms, LogLib;

{ TTaxSummaryReport }

constructor TTaxSummaryReport.Create;
begin
  inherited;
  fReportGuiForm := nil;
  fDepartmentID := 0;
  fAccountingMethod := AppEnv.CompanyPrefs.DefaultAccountingMethod;
  DateFrom := StartOfTheQuarter(Now);
  DateTo := EndOfTheQuarter(Now);
  TempTableName := UniqueTableName('TaxSummaryReport');
  fShowNT := False;
  CreateTemporyTable;
end;

procedure TTaxSummaryReport.CreateTemporyTable;
var
  cmd: TERPCommand;
begin
  cmd := TERPCommand.Create(nil);
  try
    cmd.Connection := CommonDbLib.GetSharedMyDacConnection;
    cmd.SQL.Text := 'DROP TABLE IF EXISTS ' + TempTableName;
    cmd.Execute;

    cmd.SQL.Clear;
    cmd.SQL.Add('CREATE TABLE ' + TempTableName + ' (');
    cmd.SQL.Add(' ID                INT(11) NOT NULL AUTO_INCREMENT,');
    cmd.SQL.Add(' TaxCode           VARCHAR(50) NOT NULL ,');
    cmd.SQL.Add(' TaxRate           DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' INPUT_AmountEx    DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' INPUT_AmountInc   DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' OUTPUT_AmountEx   DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' OUTPUT_AmountInc  DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' TotalNet          DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' TotalTax          DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' TotalTax1         DOUBLE NOT NULL default 0,');
    cmd.SQL.Add(' PRIMARY KEY (ID)) ENGINE=MyISAM;');
    cmd.Execute;
  finally
    cmd.Free;
  end;
end;

destructor TTaxSummaryReport.Destroy;
begin
  DestroyUserTemporaryTable(TempTableName);
  inherited;
end;

function TTaxSummaryReport.PopulateReportSQL(SQL: TStrings; var msg: String): Boolean;
begin
  Result := inherited;
  if not Self.PopulateTemporyTable(msg) then begin
    Result := False;
    Exit;
  end;

  SQL.Clear;
  SQL.Add('SELECT ID, TaxCode, TaxRate, SUM(INPUT_AmountEx) AS INPUT_AmountEx, SUM(INPUT_AmountInc) AS INPUT_AmountInc, ' +
          'SUM(OUTPUT_AmountEx) AS OUTPUT_AmountEx, SUM(OUTPUT_AmountInc) AS OUTPUT_AmountInc, SUM(TotalNet) AS TotalNet, SUM(TotalTax) AS TotalTax, SUM(TotalTax1) AS TotalTax1');
  SQL.Add('FROM ' + TempTableName);
  SQL.Add('GROUP BY TaxCode');
end;

function TTaxSummaryReport.PopulateTemporyTable(var msg: string): boolean;
var
  scr: TERPScript;
  DebitsField: string;
  CreditsField: string;
  DebitsIncField: string;
  CreditsIncField: string;
begin
  result := True;
  scr := TERPScript.Create(nil);
  try
    scr.Connection := CommonDbLib.GetSharedMyDacConnection;
    scr.SQL.Add('TRUNCATE ' + TempTableName + ';');

    if SameText(AccountingMethod, 'Accrual') then begin
      DebitsField := 'DebitsEx';
      CreditsField := 'CreditsEx';
      DebitsIncField := 'DebitsInc';
      CreditsIncField := 'CreditsInc';

      scr.SQL.Add('INSERT INTO ' + TempTableName +
        '(TaxCode,' +
        'TaxRate,' +
        'INPUT_AmountEx,' +
        'INPUT_AmountInc,' +
        'OUTPUT_AmountEx,' +
        'OUTPUT_AmountInc) ');
      scr.SQL.Add('SELECT ');
      scr.SQL.Add('TaxCode,');
      scr.SQL.Add('IF(TaxCode = "WET", 0, TaxRate) AS TaxRate, ');
      scr.SQL.Add('0.00 AS INPUT_AmountEx, ');
      scr.SQL.Add('0.00 AS INPUT_AmountInc, ');
      scr.SQL.Add('ROUND(SUM(' + CreditsField + '-' + DebitsField + '),' + intTostr(CommonLib.CurrencyRoundPlaces) + ') AS OUTPUT_AmountEx, ');
      scr.SQL.Add('ROUND(SUM(' + CreditsIncField + '-' + DebitsIncField + '),' + intTostr(CommonLib.CurrencyRoundPlaces) + ') AS OUTPUT_AmountInc ');
      scr.SQL.Add('FROM tbltransactions ');
      scr.SQL.Add('LEFT JOIN tblgeneraljournal ON (SaleID = GJID AND Type = "Journal Entry" ) ');
      scr.SQL.Add('WHERE (TaxCode <> "" AND NOT ISNULL(TaxCode)) ');
      if not ShowNT then
        scr.SQL.Add('AND (TaxCode <> "NT")');
      scr.SQL.Add('AND (AccountName <> "Tax Paid" AND AccountName <> "Tax Collected") ');
      scr.SQL.Add('AND (Type = "Invoice" OR Type = "Refund" OR Type = "Cash Sale" OR Type = "Journal Entry") ');
      scr.SQL.Add('AND (tblgeneraljournal.TaxSelect <> "INPUT" OR ISNULL(tblgeneraljournal.TaxSelect)) ');
      scr.SQL.Add('AND ('+inttostr(DepartmentID)+'=0 Or ClassID = ' + IntToStr(DepartmentID) + ') ');
      scr.SQL.Add('AND Date Between "' + FormatDateTime(MysqlDatetimeFormat,DateFrom) + '"  AND "' + FormatDateTime(MysqlDatetimeFormat, DateTo) + '"  ');
      scr.SQL.Add('Group by TaxCode ');

      scr.SQL.Add('UNION ALL ');

      scr.SQL.Add('SELECT ');
      scr.SQL.Add('TaxCode,');
      scr.SQL.Add('IF(TaxCode = "WET", 0, TaxRate) AS TaxRate, ');
      scr.SQL.Add('ROUND(SUM(' + DebitsField + '-' + CreditsField + '), ' + intTostr(CommonLib.CurrencyRoundPlaces)+') AS INPUT_AmountEx, ');
      scr.SQL.Add('ROUND(SUM(' + DebitsIncField + '-' + CreditsIncField + '), ' + intTostr(CommonLib.CurrencyRoundPlaces)+') AS INPUT_AmountInc, ');
      scr.SQL.Add('0.00 AS OUTPUT_AmountEx, ');
      scr.SQL.Add('0.00 AS OUTPUT_AmountInc ');
      scr.SQL.Add('FROM tbltransactions ');
      scr.SQL.Add('LEFT JOIN tblgeneraljournal ON (SaleID = GJID AND Type = "Journal Entry" ) ');
      scr.SQL.Add('WHERE (char_length(Taxcode)>0) ');
      if not ShowNT then
        scr.SQL.Add('AND (TaxCode <> "NT")');
      scr.SQL.Add('AND ('+inttostr(DepartmentID)+'=0 OR ClassID = ' + IntToStr(DepartmentID) + ') ');
      scr.SQL.Add('AND (AccountName <> "Tax Paid" AND AccountName <> "Tax Collected") ');
      scr.SQL.Add('AND not(Type = "Invoice" OR Type = "Refund" OR Type = "Cash Sale") ');
      scr.SQL.Add('AND (tblgeneraljournal.TaxSelect <> "OUTPUT" OR ISNULL(tblgeneraljournal.TaxSelect)) ');
      scr.SQL.Add('AND Date Between "' + FormatDateTime(MysqlDatetimeFormat, DateFrom) + '"  AND "' + FormatDateTime(MysqlDatetimeFormat, DateTo) + '"  ');
      scr.SQL.Add('GROUP BY TaxCode  ');
      scr.SQL.Add('ORDER BY TaxCode ;');

      LogText(scr.SQL.Text);

    end
    else if SameText(AccountingMethod, 'Cash') then begin
      DebitsField := 'CASH_DebitsEx';
      CreditsField := 'CASH_CreditsEx';
      DebitsIncField := 'CASH_DebitsInc';
      CreditsIncField := 'CASH_CreditsInc';

      If CashBasis.IsCashBasisTransSummarised(TForm(ReportGuiForm), DateFrom, DateTo) then Begin
        result := false;
        msg := 'Required Cash Basis Transaction Are Summarised.';
        Exit;
      end;

      CashBasis.PrepareCashBasisDetails(DateFrom, DateTo, 'TaxSummary');

      scr.SQL.Add('INSERT INTO ' + TempTableName +
        '(TaxCode,' +
        'TaxRate,' +
        'INPUT_AmountEx,' +
        'INPUT_AmountInc,' +
        'OUTPUT_AmountEx,' +
        'OUTPUT_AmountInc) ');
      scr.SQL.Add('select ');
      scr.SQL.Add('TaxCode, ');
      scr.SQL.Add('Rate as TaxRate, ');
      scr.SQL.Add('IF(TaxType = "INPUT", TaxableAmountEx, 0.00) as INPUT_AmountEx, ');
      scr.SQL.Add('IF(TaxType = "INPUT", TaxableAmountInc, 0.00) as INPUT_AmountInc, ');
      scr.SQL.Add('IF(TaxType = "OUTPUT", TaxableAmountEx, 0.00) as OUTPUT_AmountEx, ');
      scr.SQL.Add('IF(TaxType = "OUTPUT", TaxableAmountInc, 0.00) as OUTPUT_AmountInc ');
      scr.Sql.Add('FROM ' + CashBasis.CashBasisReturnTempTableName('TaxSummary') + ' T ');
      scr.Sql.Add('INNER JOIN tbltaxcodes ON tbltaxcodes.Name=T.TaxCode AND RegionID= '+IntToStr(AppEnv.RegionalOptions.ID)+'');
      if not ShowNT then
        scr.SQL.Add('WHERE (TaxCode <> "NT")');
      scr.Sql.Add('ORDER BY TaxCode; ');

    end
    else
      raise Exception.Create('Invalid Accounting Method - "' + AccountingMethod + '"');

    scr.Sql.Add('UPDATE ' + TempTableName);
    scr.Sql.Add('SET TotalTax = (INPUT_AmountInc + OUTPUT_AmountInc) - (INPUT_AmountEx + OUTPUT_AmountEx);');

    scr.Sql.Add('UPDATE ' + TempTableName);
    scr.Sql.Add('SET TotalNet = INPUT_AmountInc - OUTPUT_AmountInc;');

    scr.Sql.Add('UPDATE ' + TempTableName);
    scr.Sql.Add('SET TotalTax1 = INPUT_AmountEx - OUTPUT_AmountEx * TaxRate;');

    scr.Execute;

  finally
    scr.Free;
  end;
end;

initialization
  RegisterClass(TTaxSummaryReport);

end.
