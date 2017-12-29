object FormVendas: TFormVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 334
  ClientWidth = 697
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
  object Tarefas: TLabel
    Left = 772
    Top = 160
    Width = 39
    Height = 13
    Caption = 'Vendas:'
  end
  object dbGridVendas: TDBGrid
    Left = 0
    Top = 0
    Width = 521
    Height = 334
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
    Left = 544
    Top = 40
    Width = 122
    Height = 121
    Caption = 'Status'
    TabOrder = 1
    object cbExcluida: TCheckBox
      Left = 17
      Top = 61
      Width = 97
      Height = 17
      Caption = 'Excluida'
      TabOrder = 0
    end
    object cbFinalizada: TCheckBox
      Left = 17
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Finalizada'
      TabOrder = 1
    end
    object cbAberta: TCheckBox
      Left = 17
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Aberta'
      TabOrder = 2
    end
    object btnPesquisar: TButton
      Left = 10
      Top = 89
      Width = 101
      Height = 26
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = btnPesquisarClick
    end
  end
  object Vendas: TGroupBox
    Left = 544
    Top = 195
    Width = 122
    Height = 86
    Caption = 'Vendas'
    TabOrder = 2
    object btnAtualizarVendas: TButton
      Left = 9
      Top = 50
      Width = 105
      Height = 26
      Caption = 'Atualizar'
      TabOrder = 0
      OnClick = btnAtualizarVendasClick
    end
    object btnEditarVendasCadastrar: TButton
      Left = 7
      Top = 19
      Width = 105
      Height = 25
      Caption = 'Editar / Cadastrar'
      TabOrder = 1
      OnClick = btnEditarVendasCadastrarClick
    end
  end
  object dsVendas: TDataSource
    Left = 280
    Top = 128
  end
end
