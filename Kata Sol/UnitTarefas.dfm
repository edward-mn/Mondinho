object FormTarefas: TFormTarefas
  Left = 0
  Top = 0
  Caption = 'FormTarefas'
  ClientHeight = 306
  ClientWidth = 647
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
  object btnDeletar: TButton
    Left = 530
    Top = 276
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 0
    OnClick = btnDeletarClick
  end
  object btnAtualizar: TButton
    Left = 530
    Top = 242
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 1
    OnClick = btnAtualizarClick
  end
  object btnEditar: TButton
    Left = 530
    Top = 212
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object GroupBox1: TGroupBox
    Left = 530
    Top = 8
    Width = 105
    Height = 153
    Caption = 'Status'
    TabOrder = 3
    object cbAtrasadas: TCheckBox
      Left = 8
      Top = 95
      Width = 97
      Height = 17
      Caption = 'Atrasadas'
      TabOrder = 0
    end
    object cbFinalizadas: TCheckBox
      Left = 8
      Top = 70
      Width = 97
      Height = 17
      Caption = 'Finalizadas'
      TabOrder = 1
    end
    object cbAdiadas: TCheckBox
      Left = 8
      Top = 44
      Width = 97
      Height = 17
      Caption = 'Adiadas'
      TabOrder = 2
    end
    object cbAgendadas: TCheckBox
      Left = 8
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Agendadas'
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
  end
  object btnCriarTarefa: TButton
    Left = 530
    Top = 176
    Width = 105
    Height = 26
    Caption = 'CriarTarefa'
    TabOrder = 4
    OnClick = btnCriarTarefaClick
  end
  object dbGridTarefas: TDBGrid
    Left = 0
    Top = 0
    Width = 524
    Height = 306
    Align = alLeft
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsTarefas: TDataSource
    Left = 216
    Top = 160
  end
end
