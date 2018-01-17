object FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Pessoas'
  ClientHeight = 432
  ClientWidth = 791
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
    Top = 180
    Width = 791
    Height = 252
    Align = alBottom
    ReadOnly = True
    TabOrder = 1
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
    TabOrder = 2
    OnClick = btnNovaPessoaClick
  end
  object btnCancelarPessoas: TButton
    Left = 11
    Top = 82
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarPessoasClick
  end
  object btnSalvarPessoas: TButton
    Left = 11
    Top = 113
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarPessoasClick
  end
  object gbFormulario: TGroupBox
    Left = 135
    Top = 21
    Width = 602
    Height = 140
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 0
    object Label7: TLabel
      Left = 433
      Top = 78
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object Label4: TLabel
      Left = 8
      Top = 79
      Width = 42
      Height = 13
      Align = alCustom
      Caption = 'Telefone'
    end
    object Label2: TLabel
      Left = 286
      Top = 80
      Width = 28
      Height = 13
      Align = alCustom
      Caption = '* CPF'
    end
    object Label5: TLabel
      Left = 142
      Top = 81
      Width = 36
      Height = 13
      Align = alCustom
      Caption = ' Celular'
    end
    object Label6: TLabel
      Left = 8
      Top = 27
      Width = 40
      Height = 13
      Align = alCustom
      Caption = '* Status'
    end
    object Label3: TLabel
      Left = 382
      Top = 27
      Width = 54
      Height = 13
      Align = alCustom
      Caption = '* Endere'#231'o'
      FocusControl = edtEndereco
    end
    object Label1: TLabel
      Left = 168
      Top = 24
      Width = 33
      Height = 13
      Caption = '*Nome'
    end
    object edtNome: TDBEdit
      Left = 170
      Top = 44
      Width = 183
      Height = 21
      Align = alCustom
      DataField = 'pessoas'
      DataSource = dsPessoas
      TabOrder = 1
    end
    object edtEndereco: TDBEdit
      Left = 383
      Top = 44
      Width = 197
      Height = 21
      Align = alCustom
      DataField = 'endereco'
      DataSource = dsPessoas
      TabOrder = 2
    end
    object cbStatusPessoas: TDBComboBox
      Left = 8
      Top = 44
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'status'
      DataSource = dsPessoas
      Items.Strings = (
        'Fisica'
        'Juridica'
        'Vendedor'
        'Empresa'
        'Usuario Do Sistema')
      TabOrder = 0
      OnChange = cbStatusPessoasChange
    end
    object cxDBMaskEditCPFCNPJ: TcxDBMaskEdit
      Left = 286
      Top = 97
      DataBinding.DataField = 'cpf_cnpj'
      DataBinding.DataSource = dsPessoas
      TabOrder = 5
      Width = 121
    end
    object cxDBMaskEditTelefone: TcxDBMaskEdit
      Left = 8
      Top = 97
      DataBinding.DataField = 'telefone'
      DataBinding.DataSource = dsPessoas
      Properties.EditMask = '!\(99\)0000-0000;1;_'
      Properties.ReadOnly = False
      TabOrder = 3
      Width = 121
    end
    object cxDBMaskEditCelular: TcxDBMaskEdit
      Left = 142
      Top = 97
      DataBinding.DataField = 'celular'
      DataBinding.DataSource = dsPessoas
      Properties.EditMask = '!\(99\)00000-0000;1;_'
      TabOrder = 4
      Width = 121
    end
  end
  object btnEditar: TButton
    Left = 11
    Top = 52
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnDeletarCadastro: TButton
    Left = 11
    Top = 143
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 6
    OnClick = btnDeletarCadastroClick
  end
  object cbData: TcxDBDateEdit
    Left = 568
    Top = 118
    DataBinding.DataField = 'data'
    DataBinding.DataSource = dsPessoas
    TabOrder = 7
    Width = 147
  end
  object dsPessoas: TDataSource
    Left = 696
    Top = 352
  end
end
