object FormEditarTarefas: TFormEditarTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Tarefas'
  ClientHeight = 372
  ClientWidth = 705
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
  object dbGridCriacaoEdicao: TDBGrid
    Left = 0
    Top = 224
    Width = 705
    Height = 148
    Align = alBottom
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAtualizar: TButton
    Left = 19
    Top = 99
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 3
    OnClick = btnAtualizarClick
  end
  object btnSalvar: TButton
    Left = 19
    Top = 175
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnNovo: TButton
    Left = 19
    Top = 27
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = btnNovoClick
  end
  object btnCancelar: TButton
    Left = 19
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnEditar: TButton
    Left = 19
    Top = 64
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object gbFormulario: TGroupBox
    Left = 132
    Top = 43
    Width = 559
    Height = 126
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 36
      Height = 13
      Caption = '* Nome'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 75
      Width = 41
      Height = 13
      Caption = '* Tarefa'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 411
      Top = 20
      Width = 40
      Height = 13
      Caption = '* Status'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 271
      Top = 20
      Width = 32
      Height = 13
      Caption = '* Data'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 249
      Height = 21
      DataField = 'nomes'
      DataSource = dsCriarTarefas
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 91
      Width = 465
      Height = 21
      DataField = 'tarefas'
      DataSource = dsCriarTarefas
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 411
      Top = 39
      Width = 145
      Height = 21
      DataField = 'status'
      DataSource = dsCriarTarefas
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 271
      Top = 39
      Width = 134
      Height = 21
      DataField = 'data'
      DataSource = dsCriarTarefas
      TabOrder = 1
    end
  end
  object dsCriarTarefas: TDataSource
    Left = 240
    Top = 264
  end
end
