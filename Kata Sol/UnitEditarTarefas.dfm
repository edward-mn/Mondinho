object FormEditarTarefas: TFormEditarTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Tarefas'
  ClientHeight = 398
  ClientWidth = 716
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
  object gbFormulario: TGroupBox
    Left = 138
    Top = 19
    Width = 527
    Height = 155
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 181
      Top = 28
      Width = 36
      Height = 13
      Caption = '* Nome'
    end
    object Label3: TLabel
      Left = 13
      Top = 28
      Width = 40
      Height = 13
      Caption = '* Status'
    end
    object Label4: TLabel
      Left = 399
      Top = 85
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object Label2: TLabel
      Left = 13
      Top = 85
      Width = 41
      Height = 13
      Caption = '* Tarefa'
    end
    object cxDBstatusTarefas: TcxDBComboBox
      Left = 13
      Top = 44
      DataBinding.DataField = 'status'
      DataBinding.DataSource = dsCriarTarefas
      Properties.Items.Strings = (
        'Fisica'
        'Juridica'
        'Vendedor'
        'Empresa'
        'Usuario do Sistema')
      TabOrder = 0
      Width = 121
    end
    object cxDBNome: TcxDBTextEdit
      Left = 181
      Top = 47
      DataBinding.DataField = 'nomes'
      DataBinding.DataSource = dsCriarTarefas
      TabOrder = 1
      Width = 148
    end
    object cxDBTarefas: TcxDBTextEdit
      Left = 13
      Top = 101
      DataBinding.DataField = 'tarefas'
      DataBinding.DataSource = dsCriarTarefas
      TabOrder = 2
      Width = 220
    end
  end
  object cbData: TcxDBDateEdit
    Left = 537
    Top = 123
    Cursor = crArrow
    DataBinding.DataField = 'data'
    DataBinding.DataSource = dsCriarTarefas
    DragCursor = crArrow
    Properties.View = cavModern
    TabOrder = 1
    Width = 90
  end
  object dbGridCriacaoEdicao: TcxGrid
    Left = 0
    Top = 198
    Width = 716
    Height = 200
    Align = alBottom
    TabOrder = 2
    object dbGridCriacaoEdicaoDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCriarTarefas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbWhenSelected
      object dbGridCriacaoEdicaoDBTableView1id_todo: TcxGridDBColumn
        DataBinding.FieldName = 'id_todo'
      end
      object dbGridCriacaoEdicaoDBTableView1nomes: TcxGridDBColumn
        DataBinding.FieldName = 'nomes'
      end
      object dbGridCriacaoEdicaoDBTableView1tarefas: TcxGridDBColumn
        DataBinding.FieldName = 'tarefas'
      end
      object dbGridCriacaoEdicaoDBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
      end
      object dbGridCriacaoEdicaoDBTableView1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object dbGridCriacaoEdicaoDBTableView1id_cadastro: TcxGridDBColumn
        DataBinding.FieldName = 'id_cadastro'
      end
    end
    object dbGridCriacaoEdicaoLevel1: TcxGridLevel
      GridView = dbGridCriacaoEdicaoDBTableView1
    end
  end
  object btnSalvar: TcxButton
    Left = 19
    Top = 88
    Width = 105
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object btnCancelar: TcxButton
    Left = 19
    Top = 61
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnEditar: TcxButton
    Left = 19
    Top = 34
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
    OnClick = btnEditarClick
  end
  object btnNovo: TcxButton
    Left = 19
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 6
    OnClick = btnNovoClick
  end
  object btnDeletarTarefa: TcxButton
    Left = 19
    Top = 119
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 7
    OnClick = btnDeletarTarefaClick
  end
  object btnAdiarTarefa: TcxButton
    Left = 19
    Top = 151
    Width = 105
    Height = 25
    Caption = 'Adiar Tarefa'
    TabOrder = 8
    OnClick = btnAdiarTarefaClick
  end
  object dsCriarTarefas: TDataSource
    DataSet = DmClientesTarefas.cdsToDo
    Left = 240
    Top = 264
  end
end
