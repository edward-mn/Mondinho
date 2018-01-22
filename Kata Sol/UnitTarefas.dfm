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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 741
    Height = 652
    Align = alClient
    TabOrder = 0
    AutoSize = True
    object cbAtrasadas: TCheckBox
      Left = 598
      Top = 97
      Width = 97
      Height = 17
      Caption = 'Atrasada'
      TabOrder = 4
    end
    object cbFinalizadas: TCheckBox
      Left = 598
      Top = 74
      Width = 97
      Height = 17
      Caption = 'Finalizada'
      TabOrder = 3
    end
    object cbAdiadas: TCheckBox
      Left = 598
      Top = 51
      Width = 97
      Height = 17
      Caption = 'Adiada'
      TabOrder = 2
    end
    object cbAgendada: TCheckBox
      Left = 598
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Agendada'
      TabOrder = 1
    end
    object btnCriarTarefa: TcxButton
      Left = 610
      Top = 169
      Width = 97
      Height = 25
      Caption = 'Editar Registros'
      TabOrder = 6
      OnClick = btnCriarTarefaClick
    end
    object btnAtualizarTarefa: TcxButton
      Left = 610
      Top = 200
      Width = 97
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 7
      OnClick = btnAtualizarTarefaClick
    end
    object btnVisualizar: TcxButton
      Left = 610
      Top = 562
      Width = 97
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 8
      OnClick = btnVisualizarClick
    end
    object btnImprimir: TcxButton
      Left = 610
      Top = 593
      Width = 97
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 9
      OnClick = btnImprimirClick
    end
    object btnPesquisar: TcxButton
      Left = 598
      Top = 120
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 5
      OnClick = btnPesquisarClick
    end
    object dbGridTarefas: TcxGrid
      Left = 10
      Top = 10
      Width = 570
      Height = 632
      TabOrder = 0
      object dbGridTarefasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsTarefas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object LayoutGroupTarefas: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutGridTarefas: TdxLayoutItem
      Parent = LayoutGroupTarefas
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dbGridTarefas'
      CaptionOptions.Visible = False
      Control = dbGridTarefas
      ControlOptions.OriginalHeight = 652
      ControlOptions.OriginalWidth = 612
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutGroupTodosBotoes: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Status'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object LayoutGroupDireitoDentro: TdxLayoutGroup
      Parent = LayoutGroupTodosBotoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutGroupSuperiorDireito: TdxLayoutGroup
      Parent = LayoutGroupDireitoDentro
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 5
      ShowBorder = False
      Index = 0
    end
    object LayoutItemChAgendada: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbAgendada'
      CaptionOptions.Visible = False
      Control = cbAgendada
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemChAdiada: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbAdiadas'
      CaptionOptions.Visible = False
      Control = cbAdiadas
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutItemChFinalizada: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbFinalizadas'
      CaptionOptions.Visible = False
      Control = cbFinalizadas
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutItemChAtrasada: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbAtrasadas'
      CaptionOptions.Visible = False
      Control = cbAtrasadas
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutItemBtPesquisar: TdxLayoutItem
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnPesquisar'
      CaptionOptions.Visible = False
      Control = btnPesquisar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutGroupCampoTarefas: TdxLayoutGroup
      Parent = LayoutGroupSuperiorDireito
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tarefas'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object LayoutGroupBotoes: TdxLayoutGroup
      Parent = LayoutGroupCampoTarefas
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object LayoutItemBtEdtRegistro: TdxLayoutItem
      Parent = LayoutGroupBotoes
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnCriarTarefa'
      CaptionOptions.Visible = False
      Control = btnCriarTarefa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemBtAtualizar: TdxLayoutItem
      Parent = LayoutGroupBotoes
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnAtualizarTarefa'
      CaptionOptions.Visible = False
      Control = btnAtualizarTarefa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutGroupCampoRelatorios: TdxLayoutGroup
      Parent = LayoutGroupTodosBotoes
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Relat'#243'rio'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object LayoutGroupBtRelatorios: TdxLayoutGroup
      Parent = LayoutGroupCampoRelatorios
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object LayoutItemBtVisualizar: TdxLayoutItem
      Parent = LayoutGroupBtRelatorios
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnVisualizar'
      CaptionOptions.Visible = False
      Control = btnVisualizar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemBtImprimir: TdxLayoutItem
      Parent = LayoutGroupBtRelatorios
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnImprimir'
      CaptionOptions.Visible = False
      Control = btnImprimir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
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
