unit DashboardSalesData2SQL;

interface

uses
  ReportBaseObj, Classes;

Type
  TDashboardSalesData2 = Class(TReportBase)
  private
  protected
  public
    constructor Create; override;
    function PopulateReportSQL(SQL: TStrings; var msg: string): Boolean; override;
  published

  End;

implementation

uses CommonLib, SysUtils, DateUtils, ERPDbComponents, JSONObject, CommonDbLib, MySQLConst,
      ProfitAndLossSQL, LogLib;
{ TPartClass }

constructor TDashboardSalesData2.Create;
begin
  inherited;
 end;

function TDashboardSalesData2.PopulateReportSQL(SQL: TStrings; var msg: string): boolean;
begin
  Result := inherited;

  SQL.Clear;
  SQL.Add('SELECT * FROM tmp_vs1_dashboard_sales_set2');
end;

initialization
  RegisterClass(TDashboardSalesData2);

end.
