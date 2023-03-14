inherited fmHiringTimes: TfmHiringTimes
  Left = 511
  Top = 264
  HelpContext = 1342002
  BorderStyle = bsDialog
  Caption = 'Hiring Times'
  ClientHeight = 273
  ClientWidth = 624
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 630
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 273
    Width = 624
    HelpContext = 1342003
    ExplicitTop = 273
    ExplicitWidth = 624
  end
  object Label79: TLabel [3]
    Left = 224
    Top = 76
    Width = 33
    Height = 16
    HelpContext = 1342004
    Caption = 'From'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label1: TLabel [4]
    Left = 482
    Top = 76
    Width = 15
    Height = 16
    HelpContext = 1342005
    Caption = 'To'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label2: TLabel [5]
    Left = 22
    Top = 122
    Width = 46
    Height = 16
    HelpContext = 1342006
    Caption = 'Quoted'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label3: TLabel [6]
    Left = 28
    Top = 164
    Width = 40
    Height = 16
    HelpContext = 1342007
    Caption = 'Actual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Bevel1: TBevel [7]
    Left = 84
    Top = 108
    Width = 523
    Height = 101
    HelpContext = 1342008
  end
  object lbltimeToHint: TLabel [10]
    Left = 84
    Top = 192
    Width = 523
    Height = 16
    HelpContext = 1342009
    Alignment = taCenter
    AutoSize = False
    Caption = 'Please Provide the '#39'Actuals'#39' in the Hire to Change the Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 6381921
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object tmActualHireFrom: TwwDBDateTimePicker [11]
    Left = 374
    Top = 64
    Width = 118
    Height = 23
    HelpContext = 1342010
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'ActualHireFrom'
    DataSource = dsHireLines
    Epoch = 1950
    ShowButton = True
    TabOrder = 7
    Visible = False
  end
  object tmHireFrom: TwwDBDateTimePicker [12]
    Left = 472
    Top = 64
    Width = 118
    Height = 23
    HelpContext = 1342011
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'HireFrom'
    DataSource = dsHireLines
    Epoch = 1950
    ShowButton = True
    TabOrder = 2
    Visible = False
  end
  object tmedActualHireFrom: TErpDbTimeCombo [13]
    Left = 218
    Top = 167
    Width = 100
    Height = 23
    Hint = '"Select The Time That The Appointment Will Start"'
    HelpContext = 1342012
    AutoDropDown = True
    DataField = 'actualHireFromtime'
    DataSource = dsHireLines
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Items.Strings = (
      '12:00 AM'
      '12:30 AM'
      '01:00 AM'
      '01:30 AM'
      '02:00 AM'
      '02:30 AM'
      '03:00 AM'
      '03:30 AM'
      '04:00 AM'
      '04:30 AM'
      '05:00 AM'
      '05:30 AM'
      '06:00 AM'
      '06:30 AM'
      '07:00 AM'
      '07:30 AM'
      '08:00 AM'
      '08:30 AM'
      '09:00 AM'
      '09:30 AM'
      '10:00 AM'
      '10:30 AM'
      '11:00 AM'
      '11:30 AM'
      '12:00 PM'
      '12:30 PM'
      '01:00 PM'
      '01:30 PM'
      '02:00 PM'
      '02:30 PM'
      '03:00 PM'
      '03:30 PM'
      '04:00 PM'
      '04:30 PM'
      '05:00 PM'
      '05:30 PM'
      '06:00 PM'
      '06:30 PM'
      '07:00 PM'
      '07:30 PM'
      '08:00 PM'
      '08:30 PM'
      '09:00 PM'
      '09:30 PM'
      '10:00 PM'
      '10:30 PM'
      '11:00 PM'
      '11:30 PM')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnDropDown = tmedActualHireFromDropDown
    OnEnter = tmedActualHireFromDropDown
    Interval = 30
  end
  object tmHireTo: TwwDBDateTimePicker [14]
    Left = 498
    Top = 65
    Width = 118
    Height = 23
    HelpContext = 1342013
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'HireTo'
    DataSource = dsHireLines
    Epoch = 1950
    ShowButton = True
    TabOrder = 5
    Visible = False
  end
  object tmActualHireTo: TwwDBDateTimePicker [15]
    Left = 443
    Top = 64
    Width = 118
    Height = 23
    HelpContext = 1342014
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'ActualHireTo'
    DataSource = dsHireLines
    Epoch = 1950
    ShowButton = True
    TabOrder = 11
    Visible = False
  end
  object dtHireTo: TwwDBDateTimePicker [16]
    Left = 353
    Top = 119
    Width = 124
    Height = 23
    HelpContext = 1342015
    TabStop = False
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'HireTo'
    DataSource = dsHireLines
    Epoch = 1950
    ReadOnly = True
    ShowButton = True
    TabOrder = 3
  end
  object dtActualHireTo: TwwDBDateTimePicker [17]
    Left = 353
    Top = 167
    Width = 124
    Height = 23
    HelpContext = 1342016
    TabStop = False
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'ActualHireTo'
    DataSource = dsHireLines
    Epoch = 1950
    ReadOnly = True
    ShowButton = True
    TabOrder = 9
  end
  object dtActualHireFrom: TwwDBDateTimePicker [18]
    Left = 92
    Top = 167
    Width = 124
    Height = 23
    HelpContext = 1342017
    TabStop = False
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'ActualHireFrom'
    DataSource = dsHireLines
    Epoch = 1950
    ReadOnly = True
    ShowButton = True
    TabOrder = 6
  end
  object btnSave: TDNMSpeedButton [19]
    AlignWithMargins = True
    Left = 175
    Top = 230
    Width = 108
    Height = 31
    Hint = 'Save the Repair'
    HelpContext = 1342018
    Margins.Bottom = 2
    Caption = 'Ok'
    DisableTransparent = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnClick = btnSaveClick
  end
  object btnCancel: TDNMSpeedButton [20]
    AlignWithMargins = True
    Left = 341
    Top = 230
    Width = 108
    Height = 31
    Hint = 'Cancel the Changes'
    HelpContext = 1342019
    Margins.Top = 2
    Margins.Bottom = 2
    Caption = 'Cancel'
    DisableTransparent = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnClick = btnCancelClick
  end
  object dtHireFrom: TwwDBDateTimePicker [21]
    Left = 92
    Top = 119
    Width = 124
    Height = 23
    HelpContext = 1342020
    TabStop = False
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'HireFrom'
    DataSource = dsHireLines
    Epoch = 1950
    ReadOnly = True
    ShowButton = True
    TabOrder = 0
  end
  object pnlTitle: TDNMPanel [22]
    Left = 33
    Top = 14
    Width = 558
    Height = 45
    HelpContext = 1342021
    Anchors = [akLeft, akTop, akRight]
    
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Locked = True
    ParentFont = False
    TabOrder = 14
    object TitleShader: TShader
      Left = 1
      Top = 1
      Width = 556
      Height = 43
      HelpContext = 1342022
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
      object DBText1: TDBText
        Left = 0
        Top = 0
        Width = 556
        Height = 43
        HelpContext = 1342023
        Align = alClient
        Alignment = taCenter
        DataField = 'AssetName'
        DataSource = dsHireLines
        Transparent = True
        ExplicitTop = 3
      end
    end
  end
  object tmedHireFrom: TErpDbTimeCombo [23]
    Left = 218
    Top = 119
    Width = 100
    Height = 23
    Hint = '"Select The Time That The Appointment Will Start"'
    HelpContext = 1342024
    AutoDropDown = True
    DataField = 'HireFromTime'
    DataSource = dsHireLines
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Items.Strings = (
      '12:00 AM'
      '12:30 AM'
      '01:00 AM'
      '01:30 AM'
      '02:00 AM'
      '02:30 AM'
      '03:00 AM'
      '03:30 AM'
      '04:00 AM'
      '04:30 AM'
      '05:00 AM'
      '05:30 AM'
      '06:00 AM'
      '06:30 AM'
      '07:00 AM'
      '07:30 AM'
      '08:00 AM'
      '08:30 AM'
      '09:00 AM'
      '09:30 AM'
      '10:00 AM'
      '10:30 AM'
      '11:00 AM'
      '11:30 AM'
      '12:00 PM'
      '12:30 PM'
      '01:00 PM'
      '01:30 PM'
      '02:00 PM'
      '02:30 PM'
      '03:00 PM'
      '03:30 PM'
      '04:00 PM'
      '04:30 PM'
      '05:00 PM'
      '05:30 PM'
      '06:00 PM'
      '06:30 PM'
      '07:00 PM'
      '07:30 PM'
      '08:00 PM'
      '08:30 PM'
      '09:00 PM'
      '09:30 PM'
      '10:00 PM'
      '10:30 PM'
      '11:00 PM'
      '11:30 PM')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnChange = tmedHireFromChange
    OnDropDown = tmedHireFromDropDown
    OnEnter = tmedHireFromDropDown
    Interval = 30
  end
  object tmedHireTo: TErpDbTimeCombo [24]
    Left = 483
    Top = 119
    Width = 100
    Height = 23
    Hint = '"Select The Time That The Appointment Will Start"'
    HelpContext = 1342025
    AutoDropDown = True
    DataField = 'HireToTime'
    DataSource = dsHireLines
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Items.Strings = (
      '12:00 AM'
      '12:30 AM'
      '01:00 AM'
      '01:30 AM'
      '02:00 AM'
      '02:30 AM'
      '03:00 AM'
      '03:30 AM'
      '04:00 AM'
      '04:30 AM'
      '05:00 AM'
      '05:30 AM'
      '06:00 AM'
      '06:30 AM'
      '07:00 AM'
      '07:30 AM'
      '08:00 AM'
      '08:30 AM'
      '09:00 AM'
      '09:30 AM'
      '10:00 AM'
      '10:30 AM'
      '11:00 AM'
      '11:30 AM'
      '12:00 PM'
      '12:30 PM'
      '01:00 PM'
      '01:30 PM'
      '02:00 PM'
      '02:30 PM'
      '03:00 PM'
      '03:30 PM'
      '04:00 PM'
      '04:30 PM'
      '05:00 PM'
      '05:30 PM'
      '06:00 PM'
      '06:30 PM'
      '07:00 PM'
      '07:30 PM'
      '08:00 PM'
      '08:30 PM'
      '09:00 PM'
      '09:30 PM'
      '10:00 PM'
      '10:30 PM'
      '11:00 PM'
      '11:30 PM')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnDropDown = tmedHireToDropDown
    OnEnter = tmedHireToDropDown
    Interval = 30
  end
  object tmedActualHireTo: TErpDbTimeCombo [25]
    Left = 483
    Top = 167
    Width = 100
    Height = 23
    Hint = '"Select The Time That The Appointment Will Start"'
    HelpContext = 1342026
    AutoDropDown = True
    DataField = 'actualHiretotime'
    DataSource = dsHireLines
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Items.Strings = (
      '12:00 AM'
      '12:30 AM'
      '01:00 AM'
      '01:30 AM'
      '02:00 AM'
      '02:30 AM'
      '03:00 AM'
      '03:30 AM'
      '04:00 AM'
      '04:30 AM'
      '05:00 AM'
      '05:30 AM'
      '06:00 AM'
      '06:30 AM'
      '07:00 AM'
      '07:30 AM'
      '08:00 AM'
      '08:30 AM'
      '09:00 AM'
      '09:30 AM'
      '10:00 AM'
      '10:30 AM'
      '11:00 AM'
      '11:30 AM'
      '12:00 PM'
      '12:30 PM'
      '01:00 PM'
      '01:30 PM'
      '02:00 PM'
      '02:30 PM'
      '03:00 PM'
      '03:30 PM'
      '04:00 PM'
      '04:30 PM'
      '05:00 PM'
      '05:30 PM'
      '06:00 PM'
      '06:30 PM'
      '07:00 PM'
      '07:30 PM'
      '08:00 PM'
      '08:30 PM'
      '09:00 PM'
      '09:30 PM'
      '10:00 PM'
      '10:30 PM'
      '11:00 PM'
      '11:30 PM')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnDropDown = tmedActualHireToDropDown
    OnEnter = tmedActualHireToDropDown
    Interval = 30
  end
  inherited tmrProcessMessage: TTimer
    Left = 201
    Top = 16
  end
  inherited tmrdelay: TTimer
    Left = 243
    Top = 16
  end
  inherited popSpelling: TPopupMenu
    Left = 327
    Top = 16
  end
  inherited tmrdelayMsg: TTimer
    Left = 285
    Top = 16
  end
  inherited imgsort: TImageList
    Bitmap = {
      494C010102007001780110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object dsHireLines: TDataSource
    Left = 370
    Top = 16
  end
end
