unit SupplierReportSQL;

interface

uses
  ReportBaseObj, Classes;

Type
  TSupplierReport = Class(TReportWithDateRangeBase)
  private
    fBasePurchaseOn: Boolean;

  protected
  public
    constructor Create; override;
    function PopulateReportSQL(SQL: TStrings; var msg: string): boolean; override;

  published
    property BasePurchaseOn: Boolean    read fBasePurchaseOn    write fBasePurchaseOn;

  End;

implementation

uses CommonLib, SysUtils, DateUtils, ERPDbComponents, JSONObject, CommonDbLib, MySQLConst,
      ProfitAndLossSQL, LogLib, PQALib, ProductQtyLib, tcConst, busobjStockMovement, LogUtils;

constructor TSupplierReport.Create;
begin
  inherited;
  DateFrom := MinDateTime;
  DateTo := Now;
end;

function TSupplierReport.PopulateReportSQL(SQL: TStrings; var msg: string): boolean;
var
  sDateFrom, sDateTo: String;
  sPurchaseOn: String;
begin
  Result := inherited;

  sDateFrom := FormatDateTime(MysqlDatetimeFormat, DateFrom);
  sDateTo := FormatDateTime(MysqlDatetimeFormat, DateTo);

  if fBasePurchaseOn then sPurchaseOn := 'T'
  else sPurchaseOn := 'F';

  SQL.Clear;
  SQL.Add('SELECT');
  SQL.Add('tblpurchaseorders.SupplierName as HCompany,');
  SQL.Add('Space(50) as Company,');
  SQL.Add('If(tblpurchaseorders.IsBill="T","Bill",If(tblpurchaseorders.IsPO="T","Purchase Order",If(tblpurchaseorders.IsCredit="T","Credit","Return Authority"))) AS HType,');
  SQL.Add('If(tblpurchaseorders.IsBill="T","Bill",If(tblpurchaseorders.IsPO="T","Purchase Order",If(tblpurchaseorders.IsCredit="T","Credit","Return Authority"))) AS Type,');
  SQL.Add('tblpurchaseorders.OrderDate as OrderDate,');
  SQL.Add('tblpurchaseorders.DueDate as DueDate,');
  SQL.Add('tblpurchaseorders.InvoiceDate as InvoiceDate,');
  SQL.Add('tblpurchaseorders.SupplierName as Name,');
  SQL.Add('tblpurchaseorders.GlobalRef as "Global #" ,');
  SQL.Add('tblpurchaseorders.OriginalNo as "Original #",');
  SQL.Add('tblpurchaseorders.PurchaseOrderNumber as "Purchase Order Number" ,');
  SQL.Add('tblpurchaseorders.InvoiceNumber as "Invoice Number",');
  SQL.Add('If(IsCredit="T",-tblpurchaseorders.TotalAmount,tblpurchaseorders.TotalAmount) as "Total Amount (Ex)",');
  SQL.Add('If(IsCredit="T",-tblpurchaseorders.TotalAmountInc,tblpurchaseorders.TotalAmountInc) as "Total Amount (Inc)" ,');
  SQL.Add('tblpurchaseorders.Comments as "Comments",');
  SQL.Add('tblpurchaseorders.SalesComments as "WareHouse Notes",');
  SQL.Add('tblpurchaseorders.PurchaseOrderID as PurchaseOrderID,');
  SQL.Add('tblpurchaseorders.ClientID,');
  SQL.Add('2 as Details');
  SQL.Add('FROM tblpurchaseorders');
  SQL.Add('INNER JOIN tblpurchaselines USING(PurchaseOrderID)');
  SQL.Add('LEFT JOIN tblClients  ON  tblpurchaseorders.ClientID = tblClients.ClientID');
  SQL.Add('WHERE (IsBill ="T" OR IsPO ="T" OR IsRA ="T" OR IsCredit ="T")');
  SQL.Add('AND ((' + QuotedStr(sPurchaseOn) + ' = "F" AND OrderDate BETWEEN ' + QuotedStr(sDateFrom) + ' AND ' + QuotedStr(sDateTo) + ')');
  SQL.Add('OR (' + QuotedStr(sPurchaseOn) + ' = "T" and InvoiceDate BETWEEN ' + QuotedStr(sDateFrom) + ' AND ' + QuotedStr(sDateTo) + '))');

  SQL.Add('AND tblpurchaseorders.Deleted<>"T"');
  SQL.Add('GROUP BY tblpurchaseorders.ClientID,tblpurchaseorders.PurchaseOrderID');

  SQL.Add('UNION ALL');

  SQL.Add('SELECT');
  SQL.Add('tblpurchaseorders.SupplierName as HCompany,');
  SQL.Add('"" as Company,');
  SQL.Add('If(tblpurchaseorders.IsBill="T","Bill",If(tblpurchaseorders.IsPO="T","Purchase Order",If(tblpurchaseorders.IsCredit="T","Credit","Return Authority"))) as HType,');
  SQL.Add('If(tblpurchaseorders.IsBill="T","Bill",If(tblpurchaseorders.IsPO="T","Purchase Order",If(tblpurchaseorders.IsCredit="T","Credit","Return Authority"))) as Type,');
  SQL.Add('Null as OrderDate,');
  SQL.Add('Null as DueDate,');
  SQL.Add('NULL as InvoiceDate,');
  SQL.Add('tblpurchaseorders.SupplierName AS Name,');
  SQL.Add('"" AS "Global #" ,');
  SQL.Add('"" AS "Original #",');
  SQL.Add('"" AS "Purchase Order Number" ,');
  SQL.Add('"" AS "Invoice Number",');
  SQL.Add('Sum( If(IsCredit="T",-tblpurchaseorders.TotalAmount,tblpurchaseorders.TotalAmount) ) AS "Total Amount (Ex)",');
  SQL.Add('Sum( If(IsCredit="T",-tblpurchaseorders.TotalAmountInc,tblpurchaseorders.TotalAmountInc) ) AS "Total Amount (Inc)",');
  SQL.Add('"" AS "Comments",');
  SQL.Add('"" AS "WareHouse Notes",');
  SQL.Add('NULL AS PurchaseOrderID,');
  SQL.Add('NULL AS ClientID,');
  SQL.Add('1 AS Details');
  SQL.Add('FROM tblpurchaseorders');
  SQL.Add('LEFT JOIN tblClients  ON  tblpurchaseorders.SupplierName = tblClients.Company');
  SQL.Add('WHERE (IsBill ="T" OR IsPO ="T" OR IsRA ="T" OR IsCredit ="T")');
  SQL.Add('AND ((' + QuotedStr(sPurchaseOn) + ' = "F" and OrderDate BETWEEN ' + QuotedStr(sDateFrom) + ' AND ' + QuotedStr(sDateTo) + ')');;
  SQL.Add('or (' + QuotedStr(sPurchaseOn) + ' = "T" and InvoiceDate BETWEEN ' + QuotedStr(sDateFrom) + ' AND ' + QuotedStr(sDateTo) + '))');
  SQL.Add('AND tblpurchaseorders.Deleted<>"T"');
  SQL.Add('GROUP BY tblpurchaseorders.ClientID,tblpurchaseorders.PurchaseOrderID,tblpurchaseorders.IsBill,tblpurchaseorders.IsPO,tblpurchaseorders.IsCredit,tblpurchaseorders.IsRA');

  SQL.Add('UNION ALL');

  SQL.Add('SELECT');
  SQL.Add('tblpurchaseorders.SupplierName AS HCompany,');
  SQL.Add('tblpurchaseorders.SupplierName AS Company,');
  SQL.Add('"" AS HType,');
  SQL.Add('"" AS Type,');
  SQL.Add('NULL AS OrderDate,');
  SQL.Add('NULL AS DueDate,');
  SQL.Add('NULL AS InvoiceDate,');
  SQL.Add('tblpurchaseorders.SupplierName AS Name,');
  SQL.Add('Space(50) AS "Global #" ,');
  SQL.Add('Space(50) AS "Original #",');
  SQL.Add('Space(50) AS "Purchase Order Number" ,');
  SQL.Add('Space(50) AS "Invoice Number",');
  SQL.Add('Sum( If(IsCredit="T",-tblpurchaseorders.TotalAmount,tblpurchaseorders.TotalAmount) ) AS "Total Amount (Ex)",');
  SQL.Add('Sum( If(IsCredit="T",-tblpurchaseorders.TotalAmountInc,tblpurchaseorders.TotalAmountInc) ) AS "Total Amount (Inc)",');
  SQL.Add('Space(50) AS "Comments",');
  SQL.Add('Space(50) AS "WareHouse Notes",');
  SQL.Add('NULL AS PurchaseOrderID,');
  SQL.Add('NULL AS ClientID,');
  SQL.Add('0 AS Details');
  SQL.Add('FROM tblpurchaseorders');
  SQL.Add('LEFT JOIN tblClients  ON  tblpurchaseorders.SupplierName = tblClients.Company');
  SQL.Add('WHERE (IsBill ="T" OR IsPO ="T" OR IsRA ="T" OR IsCredit ="T")');
  SQL.Add('And ((' + QuotedStr(sPurchaseOn) + ' = "F" and OrderDate BETWEEN ' + QuotedStr(sDateFrom) + ' AND ' + QuotedStr(sDateTo) + ')');;
  SQL.Add('or (' + QuotedStr(sPurchaseOn) + ' = "T" and InvoiceDate BETWEEN ' + QuotedStr(sDateFrom) + ' AND ' + QuotedStr(sDateTo) + '))');

  SQL.Add('AND tblpurchaseorders.Deleted<>"T"');
  SQL.Add('GROUP BY tblpurchaseorders.ClientID');
  if Search <> '' then SQL.Add(' AND ' + Search);
  SQL.Add('ORDER BY HCompany, HType, ClientID,OrderDate, Name, Details');
  if OrderBy <> '' then SQL.Add(', ' + OrderBy);

end;

initialization
  RegisterClass(TSupplierReport);

end.
