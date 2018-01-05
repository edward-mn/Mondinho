object DmClientesPessoas: TDmClientesPessoas
  OldCreateOrder = False
  Height = 277
  Width = 221
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
    object cdsPessoascpf: TFMTBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Precision = 11
      Size = 0
    end
    object cdsPessoasendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 100
    end
    object cdsPessoastelefone: TFMTBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Precision = 10
      Size = 0
    end
    object cdsPessoascelular: TFMTBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      Precision = 11
      Size = 0
    end
    object cdsPessoasstatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
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
    ReportOptions.CreateDate = 43102.711818194440000000
    ReportOptions.LastChange = 43102.715977326390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
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
          Width = 91.685365360000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd. Pessoas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 91.685365360000000000
          Width = 131.223024100000000000
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
          Left = 222.908389460000000000
          Width = 88.640702220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 311.549091680000000000
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
          Left = 487.191515840000000000
          Width = 86.185860390000000000
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
          Left = 573.377376230000000000
          Width = 71.101610590000010000
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
          Left = 644.478986810000000000
          Width = 73.631249410000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
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
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPessoas
        DataSetName = 'Relatorio Pessoas'
        RowCount = 0
        object Memo11: TfrxMemoView
          Width = 91.685365360000000000
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
          Left = 91.685365360000000000
          Width = 131.223024100000000000
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
          Left = 222.908389460000000000
          Width = 88.640702220000000000
          Height = 18.897650000000000000
          DataField = 'cpf'
          DataSet = frxDBDatasetPessoas
          DataSetName = 'Relatorio Pessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Relatorio Pessoas."cpf"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 311.549091680000000000
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
          Left = 487.191515840000000000
          Width = 86.185860390000000000
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
          Left = 573.377376230000000000
          Width = 71.101610590000010000
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
          Left = 644.478986810000000000
          Width = 73.631249410000000000
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
          Memo.UTF8W = (
            '[Relatorio Pessoas."status"]')
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
    end
  end
end
