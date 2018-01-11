object FormTarefas: TFormTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefas'
  ClientHeight = 588
  ClientWidth = 732
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
  object gbStatusTarefas: TGroupBox
    Left = 603
    Top = 0
    Width = 129
    Height = 588
    Align = alRight
    Caption = 'Status'
    TabOrder = 0
    object cbAtrasadas: TCheckBox
      Left = 8
      Top = 92
      Width = 97
      Height = 17
      Caption = 'Atrasada'
      TabOrder = 0
    end
    object cbFinalizadas: TCheckBox
      Left = 8
      Top = 67
      Width = 97
      Height = 17
      Caption = 'Finalizada'
      TabOrder = 1
    end
    object cbAdiadas: TCheckBox
      Left = 8
      Top = 42
      Width = 97
      Height = 17
      Caption = 'Adiada'
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
    object gbEditarTarefas: TGroupBox
      Left = 5
      Top = 179
      Width = 119
      Height = 98
      Caption = 'Tarefas'
      TabOrder = 5
      object btnAtualizarTarefa: TButton
        Left = 9
        Top = 58
        Width = 105
        Height = 26
        Caption = 'Atualizar'
        TabOrder = 0
        OnClick = btnAtualizarTarefaClick
      end
      object btnCriarTarefa: TButton
        Left = 9
        Top = 22
        Width = 105
        Height = 26
        Caption = 'Editar Registros'
        TabOrder = 1
        OnClick = btnCriarTarefaClick
      end
    end
    object gbRelatorioTarefas: TGroupBox
      Left = 2
      Top = 489
      Width = 125
      Height = 97
      Align = alBottom
      Caption = 'Relat'#243'rio'
      TabOrder = 6
      object btnImprimir: TButton
        Left = 14
        Top = 56
        Width = 97
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 0
        OnClick = btnImprimirClick
      end
      object btnVisualizar: TButton
        Left = 12
        Top = 23
        Width = 99
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 1
        OnClick = btnVisualizarClick
      end
    end
  end
  object dbGridTarefas: TDBGrid
    Left = 0
    Top = 0
    Width = 603
    Height = 588
    Align = alClient
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsTarefas: TDataSource
    Left = 648
    Top = 288
  end
  object Timer: TTimer
    Interval = 60000
    OnTimer = TimerTimer
    Left = 608
    Top = 288
  end
end
