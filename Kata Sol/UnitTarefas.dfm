object FormTarefas: TFormTarefas
  Left = 0
  Top = 0
  Caption = 'Tarefas'
  ClientHeight = 325
  ClientWidth = 649
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
  object Tarefas: TLabel
    Left = 530
    Top = 172
    Width = 99
    Height = 18
    Caption = 'Tarefas:'
  end
  object btnDeletarTarefa: TButton
    Left = 530
    Top = 292
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 0
    OnClick = btnDeletarTarefaClick
  end
  object btnAtualizarTarefa: TButton
    Left = 530
    Top = 260
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 1
    OnClick = btnAtualizarTarefaClick
  end
  object btnEditarTarefa: TButton
    Left = 530
    Top = 228
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarTarefaClick
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
    object cbAgendada: TCheckBox
      Left = 8
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Agendada'
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
    Top = 196
    Width = 105
    Height = 26
    Caption = 'Criar'
    TabOrder = 4
    OnClick = btnCriarTarefaClick
  end
  object dbGridTarefas: TDBGrid
    Left = 0
    Top = 0
    Width = 524
    Height = 325
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
