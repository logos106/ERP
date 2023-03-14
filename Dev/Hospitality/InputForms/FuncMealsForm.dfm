inherited FuncMealsGUI: TFuncMealsGUI
  Left = 291
  Top = 218
  Caption = 'Meals & Courses'
  ClientHeight = 339
  ClientWidth = 649
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 16
    Top = 60
    Width = 34
    Height = 15
    Caption = 'Meals'
    Transparent = True
  end
  object Label2: TLabel [1]
    Left = 344
    Top = 61
    Width = 48
    Height = 15
    Caption = 'Courses'
    Transparent = True
  end
  inherited imgGridWatermark: TImage
    Left = 183
  end
  object btnCancel: TDNMSpeedButton [3]
    Left = 392
    Top = 300
    Width = 87
    Height = 27
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
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Arial'
    HotTrackFont.Style = [fsBold]
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnSave: TDNMSpeedButton [4]
    Left = 170
    Top = 300
    Width = 87
    Height = 27
    Caption = 'Save'
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
    NumGlyphs = 2
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object grdMeals: TwwDBGrid [5]
    Left = 16
    Top = 76
    Width = 289
    Height = 204
    Selected.Strings = (
      'MealName'#9'24'#9'Meal'#9'F'#9
      'MealOrder'#9'8'#9'Sort Order'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clWhite
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsMeals
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    object grdMealsIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 23
      Height = 22
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
      OnClick = grdMealsIButtonClick
    end
  end
  object grdCourses: TwwDBGrid [6]
    Left = 344
    Top = 77
    Width = 289
    Height = 204
    Selected.Strings = (
      'CourseName'#9'24'#9'Course'#9'F'#9
      'CourseOrder'#9'8'#9'Sort Order'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clWhite
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsCourses
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    object grdCoursesIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 23
      Height = 22
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
      OnClick = grdCoursesIButtonClick
    end
  end
  object pnlTitle: TDNMPanel [7]
    Left = 196
    Top = 6
    Width = 262
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object TitleShader: TShader
      Left = 2
      Top = 2
      Width = 258
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
        Width = 258
        Height = 41
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Meals && Courses'
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
  inherited popCustomiseGrid: TAdvPopupMenu
    Left = 144
  end
  object qryMeals: TMyQuery
    Connection = MyConnection
    SQL.Strings = (
      'Select FuncMealID, MealName, MealOrder '
      'FROM tblFuncMeals'
      'ORDER BY MealOrder')
    Left = 116
    Top = 167
    object qryMealsMealName: TStringField
      DisplayLabel = 'Meal'
      DisplayWidth = 24
      FieldName = 'MealName'
      Size = 255
    end
    object qryMealsMealOrder: TWordField
      DisplayLabel = 'Sort Order'
      DisplayWidth = 8
      FieldName = 'MealOrder'
      OnChange = qryMealsMealOrderChange
      DisplayFormat = '#'
      EditFormat = '#'
    end
    object qryMealsFuncMealID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'FuncMealID'
      ReadOnly = True
      Visible = False
    end
  end
  object qryCourses: TMyQuery
    Connection = MyConnection
    SQL.Strings = (
      'Select FuncCourseID, CourseName, CourseOrder '
      'FROM tblFuncCourses'
      'ORDER BY CourseOrder')
    Left = 452
    Top = 167
    object qryCoursesCourseName: TStringField
      DisplayLabel = 'Course'
      DisplayWidth = 24
      FieldName = 'CourseName'
      Size = 255
    end
    object qryCoursesCourseOrder: TWordField
      DisplayLabel = 'Sort Order'
      DisplayWidth = 8
      FieldName = 'CourseOrder'
      OnChange = qryCoursesCourseOrderChange
      DisplayFormat = '#'
      EditFormat = '#'
    end
    object qryCoursesFuncCourseID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'FuncCourseID'
      ReadOnly = True
      Visible = False
    end
  end
  object dsMeals: TDataSource
    DataSet = qryMeals
    Left = 115
    Top = 136
  end
  object dsCourses: TDataSource
    DataSet = qryCourses
    Left = 452
    Top = 138
  end
end
