object FormVendas: TFormVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 330
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
    Left = 8
    Top = 8
    Width = 756
    Height = 309
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnDeletarTarefa: TButton
    Left = 770
    Top = 277
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 1
    OnClick = btnDeletarTarefaClick
  end
  object btnAtualizarTarefa: TButton
    Left = 770
    Top = 245
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 2
    OnClick = btnAtualizarTarefaClick
  end
  object btnEditarTarefa: TButton
    Left = 770
    Top = 213
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarTarefaClick
  end
  object GroupBox1: TGroupBox
    Left = 770
    Top = 16
    Width = 105
    Height = 129
    Caption = 'Status'
    TabOrder = 4
    object cbExcluida: TCheckBox
      Left = 8
      Top = 70
      Width = 97
      Height = 17
      Caption = 'Excluida'
      TabOrder = 0
    end
    object cbFinalizada: TCheckBox
      Left = 8
      Top = 44
      Width = 97
      Height = 17
      Caption = 'Finalizada'
      TabOrder = 1
    end
    object cbAberta: TCheckBox
      Left = 8
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Aberta'
      TabOrder = 2
    end
    object btnPesquisar: TButton
      Left = 10
      Top = 93
      Width = 87
      Height = 26
      Caption = 'Pesquisar'
      TabOrder = 3
    end
  end
  object btnCriarTarefa: TButton
    Left = 770
    Top = 181
    Width = 105
    Height = 26
    Caption = 'Criar'
    TabOrder = 5
    OnClick = btnCriarTarefaClick
  end
  object dsVendas: TDataSource
    Left = 704
    Top = 272
  end
end
