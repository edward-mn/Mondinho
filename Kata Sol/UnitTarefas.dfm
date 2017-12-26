object FormTarefas: TFormTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefas'
  ClientHeight = 335
  ClientWidth = 670
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
  object GroupBox1: TGroupBox
    Left = 530
    Top = 8
    Width = 119
    Height = 153
    Caption = 'Status'
    TabOrder = 0
    object cbAtrasadas: TCheckBox
      Left = 8
      Top = 92
      Width = 97
      Height = 17
      Caption = 'Atrasadas'
      TabOrder = 0
    end
    object cbFinalizadas: TCheckBox
      Left = 8
      Top = 67
      Width = 97
      Height = 17
      Caption = 'Finalizadas'
      TabOrder = 1
    end
    object cbAdiadas: TCheckBox
      Left = 8
      Top = 42
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
      Width = 96
      Height = 26
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = btnPesquisarClick
    end
  end
  object dbGridTarefas: TDBGrid
    Left = 0
    Top = 0
    Width = 524
    Height = 335
    Align = alLeft
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox2: TGroupBox
    Left = 530
    Top = 167
    Width = 119
    Height = 147
    Caption = 'Tarefas'
    TabOrder = 2
    object btnDeletarTarefa: TButton
      Left = 9
      Top = 110
      Width = 105
      Height = 25
      Caption = 'Deletar'
      TabOrder = 0
      OnClick = btnDeletarTarefaClick
    end
    object btnAtualizarTarefa: TButton
      Left = 9
      Top = 78
      Width = 105
      Height = 26
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = btnAtualizarTarefaClick
    end
    object btnEditarTarefa: TButton
      Left = 8
      Top = 15
      Width = 105
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = btnEditarTarefaClick
    end
    object btnCriarTarefa: TButton
      Left = 9
      Top = 46
      Width = 105
      Height = 26
      Caption = 'Cadastrar'
      TabOrder = 3
      OnClick = btnCriarTarefaClick
    end
  end
  object dsTarefas: TDataSource
    Left = 216
    Top = 160
  end
end
