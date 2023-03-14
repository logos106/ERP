inherited RapPrescriberTypeListDetailsGUI: TRapPrescriberTypeListDetailsGUI
  Left = 219
  Top = 260
  Caption = 'Prescriber Type List'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited FooterPanel: TPanel
    Color = 14144187
  end
  inherited HeaderPanel: TPanel
    Color = 14144187
    inherited lblFrom: TLabel
      Visible = False
    end
    inherited lblTo: TLabel
      Visible = False
    end
    inherited pnlHeader: TPanel
      Caption = 'Prescriber Type List'
    end
    inherited Panel2: TPanel
      inherited grpFilters: TRadioGroup
        Left = 671
        Width = 327
        Align = alRight
        ItemIndex = 0
        Items.Strings = (
          'Active'
          'Inactive'
          'All')
      end
      object grpProductdetails: TRadioGroup
        Left = 441
        Top = 0
        Width = 230
        Height = 37
        Align = alClient
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Sumamry'
          'Details')
        TabOrder = 2
        OnClick = grpProductdetailsClick
      end
    end
    inherited dtFrom: TwwDBDateTimePicker
      Visible = False
    end
    inherited dtTo: TwwDBDateTimePicker
      Visible = False
    end
  end
  inherited Panel1: TPanel
    inherited grdMain: TwwDBGrid
      ControlType.Strings = (
        'Active;CheckBox;T;F')
      Selected.Strings = (
        'PrescriberCode'#9'7'#9'Prescriber~Type Code'
        'PrescriberName'#9'30'#9'Prescriber Type Name'
        'providerNum'#9'14'#9'Provider~Num'
        'ItemNo'#9'7'#9'Category~Code'
        'ItemName'#9'30'#9'Category Name'
        'ProductCode'#9'7'#9'Product~Code'
        'Description'#9'30'#9'Product Name'
        'DVAEX'#9'10'#9'Sales(Ex)'
        'DVAInc'#9'10'#9'Sales(Inc)'
        'Non_DVAEX'#9'10'#9'Sales(Ex)'
        'Non_DVAInc'#9'10'#9'Non DVA~Sales(Inc)'
        'Active'#9'1'#9'Active')
      TitleColor = 14144187
      TitleLines = 2
      FooterColor = 14144187
    end
  end
  inherited qryMain: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT 2 as DisplayCat, '
      
        'tblRapPrescriberTypeitems.PrescriberId,tblRapPrescriberType.Pres' +
        'criberCode,'
      'tblRapPrescriberType.PrescriberName,'
      'tblrapcategories.ItemNo,'
      'tblrapcategories.ItemName,'
      'tblrapproducts.RapProductID,'
      'tblrapcategories.CategoryId,'
      'tblrapproducts.ProductCode,'
      'tblrapproducts.Description,'
      '"               " as providerNum ,'
      
        'tblRapPrescriberTypeitems.Active , 0 as Non_DVAEX, 0 as Non_DVAI' +
        'nc,0 as DVAEX,0 as DVAInc'
      'FROM'
      'tblRapPrescriberTypeitems'
      
        'Inner Join tblrapproducts ON tblRapPrescriberTypeitems.RapProduc' +
        'tID = tblrapproducts.RapProductID'
      
        'Inner Join tblrapcategories ON tblrapproducts.RapCategoryID = tb' +
        'lrapcategories.CategoryID'
      
        'inner join tblRapPrescriberType on  tblRapPrescriberType.Prescri' +
        'berID =tblrapprescriberitems.PrescriberId'
      'union '
      'SELECT distinct 1 as Displaycat, '
      'tblRapPrescriberType.PrescriberID,'
      'tblRapPrescriberType.PrescriberCode,'
      'tblRapPrescriberType.PrescriberName,"","",0,0,"","",'
      'tblRapPrescriberType.providerNum ,'
      'tblRapPrescriberType.Active,'
      'Sum(normalSalesLines.TotalLineAmount) as Non_DVAEX,'
      'Sum(normalSalesLines.TotalLineAmountInc) as Non_DVAInc,'
      'Sum(DVAsaleslines.TotalLineAmount) as DVAEX,'
      'Sum(DVAsaleslines.TotalLineAmountInc) as DVAInc'
      'FROM'
      'tblRapPrescriberType'
      
        'Left join tblSaleslines as DVAsaleslines on  DVAsaleslines.Presc' +
        'riberId =  tblRapPrescriberType.PrescriberID '
      
        'inner join tblSales as DVASales on DVAsaleslines.SAleId = DVASal' +
        'es.saleID and ifnull(DVASales.VeteranID ,0) <> 0 and  DVASales.S' +
        'aleDate >= :Date1 and  DVASales.SaleDate <= :Date2'
      
        'left  join tblSaleslines as normalSalesLines on  normalSalesLine' +
        's.PrescriberId =  tblRapPrescriberType.PrescriberID '
      
        'inner join tblSales as NormalSales on normalSalesLines.SAleId = ' +
        'NormalSales.saleID and ifnull(NormalSales.VeteranID ,0) = 0 and ' +
        ' NormalSales.SaleDate >= :Date3 and  NormalSales.SaleDate <= :Da' +
        'te4'
      'group by tblRapPrescriberType.PrescriberID'
      'union '
      'SELECT distinct 1 as Displaycat, '
      'tblRapPrescriberType.PrescriberID,'
      'tblRapPrescriberType.PrescriberCode,'
      'tblRapPrescriberType.PrescriberName,"","",0,0,"","",'
      'tblRapPrescriberType.providerNum ,'
      'tblRapPrescriberType.Active,'
      '0 as Non_DVAEX,'
      '0 as Non_DVAInc,'
      '0 as DVAEX,'
      '0 as DVAInc'
      'FROM'
      'tblRapPrescriberType'
      
        'Left join tblSaleslines on tblSaleslines.PrescriberId = tblrappr' +
        'escriber.PrescriberID'
      'Where Ifnull(tblSaleslines.SaleId,0) = 0'
      'Order by PrescriberID, DisplayCat'
      '')
    ParamData = <
      item
        DataType = ftString
        Name = 'Date1'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'Date2'
      end
      item
        DataType = ftUnknown
        Name = 'Date3'
      end
      item
        DataType = ftUnknown
        Name = 'Date4'
      end>
    object qryMainPrescriberCode: TStringField
      DisplayLabel = 'Prescriber~Type Code'
      DisplayWidth = 7
      FieldName = 'PrescriberCode'
      Origin = 'tblRapPrescriberType.PrescriberCode'
      Size = 6
    end
    object qryMainPrescriberName: TStringField
      DisplayLabel = 'Prescriber Type Name'
      DisplayWidth = 30
      FieldName = 'PrescriberName'
      Origin = 'tblRapPrescriberType.PrescriberName'
      Size = 100
    end
    object qryMainproviderNum: TStringField
      DisplayLabel = 'Provider~Num'
      DisplayWidth = 14
      FieldName = 'providerNum'
      Origin = 'tblRapPrescriberTypeitems.providerNum'
      Size = 15
    end
    object qryMainItemNo: TStringField
      DisplayLabel = 'Category~Code'
      DisplayWidth = 7
      FieldName = 'ItemNo'
      Origin = 'tblrapcategories.ItemNo'
      Size = 4
    end
    object qryMainItemName: TStringField
      DisplayLabel = 'Category Name'
      DisplayWidth = 30
      FieldName = 'ItemName'
      Origin = 'tblrapcategories.ItemName'
      Size = 100
    end
    object qryMainProductCode: TStringField
      DisplayLabel = 'Product~Code'
      DisplayWidth = 7
      FieldName = 'ProductCode'
      Origin = 'tblrapproducts.ProductCode'
      Size = 4
    end
    object qryMainDescription: TStringField
      DisplayLabel = 'Product Name'
      DisplayWidth = 30
      FieldName = 'Description'
      Origin = 'tblrapproducts.Description'
      Size = 100
    end
    object qryMainDVAEX: TLargeintField
      DisplayLabel = 'Sales(Ex)'
      DisplayWidth = 10
      FieldName = 'DVAEX'
      Origin = 'tblRapPrescriberTypeitems.DVAEX'
    end
    object qryMainDVAInc: TLargeintField
      DisplayLabel = 'Sales(Inc)'
      DisplayWidth = 10
      FieldName = 'DVAInc'
      Origin = 'tblRapPrescriberTypeitems.DVAInc'
    end
    object qryMainNon_DVAEX: TLargeintField
      DisplayLabel = 'Sales(Ex)'
      DisplayWidth = 10
      FieldName = 'Non_DVAEX'
      Origin = 'tblRapPrescriberTypeitems.Non_DVAEX'
    end
    object qryMainNon_DVAInc: TLargeintField
      DisplayLabel = 'Non DVA~Sales(Inc)'
      DisplayWidth = 10
      FieldName = 'Non_DVAInc'
      Origin = 'tblRapPrescriberTypeitems.Non_DVAInc'
    end
    object qryMainActive: TStringField
      DisplayWidth = 1
      FieldName = 'Active'
      Origin = 'tblRapPrescriberTypeitems.Active'
      FixedChar = True
      Size = 1
    end
    object qryMainDisplayCat: TLargeintField
      FieldName = 'DisplayCat'
      Origin = 'tblRapPrescriberTypeitems.DisplayCat'
      Visible = False
    end
    object qryMainPrescriberId: TLargeintField
      FieldName = 'PrescriberId'
      Origin = 'tblRapPrescriberTypeitems.PrescriberId'
      Visible = False
    end
    object qryMainRapProductID: TLargeintField
      FieldName = 'RapProductID'
      Origin = 'tblrapproducts.RapProductID'
      Visible = False
    end
    object qryMainCategoryId: TLargeintField
      FieldName = 'CategoryId'
      Origin = 'tblrapcategories.CategoryId'
      Visible = False
    end
  end
  inherited ExportDialog: TProgressDialog
    Left = 243
  end
end
