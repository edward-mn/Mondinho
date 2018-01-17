object FormTarefas: TFormTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Tarefas'
  ClientHeight = 652
  ClientWidth = 741
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
    Left = 612
    Top = 0
    Width = 129
    Height = 652
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
    object gbEditarTarefas: TGroupBox
      Left = 5
      Top = 179
      Width = 119
      Height = 70
      Caption = 'Tarefas'
      TabOrder = 4
      object btnCriarTarefa: TcxButton
        Left = 9
        Top = 16
        Width = 97
        Height = 25
        Caption = 'Editar Registros'
        TabOrder = 0
        OnClick = btnCriarTarefaClick
      end
      object btnAtualizarTarefa: TcxButton
        Left = 9
        Top = 43
        Width = 97
        Height = 25
        Caption = 'Atualizar'
        TabOrder = 1
        OnClick = btnAtualizarTarefaClick
      end
    end
    object gbRelatorioTarefas: TGroupBox
      Left = 2
      Top = 553
      Width = 125
      Height = 97
      Align = alBottom
      Caption = 'Relat'#243'rio'
      TabOrder = 5
      object btnVisualizar: TcxButton
        Left = 12
        Top = 26
        Width = 97
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 0
        OnClick = btnVisualizarClick
      end
      object btnImprimir: TcxButton
        Left = 12
        Top = 57
        Width = 97
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = btnImprimirClick
      end
    end
    object btnPesquisar: TcxButton
      Left = 14
      Top = 118
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 6
      OnClick = btnPesquisarClick
    end
  end
  object dbGridTarefas: TcxGrid
    Left = 0
    Top = 0
    Width = 612
    Height = 652
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 609
    object dbGridTarefasDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTarefas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbWhenSelected
      object dbGridTarefasDBTableView1id_todo: TcxGridDBColumn
        DataBinding.FieldName = 'id_todo'
      end
      object dbGridTarefasDBTableView1nomes: TcxGridDBColumn
        DataBinding.FieldName = 'nomes'
        Width = 111
      end
      object dbGridTarefasDBTableView1tarefas: TcxGridDBColumn
        DataBinding.FieldName = 'tarefas'
        Width = 141
      end
      object dbGridTarefasDBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
      end
      object dbGridTarefasDBTableView1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object dbGridTarefasDBTableView1id_cadastro: TcxGridDBColumn
        DataBinding.FieldName = 'id_cadastro'
      end
    end
    object dbGridTarefasLevel1: TcxGridLevel
      GridView = dbGridTarefasDBTableView1
    end
  end
  object dsTarefas: TDataSource
    DataSet = DmClientesTarefas.cdsToDo
    Left = 648
    Top = 288
  end
  object Timer: TTimer
    Interval = 60000
    OnTimer = TimerTimer
    Left = 648
    Top = 336
  end
end
