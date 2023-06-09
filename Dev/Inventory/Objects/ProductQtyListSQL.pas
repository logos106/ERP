unit ProductQtyListSQL;

interface

uses
  classes, ReportBaseObj;

Type

  TProductQtyList = class(TReportWithDateRangeBase)
  private
    fCountSOBOInAvailable: Boolean;
    fProductIDs: String;
    fSelectedClassID: Integer;

  protected

  public
    constructor Create; Override;
    function PopulateReportSQL(SQL: TStrings; var msg: string): boolean; override;

  published
    property ProductIDs:            String    read fProductIDs              write fProductIDs;
    property CountSOBOInAvailable:  Boolean   read fCountSOBOInAvailable    write fCountSOBOInAvailable;
    property SelectedClassID:       Integer   read fSelectedClassID         write fSelectedClassID;
  end;

implementation

uses sysutils, ProductQtyLib, StringUtils, PQALib, tcConst, SystemLib;

constructor TProductQtyList.Create;
begin
  inherited;
  DateFrom := MinDateTime;
  DateTo := MaxDateTime;

  fCountSOBOInAvailable := False;
  fProductIDs := '';
  fSelectedClassID := 0;
end;

function TProductQtyList.PopulateReportSQL(SQL: TStrings; var msg: string): boolean;
  function ReplaceAlias(AClause: string): string;
  var
    STemp: string;
  begin
    STemp := AClause;
    STemp := ReplaceStr(STemp, 'True', '"T"');
    STemp := ReplaceStr(STemp, 'False', '"F"');
    Result := STemp;
  end;
begin
  SQL.Clear;
  Result := inherited;

  SQL.Add('SELECT ');
  SQL.Add('P.PARTNAME         AS ProductName, ');
  SQL.Add('P.ProductPrintName AS ProductPrintName, ');
  SQL.Add('P.MultipleBins     AS MultipleBins,');
  SQL.Add('P.batch            AS batch,');
  SQL.Add('P.SNTracking       AS SNTracking,');
  SQL.Add('LandedCost         AS LandedCost, ');
  SQL.Add('P.PARTTYPE         AS ProductTypeCode, ');
  SQL.Add('PARTSDESCRIPTION   AS SalesDescription,');
  SQL.Add('PURCHASEDESC       AS PurchaseDescription,');
  SQL.Add('COSTINC1           AS CostIncA,');
  SQL.Add('PRICEINC1          AS PriceIncA,');
  SQL.Add('COST1              AS CostExA,');
  SQL.Add('PRICE1             AS PriceExA,');
  SQL.Add('PRODUCTCODE        AS PRODUCTCODE,');
  SQL.Add('P.TAXCODE          AS TAXCODE,');
  SQL.Add('PURCHTAXCODE       AS PurchaseTaxcode,');
  SQL.Add('P.Active           AS Active,');
  SQL.Add('P.PARTSID          AS PARTSID,');
  SQL.Add('P.BARCODE          AS BARCODE,');
  SQL.Add('P.CUSTFLD1         AS CUSTFLD1,');
  SQL.Add('P.CUSTFLD2         AS CUSTFLD2,');
  SQL.Add('P.CUSTFLD3         AS CUSTFLD3,');
  SQL.Add('P.CUSTFLD4         AS CUSTFLD4,');
  SQL.Add('P.CUSTFLD5         AS CUSTFLD5,');
  SQL.Add('P.CUSTFLD6         AS CUSTFLD6,');
  SQL.Add('P.CUSTFLD7         AS CUSTFLD7,');
  SQL.Add('P.CUSTFLD8         AS CUSTFLD8,');
  SQL.Add('P.CUSTFLD9         AS CUSTFLD9,');
  SQL.Add('P.CUSTFLD10         AS CUSTFLD10,');
  SQL.Add('P.CUSTFLD11         AS CUSTFLD11,');
  SQL.Add('P.CUSTFLD12         AS CUSTFLD12,');
  SQL.Add('P.CUSTFLD13         AS CUSTFLD13,');
  SQL.Add('P.CUSTFLD14         AS CUSTFLD14,');
  SQL.Add('P.CUSTFLD15         AS CUSTFLD15,');
  SQL.Add('AvgCost            AS AvgCost,');
  SQL.Add('INCOMEACCNT        AS IncomeAccount,');
  SQL.Add('ASSETACCNT         AS AssetAccount,');
  SQL.Add('COGSACCNT          AS CostofGoodsSoldAccount,');
  SQL.Add('P.PREFEREDSUPP     AS PreferedSupplier, ');
  SQL.Add('ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tSOBO) + ',0.0),' + IntToStr(tcConst.GeneralRoundPlaces)+') AS SOBackOrders, ');
  if fCountSOBOInAvailable then
    SQL.Add('ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tAvailable) + ' - ' +
        ProductQtylib.SQL4QtyAsOnDate(DateTo, tSoBo) +', 0.0), ' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS "Available", ')
  else
    SQL.Add('Round(IF(P.PARTTYPE = "INV", ' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tAvailable ) + ',0.0),' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS "Available",');
  SQL.Add( 'ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tInstock)    + ', 0.0), ' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS InStock, ');
  SQL.Add( 'ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tSO)         + ', 0.0), ' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS AllocatedSO, ');
  SQL.Add( 'ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tInvBO)      + ', 0.0), ' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS AllocatedBO, ');
  SQL.Add( 'ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tPOBO)       + ', 0.0), ' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS OnOrder, ');
  SQL.Add( 'ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tOnBuild)    + ', 0.0), ' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS OnBuild, ');
  SQL.Add( 'ROUND(IF(P.PARTTYPE = "INV",' + ProductQtylib.SQL4QtyAsOnDate(DateTo, tBuilding)   + ', 0.0), ' + IntToStr(tcConst.GeneralRoundPlaces) + ') AS Building ');
  SQL.Add('FROM ' + ProductTables(tProductList));
  SQL.Add('WHERE char_length(P.PARTNAME) > 0 AND NOT ISNULL(P.PARTNAME) ');
  if fProductIDs <> '' then SQL.Add(' AND P.partsID IN ( ' + fProductIDs + ')' );
  if fSelectedClassID <> 0 then SQL.Add(' AND PC.ClassID = ' + IntToStr(fSelectedClassID ));
  SQL.Add('GROUP BY P.PARTSID ');

