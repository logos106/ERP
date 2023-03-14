inherited fmStockTransferEntryBin: TfmStockTransferEntryBin
  HelpContext = 1109002
  Caption = 'Bin Transfer'
  PixelsPerInch = 96
  TextHeight = 15
  inherited lblSkingroupMsg: TLabel
    ExplicitTop = 409
  end
  inherited DNMPanel1: TDNMPanel
    HelpContext = 1109004
    inherited pnlTitle: TDNMPanel
      HelpContext = 1109005
      inherited TitleShader: TShader
        inherited TitleLabel: TLabel
          HelpContext = 1109003
          Caption = 'Bin Transfer'
        end
      end
    end
  end
  inherited DNMPanel2: TDNMPanel
    HelpContext = 1109006
    inherited btnCompleted: TDNMSpeedButton
      Left = 62
      ExplicitLeft = 62
    end
    inherited btncopy: TDNMSpeedButton
      Left = 508
      ExplicitLeft = 508
    end
    inherited cmdPrintPick: TDNMSpeedButton
      Left = 620
      ExplicitLeft = 620
    end
    inherited cmdDeliveryDocket: TDNMSpeedButton
      Left = 732
      ExplicitLeft = 732
    end
    inherited btnClose: TDNMSpeedButton
      Left = 844
      ExplicitLeft = 844
    end
  end
  inherited pnlDetail: TDNMPanel
    HelpContext = 1109007
    inherited SubformDetails: TwwDBGrid
      Selected.Strings = (
        'PartBarcode'#9'10'#9'Product Barcode'#9'F'#9
        'ProductName'#9'15'#9'Product Name'#9'F'#9
        'ProductDesc'#9'25'#9'Description'#9'F'#9
        'UOM'#9'5'#9'UOM'#9'F'#9
        'UOMAvailableQty'#9'7'#9'Available'#9'T'#9'Quantity'
        'FormulaQtyValue'#9'10'#9'FormulaQtyValue'#9'F'#9'Quantity'
        'FormulaQtyValue1'#9'10'#9'FormulaQtyValue1'#9'F'#9'Quantity'
        'FormulaQtyValue2'#9'10'#9'FormulaQtyValue2'#9'F'#9'Quantity'
        'FormulaQtyValue3'#9'10'#9'FormulaQtyValue3'#9'F'#9'Quantity'
        'FormulaQtyValue4'#9'10'#9'FormulaQtyValue4'#9'F'#9'Quantity'
        'FormulaQtyValue5'#9'10'#9'FormulaQtyValue5'#9'F'#9'Quantity'
        'UOMTransferQty'#9'7'#9'Transfer'#9'F'#9'Quantity'
        'ClassNameTo'#9'10'#9'Transfer To'#9'F'#9
        'AssetValue'#9'10'#9'Cost'#9'T'#9
        'UOMcost'#9'10'#9'Unit Cost'#9'F'#9
        'PQAFrom'#9'1'#9'Allocation From'#9'F'#9'Allocation'
        'PQAto'#9'1'#9'Allocation To'#9'F'#9'Allocation'
        'TotalCost'#9'10'#9'Total Cost'#9'F'#9
        'CustomerName'#9'20'#9'Customer Job'#9'F'#9)
    end
  end
  inherited imgsort: TImageList
    Bitmap = {
      494C01010200D800E00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cboProductQry: TERPQuery
    SQL.Strings = (
      'SELECT PARTSID,PARTTYPE, p.PRODUCTGROUP,PARTNAME,'
      'PARTSDESCRIPTION,'
      'ReorderPoint, PreferredLevel, ReorderAmount,'
      'SNTracking, p.Active,'
      'if((LOCATE('#39'^'#39',p.PRODUCTGROUP,InStr(p.PRODUCTGROUP,'#39'^'#39')+1)) >0,'
      'MID(p.PRODUCTGROUP,LOCATE('#39'^'#39',p.PRODUCTGROUP,'
      'InStr(p.PRODUCTGROUP,'#39'^'#39')+1)+1,char_length(p.PRODUCTGROUP)-'
      
        'LOCATE('#39'^'#39',p.PRODUCTGROUP,InStr(p.PRODUCTGROUP,'#39'^'#39')+1)),  Null) ' +
        ' AS '#39'Manuf'#39' ,'
      'MID(p.PRODUCTGROUP, InStr(p.PRODUCTGROUP,'#39'^'#39')+1 ,'
      'If(LOCATE('#39'^'#39',p.PRODUCTGROUP,'
      'InStr(p.PRODUCTGROUP,'#39'^'#39')+1) - InStr(p.PRODUCTGROUP,'#39'^'#39') >0,'
      'LOCATE('#39'^'#39',p.PRODUCTGROUP,'
      'InStr(p.PRODUCTGROUP,'#39'^'#39')+1)-1 - InStr(p.PRODUCTGROUP,'#39'^'#39'),'
      'IF(InStr(p.PRODUCTGROUP,'#39'^'#39')<>0,'
      
        'char_length(p.PRODUCTGROUP) - InStr(p.PRODUCTGROUP,'#39'^'#39'),0))) AS ' +
        #39'Type'#39' ,'
      'If(InStr(p.PRODUCTGROUP,'#39'^'#39') -1 >0,'
      'Left(p.PRODUCTGROUP,InStr(p.PRODUCTGROUP,'#39'^'#39')-1),'
      'p.PRODUCTGROUP) AS '#39'Dept'#39','
      'p.AvgCost,p.Cost1,'
      'p.ASSETACCNT'
      'FROM tblparts as p'
      'INNER Join tblProductclasses PC ON p.PARTSID = PC.ProductID'
      
        '/* WHERE P.Active = '#39'T'#39' AND (PARTTYPE='#39'INV'#39') and batch ="F" and ' +
        'MultipleBins="T" and SNTracking = "F" */ '
      
        'WHERE P.Active = '#39'T'#39' AND (PARTTYPE='#39'INV'#39') and MultipleBins="T" a' +
        'nd SNTracking = "F" '
      'And PC.ClassID = :ClassID'
      'ORDER BY PC.ClassID,PARTNAME;')
  end
end
