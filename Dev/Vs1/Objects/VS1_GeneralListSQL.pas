unit VS1_GeneralListSQL;

interface

uses
  ReportBaseObj, Classes;

Type
  TJobVS1List = Class(TReportWithDateRangeBase)
  private
  protected
  public
    constructor Create; override;
    function PopulateReportSQL(SQL: TStrings; var msg: string): boolean; override;

  End;

  TSupplierVS1List = Class(TReportWithDateRangeBase)
  private
  protected
  public
    constructor Create; override;
    function PopulateReportSQL(SQL: TStrings; var msg: string): boolean; override;

  End;

implementation

uses CommonLib, SysUtils, DateUtils, ERPDbComponents, JSONObject, CommonDbLib, MySQLConst,
      ProfitAndLossSQL, LogLib, PQALib, ProductQtyLib, tcConst, busobjStockMovement, LogUtils;


{ TJobVS1List }

constructor TJobVS1List.Create;
begin
  inherited;
  DateFrom := MinDateTime;
  DateTo := MaxDateTime;
end;

function TJobVS1List.PopulateReportSQL(SQL: TStrings; var msg: String): Boolean;
begin
  Result := inherited;

  SQL.Clear;
  SQL.Add('SELECT *');
  SQL.Add('FROM tblClients');
  SQL.Add('WHERE IsJob="T"');
  SQL.Add('AND PublishOnVS1="T"');

  if Search <> '' then SQL.Add(' AND ' + Search);

  if OrderBy <> '' then SQL.Add('ORDER BY ' + OrderBy);

end;

{ TSupplierVS1List }

constructor TSupplierVS1List.Create;
begin
  inherited;
  DateFrom := MinDateTime;
  DateTo := MaxDateTime;
end;

function TSupplierVS1List.PopulateReportSQL(SQL: TStrings; var msg: String): Boolean;
begin
  Result := inherited;

  SQL.Clear;
  SQL.Add('SELECT *');
  SQL.Add('FROM tblClients');
  SQL.Add('WHERE Supplier = "T"');
  SQL.Add('AND PublishOnVS1="T"');

  if Search <> '' then SQL.Add(' AND ' + Search);

  if OrderBy <> '' then SQL.Add('ORDER BY ' + OrderBy);

end;


initialization
  RegisterClass(TJobVS1List);
  RegisterClass(TSupplierVS1List);

end.
