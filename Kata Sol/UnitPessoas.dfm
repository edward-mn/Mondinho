object FormPessoas: TFormPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pessoas'
  ClientHeight = 319
  ClientWidth = 666
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
  object dbGridPessoas: TDBGrid
    Left = 0
    Top = 0
    Width = 524
    Height = 319
    Align = alLeft
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 530
    Top = 6
    Width = 120
    Height = 153
    Caption = 'Status'
    TabOrder = 1
    object cbEmpresa: TCheckBox
      Left = 8
      Top = 95
      Width = 97
      Height = 17
      Caption = 'Empresa'
      TabOrder = 0
    end
    object cbVendedor: TCheckBox
      Left = 8
      Top = 70
      Width = 97
      Height = 17
      Caption = 'Vendedor'
      TabOrder = 1
    end
    object cbJuridica: TCheckBox
      Left = 8
      Top = 44
      Width = 97
      Height = 17
      Caption = 'Jurudica'
      TabOrder = 2
    end
    object cbFisica: TCheckBox
      Left = 8
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Fisica'
      TabOrder = 3
    end
    object btnPesquisar: TButton
      Left = 9
      Top = 121
      Width = 87
      Height = 26
      Caption = 'Pesquisar'
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 530
    Top = 165
    Width = 120
    Height = 136
    Caption = 'Pessoas'
    TabOrder = 2
    object btnAtualizarCadastro: TButton
      Left = 9
      Top = 45
      Width = 105
      Height = 26
      Caption = 'Atualizar'
      TabOrder = 0
      OnClick = btnAtualizarCadastroClick
    end
    object btnCadastrarPessoa: TButton
      Left = 8
      Top = 13
      Width = 105
      Height = 26
      Caption = 'Cadastrar'
      TabOrder = 1
      OnClick = btnCadastrarPessoaClick
    end
    object btnDeletarCadastro: TButton
      Left = 9
      Top = 107
      Width = 105
      Height = 25
      Caption = 'Deletar'
      TabOrder = 2
      OnClick = btnDeletarCadastroClick
    end
    object btnEditarCadastro: TButton
      Left = 9
      Top = 77
      Width = 105
      Height = 25
      Caption = 'Editar'
      TabOrder = 3
      OnClick = btnEditarCadastroClick
    end
  end
  object dsPessoas: TDataSource
    Left = 216
    Top = 160
  end
end
