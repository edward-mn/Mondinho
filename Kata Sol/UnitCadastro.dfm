object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FormCadastro'
  ClientHeight = 200
  ClientWidth = 493
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
  object Label2: TLabel
    Left = 32
    Top = 21
    Width = 81
    Height = 13
    Caption = 'Nome de Usuario'
    FocusControl = DBEdtUsuario
  end
  object Label3: TLabel
    Left = 32
    Top = 58
    Width = 30
    Height = 13
    Caption = 'Senha'
    FocusControl = DBEdtSenha
  end
  object Label1: TLabel
    Left = 32
    Top = 92
    Width = 127
    Height = 13
    Caption = 'Digite a Senha Novamente'
  end
  object Label4: TLabel
    Left = 186
    Top = 186
    Width = 299
    Height = 13
    Caption = #169' Mondinho                https://github.com/Edwardpg/Mondinho'
  end
  object btnCadastrar: TButton
    Left = 192
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object DBEdtUsuario: TDBEdit
    Left = 32
    Top = 37
    Width = 134
    Height = 21
    DataField = 'nome_usuario'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdtSenha: TDBEdit
    Left = 32
    Top = 70
    Width = 134
    Height = 21
    DataField = 'senha'
    DataSource = dsCadastro
    PasswordChar = '*'
    TabOrder = 2
  end
  object edtSenhaNovamente: TEdit
    Left = 32
    Top = 105
    Width = 134
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object dsCadastro: TDataSource
    Left = 400
    Top = 88
  end
end
