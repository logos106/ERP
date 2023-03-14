inherited fmCustomerEquipmentTransfer: TfmCustomerEquipmentTransfer
  HelpContext = 874001
  ActiveControl = cboCustomer
  Caption = 'Equipment Transfer'
  ClientHeight = 264
  ClientWidth = 457
  ExplicitWidth = 473
  ExplicitHeight = 303
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 264
    Width = 457
    ExplicitTop = 264
    ExplicitWidth = 457
    HelpContext = 874011
  end
  object Label1: TLabel [3]
    Left = 24
    Top = 104
    Width = 60
    Height = 15
    HelpContext = 874002
    Caption = 'Equipment'
  end
  object Label2: TLabel [4]
    Left = 23
    Top = 147
    Width = 84
    Height = 15
    HelpContext = 874003
    Caption = 'New Customer'
  end
  object btnCancel: TDNMSpeedButton [7]
    Left = 237
    Top = 224
    Width = 87
    Height = 27
    HelpContext = 874008
    Anchors = [akBottom]
    Caption = 'Cancel'
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
    ModalResult = 2
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object edtEquipmentName: TwwDBEdit [8]
    Left = 113
    Top = 101
    Width = 305
    Height = 23
    HelpContext = 874009
    TabStop = False
    DataField = 'EquipName'
    DataSource = dsCustEquip
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object cboCustomer: TERPDbLookupCombo [9]
    Left = 113
    Top = 144
    Width = 305
    Height = 23
    HelpContext = 874010
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Company'#9'50'#9'Company'#9'F')
    DataField = 'ClientName'
    DataSource = dsCustEquip
    LookupTable = qryCustomers
    LookupField = 'ClientID'
    ParentFont = False
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    LookupFormClassName = 'TCustomerExpressListGUI'
    EditFormClassName = 'TfrmCustomer'
    LookupFormKeyStringFieldName = 'Company'
    LookupComboType = ctCustomer
    AllowFullListSearchMode = False
    OnBeforeOpenList = cboCustomerBeforeOpenList
    onDoGridDataSelect = cboCustomerDoGridDataSelect
    DisableNotInList = False
    AllowMultipleSelectFromList = False
    OpenListinF6WhenNotinList = False
    DeveloperHint = 'when in Grid -> Grid.Keoption -dgEnterToTab'
  end
  object pnlTitle: TDNMPanel [10]
    Left = 65
    Top = 6
    Width = 326
    Height = 41
    HelpContext = 874004
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TitleShader: TShader
      Left = 2
      Top = 2
      Width = 322
      Height = 37
      HelpContext = 874005
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
        Width = 322
        Height = 37
        HelpContext = 874006
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Equipment Transfer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitLeft = -1
        ExplicitWidth = 359
      end
    end
  end
  object btnSave: TDNMSpeedButton [11]
    Left = 133
    Top = 224
    Width = 87
    Height = 27
    HelpContext = 874007
    Anchors = [akBottom]
    Caption = 'Save'
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
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Arial'
    HotTrackFont.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = btnSaveClick
  end
  inherited MyConnection: TERPConnection
    Server = 'Localhost'
    Connected = True
  end
  inherited imgsort: TImageList
    Bitmap = {
      494C010102008800900010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object qryCustEquip: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'select * from tblCustomerEquip where ID = :ID')
    Left = 344
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object qryCustEquipGlobalRef: TWideStringField
      FieldName = 'GlobalRef'
      Origin = 'tblcustomerequip.GlobalRef'
      Size = 255
    end
    object qryCustEquipid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'tblcustomerequip.id'
    end
    object qryCustEquipEquipmentID: TIntegerField
      FieldName = 'EquipmentID'
      Origin = 'tblcustomerequip.EquipmentID'
    end
    object qryCustEquipNotes: TWideMemoField
      FieldName = 'Notes'
      Origin = 'tblcustomerequip.Notes'
      BlobType = ftWideMemo
    end
    object qryCustEquipClientID: TIntegerField
      FieldName = 'ClientID'
      Origin = 'tblcustomerequip.ClientID'
    end
    object qryCustEquipDescription: TWideStringField
      FieldName = 'Description'
      Origin = 'tblcustomerequip.Description'
      Size = 255
    end
    object qryCustEquipEditedFlag: TWideStringField
      FieldName = 'EditedFlag'
      Origin = 'tblcustomerequip.EditedFlag'
      FixedChar = True
      Size = 1
    end
    object qryCustEquipEquipName: TWideStringField
      FieldName = 'EquipName'
      Origin = 'tblcustomerequip.EquipName'
      Size = 255
    end
    object qryCustEquipmsTimeStamp: TDateTimeField
      FieldName = 'msTimeStamp'
      Origin = 'tblcustomerequip.msTimeStamp'
    end
    object qryCustEquipManufacture: TWideStringField
      FieldName = 'Manufacture'
      Origin = 'tblcustomerequip.Manufacture'
      Size = 100
    end
    object qryCustEquipmodel: TWideStringField
      FieldName = 'model'
      Origin = 'tblcustomerequip.model'
      Size = 100
    end
    object qryCustEquipSerialno: TWideStringField
      FieldName = 'Serialno'
      Origin = 'tblcustomerequip.Serialno'
      Size = 100
    end
    object qryCustEquipRegistration: TWideStringField
      FieldName = 'Registration'
      Origin = 'tblcustomerequip.Registration'
      Size = 100
    end
    object qryCustEquipWarantyPeriod: TFloatField
      FieldName = 'WarantyPeriod'
      Origin = 'tblcustomerequip.WarantyPeriod'
    end
    object qryCustEquipWarantyFinishDate: TDateTimeField
      FieldName = 'WarantyFinishDate'
      Origin = 'tblcustomerequip.WarantyFinishDate'
    end
    object qryCustEquipQuantity: TFloatField
      FieldName = 'Quantity'
      Origin = 'tblcustomerequip.Quantity'
    end
    object qryCustEquipUOM: TWideStringField
      FieldName = 'UOM'
      Origin = 'tblcustomerequip.UOM'
      Size = 50
    end
    object qryCustEquipUOMID: TLargeintField
      FieldName = 'UOMID'
      Origin = 'tblcustomerequip.UOMID'
    end
    object qryCustEquipUOMMultiplier: TFloatField
      FieldName = 'UOMMultiplier'
      Origin = 'tblcustomerequip.UOMMultiplier'
    end
    object qryCustEquipUOMQty: TFloatField
      FieldName = 'UOMQty'
      Origin = 'tblcustomerequip.UOMQty'
    end
    object qryCustEquipWarantyStartDate: TDateTimeField
      FieldName = 'WarantyStartDate'
      Origin = 'tblcustomerequip.WarantyStartDate'
    end
    object qryCustEquipActive: TWideStringField
      FieldName = 'Active'
      Origin = 'tblcustomerequip.Active'
      FixedChar = True
      Size = 1
    end
    object qryCustEquipCUSTFLD1: TWideStringField
      FieldName = 'CUSTFLD1'
      Origin = 'tblcustomerequip.CUSTFLD1'
      Size = 255
    end
    object qryCustEquipCUSTFLD2: TWideStringField
      FieldName = 'CUSTFLD2'
      Origin = 'tblcustomerequip.CUSTFLD2'
      Size = 255
    end
    object qryCustEquipCUSTFLD3: TWideStringField
      FieldName = 'CUSTFLD3'
      Origin = 'tblcustomerequip.CUSTFLD3'
      Size = 255
    end
    object qryCustEquipCUSTFLD4: TWideStringField
      FieldName = 'CUSTFLD4'
      Origin = 'tblcustomerequip.CUSTFLD4'
      Size = 255
    end
    object qryCustEquipCUSTFLD5: TWideStringField
      FieldName = 'CUSTFLD5'
      Origin = 'tblcustomerequip.CUSTFLD5'
      Size = 255
    end
    object qryCustEquipCUSTFLD6: TWideStringField
      FieldName = 'CUSTFLD6'
      Origin = 'tblcustomerequip.CUSTFLD6'
      Size = 255
    end
    object qryCustEquipCUSTFLD7: TWideStringField
      FieldName = 'CUSTFLD7'
      Origin = 'tblcustomerequip.CUSTFLD7'
      Size = 255
    end
    object qryCustEquipCUSTFLD8: TWideStringField
      FieldName = 'CUSTFLD8'
      Origin = 'tblcustomerequip.CUSTFLD8'
      Size = 255
    end
    object qryCustEquipCUSTFLD9: TWideStringField
      FieldName = 'CUSTFLD9'
      Origin = 'tblcustomerequip.CUSTFLD9'
      Size = 255
    end
    object qryCustEquipCUSTFLD10: TWideStringField
      FieldName = 'CUSTFLD10'
      Origin = 'tblcustomerequip.CUSTFLD10'
      Size = 255
    end
    object qryCustEquipClientName: TWideStringField
      FieldKind = fkLookup
      FieldName = 'ClientName'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'ClientID'
      LookupResultField = 'Company'
      KeyFields = 'ClientID'
      Size = 255
      Lookup = True
    end
  end
  object dsCustEquip: TDataSource
    DataSet = qryCustEquip
    Left = 400
    Top = 16
  end
  object qryCustomers: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'select ClientID, Company from tblClients '
      
        'where Customer = "T" and Active = "T" and ClientID <> :ExcludeCl' +
        'ientID'
      'and (((:SearchMode = 0) or IsNull(:SearchMode))'
      
        'or ((:SearchMode = 1) and (Company LIKE Concat(:SearchValue,"%")' +
        '))'
      
        'or ((:SearchMode = 2) and (Company LIKE Concat("%",:SearchValue,' +
        '"%"))))'
      'and IfNull(:SearchValue,"") <> ""')
    Left = 368
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ExcludeClientID'
      end
      item
        DataType = ftUnknown
        Name = 'SearchMode'
      end
      item
        DataType = ftUnknown
        Name = 'SearchMode'
      end
      item
        DataType = ftUnknown
        Name = 'SearchMode'
      end
      item
        DataType = ftUnknown
        Name = 'SearchValue'
      end
      item
        DataType = ftUnknown
        Name = 'SearchMode'
      end
      item
        DataType = ftUnknown
        Name = 'SearchValue'
      end
      item
        DataType = ftUnknown
        Name = 'SearchValue'
      end>
  end
end