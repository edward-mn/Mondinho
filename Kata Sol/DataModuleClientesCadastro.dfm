object DmClientesCadastro: TDmClientesCadastro
  OldCreateOrder = False
  Height = 278
  Width = 160
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderCadastro'
    Left = 64
    Top = 30
    object cdsCadastroid: TIntegerField
      FieldName = 'id'
    end
    object cdsCadastronome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      Size = 25
    end
    object cdsCadastrosenha: TWideStringField
      FieldName = 'senha'
      Size = 25
    end
  end
  object frxDBDatasetCadastro: TfrxDBDataset
    UserName = 'Relatorio Cadastro'
    CloseDataSource = False
    DataSet = cdsCadastro
    BCDToCurrency = False
    Left = 64
    Top = 104
  end
  object frxReportCadastro: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43102.664853738430000000
    ReportOptions.LastChange = 43102.664853738430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 168
    Datasets = <>
    Variables = <>
    Style = <>
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
    end
  end
end
