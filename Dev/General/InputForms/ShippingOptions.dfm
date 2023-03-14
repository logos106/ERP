inherited frmShippingOption: TfrmShippingOption
  Left = 330
  Top = 226
  HelpContext = 351000
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Shipping Options'
  ClientHeight = 221
  ClientWidth = 333
  Color = clGray
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = True
  Position = poScreenCenter
  OnPaint = FormPaint
  ExplicitLeft = 330
  ExplicitTop = 226
  ExplicitWidth = 341
  ExplicitHeight = 248
  DesignSize = (
    333
    221)
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 221
    Width = 333
    HelpContext = 351010
  end
  object Label1: TLabel [1]
    Left = 43
    Top = 57
    Width = 245
    Height = 15
    HelpContext = 351001
    Caption = 'Please choose one of the following options:'
    Transparent = True
  end
  object GroupBox1: TGroupBox [2]
    Left = 53
    Top = 81
    Width = 225
    Height = 81
    HelpContext = 351002
    TabOrder = 0
    object rbShipInStock: TRadioButton
      Left = 64
      Top = 20
      Width = 137
      Height = 17
      HelpContext = 351003
      Caption = 'Ship available stock'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbShipAnyway: TRadioButton
      Left = 64
      Top = 48
      Width = 97
      Height = 17
      HelpContext = 351004
      Caption = 'Ship anyway'
      TabOrder = 1
    end
  end
  object btnOk: TDNMSpeedButton [3]
    Left = 55
    Top = 177
    Width = 87
    Height = 27
    HelpContext = 351005
    Caption = 'OK'
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
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Arial'
    HotTrackFont.Style = [fsBold]
    Kind = bkOK
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
    Transparent = True
  end
  object btnCancel: TDNMSpeedButton [4]
    Left = 183
    Top = 177
    Width = 87
    Height = 27
    HelpContext = 351006
    Cancel = True
    Caption = 'Cancel'
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
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Arial'
    HotTrackFont.Style = [fsBold]
    Kind = bkCancel
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 2
    Transparent = True
  end
  object pnlTitle: TDNMPanel [5]
    Left = 41
    Top = 6
    Width = 260
    Height = 40
    HelpContext = 351007
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object TitleShader: TShader
      Left = 2
      Top = 2
      Width = 256
      Height = 36
      HelpContext = 351008
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
        Width = 256
        Height = 36
        HelpContext = 351009
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Shipping Options'
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
