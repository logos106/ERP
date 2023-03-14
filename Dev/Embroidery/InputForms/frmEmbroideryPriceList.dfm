inherited EmbroideryPriceListGUI: TEmbroideryPriceListGUI
  Left = 126
  Top = 175
  Caption = 'Embroidery Price List'
  ClientHeight = 462
  ClientWidth = 998
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object DNMPanel1: TDNMPanel [1]
    Left = 0
    Top = 0
    Width = 998
    Height = 462
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object grdMain: TwwDBGrid
      Left = 16
      Top = 72
      Width = 969
      Height = 337
      IniAttributes.Delimiter = ';;'
      TitleColor = clWindow
      FixedCols = 1
      ShowHorzScrollBar = True
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
    end
    object btnSave: TDNMSpeedButton
      Left = 315
      Top = 422
      Width = 87
      Height = 27
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
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btnSaveClick
    end
    object btnCancel: TDNMSpeedButton
      Left = 598
      Top = 422
      Width = 87
      Height = 27
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
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = btnCancelClick
    end
    object btnConfig: TDNMSpeedButton
      Left = 456
      Top = 422
      Width = 87
      Height = 27
      Caption = 'Config'
      DisableTransparent = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = [fsBold]
      TabOrder = 2
      OnClick = btnConfigClick
    end
  end
  object pnlTitle: TDNMPanel [2]
    Left = 325
    Top = 10
    Width = 349
    Height = 45
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
      Width = 345
      Height = 41
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      FromColor = clBtnFace
      ToColor = clWhite
      FromColorMirror = clWhite
      ToColorMirror = clBtnFace
      Steps = 10
      Direction = False
      Version = '1.2.1.1'
      object TitleLabel: TLabel
        Left = 0
        Top = 0
        Width = 345
        Height = 41
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Embroidery Price List'
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
  inherited ApplicationEvents1: TApplicationEvents
    Left = 80
  end
  inherited dlgReportSelect: TSelectionDialog
    Left = 16
  end
  inherited MyConnection: TMyConnection
    Left = 112
    Top = 8
  end
  inherited DataState: TDataState
    Left = 16
    Top = 40
  end
  inherited popCustomiseGrid: TAdvPopupMenu
    Left = 144
  end
  object dsMain: TDataSource
    DataSet = qryMain
    Left = 48
    Top = 40
  end
  object qryMain: TMyQuery
    SQL.Strings = (
      'SELECT * '
      'FROM tblembroiderypricelist'
      'ORDER BY EmbroideryPriceListID'
      'LIMIT :RowLimit')
    Left = 80
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'RowLimit'
        Value = ''
      end>
  end
  object qryAxes: TMyQuery
    SQL.Strings = (
      'SELECT AxisType, AxisValue'
      'FROM tblembroideryaxes'
      'WHERE AxisType = :AxisType'
      'ORDER BY EmbroideryAxesID')
    Left = 112
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'AxisType'
        Value = ''
      end>
  end
end
