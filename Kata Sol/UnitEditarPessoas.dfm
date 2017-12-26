object FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Pessoas'
  ClientHeight = 309
  ClientWidth = 645
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
    Top = 0
    Width = 489
    Height = 309
    Align = alLeft
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnCadastrarPessoa: TButton
    Left = 512
    Top = 81
    Width = 105
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = btnCadastrarPessoaClick
  end
  object btnAtualizarPessoas: TButton
    Left = 512
    Top = 116
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 2
    OnClick = btnAtualizarPessoasClick
  end
  object btnCancelarPessoas: TButton
    Left = 512
    Top = 153
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarPessoasClick
  end
  object btnSalvarPessoas: TButton
    Left = 512
    Top = 189
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarPessoasClick
  end
  object dsCriacaoEdicaoPessoas: TDataSource
    Left = 216
    Top = 160
  end
end
