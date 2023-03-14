object fmEDIMapper: TfmEDIMapper
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Mapping'
  ClientHeight = 562
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    994
    562)
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 32
    Top = 15
    Width = 84
    Height = 15
    Caption = 'Mapping Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSave: TDNMSpeedButton
    Left = 368
    Top = 527
    Width = 87
    Height = 27
    HelpContext = 1063005
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
    TabOrder = 0
    OnClick = btnSaveClick
  end
  object btnCancel: TDNMSpeedButton
    Left = 514
    Top = 527
    Width = 87
    Height = 27
    HelpContext = 1063006
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
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object pagesMain: TPageControl
    Left = 8
    Top = 50
    Width = 978
    Height = 463
    ActivePage = tabFile
    TabOrder = 2
    object tabFile: TTabSheet
      Caption = 'File'
      object pnlFile: TDNMPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        Transparent = False
        DesignSize = (
          970
          433)
        object pagesFiles: TPageControl
          Left = 8
          Top = 8
          Width = 957
          Height = 417
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
      end
    end
    object tabMap: TTabSheet
      Caption = 'Map'
      ImageIndex = 1
      object pnlMap: TDNMPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        Transparent = False
        DesignSize = (
          970
          433)
        object pagesMap: TPageControl
          Left = 8
          Top = 8
          Width = 953
          Height = 392
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
        object btnAdd: TDNMSpeedButton
          Left = 8
          Top = 405
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'New Map'
          DisableTransparent = False
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -12
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
          TabOrder = 1
          OnClick = btnAddClick
        end
        object btnDelete: TDNMSpeedButton
          Left = 89
          Top = 405
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Delete Map'
          DisableTransparent = False
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -12
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
          TabOrder = 2
          OnClick = btnDeleteClick
        end
      end
    end
  end
  object edtMapName: TEdit
    Left = 122
    Top = 12
    Width = 336
    Height = 23
    TabOrder = 3
    OnChange = edtMapNameChange
  end
end
