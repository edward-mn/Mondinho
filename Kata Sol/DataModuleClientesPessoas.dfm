object DmClientesPessoas: TDmClientesPessoas
  OldCreateOrder = False
  Height = 277
  Width = 221
  object frxDBDatasetPessoas: TfrxDBDataset
    UserName = 'Relatorio Pessoas'
    CloseDataSource = False
    DataSet = cdsPessoas
    BCDToCurrency = False
    Left = 95
    Top = 118
  end
  object frxReportPessoas: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43102.711818194400000000
    ReportOptions.LastChange = 43112.485413819400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      '                 '
      'end.')
    Left = 87
    Top = 190
    Datasets = <
      item
        DataSet = frxDBDatasetPessoas
        DataSetName = 'Relatorio Pessoas'
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
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio Pessoas')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 37.795275590000000000
        Top = 68.031540000000010000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = -3.779530000000000000
          Width = 718.110236220000000000
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
          Width = 38.771945360000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 38.771945360000000000
          Width = 135.002554100000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pessoas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 173.774499460000000000
          Width = 103.758822220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF / CNPJ')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 277.533321680000000000
          Width = 175.642424150000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 453.175745840000000000
          Width = 93.744920390000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 546.920666230000100000
          Width = 101.337850590000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 648.258516809999900000
          Width = 69.851719410000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        Condition = 'Relatorio Pessoas."data"'
        object Memo10: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            'Data: [Relatorio Pessoas."data"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPessoas
        DataSetName = 'Relatorio Pessoas'
        RowCount = 0
        object Memo11: TfrxMemoView
          Width = 38.771945360000000000
          Height = 18.897650000000000000
          DataField = 'id_pessoas'
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Relatorio Pessoas."id_pessoas"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 38.771945360000000000
          Width = 135.002554100000000000
          Height = 18.897650000000000000
          DataField = 'pessoas'
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Relatorio Pessoas."pessoas"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 173.774499460000000000
          Width = 103.758822220000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Relatorio Pessoas."cpf_cnpj"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 277.533321680000000000
          Width = 175.642424150000000000
          Height = 18.897650000000000000
          DataField = 'endereco'
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Relatorio Pessoas."endereco"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 453.175745840000000000
          Width = 93.744920390000000000
          Height = 18.897650000000000000
          DataField = 'telefone'
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Relatorio Pessoas."telefone"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 546.920666230000100000
          Width = 101.337850590000000000
          Height = 18.897650000000000000
          DataField = 'celular'
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Relatorio Pessoas."celular"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 648.258516809999900000
          Width = 69.851719410000000000
          Height = 18.897650000000000000
          DataField = 'status'
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Relatorio Pessoas."status"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 257.008040000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo19: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo20: TfrxMemoView
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
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object cdsPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderPessoas'
    Left = 95
    Top = 38
    object cdsPessoasid_pessoas: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoas'
      FieldName = 'id_pessoas'
    end
    object cdsPessoaspessoas: TWideStringField
      DisplayLabel = 'Pessoas'
      FieldName = 'pessoas'
      Size = 50
    end
    object cdsPessoasendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 100
    end
    object cdsPessoastelefone: TWideStringField
      FieldName = 'telefone'
    end
    object cdsPessoascelular: TWideStringField
      FieldName = 'celular'
      Size = 21
    end
    object cdsPessoasstatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
    end
    object cdsPessoascpf_cnpj: TWideStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'cpf_cnpj'
      Size = 18
    end
    object cdsPessoasdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsPessoasid_cadastro: TIntegerField
      FieldName = 'id_cadastro'
    end
  end
end
