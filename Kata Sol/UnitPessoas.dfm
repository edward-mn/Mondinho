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
          Visible = False
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
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
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Status'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 4
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
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
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
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
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
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
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
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
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
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
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahCenter
      CaptionOptions.Text = 'btnPesquisar'
      CaptionOptions.Visible = False
      Control = btnPesquisar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Pessoas'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnCadastrarPessoa'
      CaptionOptions.Visible = False
      Control = btnCadastrarPessoa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnAtualizarCadastro'
      CaptionOptions.Visible = False
      Control = btnAtualizarCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Relat'#243'rio'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'bntVisualizar'
      CaptionOptions.Visible = False
      Control = bntVisualizar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup8
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
