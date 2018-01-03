object FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Pessoas'
  ClientHeight = 360
  ClientWidth = 701
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
  object dbGridCriacaoEdicaoPessoas: TDBGrid
    Left = 0
    Top = 223
    Width = 701
    Height = 137
    Align = alBottom
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnNovaPessoa: TButton
    Left = 11
    Top = 21
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
    OnClick = btnNovaPessoaClick
  end
  object btnAtualizarPessoas: TButton
    Left = 11
    Top = 83
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 3
    OnClick = btnAtualizarPessoasClick
  end
  object btnCancelarPessoas: TButton
    Left = 11
    Top = 115
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarPessoasClick
  end
  object btnSalvarPessoas: TButton
    Left = 11
    Top = 146
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarPessoasClick
  end
  object gbFormulario: TGroupBox
    Left = 142
    Top = 34
    Width = 544
    Height = 169
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 0
    object Label7: TLabel
      Left = 6
      Top = 110
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object Label4: TLabel
      Left = 6
      Top = 64
      Width = 42
      Height = 13
      Align = alCustom
      Caption = 'Telefone'
      FocusControl = edtTelefone
    end
    object Label2: TLabel
      Left = 177
      Top = 18
      Width = 28
      Height = 13
      Align = alCustom
      Caption = '* CPF'
      FocusControl = edtCpf
    end
    object Label5: TLabel
      Left = 177
      Top = 64
      Width = 42
      Height = 13
      Align = alCustom
      Caption = '* Celular'
      FocusControl = edtCelular
    end
    object Label6: TLabel
      Left = 369
      Top = 64
      Width = 40
      Height = 13
      Align = alCustom
      Caption = '* Status'
    end
    object Label3: TLabel
      Left = 323
      Top = 18
      Width = 54
      Height = 13
      Align = alCustom
      Caption = '* Endere'#231'o'
      FocusControl = edtEndereco
    end
    object Label1: TLabel
      Left = 6
      Top = 18
      Width = 39
      Height = 13
      Caption = ' * Nome'
    end
    object edtTelefone: TDBEdit
      Left = 6
      Top = 79
      Width = 147
      Height = 21
      Align = alCustom
      DataField = 'telefone'
      DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 3
    end
    object edtNome: TDBEdit
      Left = 6
      Top = 32
      Width = 147
      Height = 21
      Align = alCustom
      DataField = 'pessoas'
      DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 0
    end
    object edtCpf: TDBEdit
      Left = 177
      Top = 37
      Width = 105
      Height = 21
      Align = alCustom
      DataField = 'cpf'
      DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 1
    end
    object edtCelular: TDBEdit
      Left = 177
      Top = 83
      Width = 160
      Height = 21
      Align = alCustom
      DataField = 'celular'
      DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 4
    end
    object edtEndereco: TDBEdit
      Left = 319
      Top = 37
      Width = 201
      Height = 21
      Align = alCustom
      DataField = 'endereco'
      DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 2
    end
    object DBcbStatusPessoas: TDBComboBox
      Left = 369
      Top = 83
      Width = 145
      Height = 21
      DataField = 'status'
      DataSource = dsCriacaoEdicaoPessoas
      Items.Strings = (
        'Fisica'
        'Juridica'
        'Vendedor'
        'Empresa'
        'Usuario do Sistema')
      TabOrder = 5
    end
  end
  object btnEditar: TButton
    Left = 11
    Top = 52
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object btnDeletarCadastro: TButton
    Left = 11
    Top = 178
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 7
    OnClick = btnDeletarCadastroClick
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 148
    Top = 158
    DataBinding.DataField = 'data'
    DataBinding.DataSource = dsCriacaoEdicaoPessoas
    TabOrder = 8
    Width = 147
  end
  object dsCriacaoEdicaoPessoas: TDataSource
    Left = 168
    Top = 288
  end
end
