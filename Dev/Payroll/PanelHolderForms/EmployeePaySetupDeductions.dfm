inherited EmpPaySetupDeductions: TEmpPaySetupDeductions
  Left = 855
  Top = 169
  HelpContext = 558000
  Caption = 'Employee Pay Deductions'
  ClientHeight = 561
  ClientWidth = 1055
  OldCreateOrder = True
  ExplicitLeft = 855
  ExplicitTop = 169
  ExplicitWidth = 1071
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 561
    Width = 1055
    HelpContext = 558004
    ExplicitTop = 561
    ExplicitWidth = 1055
  end
  object DNMPanel1: TDNMPanel [5]
    Left = 0
    Top = 0
    Width = 1055
    Height = 561
    HelpContext = 558001
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object grdDeductions: TwwDBGrid
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 1033
      Height = 539
      HelpContext = 558003
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      ControlType.Strings = (
        'DeductionID;CustomEdit;cboDeduction;T'
        'TaxExempt;CheckBox;T;F'
        'UnionFees;CheckBox;T;F'
        'Area;CustomEdit;cboAreaCode;T'
        'Deduction;CustomEdit;cboDeduction;T'
        'BasedOnID;CustomEdit;cboDeductBasedOn;T'
        'BasedOnLookup;CustomEdit;cboDeductBasedOn;T'
        'CalcBy;CustomEdit;cboDeductCalcBy;T'
        'ClassName;CustomEdit;cboDeductionClass;T'
        'UseStartEndDates;CheckBox;T;F'
        'IsWorkplacegiving;CheckBox;T;F')
      Selected.Strings = (
        'Deduction'#9'17'#9'Deduction'#9'F'
        'Area'#9'17'#9'Area'#9'F'
        'Notes'#9'17'#9'Notes'#9'F'
        'Qty'#9'6'#9'Qty'#9'F'
        'Amount'#9'8'#9'Amount'#9'F'
        'CalcBy'#9'7'#9'Calc By'#9'F'
        'BasedOnLookup'#9'11'#9'Based On'#9'F'
        'TaxExempt'#9'8'#9'Pre Tax'#9'F'
        'IsWorkPlacegiving'#9'8'#9'Is Workplace Giving?'#9'F'
        'UnionFees'#9'6'#9'Union'#9'F'
        'ClassName'#9'20'#9'Department'#9'F'
        'UseStartEndDates'#9'1'#9'Use Dates'#9'F'#9'Accrue between dates'
        'StartDate'#9'10'#9'Start'#9'F'#9'Accrue between dates'
        'EndDate'#9'10'#9'End'#9'F'#9'Accrue between dates')
      IniAttributes.Delimiter = ';;'
      TitleColor = 14155775
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alClient
      DataSource = DSEmployeedeductions
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = True
      UseTFields = False
      FooterColor = 12320767
      FooterCellColor = 14155775
      object grdDeductionsIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 23
        Height = 39
        HelpContext = 558005
        AllowAllUp = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033337733333333333333333F333333333333
          0000333911733333973333333377F333333F3333000033391117333911733333
          37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
          911117111117333337F3337F733337F3000033333911111111733333337F3337
          3333F7330000333333911111173333333337F333333F73330000333333311111
          7333333333337F3333373333000033333339111173333333333337F333733333
          00003333339111117333333333333733337F3333000033333911171117333333
          33337333337F333300003333911173911173333333373337F337F33300003333
          9117333911173333337F33737F337F33000033333913333391113333337FF733
          37F337F300003333333333333919333333377333337FFF730000333333333333
          3333333333333333333777330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        OnClick = grdDeductionsIButtonClick
      end
    end
    object cboDeduction: TwwDBLookupCombo
      Left = 36
      Top = 64
      Width = 84
      Height = 24
      HelpContext = 558006
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Description'#9'50'#9'Description'#9'F')
      DataField = 'Deduction'
      DataSource = DSEmployeedeductions
      LookupTable = qryDeductions
      LookupField = 'Description'
      DropDownWidth = 150
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = cboDeductionCloseUp
      OnNotInList = cboDeductionNotInList
    end
    object cboDeductBasedOn: TwwDBLookupCombo
      Left = 376
      Top = 64
      Width = 94
      Height = 24
      HelpContext = 558007
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BasedOn'#9'25'#9'BasedOn'#9#9)
      DataField = 'BasedOnLookup'
      DataSource = DSEmployeedeductions
      LookupTable = qryBasedOn
      LookupField = 'BasedOnID'
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboDeductCalcBy: TwwDBComboBox
      Left = 537
      Top = 64
      Width = 36
      Height = 24
      HelpContext = 558008
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      DataField = 'CalcBy'
      DataSource = DSEmployeedeductions
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        '%'#9'%'
        '$'#9'$'
        #163#9#163)
      Sorted = False
      TabOrder = 3
      UnboundDataType = wwDefault
      OnCloseUp = cboDeductCalcByCloseUp
    end
    object cboDeductionClass: TwwDBLookupCombo
      Left = 698
      Top = 64
      Width = 166
      Height = 24
      HelpContext = 558009
      ControlType.Strings = (
        'Active;CheckBox;T;F')
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ClassName'#9'15'#9'Department'#9'F')
      DataField = 'ClassName'
      DataSource = DSEmployeedeductions
      LookupTable = qryDepartment
      LookupField = 'ClassName'
      Options = [loColLines, loTitles, loFixedDropDownHeight]
      Style = csDropDownList
      DropDownWidth = 170
      TabOrder = 4
      Visible = False
      AutoDropDown = True
      ShowButton = True
      OrderByDisplay = False
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboAreaCode: TwwDBLookupCombo
      Left = 126
      Top = 64
      Width = 81
      Height = 24
      HelpContext = 558010
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'AreaCode'#9'10'#9'Code'#9'F'
        'AreaName'#9'20'#9'Name'#9'F')
      DataField = 'Area'
      DataSource = DSEmployeedeductions
      LookupTable = QryAreaCodes
      LookupField = 'AreaCode'
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  inherited tmrProcessMessage: TTimer
    Left = 217
    Top = 226
  end
  inherited tmrdelay: TTimer
    Left = 364
    Top = 226
  end
  inherited popSpelling: TPopupMenu
    Left = 438
    Top = 226
  end
  inherited dlgReportSelect: TSelectionDialog
    Left = 290
    Top = 226
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 401
    Top = 226
  end
  inherited MyConnection: TERPConnection
    Left = 152
    Top = 223
  end
  inherited DataState: TDataState
    Left = 253
    Top = 226
  end
  inherited popCustomiseGrid: TAdvPopupMenu
    Left = 475
    Top = 226
  end
  inherited imgsort: TImageList
    Left = 327
    Top = 226
    Bitmap = {
      494C010102004801900110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 549
    Top = 226
  end
  inherited ProgressDialogOBJ: TProgressDialog
    Left = 512
    Top = 226
  end
  inherited mnuBusobjProperties: TAdvPopupMenu
    Left = 808
    Top = 226
  end
  inherited qryMemTrans: TERPQuery
    Left = 586
    Top = 226
  end
  object DSEmployeedeductions: TDataSource
    Left = 771
    Top = 226
  end
  object MyConnectionDeductions: TERPConnection
    Port = 3309
    Options.UseUnicode = True
    Options.KeepDesignConnected = False
    PoolingOptions.MinPoolSize = 1
    PoolingOptions.ConnectionLifetime = 180
    Pooling = True
    LoginPrompt = False
    Left = 183
    Top = 224
  end
  object qryDeductions: TERPQuery
    Connection = MyConnectionDeductions
    SQL.Strings = (
      
        'Select DeductionID, Description, TaxExempt, IsWorkPlacegiving, U' +
        'nionFees,'
      'BasedOnID, Amount, CalcBy '
      'FROM tblDeductions')
    Left = 734
    Top = 226
  end
  object qryBasedOn: TERPQuery
    Connection = MyConnectionDeductions
    SQL.Strings = (
      'Select BasedOnID, BasedOn'
      'FROM tblAllowanceBasedOn')
    Left = 660
    Top = 226
  end
  object qryDepartment: TERPQuery
    Connection = MyConnectionDeductions
    SQL.Strings = (
      'Select ClassID, ClassName, Active'
      'FROM tblClass'
      'WHERE Active = '#39'T'#39
      'ORDER BY ClassName')
    Left = 697
    Top = 226
    object StringField1: TWideStringField
      DisplayLabel = 'Department'
      DisplayWidth = 20
      FieldName = 'ClassName'
      Size = 60
    end
    object StringField2: TWideStringField
      DisplayWidth = 5
      FieldName = 'Active'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'ClassID'
      ReadOnly = True
      Visible = False
    end
  end
  object QryAreaCodes: TERPQuery
    SQL.Strings = (
      
        'Select AreaCode, AreaName from tblAreaCodes where active ="T" or' +
        'der by Areacode')
    Left = 623
    Top = 226
    object QryAreaCodesAreaCode: TWideStringField
      DisplayLabel = 'Code'
      DisplayWidth = 10
      FieldName = 'AreaCode'
      Size = 50
    end
    object QryAreaCodesAreaName: TWideStringField
      DisplayLabel = 'Name'
      DisplayWidth = 20
      FieldName = 'AreaName'
      Size = 100
    end
  end
end
