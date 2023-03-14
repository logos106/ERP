inherited frmImportStockAdjustGUI: TfrmImportStockAdjustGUI
  Left = 563
  Top = 116
  HelpContext = 297000
  Caption = 'Import Stock Adjustment'
  ClientHeight = 503
  ClientWidth = 383
  OldCreateOrder = True
  ExplicitLeft = 563
  ExplicitTop = 116
  ExplicitWidth = 399
  ExplicitHeight = 542
  DesignSize = (
    383
    503)
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 503
    Width = 383
    ExplicitTop = 272
    ExplicitWidth = 383
  end
  object Letter_Label: TLabel [1]
    Left = 23
    Top = 67
    Width = 115
    Height = 18
    HelpContext = 297002
    AutoSize = False
    Caption = 'Select Import File :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object lblImporting: TLabel [2]
    Left = 23
    Top = 174
    Width = 336
    Height = 23
    HelpContext = 297003
    AutoSize = False
    Caption = 'Please Wait Import .....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Layout = tlCenter
    Visible = False
  end
  object lblstockAdjustmentId: TLabel [3]
    Left = 23
    Top = 151
    Width = 336
    Height = 23
    HelpContext = 297003
    AutoSize = False
    Caption = 'Stock Adjustment ID:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Layout = tlCenter
    Visible = False
  end
  object Label3: TLabel [4]
    Left = 25
    Top = 123
    Width = 91
    Height = 15
    HelpContext = 509006
    Caption = 'Adjustment Date'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited imgGridWatermark: TImage
    HelpContext = 297001
  end
  object btnCancel: TDNMSpeedButton [9]
    Left = 195
    Top = 468
    Width = 87
    Height = 27
    HelpContext = 297008
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = '&Cancel'
    DisableTransparent = False
    Font.Charset = DEFAULT_CHARSET
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
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    ModalResult = 2
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object pnlTitle: TDNMPanel [10]
    Left = 10
    Top = 6
    Width = 364
    Height = 45
    HelpContext = 297009
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object TitleShader: TShader
      Left = 2
      Top = 2
      Width = 360
      Height = 41
      HelpContext = 297010
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
        Width = 360
        Height = 41
        HelpContext = 297011
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Import Stock Adjustment'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
    end
  end
  object AdjustmentDate: TwwDBDateTimePicker [11]
    Left = 133
    Top = 119
    Width = 176
    Height = 23
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    Date = 40060.000000000000000000
    Epoch = 1950
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ShowButton = True
    TabOrder = 6
  end
  object SpeedButton1: TDNMSpeedButton [12]
    Left = 351
    Top = 85
    Width = 28
    Height = 24
    HelpContext = 297005
    DisableTransparent = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555555555555555555555555555555555555555555555555555555555555
      555555555555555555555555555555555555555FFFFFFFFFF555550000000000
      55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
      B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
      000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
      555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
      55555575FFF75555555555700007555555555557777555555555555555555555
      5555555555555555555555555555555555555555555555555555}
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    NumGlyphs = 2
    TabOrder = 1
    OnClick = SpeedButton1Click
  end
  object txtFilePath: TEdit [13]
    Left = 23
    Top = 86
    Width = 328
    Height = 23
    HelpContext = 297004
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object ImportProgressBar: TProgressBar [14]
    Left = 23
    Top = 198
    Width = 334
    Height = 17
    HelpContext = 297006
    Smooth = True
    Step = 1
    TabOrder = 2
  end
  object DNMPanel1: TDNMPanel [15]
    Left = 4
    Top = 220
    Width = 375
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object lblIgnoreIncompleteallocation: TLabel
      AlignWithMargins = True
      Left = 34
      Top = 36
      Width = 337
      Height = 200
      Margins.Left = 33
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      AutoSize = False
      Caption = 'Turn this tick on '
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 36
      ExplicitTop = 59
      ExplicitWidth = 292
      ExplicitHeight = 129
    end
    object chkIgnoreIncompleteallocation: TCheckBox
      AlignWithMargins = True
      Left = 16
      Top = 1
      Width = 343
      Height = 35
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alTop
      Caption = 
        'Ignore Bin / Batch / Serial Number Product , if all combined in ' +
        'the spreadsheet'
      Checked = True
      State = cbChecked
      TabOrder = 0
      WordWrap = True
    end
  end
  object btnOK: TDNMSpeedButton [16]
    Left = 68
    Top = 468
    Width = 87
    Height = 27
    HelpContext = 297007
    Anchors = [akLeft, akBottom]
    Caption = 'Impor&t'
    Default = True
    DisableTransparent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    ModalResult = 1
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = btnOKClick
  end
  inherited popSpelling: TPopupMenu
    Left = 153
    Top = 45
  end
  inherited dlgReportSelect: TSelectionDialog
    Left = 23
    Top = 45
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 214
    Top = 87
  end
  inherited MyConnection: TERPConnection
    Left = 251
    Top = 45
  end
  inherited DataState: TDataState
    Left = 121
    Top = 45
  end
  inherited popCustomiseGrid: TAdvPopupMenu
    Left = 284
    Top = 45
  end
  inherited imgsort: TImageList
    Left = 55
    Top = 45
    Bitmap = {
      494C010102007C00880010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited QryCustomField: TERPQuery
    Left = 88
    Top = 45
  end
  inherited qryMemTrans: TERPQuery
    Left = 186
    Top = 45
  end
  object OpenDialog1: TOpenDialog
    Filter = 'ERP Data Import (*.pdi)|*.pdi|All Files (*.*)|*.*'
    Left = 317
    Top = 45
  end
  object cboProductQry: TERPQuery
    SQL.Strings = (
      
        'SELECT PARTSID,PARTTYPE, PRODUCTGROUP, PARTNAME, PARTSDESCRIPTIO' +
        'N, '
      'INCOMEACCNT,ASSETACCNT, COGSACCNT,'
      'TaxCodeID,TAXCODE,Rate,COST1, PRICE1, WHOLESALEPRICE, AvgCost'
      'FROM tblparts'
      'LEFT Join tbltaxcodes on TAXCODE=Name  AND  RegionID= :xRegionID'
      'WHERE tblparts.Active = '#39'T'#39' AND PARTSID =:ID;'
      '')
    AutoCalcFields = False
    BeforeOpen = cboProductQryBeforeOpen
    Left = 219
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xRegionID'
      end
      item
        DataType = ftString
        Name = 'ID'
        Size = 255
      end>
    object cboProductQryPARTSID: TAutoIncField
      FieldName = 'PARTSID'
      ReadOnly = True
    end
    object cboProductQryPARTTYPE: TWideStringField
      FieldName = 'PARTTYPE'
      Size = 13
    end
    object cboProductQryPRODUCTGROUP: TWideStringField
      FieldName = 'PRODUCTGROUP'
      Size = 255
    end
    object cboProductQryPARTNAME: TWideStringField
      FieldName = 'PARTNAME'
      Size = 60
    end
    object cboProductQryPARTSDESCRIPTION: TWideStringField
      FieldName = 'PARTSDESCRIPTION'
      Size = 255
    end
    object cboProductQryINCOMEACCNT: TWideStringField
      FieldName = 'INCOMEACCNT'
      Size = 50
    end
    object cboProductQryASSETACCNT: TWideStringField
      FieldName = 'ASSETACCNT'
      Size = 50
    end
    object cboProductQryCOGSACCNT: TWideStringField
      FieldName = 'COGSACCNT'
      Size = 50
    end
    object cboProductQryTaxCodeID: TAutoIncField
      FieldName = 'TaxCodeID'
      ReadOnly = True
    end
    object cboProductQryTAXCODE: TWideStringField
      FieldName = 'TAXCODE'
      Size = 15
    end
    object cboProductQryCOST1: TFloatField
      FieldName = 'COST1'
    end
    object cboProductQryPRICE1: TFloatField
      FieldName = 'PRICE1'
    end
    object cboProductQryWHOLESALEPRICE: TFloatField
      FieldName = 'WHOLESALEPRICE'
    end
    object cboProductQryAvgCost: TFloatField
      FieldName = 'AvgCost'
    end
    object cboProductQryRate: TFloatField
      FieldName = 'Rate'
    end
  end
end
