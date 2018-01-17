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
  object btnSalvar: TButton
    Left = 19
    Top = 94
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 4
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
    Top = 67
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
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
    Left = 138
    Top = 19
    Width = 527
    Height = 155
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 181
      Top = 28
      Width = 36
      Height = 13
      Caption = '* Nome'
      FocusControl = edtNome
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
    object edtNome: TDBEdit
      Left = 181
      Top = 47
      Width = 316
      Height = 21
      DataField = 'nomes'
      DataSource = dsCriarTarefas
      TabOrder = 1
    end
    object edtTarefa: TDBEdit
      Left = 13
      Top = 104
      Width = 364
      Height = 21
      DataField = 'tarefas'
      DataSource = dsCriarTarefas
      TabOrder = 0
    end
    object cbTarefas: TDBComboBox
      Left = 13
      Top = 47
      Width = 156
      Height = 21
      Style = csDropDownList
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
    Top = 122
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 5
    OnClick = btnDeletarTarefaClick
  end
  object btnAdiarTarefa: TButton
    Left = 19
    Top = 149
    Width = 105
    Height = 25
    Caption = 'Adiar Tarefa'
    TabOrder = 6
    OnClick = btnAdiarTarefaClick
  end
  object dbGridCriacaoEdicao: TDBGrid
    Left = 0
    Top = 200
    Width = 716
    Height = 198
    Align = alBottom
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbData: TcxDBDateEdit
    Left = 537
    Top = 123
    Cursor = crArrow
    DataBinding.DataField = 'data'
    DataBinding.DataSource = dsCriarTarefas
    DragCursor = crArrow
    Properties.View = cavModern
    TabOrder = 8
    Width = 94
  end
  object dsCriarTarefas: TDataSource
    Left = 240
    Top = 264
  end
end
