object FormEditarTarefas: TFormEditarTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Tarefas'
  ClientHeight = 421
  ClientWidth = 900
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
  object btnAtualizar: TButton
    Left = 19
    Top = 67
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 3
    OnClick = btnAtualizarClick
  end
  object btnSalvar: TButton
    Left = 19
    Top = 123
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnNovo: TButton
    Left = 19
    Top = 11
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = btnNovoClick
  end
  object btnCancelar: TButton
    Left = 19
    Top = 96
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnEditar: TButton
    Left = 19
    Top = 39
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object gbFormulario: TGroupBox
    Left = 130
    Top = 19
    Width = 551
    Height = 184
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 84
      Width = 36
      Height = 13
      Caption = '* Nome'
      FocusControl = edtNome
    end
    object Label3: TLabel
      Left = 363
      Top = 84
      Width = 40
      Height = 13
      Caption = '* Status'
    end
    object Label4: TLabel
      Left = 13
      Top = 134
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object Label2: TLabel
      Left = 13
      Top = 30
      Width = 41
      Height = 13
      Caption = '* Tarefa'
    end
    object edtNome: TDBEdit
      Left = 13
      Top = 103
      Width = 316
      Height = 21
      DataField = 'nomes'
      DataSource = dsCriarTarefas
      TabOrder = 1
    end
    object edtTarefa: TDBEdit
      Left = 13
      Top = 49
      Width = 524
      Height = 21
      DataField = 'tarefas'
      DataSource = dsCriarTarefas
      TabOrder = 0
    end
    object cbTarefas: TDBComboBox
      Left = 363
      Top = 103
      Width = 145
      Height = 21
      DataField = 'status'
      DataSource = dsCriarTarefas
      Items.Strings = (
        'Agendada'
        'Finalizada'
        'Adiada'
        'Atrasada')
      TabOrder = 2
    end
  end
  object btnDeletarTarefa: TButton
    Left = 19
    Top = 151
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 6
    OnClick = btnDeletarTarefaClick
  end
  object btnAdiarTarefa: TButton
    Left = 19
    Top = 178
    Width = 105
    Height = 25
    Caption = 'Adiar Tarefa'
    TabOrder = 7
    OnClick = btnAdiarTarefaClick
  end
  object dbGridCriacaoEdicao: TDBGrid
    Left = 0
    Top = 236
    Width = 900
    Height = 185
    Align = alBottom
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbData: TcxDBDateEdit
    Left = 143
    Top = 169
    Cursor = crArrow
    DataBinding.DataField = 'data'
    DataBinding.DataSource = dsCriarTarefas
    DragCursor = crArrow
    Properties.View = cavModern
    TabOrder = 9
    Width = 90
  end
  object dsCriarTarefas: TDataSource
    Left = 240
    Top = 264
  end
end
