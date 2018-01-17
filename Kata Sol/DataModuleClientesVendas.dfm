object DmClienteVendas: TDmClienteVendas
  OldCreateOrder = False
  Height = 203
  Width = 136
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderVendas'
    BeforePost = cdsVendasBeforePost
    Left = 51
    Top = 25
    object cdsVendasid_produtos: TIntegerField
      DisplayLabel = 'C'#243'd. Produtos'
      FieldName = 'id_produtos'
    end
    object cdsVendasvendedores: TWideStringField
      DisplayLabel = 'Vendedores'
      FieldName = 'vendedores'
      Size = 50
    end
    object cdsVendasfornecedores: TWideStringField
      DisplayLabel = 'Fornecedores'
      FieldName = 'fornecedores'
      Size = 50
    end
    object cdsVendasstatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
    end
    object cdsVendasprodutos: TWideStringField
      DisplayLabel = 'Produtos'
      FieldName = 'produtos'
      Size = 50
    end
    object cdsVendasvalor_produto: TFMTBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor_produto'
      EditFormat = '0.00'
      currency = True
      Precision = 11
      Size = 2
    end
    object cdsVendasquantidade: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object cdsVendasvalor_total: TFMTBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      EditFormat = '0.00'
      currency = True
      Precision = 11
      Size = 2
    end
    object cdsVendasdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      EditMask = '!99/99/0000;'
    end
    object cdsVendasid_cadastro: TIntegerField
      FieldName = 'id_cadastro'
    end
  end
  object frxDBDatasetVendas: TfrxDBDataset
    UserName = 'Relatorio Vendas'
    CloseDataSource = False
    DataSet = cdsVendas
    BCDToCurrency = False
    Left = 48
    Top = 78
  end
  object frxReportVendas: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43102.704403935180000000
    ReportOptions.LastChange = 43102.715434085650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 134
    Datasets = <
      item
        DataSet = frxDBDatasetVendas
        DataSetName = 'Relatorio Vendas'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio Vendas'
            '')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000010000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220472400000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 81.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd. Prod')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 81.000000000000000000
          Width = 114.973797070000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedores')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 195.973797070000000000
          Width = 115.309739890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedores')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 311.283536960000000000
          Width = 63.819026150000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 375.102563110000000000
          Width = 100.061013960000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 475.163577070000000000
          Width = 94.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Unit.'
            '')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 569.163577070000000000
          Width = 75.368332390000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 644.531909470000000000
          Width = 73.578326750000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'Relatorio Vendas."data"'
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            'Data: [Relatorio Vendas."data"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetVendas
        DataSetName = 'Relatorio Vendas'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 81.000000000000000000
          Height = 18.897650000000000000
          DataField = 'id_produtos'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."id_produtos"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 81.000000000000000000
          Width = 114.973797070000000000
          Height = 18.897650000000000000
          DataField = 'vendedores'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."vendedores"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 195.973797070000000000
          Width = 115.309739890000000000
          Height = 18.897650000000000000
          DataField = 'fornecedores'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."fornecedores"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 311.283536960000000000
          Width = 63.819026150000000000
          Height = 18.897650000000000000
          DataField = 'status'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."status"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 375.102563110000000000
          Width = 100.061013960000000000
          Height = 18.897650000000000000
          DataField = 'produtos'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."produtos"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 475.163577070000000000
          Width = 94.000000000000000000
          Height = 18.897650000000000000
          DataField = 'valor_produto'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."valor_produto"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 569.163577070000000000
          Width = 75.368332390000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."quantidade"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 644.531909470000000000
          Width = 73.578326750000000000
          Height = 18.897650000000000000
          DataField = 'valor_total'
          DataSet = frxDBDatasetVendas
          DataSetName = 'Relatorio Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[Relatorio Vendas."valor_total"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 241.889920000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo21: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo22: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
end
