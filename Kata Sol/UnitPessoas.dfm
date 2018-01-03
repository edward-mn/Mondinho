object FormPessoas: TFormPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pessoas'
  ClientHeight = 422
  ClientWidth = 665
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
    Height = 422
    Align = alLeft
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object gbStatusPessoas: TGroupBox
    Left = 530
    Top = 24
    Width = 120
    Height = 153
    Caption = 'Status'
    TabOrder = 1
    object cbEmpresa: TCheckBox
      Left = 8
      Top = 79
      Width = 97
      Height = 17
      Caption = 'Empresa'
      TabOrder = 0
    end
    object cbVendedor: TCheckBox
      Left = 8
      Top = 58
      Width = 97
      Height = 17
      Caption = 'Vendedor'
      TabOrder = 1
    end
    object cbJuridica: TCheckBox
      Left = 8
      Top = 38
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
      OnClick = btnPesquisarClick
    end
    object cbUsuarioDoSistema: TCheckBox
      Left = 8
      Top = 100
      Width = 109
      Height = 17
      Caption = 'Usuario do Sistema'
      TabOrder = 5
    end
  end
  object gbEditarPessoas: TGroupBox
    Left = 530
    Top = 183
    Width = 120
    Height = 84
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
      Caption = 'Editar Registros'
      TabOrder = 1
      OnClick = btnCadastrarPessoaClick
    end
  end
  object gbRelatorioPessoas: TGroupBox
    Left = 530
    Top = 273
    Width = 120
    Height = 104
    Caption = 'Relat'#243'rio'
    TabOrder = 3
    object bntVisualizar: TButton
      Left = 10
      Top = 24
      Width = 102
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = bntVisualizarClick
    end
    object btnImprimir: TButton
      Left = 10
      Top = 57
      Width = 102
      Height = 26
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = btnImprimirClick
    end
  end
  object dsPessoas: TDataSource
    Left = 584
    Top = 384
  end
end
