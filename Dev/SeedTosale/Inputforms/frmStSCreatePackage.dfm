inherited fmStSCreatePackage: TfmStSCreatePackage
  Left = 535
  Top = 231
  Caption = 'Seed To Sale - Create Package'
  ClientHeight = 580
  ClientWidth = 787
  ExplicitWidth = 793
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    Top = 537
    Width = 787
    ExplicitTop = 503
    ExplicitWidth = 732
  end
  inherited shapehint: TShape
    Left = 13
    ExplicitLeft = 11
  end
  inherited shapehintextra1: TShape
    Left = 68
    ExplicitLeft = 62
  end
  inherited pnlFooter: TDNMPanel
    Top = 537
    Width = 787
    ExplicitTop = 537
    ExplicitWidth = 787
    inherited btnCompleted: TDNMSpeedButton
      Left = 286
      Enabled = False
      AutoDisableParentOnclick = False
      OnClick = btnCompletedClick
      ExplicitLeft = 286
    end
    inherited btnClose: TDNMSpeedButton
      Left = 398
      OnClick = btnCloseClick
      ExplicitLeft = 398
    end
  end
  inherited pnlHeader: TDNMPanel
    Width = 787
    ExplicitWidth = 787
    inherited pnlTitle: TDNMPanel
      Left = 193
      Width = 400
      ExplicitLeft = 193
      ExplicitWidth = 400
      inherited TitleShader: TShader
        Width = 398
        Color = clWhite
        ParentBackground = False
        FromColor = clWhite
        ToColorMirror = clWhite
        ExplicitWidth = 398
        inherited TitleLabel: TLabel
          Width = 398
          Caption = 'New Package'
          ExplicitWidth = 500
        end
      end
    end
  end
  inherited pnlDetails: TDNMPanel
    Width = 787
    Height = 480
    ExplicitWidth = 787
    ExplicitHeight = 480
    object lblPackgSrc: TLabel
      Left = 7
      Top = 76
      Width = 115
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Package source'
      FocusControl = cbbPackgSrc
    end
    object lblPackgTag: TLabel
      Left = 7
      Top = 41
      Width = 115
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'New Package Tag'
      FocusControl = cbbNewPackg
    end
    object lblPackgDate: TLabel
      Left = 434
      Top = 76
      Width = 79
      Height = 15
      Caption = 'Package Date'
      FocusControl = dtpPackgDate
    end
    object lblPackgName: TLabel
      Left = 413
      Top = 41
      Width = 100
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = ' Package Name'
      FocusControl = edtPackgName
    end
    object lbDepartment: TLabel
      Left = 22
      Top = 8
      Width = 100
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Department'
    end
    object Label1: TLabel
      Left = 7
      Top = 97
      Width = 115
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Label1'
      FocusControl = edtStsTag
      Visible = False
      WordWrap = True
    end
    object cbbPackgSrc: TComboBox
      Left = 129
      Top = 73
      Width = 256
      Height = 23
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbbPackgSrcChange
      Items.Strings = (
        'Immature plants'
        'Vegetative plants'
        'Harvest'
        'Other packets')
    end
    object pnlPckgSrc: TPanel
      Left = 6
      Top = 114
      Width = 776
      Height = 362
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Caption = 'You cannot create a package'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 1
    end
    object dtpPackgDate: TDateTimePicker
      Left = 519
      Top = 73
      Width = 255
      Height = 23
      Date = 44460.000000000000000000
      Time = 44460.000000000000000000
      TabOrder = 2
    end
    object edtPackgName: TEdit
      Left = 519
      Top = 38
      Width = 255
      Height = 23
      TabOrder = 3
      Text = '<enter Package name>'
      OnEnter = edtPackgNameEnter
    end
    object cbbNewPackg: TComboBox
      Left = 129
      Top = 38
      Width = 256
      Height = 23
      Style = csDropDownList
      TabOrder = 4
    end
    object edtStsTag: TEdit
      Left = 129
      Top = 38
      Width = 121
      Height = 23
      ReadOnly = True
      TabOrder = 5
      Visible = False
    end
    object dblkcbbDepartment: TDBLookupComboBox
      Left = 129
      Top = 4
      Width = 256
      Height = 23
      KeyField = 'ClassID'
      ListField = 'ClassName'
      ListSource = dsDepartment
      TabOrder = 6
      OnCloseUp = dblkcbbDepartmentCloseUp
    end
  end
  inherited tmrProcessMessage: TTimer
    Left = 450
    Top = 284
  end
  inherited tmrdelay: TTimer
    Left = 486
    Top = 284
  end
  inherited popSpelling: TPopupMenu
    Left = 134
    Top = 284
  end
  inherited tmrdelayMsg: TTimer
    Left = 422
    Top = 284
  end
  inherited dlgReportSelect: TSelectionDialog
    Left = 239
    Top = 284
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 275
    Top = 284
  end
  inherited MyConnection: TERPConnection
    Connected = True
    Left = 24
    Top = 283
  end
  inherited DataState: TDataState
    Left = 310
    Top = 284
  end
  inherited popCustomiseGrid: TAdvPopupMenu
    Left = 169
    Top = 284
  end
  inherited imgsort: TImageList
    Left = 345
    Top = 284
    Bitmap = {
      494C010102004801340310001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 64
    Top = 284
  end
  inherited ProgressDialogOBJ: TProgressDialog
    Left = 380
    Top = 284
  end
  inherited mnuBusobjProperties: TAdvPopupMenu
    Left = 204
    Top = 284
  end
  inherited qryMemTrans: TERPQuery
    Left = 99
    Top = 284
  end
  inherited tmrOnshow: TTimer
    Left = 526
    Top = 284
  end
  object qryHarvestNames: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'select id, harvestname, TotalQty, PackedQty, UOMID, UOM '
      'from tblstsharvest '
      'where (TotalQty > PackedQty) and (DeptID=:DeptID)'
      'order by harvestname;')
    Left = 48
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DeptID'
      end>
  end
  object qryPackgTag: TERPQuery
    Connection = MyConnection
    Left = 152
    Top = 188
  end
  object scrptMain: TERPScript
    Connection = MyConnection
    IgnorenContinueOnError = False
    Left = 320
    Top = 191
  end
  object qryUnits: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'select UnitID, UnitName, Multiplier'
      'from tblunitsofmeasure'
      'where (Active = True)  and (PartID = :PartID)'
      'order by UnitName;')
    Left = 240
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PartID'
      end>
  end
  object qryAvailable: TERPQuery
    Connection = MyConnection
    Left = 416
    Top = 192
    object qryAvailableID: TIntegerField
      FieldName = 'ID'
    end
    object qryAvailableTagID: TIntegerField
      FieldName = 'TagID'
    end
    object qryAvailableCheck: TBooleanField
      FieldName = 'Check'
    end
    object qryAvailableTag: TWideStringField
      DisplayWidth = 80
      FieldName = 'Tag'
      ReadOnly = True
    end
    object qryAvailableActiveCount: TLargeintField
      FieldName = 'ActiveCount'
      ReadOnly = True
    end
    object qryAvailableStrainName: TWideStringField
      DisplayWidth = 40
      FieldName = 'StrainName'
    end
    object qryAvailableQty: TIntegerField
      FieldName = 'Qty'
      OnChange = qryAvailableQtyChange
    end
  end
  object qryStrain: TERPQuery
    Connection = MyConnection
    Left = 496
    Top = 192
  end
  object qryAvPackage: TERPQuery
    Connection = MyConnection
    Left = 574
    Top = 191
    object qryAvPackageID: TIntegerField
      FieldName = 'ID'
    end
    object qryAvPackagePkgID: TIntegerField
      FieldName = 'PkgID'
    end
    object qryAvPackageCheck: TBooleanField
      FieldName = 'Check'
    end
    object qryAvPackageTag: TWideStringField
      FieldName = 'Tag'
      ReadOnly = True
    end
    object qryAvPackagePackageName: TWideStringField
      FieldName = 'PackageName'
      ReadOnly = True
    end
    object qryAvPackageTagID: TIntegerField
      FieldName = 'TagID'
    end
  end
  object qryPkgLines: TERPQuery
    Connection = MyConnection
    Left = 648
    Top = 192
  end
  object qryDepartment: TERPQuery
    Connection = MyConnection
    SQL.Strings = (
      'SELECT C.ClassID, C.ClassName '
      
        'FROM tblClass C INNER JOIN tblStsClass Sts ON C.ClassID = Sts.Cl' +
        'assID  '
      'WHERE C.Active = True'
      'ORDER BY C.ClassName;')
    Left = 719
    Top = 192
    object qryDepartmentClassID: TIntegerField
      FieldName = 'ClassID'
      Visible = False
    end
    object qryDepartmentClassName: TWideStringField
      DisplayWidth = 20
      FieldName = 'ClassName'
    end
  end
  object dsDepartment: TDataSource
    DataSet = qryDepartment
    Left = 719
    Top = 248
  end
end