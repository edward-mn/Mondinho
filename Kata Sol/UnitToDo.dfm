object FormView: TFormView
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'Mondinho'
  ClientHeight = 631
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbGridPrincipal: TDBGrid
    Left = 0
    Top = 158
    Width = 1084
    Height = 473
    Align = alBottom
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 112
    Width = 1084
    Height = 46
    Align = alBottom
    TabOrder = 1
    object btnTarefas: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 44
      Align = alLeft
      Caption = 'Tarefas'
      TabOrder = 0
      OnClick = btnTarefasClick
    end
<<<<<<< HEAD
    object btnVendas: TButton
      Left = 241
      Top = 2
      Width = 80
      Height = 41
      Caption = 'Vendas'
      TabOrder = 1
      OnClick = btnVendasClick
=======
    object btnPessoas: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 44
      Align = alLeft
      Caption = 'Pessoas'
      TabOrder = 1
      OnClick = btnPessoasClick
>>>>>>> master
    end
  end
  object dsToDo: TDataSource
    Left = 1032
    Top = 120
  end
end
