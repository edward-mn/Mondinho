object FormVendas: TFormVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Vendas'
  ClientHeight = 644
  ClientWidth = 736
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 736
    Height = 644
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitWidth = 738
    ExplicitHeight = 656
    object cbExcluida: TCheckBox
      Left = 593
      Top = 74
      Width = 97
      Height = 17
      Caption = 'Excluida'
      TabOrder = 3
    end
    object cbFinalizada: TCheckBox
      Left = 593
      Top = 51
      Width = 97
      Height = 17
      Caption = 'Finalizada'
      TabOrder = 2
    end
    object cbAberta: TCheckBox
      Left = 593
      Top = 28
      Width = 96
      Height = 17
      Caption = 'Aberta'
      TabOrder = 1
    end
    object cbCancelada: TCheckBox
      Left = 593
      Top = 97
      Width = 97
      Height = 17
      Caption = 'Cancelada'
      TabOrder = 4
    end
    object btnCadastrarVendasCadastrar: TcxButton
      Left = 605
      Top = 169
      Width = 97
      Height = 25
      Caption = 'Editar Registros'
      TabOrder = 6
      OnClick = btnCadastrarVendasCadastrarClick
    end
    object btnAtualizarVendas: TcxButton
      Left = 605
      Top = 200
      Width = 97
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 7
      OnClick = btnAtualizarVendasClick
    end
    object bntVisualizarRelatorio: TcxButton
      Left = 605
      Top = 554
      Width = 97
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 8
      OnClick = bntVisualizarRelatorioClick
    end
    object btnImprimir: TcxButton
      Left = 605
      Top = 585
      Width = 97
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 9
      OnClick = btnImprimirClick
    end
    object btnPesquisar: TcxButton
      Left = 593
      Top = 120
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 5
      OnClick = btnPesquisarClick
    end
    object dbGridVendas: TcxGrid
      Left = 10
      Top = 10
      Width = 565
      Height = 624
      TabOrder = 0
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object LayoutGroupVendas: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutGridVendas: TdxLayoutItem
      Parent = LayoutGroupVendas
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dbGridVendas'
      CaptionOptions.Visible = False
      Control = dbGridVendas
      ControlOptions.OriginalHeight = 656
      ControlOptions.OriginalWidth = 611
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutGroupDireitoTodosBotoes: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Status'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object LayoutGroupDireitoDentro: TdxLayoutGroup
      Parent = LayoutGroupDireitoTodosBotoes
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutGroupSuperiorDireito: TdxLayoutGroup
      Parent = LayoutGroupDireitoDentro
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 5
      ShowBorder = False
      Index = 0
    end
    object LayoutItemChAberta: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbAberta'
      CaptionOptions.Visible = False
      Control = cbAberta
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemChFinalizada: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbFinalizada'
      CaptionOptions.Visible = False
      Control = cbFinalizada
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutItemChExcluida: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbExcluida'
      CaptionOptions.Visible = False
      Control = cbExcluida
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutItemChCancelada: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbCancelada'
      CaptionOptions.Visible = False
      Control = cbCancelada
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutItemBtPesquisar: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnPesquisar'
      CaptionOptions.Visible = False
      Control = btnPesquisar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutGroupCampoVendas: TdxLayoutGroup
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Venda'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object LayoutGroupBotoes: TdxLayoutGroup
      Parent = LayoutGroupCampoVendas
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object LayoutItemBtEdtRegistro: TdxLayoutItem
      Parent = LayoutGroupBotoes
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnCadastrarVendasCadastrar'
      CaptionOptions.Visible = False
      Control = btnCadastrarVendasCadastrar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemBtAtualizar: TdxLayoutItem
      Parent = LayoutGroupBotoes
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnAtualizarVendas'
      CaptionOptions.Visible = False
      Control = btnAtualizarVendas
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutGroupCampoRelatorios: TdxLayoutGroup
      Parent = LayoutGroupDireitoTodosBotoes
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Relat'#243'rio'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object LayoutGroupBtRelatorios: TdxLayoutGroup
      Parent = LayoutGroupCampoRelatorios
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object LayoutItemBtVisualizar: TdxLayoutItem
      Parent = LayoutGroupBtRelatorios
      AlignHorz = ahLeft
      CaptionOptions.Text = 'bntVisualizarRelatorio'
      CaptionOptions.Visible = False
      Control = bntVisualizarRelatorio
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemBtImprimir: TdxLayoutItem
      Parent = LayoutGroupBtRelatorios
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnImprimir'
      CaptionOptions.Visible = False
      Control = btnImprimir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dsVendas: TDataSource
    DataSet = DmClienteVendas.cdsVendas
    Left = 360
    Top = 344
  end
end
