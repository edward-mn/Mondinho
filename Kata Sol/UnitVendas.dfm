object FormVendas: TFormVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 608
  ClientWidth = 730
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
  object dbGridVendas: TDBGrid
    Left = 0
    Top = 0
    Width = 603
    Height = 608
    Align = alClient
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object gbStatusVenda: TGroupBox
    Left = 603
    Top = 0
    Width = 127
    Height = 608
    Align = alRight
    Caption = 'Status'
    TabOrder = 1
    ExplicitLeft = 544
    ExplicitHeight = 435
    object cbExcluida: TCheckBox
      Left = 6
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Excluida'
      TabOrder = 0
    end
    object cbFinalizada: TCheckBox
      Left = 6
      Top = 35
      Width = 97
      Height = 17
      Caption = 'Finalizada'
      TabOrder = 1
    end
    object cbAberta: TCheckBox
      Left = 6
      Top = 15
      Width = 96
      Height = 17
      Caption = 'Aberta'
      TabOrder = 2
    end
    object btnPesquisar: TButton
      Left = 10
      Top = 97
      Width = 101
      Height = 26
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = btnPesquisarClick
    end
    object cbCancelada: TCheckBox
      Left = 6
      Top = 77
      Width = 97
      Height = 17
      Caption = 'Cancelada'
      TabOrder = 4
    end
    object gbEditarVenda: TGroupBox
      Left = 2
      Top = 129
      Width = 122
      Height = 88
      Caption = 'Venda'
      TabOrder = 5
      object btnAtualizarVendas: TButton
        Left = 7
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
    object gbRelatorioVendas: TGroupBox
      Left = 2
      Top = 501
      Width = 123
      Height = 105
      Align = alBottom
      Caption = 'Relat'#243'rio'
      TabOrder = 6
      ExplicitLeft = 5
      ExplicitTop = 232
      ExplicitWidth = 122
      object btnVisualizarRelatorio: TButton
        Left = 7
        Top = 23
        Width = 106
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 0
        OnClick = btnVisualizarRelatorioClick
      end
      object btnImprimirRelatorio: TButton
        Left = 9
        Top = 57
        Width = 104
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = btnImprimirRelatorioClick
      end
    end
  end
  object dsVendas: TDataSource
    Left = 240
    Top = 320
  end
end
