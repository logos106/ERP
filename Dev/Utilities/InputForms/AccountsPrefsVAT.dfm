object AccountsPrefsVATGUI: TAccountsPrefsVATGUI
  Left = 0
  Top = 0
  Caption = 'AccountsPrefsVATGUI'
  ClientHeight = 382
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  HelpContext = 1579002
  object pnlVAT: TDNMPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 208
    HelpContext = 1579003
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Category = 'United Kingdom'
    object Bevel5: TBevel
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 831
      Height = 194
      HelpContext = 1579004
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      Shape = bsFrame
      ExplicitLeft = 6
      ExplicitWidth = 1055
      ExplicitHeight = 271
    end
    object lblPanelCaption_VAT: TLabel
      Left = 14
      Top = 14
      Width = 21
      Height = 15
      HelpContext = 1579005
      Caption = 'VAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 25
      Top = 66
      Width = 52
      Height = 15
      HelpContext = 1579006
      Caption = 'SenderID'
    end
    object Label25: TLabel
      Left = 25
      Top = 92
      Width = 50
      Height = 15
      HelpContext = 1579007
      Caption = 'Key Type'
    end
    object Label26: TLabel
      Left = 25
      Top = 118
      Width = 28
      Height = 15
      HelpContext = 1579008
      Caption = 'Keys'
    end
    object Label27: TLabel
      Left = 255
      Top = 66
      Width = 51
      Height = 15
      HelpContext = 1579009
      Caption = 'VendorID'
    end
    object Label28: TLabel
      Left = 255
      Top = 92
      Width = 84
      Height = 15
      HelpContext = 1579010
      Caption = 'Currency Code'
    end
    object Bevel6: TBevel
      Left = 106
      Top = 24
      Width = 249
      Height = 27
      HelpContext = 1579011
    end
    object Label29: TLabel
      Left = 256
      Top = 118
      Width = 82
      Height = 15
      HelpContext = 1579012
      Caption = 'Authentication'
    end
    object Bevel7: TBevel
      Left = 65
      Top = 150
      Width = 440
      Height = 33
      HelpContext = 1579013
    end
    object Label30: TLabel
      Left = 86
      Top = 165
      Width = 214
      Height = 15
      HelpContext = 1579014
      Caption = 'Maximum No of Attempts per Session'
      Transparent = True
    end
    object Bevel8: TBevel
      Left = 361
      Top = 24
      Width = 123
      Height = 27
      HelpContext = 1579015
    end
    object wwCheckBox8: TwwCheckBox
      Left = 121
      Top = 30
      Width = 194
      Height = 17
      HelpContext = 1579016
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
      Caption = 'Use Electronic Submission'
      DataField = 'UseElectronicVAT'
      TabOrder = 0
    end
    object wwDBEdit5: TwwDBEdit
      Left = 361
      Top = 63
      Width = 121
      Height = 23
      HelpContext = 1579017
      DataField = 'VATVendorID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit6: TwwDBEdit
      Left = 106
      Top = 115
      Width = 121
      Height = 23
      HelpContext = 1579018
      DataField = 'VATKeys'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit7: TwwDBEdit
      Left = 106
      Top = 89
      Width = 121
      Height = 23
      HelpContext = 1579019
      DataField = 'VATKeyType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit8: TwwDBEdit
      Left = 106
      Top = 63
      Width = 121
      Height = 23
      HelpContext = 1579020
      DataField = 'VATSenderID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit9: TwwDBEdit
      Left = 361
      Top = 89
      Width = 121
      Height = 23
      HelpContext = 1579021
      DataField = 'VATCurrencyCode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit10: TwwDBEdit
      Left = 361
      Top = 115
      Width = 121
      Height = 23
      HelpContext = 1579022
      DataField = 'VATAuthentication'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit11: TwwDBEdit
      Left = 336
      Top = 162
      Width = 121
      Height = 23
      HelpContext = 1579023
      DataField = 'VATMaxAttemptsPerSession'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwCheckBox6: TwwCheckBox
      Left = 385
      Top = 30
      Width = 70
      Height = 17
      HelpContext = 1579024
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
      Caption = 'Live'
      DataField = 'UKGatewayIsLive'
      TabOrder = 8
    end
  end
end
