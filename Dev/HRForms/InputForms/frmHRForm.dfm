inherited fmHRForm: TfmHRForm
  Left = 914
  Top = 279
  Caption = 'HR Form'
  ClientHeight = 364
  ClientWidth = 412
  ExplicitLeft = 914
  ExplicitTop = 279
  ExplicitWidth = 428
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 15
  HelpContext = 1485002
  inherited lblSkingroupMsg: TLabel
    Top = 282
    Width = 412
    ExplicitTop = 223
    ExplicitWidth = 455
    HelpContext = 1485003
  end
  inherited shapehint: TShape
    Left = 43
    Top = 10
    ExplicitLeft = 49
    ExplicitTop = 10
  end
  inherited imgGridWatermark: TImage
    Left = 305
    Top = 10
    ExplicitLeft = 305
    ExplicitTop = 10
  end
  inherited shapehintextra1: TShape
    Left = 101
    Top = 10
    ExplicitLeft = 113
    ExplicitTop = 10
  end
  object DNMPanel2: TDNMPanel [6]
    Left = 0
    Top = 0
    Width = 412
    Height = 59
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      412
      59)
    HelpContext = 1485004
    object pnlTitle: TDNMPanel
      Left = 103
      Top = 10
      Width = 206
      Height = 39
      HelpContext = 1485005
      Anchors = [akLeft, akTop, akRight]
      
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Locked = True
      ParentFont = False
      TabOrder = 0
      object TitleShader: TShader
        Left = 1
        Top = 1
        Width = 204
        Height = 37
        HelpContext = 1485006
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
          Width = 204
          Height = 37
          HelpContext = 1485007
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 'HR Form'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          ExplicitWidth = 171
        end
      end
    end
  end
  object DNMPanel3: TDNMPanel [7]
    Left = 0
    Top = 282
    Width = 412
    Height = 82
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      412
      82)
    HelpContext = 1485008
    object cmdClose: TDNMSpeedButton
      Left = 12
      Top = 43
      Width = 93
      Height = 27
      HelpContext = 1485009
      Anchors = [akBottom]
      Caption = '&Save'
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
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = cmdCloseClick
    end
    object cmdCancel: TDNMSpeedButton
      Left = 306
      Top = 43
      Width = 93
      Height = 27
      HelpContext = 1485010
      Anchors = [akBottom]
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
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = cmdCancelClick
    end
    object cmdNew: TDNMSpeedButton
      Left = 110
      Top = 43
      Width = 93
      Height = 27
      Hint = '"Add A Class"'
      HelpContext = 1485011
      Anchors = [akBottom]
      Caption = '&New'
      DisableTransparent = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cmdNewClick
    end
    object btnPrint: TDNMSpeedButton
      Left = 208
      Top = 43
      Width = 93
      Height = 27
      HelpContext = 1485012
      Anchors = [akBottom]
      Caption = 'Print'
      DisableTransparent = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnPrintClick
    end
    object optOutputtype: TRadioGroup
      AlignWithMargins = True
      Left = 45
      Top = 2
      Width = 322
      Height = 35
      Margins.Left = 44
      Margins.Top = 1
      Margins.Right = 44
      Margins.Bottom = 0
      Align = alTop
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'Print'
        'Preview'
        'Email')
      TabOrder = 4
      HelpContext = 1485013
    end
  end
  object DNMPanel1: TDNMPanel [8]
    Left = 0
    Top = 59
    Width = 412
    Height = 223
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      412
      223)
    HelpContext = 1485014
    object Description_Label: TLabel
      Left = 16
      Top = 13
      Width = 33
      Height = 15
      HelpContext = 1485015
      Alignment = taRightJustify
      Caption = 'Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label1: TLabel
      Left = 16
      Top = 125
      Width = 52
      Height = 15
      HelpContext = 1485016
      Alignment = taRightJustify
      Caption = 'Template'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label22: TLabel
      Left = 238
      Top = 66
      Width = 56
      Height = 15
      HelpContext = 1485017
      Caption = 'Language'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object edtName: TDBEdit
      Left = 16
      Top = 34
      Width = 384
      Height = 23
      HelpContext = 1485018
      DataField = 'Name'
      DataSource = dsHRForms
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cboTemplate: TwwDBLookupCombo
      Left = 16
      Top = 144
      Width = 285
      Height = 23
      HelpContext = 1485019
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TemplName'#9'30'#9'TemplName'#9'F')
      DataField = 'Template'
      DataSource = dsHRForms
      LookupTable = qryTemplate
      LookupField = 'TemplName'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnDblClick = cboTemplateDblClick
      OnEnter = cboTemplateEnter
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 16
      Top = 66
      Width = 188
      Height = 46
      Caption = 'Type'
      Columns = 2
      DataField = 'formtype'
      DataSource = dsHRForms
      Items.Strings = (
        'Employee'
        'Customer')
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        'E'
        'C')
      HelpContext = 1485020
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 238
      Top = 83
      Width = 163
      Height = 23
      HelpContext = 1485021
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Language'#9'50'#9'Language'#9'F')
      DataField = 'LanguageID'
      DataSource = dsHRForms
      LookupTable = Qrylanguages
      LookupField = 'ID'
      ParentFont = False
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object chkActive: TwwCheckBox
      Left = 337
      Top = 191
      Width = 63
      Height = 15
      HelpContext = 1485022
      DisableThemes = False
      AlwaysTransparent = True
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.FocusBorders = []
      Frame.NonFocusBorders = []
      ValueChecked = 'T'
      ValueUnchecked = 'F'
      DisplayValueChecked = 'T'
      DisplayValueUnchecked = 'F'
      NullAndBlankState = cbUnchecked
      Alignment = taLeftJustify
      Caption = 'Active'
      Color = 14867920
      DataField = 'Active'
      DataSource = dsHRForms
      ParentColor = False
      TabOrder = 4
    end
    object btnNewTemplate: TDNMSpeedButton
      Left = 308
      Top = 142
      Width = 93
      Height = 27
      Hint = 'New Template'
      HelpContext = 1485023
      Anchors = [akBottom]
      Caption = 'New Template'
      DisableTransparent = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnNewTemplateClick
    end
  end
  inherited tmrProcessMessage: TTimer
    Left = 486
    Top = 215
  end
  inherited tmrdelay: TTimer
    Left = 556
    Top = 215
  end
  inherited popSpelling: TPopupMenu
    Left = 206
    Top = 215
  end
  inherited tmrdelayMsg: TTimer
    Left = 521
    Top = 215
  end
  inherited dlgReportSelect: TSelectionDialog
    Left = 241
    Top = 215
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 381
    Top = 215
  end
  inherited MyConnection: TERPConnection
    
    Server = 'localhost'
    Connected = True
    Left = 8
    Top = 215
  end
  inherited DataState: TDataState
    Left = 311
    Top = 215
  end
  inherited popCustomiseGrid: TAdvPopupMenu
    Left = 416
    Top = 215
  end
  inherited imgsort: TImageList
    Left = 346
    Top = 215
    Bitmap = {
      494C010102009400D40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 171
    Top = 215
  end
  inherited ProgressDialogOBJ: TProgressDialog
    Left = 451
    Top = 215
  end
  inherited mnuBusobjProperties: TAdvPopupMenu
    Left = 276
    Top = 215
  end
  inherited qryMemTrans: TERPQuery
    Left = 136
    Top = 215
  end
  object QryHRForms: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'SELECT *'
      'FROM tblHRForms')
    Left = 42
    Top = 215
    object QryHRFormsID: TIntegerField
      FieldName = 'ID'
    end
    object QryHRFormsName: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
    object QryHRFormsTemplate: TWideStringField
      FieldName = 'Template'
      Size = 255
    end
    object QryHRFormsformtype: TWideStringField
      FieldName = 'formtype'
      FixedChar = True
      Size = 1
    end
    object QryHRFormsmsTimeStamp: TDateTimeField
      FieldName = 'msTimeStamp'
    end
    object QryHRFormsmsUpdateSitecode: TWideStringField
      FieldName = 'msUpdateSitecode'
      Size = 3
    end
    object QryHRFormsActive: TWideStringField
      FieldName = 'Active'
      FixedChar = True
      Size = 1
    end
    object QryHRFormsLanguageID: TIntegerField
      FieldName = 'LanguageID'
    end
  end
  object dsHRForms: TDataSource
    DataSet = QryHRForms
    Left = 42
    Top = 179
  end
  object qryTemplate: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'SELECT TemplID,TemplName FROM tbltemplates  '
      'WHERE TypeID = :TypeID;')
    AutoCalcFields = False
    Left = 101
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TypeID'
      end>
    object qryTemplateTemplName: TWideStringField
      DisplayWidth = 30
      FieldName = 'TemplName'
      Size = 30
    end
    object qryTemplateTemplID: TAutoIncField
      FieldName = 'TemplID'
      ReadOnly = True
      Visible = False
    end
  end
  object Qrylanguages: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      
        'Select ID, Language from erplanguages.languages where active ="T' +
        '"')
    Left = 71
    Top = 215
    object QrylanguagesLanguage: TWideStringField
      DisplayWidth = 50
      FieldName = 'Language'
      Size = 50
    end
    object QrylanguagesID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
  end
end