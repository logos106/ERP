inherited frmProductSOInfoGUI: TfrmProductSOInfoGUI
  Left = 312
  Top = 157
  HelpContext = 335000
  BorderIcons = [biSystemMenu]
  Caption = 'Product Allocated S.O. Information'
  ClientHeight = 372
  ClientWidth = 862
  OldCreateOrder = True
  ExplicitLeft = 312
  ExplicitTop = 157
  ExplicitWidth = 878
  ExplicitHeight = 411
  DesignSize = (
    862
    372)
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 41
    Width = 862
    HelpContext = 335008
    ExplicitTop = 372
    ExplicitWidth = 619
  end
  inherited shapehint: TShape
    Left = 22
    ExplicitLeft = 14
  end
  inherited imgGridWatermark: TImage
    HelpContext = 335001
  end
  inherited shapehintextra1: TShape
    Left = 80
    ExplicitLeft = 60
  end
  object DNMPanel2: TDNMPanel [5]
    Left = 0
    Top = 41
    Width = 862
    Height = 331
    HelpContext = 335002
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      862
      331)
    object grdMain: TwwDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 856
      Height = 285
      HelpContext = 335003
      Selected.Strings = (
        'GlobalRef'#9'10'#9'Global Ref'
        'SO#'#9'8'#9'SO #'
        'ProductName'#9'20'#9'Product'
        'Qty'#9'9'#9'Qty'
        'Dept'#9'10'#9'Department'
        'CustomerName'#9'20'#9'Customer'
        'ShipDate'#9'10'#9'Ship Date'
        'MaxETADate'#9'12'#9'From'#9#9'Expected to Arrive between'
        'minETADate'#9'12'#9'To'#9#9'Expected to Arrive between')
      IniAttributes.Delimiter = ';;'
      TitleColor = 15724527
      FixedCols = 0
      ShowHorzScrollBar = False
      Align = alTop
      DataSource = dsETA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      OnDblClick = grdMainDblClick
      FooterColor = 15724527
      FooterCellColor = 15724527
      ExplicitLeft = 6
      ExplicitTop = 2
    end
    object btnClose: TDNMSpeedButton
      Left = 388
      Top = 296
      Width = 87
      Height = 27
      HelpContext = 335004
      Anchors = [akBottom]
      Cancel = True
      Caption = '&Cancel'
      DisableTransparent = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      AutoDisableParentOnclick = True
      OnClick = btnCloseClick
    end
  end
  object chkshowETA: TCheckBox [6]
    AlignWithMargins = True
    Left = 775
    Top = 20
    Width = 81
    Height = 20
    HelpContext = 335009
    Margins.Left = 580
    Margins.Top = 0
    Margins.Bottom = 0
    Alignment = taLeftJustify
    Anchors = [akTop, akRight]
    Caption = 'Show ETA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = chkshowETAClick
  end
  object pnlTitle: TDNMPanel [7]
    Left = 130
    Top = 2
    Width = 538
    Height = 35
    HelpContext = 335005
    Anchors = []
    BevelInner = bvRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TitleShader: TShader
      Left = 2
      Top = 2
      Width = 534
      Height = 31
      HelpContext = 335006
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      FromColor = clBtnFace
      ToColor = clWhite
      FromColorMirror = clWhite
      ToColorMirror = clBtnFace
      Steps = 10
      Direction = False
      Version = '1.4.0.0'
      object TitleLabel: TLabel
        Left = 0
        Top = 0
        Width = 534
        Height = 31
        HelpContext = 335007
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Product Allocated S.O.B.O Information'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitWidth = 500
      end
    end
  end
  inherited dlgReportSelect: TSelectionDialog
    Left = 329
    Top = 183
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 389
    Top = 183
  end
  inherited MyConnection: TERPConnection
    Server = 'localhost'
    Left = 419
    Top = 183
  end
  inherited DataState: TDataState
    Left = 449
    Top = 183
  end
  inherited imgsort: TImageList
    Bitmap = {
      494C0101020064006C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E00FFDFF00000000E00FF8FF00000000
      E00FF8FF00000000F00FF87F00000000F00FF81F00000000F80FF80F00000000
      F007F00F00000000F007E00F00000000F007E00F00000000F00FE00F00000000
      F01FF01F00000000F81FF00F00000000FE1FF00F00000000FF1FF00700000000
      FF1FF00700000000FFBFF0070000000000000000000000000000000000000000
      000000000000}
  end
  object dsETA: TDataSource
    DataSet = qryETA
    Left = 300
    Top = 154
  end
  object qryETA: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      '#Dummy SQL - See FormShow()'
      'SELECT S.GlobalRef,'
      'S.CustomerName,'
      'SL.ProductName, SL.ProductID, '
      'Sum(PQa.Qty) AS Qty, '
      'SL.SaleID AS "SO#", S.Class AS "Dept",'
      'S.ShipDate as ShipDate ,'
      'POL.minETADate, POL.MaxETADate'
      'FROM tblsaleslines SL'
      'INNER JOIN tblsales S Using(SaleID)'
      
        'inner join tblpqa pqa on sL.SaleId = pqa.transId and SL.saleLine' +
        'Id =  Pqa.translineId and pqa.transtype ="TSalesOrderline" and p' +
        'qa.active ="T"'
      
        'Left join (Select SaleLineID, Min(ETADate) minETADate, Max(ETADa' +
        'te) MaxETADate from    tblpurchaselines group by SaleLineID) POL' +
        ' on SL.SaleLineID = POL.SaleLineID'
      
        'WHERE (S.IsSalesOrder="T" or (S.ISLayby = "T" and S.Paid = "F"))' +
        ' AND S.Converted="F" #AND SL.ProductID = :xPartID '
      'AND PQa.ISBO ="F"'
      'GROUP BY SL.SaleID;')
    AfterOpen = qryETAAfterOpen
    Options.StrictUpdate = False
    Left = 307
    Top = 183
    object qryETAGlobalRef: TWideStringField
      DisplayLabel = 'Global Ref'
      DisplayWidth = 10
      FieldName = 'GlobalRef'
      Origin = 'S.GlobalRef'
      Size = 255
    end
    object qryETASO: TIntegerField
      DisplayLabel = 'SO #'
      DisplayWidth = 8
      FieldName = 'SO#'
      Origin = 'SL.SO#'
    end
    object qryETAProductName: TWideStringField
      DisplayLabel = 'Product'
      DisplayWidth = 20
      FieldName = 'ProductName'
      Origin = 'SL.ProductName'
      Size = 60
    end
    object qryETAQty: TFloatField
      DisplayWidth = 9
      FieldName = 'Qty'
      Origin = 'Qty'
    end
    object qryETADept: TWideStringField
      DisplayLabel = 'Department'
      DisplayWidth = 10
      FieldName = 'Dept'
      Origin = 'S.Dept'
      Size = 255
    end
    object qryETACustomerName: TWideStringField
      DisplayLabel = 'Customer'
      DisplayWidth = 20
      FieldName = 'CustomerName'
      Origin = 'S.CustomerName'
      Size = 255
    end
    object qryETAShipDate: TDateField
      DisplayLabel = 'Ship Date'
      DisplayWidth = 10
      FieldName = 'ShipDate'
      Origin = 'S.ShipDate'
    end
    object qryETAMaxETADate: TDateField
      DisplayLabel = 'From'
      DisplayWidth = 12
      FieldName = 'MaxETADate'
      Origin = 'POL.MaxETADate'
    end
    object qryETAminETADate: TDateField
      DisplayLabel = 'To'
      DisplayWidth = 12
      FieldName = 'minETADate'
      Origin = 'POL.minETADate'
    end
    object qryETAProductID: TIntegerField
      FieldName = 'ProductID'
      Origin = 'SL.ProductID'
      Visible = False
    end
  end
end