//  SQL.Add('SELECT P.*, IFNULL(Q.AvailableQty, 0) AS AvailableQty, IFNULL(Q.AllocatedBOQty, 0) AS AllocatedBOQty, IFNULL(Q.SOQty, 0) AS SOQty, IFNULL(Q.SOBOQty, 0) AS SOBOQty, IFNULL(Q.InstockQty, 0) AS InstockQty, IFNULL(Q.POBOQty, 0) AS POBOQty');
//  SQL.Add('FROM tblproductclasses C LEFT JOIN tblparts P ON C.ProductID=P.PARTSID');
//  SQL.Add('LEFT JOIN');
//  SQL.Add('(SELECT DISTINCT PQA.ProductID, PQA.DepartmentID,');
//  SQL.Add('SUM(IF(PQA.Active="F", 0, IF(PQA.alloctype="IN" AND PQA.ISBo="F", IFNULL(PQA.QTY, 0), IF(PQA.alloctype="OUT" AND (PQA.TransType <> "TSalesOrderLine" OR PQA.ISBO="F"), 0 - IFNULL(PQA.QTY, 0), 0)))) AS AvailableQty,');
//  SQL.Add('SUM(IF(PQA.Active="F", 0, IF(PQA.TransType="TInvoiceLine" AND PQA.IsBO ="T", 0, IFNULL(PQA.Qty, 0)))) AS AllocatedBOQty,');
//  SQL.Add('SUM(IF(PQA.Active="F", 0, IF(PQA.TransType="TSalesOrderLine" AND PQA.IsBO ="F", IFNULL(PQA.QTY, 0), 0))) AS SOQty,');
//  SQL.Add('SUM(IF(PQA.Active="F", 0, IF(PQA.TransType="TSalesOrderLine" AND PQA.IsBO ="T", 0, IFNULL(PQA.Qty, 0)))) AS SOBOQty,');
//  SQL.Add('SUM(IF(PQA.TransType="TSalesOrderLine" OR PQA.IsBO ="T",0,if(PQA.alloctype="IN", IFNULL(PQA.QTY,0), 0-ifnull(PQA.QTY, 0)))) AS InstockQty,');
//  SQL.Add('SUM(IF(PQA.Active="F", 0, IF(PQA.TransType="TPurchaseOrderLine" AND PQA.IsBO ="T", 0, IFNULL(PQA.Qty, 0)))) AS POBOQty');
//  SQL.Add('FROM tblPQA AS PQA');
//  SQL.Add('WHERE PQA.TransDate BETWEEN ' + DateFromSQL + ' AND ' + DateToSQL);
//  SQL.Add('GROUP BY PQA.ProductID, PQA.DepartmentID) Q');
//  SQL.Add('ON C.ProductID = Q.ProductID AND C.ClassID=Q.DepartmentID');
//
//  if not (Search = '') then
//    SQL.Add('AND P.' + ReplaceAlias(Search));
//
//  if not (OrderBy = '') then
//    SQL.Add('ORDER BY P.' + OrderBy);

end;

initialization

   RegisterClass(TProductQtyList);

end.
