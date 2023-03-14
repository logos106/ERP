inherited fmSimpleTypes: TfmSimpleTypes
  Left = 808
  Top = 122
  HelpContext = 215000
  Caption = 'fmSimpleTypes'
  ClientHeight = 510
  ClientWidth = 639
  OldCreateOrder = True
  ExplicitLeft = 808
  ExplicitTop = 122
  ExplicitWidth = 655
  ExplicitHeight = 549
  DesignSize = (
    639
    510)
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 450
    Width = 639
    HelpContext = 215012
    ExplicitTop = 456
    ExplicitWidth = 639
  end
  inherited imgGridWatermark: TImage
    HelpContext = 215001
  end
  object pnlTop: TDNMPanel [5]
    Left = 0
    Top = 0
    Width = 639
    Height = 46
    HelpContext = 215008
    Align = alTop
    BevelWidth = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      639
      46)
    object pnlTitle: TDNMPanel
      Left = 136
      Top = 3
      Width = 369
      Height = 38
      HelpContext = 215009
      Anchors = [akTop]
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
        Width = 365
        Height = 34
        HelpContext = 215010
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
          Width = 365
          Height = 34
          HelpContext = 215011
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 'Type'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
      end
    end
  end
  object grdTypes: TwwDBGrid [6]
    Left = 0
    Top = 46
    Width = 639
    Height = 404
    HelpContext = 215007
    ControlType.Strings = (
      'Default;CheckBox;T;F'
      'Active;CheckBox;T;F'
      'IsDefault;CheckBox;T;F')
    Selected.Strings = (
      'Name'#9'26'#9'Type'#9'T'#9
      'Description'#9'47'#9'Description'#9'F'#9
      'IsDefault'#9'1'#9'Default'#9#9
      'Active'#9'1'#9'Active'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 14155775
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsSimpleTypes
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgRowResize]
    ParentFont = False
    PopupMenu = popDelete
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = grdTypesCalcCellColors
    OnDblClick = grdTypesDblClick
    object btnGrid: TwwIButton
      Left = -2
      Top = 0
      Width = 22
      Height = 22
      HelpContext = 215014
      AllowAllUp = True
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
      NumGlyphs = 2
      OnClick = btnGridClick
    end
  end
  object pnlBottom: TDNMPanel [7]
    Left = 0
    Top = 450
    Width = 639
    Height = 60
    HelpContext = 215002
    Align = alBottom
    BevelWidth = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lblNote: TLabel
      Left = 0
      Top = 0
      Width = 639
      Height = 18
      HelpContext = 215015
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblNote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 11
      ExplicitTop = -5
      ExplicitWidth = 614
      ExplicitHeight = 15
    end
    object pnlshowActive: TDNMPanel
      Left = 558
      Top = 18
      Width = 81
      Height = 42
      HelpContext = 215016
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object cbxShowInactive: TCheckBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 77
        Height = 38
        HelpContext = 215006
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'Show Inactive ?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = cbxShowInactiveClick
      end
    end
    object pnlbottombuttons: TDNMPanel
      Left = 0
      Top = 18
      Width = 558
      Height = 42
      HelpContext = 215017
      Align = alClient
      BevelWidth = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        558
        42)
      object btnOk: TDNMSpeedButton
        Left = 23
        Top = 7
        Width = 98
        Height = 27
        HelpContext = 215004
        Anchors = [akTop, akBottom]
        Caption = 'Save'
        Default = True
        DisableTransparent = False
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
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 0
        WordWrap = True
        AutoDisableParentOnclick = True
        OnClick = btnOkClick
      end
      object btnCancel: TDNMSpeedButton
        Left = 437
        Top = 7
        Width = 98
        Height = 27
        HelpContext = 215005
        Anchors = [akTop, akBottom]
        Cancel = True
        Caption = '&Cancel'
        DisableTransparent = False
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
        TabOrder = 1
        WordWrap = True
        AutoDisableParentOnclick = True
        OnClick = btnCancelClick
      end
      object btnSimpletypeActions: TDNMSpeedButton
        Left = 285
        Top = 7
        Width = 118
        Height = 27
        HelpContext = 215013
        Anchors = [akTop, akBottom]
        Caption = 'Simple Type Actions'
        Default = True
        DisableTransparent = False
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = [fsBold]
        ModalResult = 1
        TabOrder = 2
        WordWrap = True
        AutoDisableParentOnclick = True
        OnClick = btnSimpletypeActionsClick
      end
      object cmdNew: TDNMSpeedButton
        Left = 154
        Top = 7
        Width = 98
        Height = 27
        Hint = '"Add A New Entry"'
        HelpContext = 215018
        Anchors = [akTop, akBottom]
        Caption = '&New'
        DisableTransparent = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        AutoDisableParentOnclick = True
        OnClick = cmdNewClick
      end
    end
  end
  inherited tmrdelayMsg: TTimer
    Left = 400
    Top = 304
  end
  inherited MyConnection: TERPConnection
    Server = 'localhost'
    Left = 170
    Top = 327
  end
  inherited popCustomiseGrid: TAdvPopupMenu
    Left = 123
    Top = 120
  end
  inherited imgsort: TImageList
    Bitmap = {
      494C010102004400940010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 298
    Top = 280
  end
  inherited mnuBusobjProperties: TAdvPopupMenu
    Left = 214
    Top = 128
  end
  inherited qryMemTrans: TERPQuery
    Left = 205
    Top = 256
  end
  object qrySimpleTypes: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'SELECT * FROM tblSimpleTypes '
      'WHERE TypeCode = :Type'
      'AND ((:ShowAll = "T") OR (:ShowAll = "F" AND Active = "T"))'
      'ORDER BY Name')
    BeforePost = qrySimpleTypesBeforePost
    Left = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'Type'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ShowAll'
      end
      item
        DataType = ftUnknown
        Name = 'ShowAll'
      end>
    object qrySimpleTypesName: TWideStringField
      DisplayLabel = 'Type'
      DisplayWidth = 26
      FieldName = 'Name'
      Origin = 'tblsimpletypes.Name'
      OnChange = qrySimpleTypesNameChange
      Size = 255
    end
    object qrySimpleTypesDescription: TWideStringField
      DisplayWidth = 47
      FieldName = 'Description'
      Origin = 'tblsimpletypes.Description'
      Size = 255
    end
    object qrySimpleTypesIsDefault: TWideStringField
      DisplayLabel = 'Default'
      DisplayWidth = 1
      FieldName = 'IsDefault'
      Origin = 'tblsimpletypes.IsDefault'
      FixedChar = True
      Size = 1
    end
    object qrySimpleTypesActive: TWideStringField
      DisplayWidth = 1
      FieldName = 'Active'
      Origin = 'tblsimpletypes.Active'
      FixedChar = True
      Size = 1
    end
    object qrySimpleTypesGlobalRef: TWideStringField
      DisplayWidth = 40
      FieldName = 'GlobalRef'
      Origin = 'tblsimpletypes.GlobalRef'
      Visible = False
      Size = 255
    end
    object qrySimpleTypesId: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'tblsimpletypes.Id'
      Visible = False
    end
    object qrySimpleTypesTypeCode: TWideStringField
      DisplayWidth = 30
      FieldName = 'TypeCode'
      Origin = 'tblsimpletypes.TypeCode'
      Visible = False
      Size = 30
    end
  end
  object dsSimpleTypes: TDataSource
    DataSet = qrySimpleTypes
    Left = 152
  end
  object popDelete: TAdvPopupMenu
    MenuStyler = datGUIStylers.MainMenuStyler
    Version = '2.5.3.4'
    Left = 112
    Top = 280
    object mnuDelete: TMenuItem
      Caption = 'Delete'
      HelpContext = 215019
      OnClick = mnuDeleteClick
    end
    object mnuToggleActive: TMenuItem
      Caption = 'Toggle "Active"'
      HelpContext = 215020
      OnClick = mnuToggleActiveClick
    end
    object mnuToggleDefault: TMenuItem
      Caption = 'Toggle "Default"'
      HelpContext = 215021
      OnClick = mnuToggleDefaultClick
    end
  end
end
