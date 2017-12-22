object FormEditarVendas: TFormEditarVendas
  Left = 0
  Top = 0
  Caption = 'Editar/Criar Vendas'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbGridEditarVendas: TDBGrid
    Left = 8
    Top = 8
    Width = 509
    Height = 283
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAtualizar: TButton
    Left = 523
    Top = 131
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 1
    OnClick = btnAtualizarClick
  end
  object btnSalvar: TButton
    Left = 523
    Top = 207
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnAdicionar: TButton
    Left = 523
    Top = 96
    Width = 105
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btnAdicionarClick
  end
  object btnCancelar: TButton
    Left = 523
    Top = 168
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object dsEditarVendas: TDataSource
    Left = 576
    Top = 24
  end
end
