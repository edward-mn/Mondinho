object FormPessoas: TFormPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Pessoas'
  ClientHeight = 644
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
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
    object cbEmpresa: TCheckBox
      Left = 593
      Top = 97
      Width = 97
      Height = 17
      Caption = 'Empresa'
      TabOrder = 4
    end
    object cbVendedor: TCheckBox
      Left = 593
      Top = 74
      Width = 97
      Height = 17
      Caption = 'Vendedor'
      TabOrder = 3
    end
    object cbJuridica: TCheckBox
      Left = 593
      Top = 51
      Width = 97
      Height = 17
      Caption = 'Jurudica'
      TabOrder = 2
    end
    object cbFisica: TCheckBox
      Left = 593
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Fisica'
      TabOrder = 1
    end
    object cbUsuarioDoSistema: TCheckBox
      Left = 593
      Top = 120
      Width = 109
      Height = 17
      Caption = 'Usuario do Sistema'
      TabOrder = 5
    end
    object btnAtualizarCadastro: TcxButton
      Left = 605
      Top = 223
      Width = 97
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 8
      OnClick = btnAtualizarCadastroClick
    end
    object btnCadastrarPessoa: TcxButton
      Left = 605
      Top = 192
      Width = 97
      Height = 25
      Caption = 'Editar Registros'
      TabOrder = 7
      OnClick = btnCadastrarPessoaClick
    end
    object btnImprimir: TcxButton
      Left = 605
      Top = 585
      Width = 97
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 10
      OnClick = btnImprimirClick
    end
    object bntVisualizar: TcxButton
      Left = 605
      Top = 554
      Width = 97
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 9
      OnClick = bntVisualizarClick
    end
    object btnPesquisar: TcxButton
      Left = 605
      Top = 143
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 6
      OnClick = btnPesquisarClick
    end
    object dbGridPessoas: TcxGrid
      Left = 10
      Top = 10
      Width = 565
      Height = 624
      TabOrder = 0
      object dbGridPessoasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsPessoas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object dbGridPessoasDBTableView1id_pessoas: TcxGridDBColumn
          DataBinding.FieldName = 'id_pessoas'
        end
        object dbGridPessoasDBTableView1pessoas: TcxGridDBColumn
          DataBinding.FieldName = 'pessoas'
        end
        object dbGridPessoasDBTableView1endereco: TcxGridDBColumn
          DataBinding.FieldName = 'endereco'
        end
        object dbGridPessoasDBTableView1telefone: TcxGridDBColumn
          DataBinding.FieldName = 'telefone'
        end
        object dbGridPessoasDBTableView1celular: TcxGridDBColumn
          DataBinding.FieldName = 'celular'
        end
        object dbGridPessoasDBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
        end
        object dbGridPessoasDBTableView1cpf_cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'cpf_cnpj'
        end
        object dbGridPessoasDBTableView1data: TcxGridDBColumn
          DataBinding.FieldName = 'data'
        end
        object dbGridPessoasDBTableView1id_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'id_cadastro'
        end
      end
      object dbGridPessoasLevel1: TcxGridLevel
        GridView = dbGridPessoasDBTableView1
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
    object LayoutGroupPessoas: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutGridPessoas: TdxLayoutItem
      Parent = LayoutGroupPessoas
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dbGridPessoas'
      CaptionOptions.Visible = False
      Control = dbGridPessoas
      ControlOptions.OriginalHeight = 644
      ControlOptions.OriginalWidth = 608
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutGroupTodosBotoes: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Status'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object LayoutGroupDireitoDentro: TdxLayoutGroup
      Parent = LayoutGroupTodosBotoes
      AlignHorz = ahClient
      AlignVert = avClient
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
      ItemIndex = 6
      ShowBorder = False
      Index = 0
    end
    object LayoutItemChFisica: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbFisica'
      CaptionOptions.Visible = False
      Control = cbFisica
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemChJuridica: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbJuridica'
      CaptionOptions.Visible = False
      Control = cbJuridica
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutItemChVendedor: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbVendedor'
      CaptionOptions.Visible = False
      Control = cbVendedor
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutItemChEmpresa: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbEmpresa'
      CaptionOptions.Visible = False
      Control = cbEmpresa
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutItemChUsuarioDoSistema: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbUsuarioDoSistema'
      CaptionOptions.Visible = False
      Control = cbUsuarioDoSistema
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutItemBtPesquisar: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahCenter
      CaptionOptions.Text = 'btnPesquisar'
      CaptionOptions.Visible = False
      Control = btnPesquisar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LayoutGroupCampoPessoas: TdxLayoutGroup
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Pessoas'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object LayoutGroupBotoes: TdxLayoutGroup
      Parent = LayoutGroupCampoPessoas
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
      CaptionOptions.Text = 'btnCadastrarPessoa'
      CaptionOptions.Visible = False
      Control = btnCadastrarPessoa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemBtAtualizar: TdxLayoutItem
      Parent = LayoutGroupBotoes
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnAtualizarCadastro'
      CaptionOptions.Visible = False
      Control = btnAtualizarCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutGroupCampoRelatorios: TdxLayoutGroup
      Parent = LayoutGroupTodosBotoes
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
      CaptionOptions.Text = 'bntVisualizar'
      CaptionOptions.Visible = False
      Control = bntVisualizar
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
  object dsPessoas: TDataSource
    DataSet = DmClientesPessoas.cdsPessoas
    Left = 72
    Top = 144
  end
end
