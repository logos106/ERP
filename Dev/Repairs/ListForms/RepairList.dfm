inherited RepairsList: TRepairsList
  Left = 254
  Top = 169
  HelpContext = 656000
  ExplicitLeft = 254
  ExplicitTop = 169
  PixelsPerInch = 96
  TextHeight = 13
  inherited HeaderPanel: TPanel
    HelpContext = 656001
    inherited Panel2: TPanel
      HelpContext = 656002
      inherited pnlButtons: TPanel
        HelpContext = 656003
        inherited cboCustomReports: TwwDBLookupCombo
          HelpContext = 656004
        end
      end
    end
    inherited Panel3: TPanel
      HelpContext = 656004
      inherited grpView: TwwRadioGroup
        TabOrder = 5
      end
      object btnExpressDetail: TDNMSpeedButton
        Left = 895
        Top = 5
        Width = 96
        Height = 25
        Hint = 'Product List'
        HelpContext = 656005
        Anchors = [akTop, akRight]
        Caption = 'Express'
        DisableTransparent = False
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
        TabOrder = 2
        OnClick = btnExpressDetailClick
      end
    end
    inherited dtFrom: TwwDBDateTimePicker
      Height = 22
      ExplicitHeight = 22
      HelpContext = 656006
    end
    inherited dtTo: TwwDBDateTimePicker
      Height = 22
      ExplicitHeight = 22
      HelpContext = 656007
    end
  end
  inherited Panel1: TPanel
    HelpContext = 656008
    inherited grdMain: TwwDBGrid
      Selected.Strings = (
        'RepairID'#9'10'#9'Repair#'#9'F'
        'CreationDate'#9'10'#9'Creation~Date'
        'Done'#9'1'#9'Done'
        'Notes'#9'10'#9'Repair'#9'Notes'
        'FeedbackNotes'#9'10'#9'Feedback'#9'Notes'
        'CustomerDetails'#9'15'#9'Name'#9'Customer Details'
        'Phone'#9'10'#9'Phone'#9'Customer Details'
        'Mobile'#9'10'#9'Mobile'#9'Customer Details'
        'Fax'#9'10'#9'Fax'#9'Customer Details'
        'JobDueDate'#9'10'#9'Date'#9'Scheduled Completion'
        'CompletionTime'#9'10'#9'Time'#9'Scheduled Completion'
        'Converted'#9'1'#9'Converted'
        'Status'#9'10'#9'Status'
        'UseBillCust'#9'1'#9'Bill Customer~Different?'
        'Billtoclient'#9'10'#9'Name'#9'Bill To Customer DEtails'
        'BillMobile'#9'10'#9'Mobile'#9'Bill To Customer DEtails'
        'BillPhone'#9'10'#9'Phone'#9'Bill To Customer DEtails'
        'BillFax'#9'10'#9'Fax'#9'Bill To Customer DEtails'
        'SOGlobalRef'#9'10'#9'Sales Order~Ref'
        'QuoteGlobalRef'#9'10'#9'Quote~Ref'
        'QuotedAmount'#9'10'#9'Ex'#9'Quoted Amount'
        'QuotedAmountinc'#9'10'#9'Inc'#9'Quoted Amount'
        'CustomerPONumber'#9'10'#9'Customer~PO#'
        'Shipping'#9'10'#9'Shipping'
        'Terms'#9'10'#9'Terms'
        'ClassName'#9'10'#9'Department'#9'F'
        'RepName'#9'10'#9'Rep'#9'F'
        'HoldRepair'#9'1'#9'Hold Repair'#9'F'
        'CUSTFLD1'#9'20'#9'CUSTFLD1'#9'F'
        'CUSTFLD2'#9'20'#9'CUSTFLD2'#9'F'
        'CUSTFLD3'#9'20'#9'CUSTFLD3'#9'F'
        'CUSTFLD4'#9'20'#9'CUSTFLD4'#9'F'
        'CUSTFLD5'#9'20'#9'CUSTFLD5'#9'F'
        'CUSTFLD6'#9'20'#9'CUSTFLD6'#9'F'
        'CUSTFLD7'#9'20'#9'CUSTFLD7'#9'F'
        'CUSTFLD8'#9'20'#9'CUSTFLD8'#9'F'
        'CUSTFLD9'#9'20'#9'CUSTFLD9'#9'F'
        'CUSTFLD10'#9'20'#9'CUSTFLD10'#9'F'
        'CUSTFLD11'#9'20'#9'CUSTFLD11'#9'F'
        'CUSTFLD12'#9'20'#9'CUSTFLD12'#9'F'
        'CUSTFLD13'#9'20'#9'CUSTFLD13'#9'F'
        'CUSTFLD14'#9'20'#9'CUSTFLD14'#9'F'
        'CUSTFLD15'#9'20'#9'CUSTFLD15'#9'F'
        'CUSTDATE1'#9'10'#9'CUSTDATE1'#9'F'
        'CUSTDATE2'#9'10'#9'CUSTDATE2'#9'F'
        'CUSTDATE3'#9'10'#9'CUSTDATE3'#9'F')
    end
  end
  inherited FooterPanel: TDNMPanel
    HelpContext = 656009
    inherited cmdPrint: TDNMSpeedButton
      Left = 626
      ExplicitLeft = 626
    end
    inherited barStatus: TAdvOfficeStatusBar
      Panels = <
        item
          AppearanceStyle = psLight
          DateFormat = 'mm/dd/yyyy'
          Progress.BackGround = clNone
          Progress.Indication = piPercentage
          Progress.Min = 0
          Progress.Max = 100
          Progress.Position = 0
          Progress.Level0Color = clLime
          Progress.Level0ColorTo = 14811105
          Progress.Level1Color = clYellow
          Progress.Level1ColorTo = 13303807
          Progress.Level2Color = 5483007
          Progress.Level2ColorTo = 11064319
          Progress.Level3Color = clRed
          Progress.Level3ColorTo = 13290239
          Progress.Level1Perc = 70
          Progress.Level2Perc = 90
          Progress.BorderColor = clBlack
          Progress.ShowBorder = False
          Progress.Stacked = False
          Style = psText
          Text = 'Current Filter'
          TimeFormat = 'hh:mm:ss'
          Width = 80
        end
        item
          AppearanceStyle = psLight
          DateFormat = 'mm/dd/yyyy'
          Progress.BackGround = clNone
          Progress.Indication = piPercentage
          Progress.Min = 0
          Progress.Max = 100
          Progress.Position = 0
          Progress.Level0Color = clLime
          Progress.Level0ColorTo = 14811105
          Progress.Level1Color = clYellow
          Progress.Level1ColorTo = 13303807
          Progress.Level2Color = 5483007
          Progress.Level2ColorTo = 11064319
          Progress.Level3Color = clRed
          Progress.Level3ColorTo = 13290239
          Progress.Level1Perc = 70
          Progress.Level2Perc = 90
          Progress.BorderColor = clBlack
          Progress.ShowBorder = False
          Progress.Stacked = False
          Style = psText
          TimeFormat = 'hh:mm:ss'
          Width = 700
        end
        item
          AppearanceStyle = psLight
          DateFormat = 'mm/dd/yyyy'
          Progress.BackGround = clNone
          Progress.Indication = piPercentage
          Progress.Min = 0
          Progress.Max = 100
          Progress.Position = 0
          Progress.Level0Color = clLime
          Progress.Level0ColorTo = 14811105
          Progress.Level1Color = clYellow
          Progress.Level1ColorTo = 13303807
          Progress.Level2Color = 5483007
          Progress.Level2ColorTo = 11064319
          Progress.Level3Color = clRed
          Progress.Level3ColorTo = 13290239
          Progress.Level1Perc = 70
          Progress.Level2Perc = 90
          Progress.BorderColor = clBlack
          Progress.ShowBorder = False
          Progress.Stacked = False
          Style = psOwnerDraw
          TimeFormat = 'hh:mm:ss'
          Width = 50
        end>
    end
  end
  inherited imgPopup: TImageList
    Bitmap = {
      494C010108003000340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF00000000000000000000FFFF000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000007F7F7F000000FF000000
      FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007F7F7F0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF007F7F7F00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF007F7F7F0000FFFF00FFFFFF000000000000FF
      FF0000FFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00FFFFFF007F7F7F00FFFFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000000000000000FF000000
      FF000000FF000000FF000000000000FF000000000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF00000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FF
      FF0000FFFF00000000000000000000000000000000007F7F7F000000FF000000
      FF000000FF000000000000FF000000FF000000FF000000000000FF000000FF00
      0000FF0000007F7F7F0000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      FF000000000000FF000000FF000000FF000000FF000000FF000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000FFFF007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000FFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F000000FF000000
      FF0000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      0000000000000000000000000000000000007F7F7F000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000008080000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF0000000000000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000000000FF
      FF00000000000080800000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000808000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      000000000000000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF0000808000008080000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FDFF8000FEFFFFFFF8FF8000FC7FF83F
      F8FFC000FC7F1010F87FE000D837E00FF81FF000E00FC007F80FF800E00F8003
      F00FFC00C0078003E00F0600C0078003E00F070000018003E00F0180C0078003
      F01F0180C007C007F00F0060E00FE00FF00FC060E00F3018F007C060D837F83F
      F007F044FEFFFFFFF007F07EFEFFFFFFFFFDFFFF847FE00FFFF8FFFF00EFE00F
      FFF1F9FF31BFE00FFFE3F0FF39FFF00FFFC7F0FF993FF00FE08FE07FCA1FF80F
      C01FC07FF40FF007803F843F9C07F007001F1E3F9603F007001FFE1FCB01F00F
      001FFF1FFF80F01F001FFF8FF7C0F81F001FFFC7FFE0FE1F803FFFE3EFF0FF1F
      C07FFFF8FFF8FF1FE0FFFFFFFFFCFFBF00000000000000000000000000000000
      000000000000}
  end
  inherited qryMain: TERPQuery
    SQL.Strings = (
      'SELECT'
      'R.RepairID AS RepairID,'
      'R.GlobalRef AS GlobalRef,'
      'R.CreationDate AS CreationDate,'
      'R.Done AS Done,'
      'R.Notes AS Notes,'
      'R.FeedbackNotes AS FeedbackNotes,'
      'R.CustomerDetails AS CustomerDetails,'
      'R.Phone AS Phone,'
      'R.AltPhone AS AltPhone,'
      'R.Mobile AS Mobile,'
      'R.Fax AS Fax,'
      'R.JobDueDate AS JobDueDate,'
      'R.Converted AS Converted,'
      'R.Status AS Status,'
      'R.BillToCustomerDetails AS BillToCustomerDetails,'
      'R.BillCusID AS BillCusID,'
      'R.UseBillCust AS UseBillCust,'
      'R.BillPhone AS BillPhone,'
      'R.BillAltPhone AS BillAltPhone,'
      'R.BillFax AS BillFax,'
      'R.SOGlobalRef AS SOGlobalRef,'
      'R.QuoteGlobalRef AS QuoteGlobalRef,'
      'R.CustomerPONumber AS CustomerPONumber,'
      'R.CompletionTime AS CompletionTime,'
      'R.Shipping AS Shipping,'
      'R.AllocatedEmployeeID AS AllocatedEmployeeID,'
      'R.Terms AS Terms,'
      'R.BillMobile AS BillMobile,'
      'R.QuotedAmount AS QuotedAmount,'
      'R.QuotedAmountinc AS QuotedAmountinc,'
      'R.HoldRepair as HoldRepair,'
      'C.Company AS RepairClient,'
      'C2.Company AS Billtoclient,'
      'E.EmployeeName AS RepName,'
      'class.ClassName AS ClassName,'
      'R.CUSTFLD1 AS CUSTFLD1,'
      'R.CUSTFLD2 AS CUSTFLD2,'
      'R.CUSTFLD3 AS CUSTFLD3,'
      'R.CUSTFLD4 AS CUSTFLD4,'
      'R.CUSTFLD5 AS CUSTFLD5,'
      'R.CUSTFLD6 AS CUSTFLD6,'
      'R.CUSTFLD7 AS CUSTFLD7,'
      'R.CUSTFLD8 AS CUSTFLD8,'
      'R.CUSTFLD9 AS CUSTFLD9,'
      'R.CUSTFLD10 AS CUSTFLD10,'
      'R.CUSTFLD11 AS CUSTFLD11,'
      'R.CUSTFLD12 AS CUSTFLD12,'
      'R.CUSTFLD13 AS CUSTFLD13,'
      'R.CUSTFLD14 AS CUSTFLD14,'
      'R.CUSTFLD15 AS CUSTFLD15,'
      'R.CUSTDATE1 AS CUSTDATE1,'
      'R.CUSTDATE2 AS CUSTDATE2,'
      'R.CUSTDATE3 AS CUSTDATE3'
      'FROM tblrepairs AS R'
      'Left Join tblclients AS C ON R.CusID = C.ClientID'
      'Left Join tblclients AS C2 ON R.BillCusID = C2.ClientID'
      'Left Join tblclass AS class ON R.ClassID = class.ClassID'
      'Left Join tblemployees AS E ON R.EmployeeID = E.EmployeeID'
      
        'Where ((R.CreationDate Between   :dtfrom and  :dtto) or (isnull(' +
        'R.CreationDate)) or (R.CreationDate='#39'1899-12-30'#39' ) )'
      'AND R.ClassID Like  :ClassID'
      'AND R.CUSID Like  :ClientId'
      ' and R.Cancelled = "F"'
      'ORDER BY CreationDate Desc, R.RepairID desc , C.Company')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtfrom'
      end
      item
        DataType = ftUnknown
        Name = 'dtto'
      end
      item
        DataType = ftUnknown
        Name = 'ClassID'
      end
      item
        DataType = ftUnknown
        Name = 'ClientId'
      end>
    inherited qryMainCUSTFLD1: TWideStringField
      Origin = 'tblrepairs.CUSTFLD1'
    end
    inherited qryMainCUSTFLD2: TWideStringField
      Origin = 'tblrepairs.CUSTFLD2'
    end
    inherited qryMainCUSTFLD3: TWideStringField
      Origin = 'tblrepairs.CUSTFLD3'
    end
    inherited qryMainCUSTFLD4: TWideStringField
      Origin = 'tblrepairs.CUSTFLD4'
    end
    inherited qryMainCUSTFLD5: TWideStringField
      Origin = 'tblrepairs.CUSTFLD5'
    end
    inherited qryMainCUSTFLD6: TWideStringField
      Origin = 'tblrepairs.CUSTFLD6'
    end
    inherited qryMainCUSTFLD7: TWideStringField
      Origin = 'tblrepairs.CUSTFLD7'
    end
    inherited qryMainCUSTFLD8: TWideStringField
      Origin = 'tblrepairs.CUSTFLD8'
    end
    inherited qryMainCUSTFLD9: TWideStringField
      Origin = 'tblrepairs.CUSTFLD9'
    end
    inherited qryMainCUSTFLD10: TWideStringField
      Origin = 'tblrepairs.CUSTFLD10'
    end
    inherited qryMainCUSTFLD11: TWideStringField
      Origin = 'tblrepairs.CUSTFLD11'
    end
    inherited qryMainCUSTFLD12: TWideStringField
      Origin = 'tblrepairs.CUSTFLD12'
    end
    inherited qryMainCUSTFLD13: TWideStringField
      Origin = 'tblrepairs.CUSTFLD13'
    end
    inherited qryMainCUSTFLD14: TWideStringField
      Origin = 'tblrepairs.CUSTFLD14'
    end
    inherited qryMainCUSTFLD15: TWideStringField
      Origin = 'tblrepairs.CUSTFLD15'
    end
    inherited qryMainCUSTDATE1: TDateTimeField
      Origin = 'tblrepairs.CUSTDATE1'
    end
    inherited qryMainCUSTDATE2: TDateTimeField
      Origin = 'tblrepairs.CUSTDATE2'
    end
    inherited qryMainCUSTDATE3: TDateTimeField
      Origin = 'tblrepairs.CUSTDATE3'
    end
  end
end
