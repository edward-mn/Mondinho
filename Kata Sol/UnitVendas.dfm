object FormVendas: TFormVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Vendas'
  ClientHeight = 656
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbStatusVenda: TGroupBox
    Left = 611
    Top = 0
    Width = 127
    Height = 656
    Align = alRight
    Caption = 'Status'
    TabOrder = 0
    ExplicitLeft = 571
    object cbExcluida: TCheckBox
      Left = 6
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Excluida'
      TabOrder = 0
    end
    object cbFinalizada: TCheckBox
      Left = 6
      Top = 35
      Width = 97
      Height = 17
      Caption = 'Finalizada'
      TabOrder = 1
    end
    object cbAberta: TCheckBox
      Left = 6
      Top = 15
      Width = 96
      Height = 17
      Caption = 'Aberta'
      TabOrder = 2
    end
    object cbCancelada: TCheckBox
      Left = 6
      Top = 77
      Width = 97
      Height = 17
      Caption = 'Cancelada'
      TabOrder = 3
    end
    object gbEditarVenda: TGroupBox
      Left = 2
      Top = 129
      Width = 122
      Height = 88
      Caption = 'Venda'
      TabOrder = 4
      object btnCadastrarVendasCadastrar: TcxButton
        Left = 10
        Top = 16
        Width = 97
        Height = 25
        Caption = 'Editar Registros'
        TabOrder = 0
        OnClick = btnCadastrarVendasCadastrarClick
      end
      object btnAtualizarVendas: TcxButton
        Left = 10
        Top = 47
        Width = 97
        Height = 25
        Caption = 'Atualizar'
        TabOrder = 1
        OnClick = btnAtualizarVendasClick
      end
    end
    object gbRelatorioVendas: TGroupBox
      Left = 2
      Top = 549
      Width = 123
      Height = 105
      Align = alBottom
      Caption = 'Relat'#243'rio'
      TabOrder = 5
      object bntVisualizarRelatorio: TcxButton
        Left = 11
        Top = 29
        Width = 97
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 0
        OnClick = bntVisualizarRelatorioClick
      end
      object btnImprimir: TcxButton
        Left = 11
        Top = 58
        Width = 97
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = btnImprimirClick
      end
    end
    object btnPesquisar: TcxButton
      Left = 6
      Top = 100
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 6
      OnClick = btnPesquisarClick
    end
  end
  object dbGridVendas: TcxGrid
    Left = 0
    Top = 0
    Width = 611
    Height = 656
    Align = alClient
    TabOrder = 1
    object dbGridVendasDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsVendas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbWhenSelected
      object dbGridVendasDBTableView1id_produtos: TcxGridDBColumn
        DataBinding.FieldName = 'id_produtos'
      end
      object dbGridVendasDBTableView1fornecedores: TcxGridDBColumn
        DataBinding.FieldName = 'fornecedores'
        Width = 102
      end
      object dbGridVendasDBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
        Width = 88
      end
      object dbGridVendasDBTableView1produtos: TcxGridDBColumn
        DataBinding.FieldName = 'produtos'
        Width = 109
      end
      object dbGridVendasDBTableView1valor_produto: TcxGridDBColumn
        DataBinding.FieldName = 'valor_produto'
      end
      object dbGridVendasDBTableView1quantidade: TcxGridDBColumn
        DataBinding.FieldName = 'quantidade'
      end
      object dbGridVendasDBTableView1valor_total: TcxGridDBColumn
        DataBinding.FieldName = 'valor_total'
      end
      object dbGridVendasDBTableView1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object dbGridVendasDBTableView1id_cadastro: TcxGridDBColumn
        DataBinding.FieldName = 'id_cadastro'
      end
      object dbGridVendasDBTableView1id_vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'id_vendedor'
      end
      object dbGridVendasDBTableView1vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'vendedor'
      end
    end
    object dbGridVendasLevel1: TcxGridLevel
      GridView = dbGridVendasDBTableView1
    end
  end
  object dsVendas: TDataSource
    DataSet = DmClienteVendas.cdsVendas
    Left = 360
    Top = 344
  end
end
