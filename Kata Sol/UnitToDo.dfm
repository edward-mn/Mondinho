object FormView: TFormView
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'FormView'
  ClientHeight = 324
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbGridPrincipal: TDBGrid
    Left = 0
    Top = 0
    Width = 517
    Height = 324
    Align = alLeft
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 532
    Top = 8
    Width = 105
    Height = 153
    Caption = 'Status'
    TabOrder = 1
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
  object btnAtualizar: TButton
    Left = 532
    Top = 247
    Width = 105
    Height = 26
    Caption = 'Atualizar'
    TabOrder = 2
    OnClick = btnAtualizarClick
  end
  object btnEditar: TButton
    Left = 532
    Top = 213
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnCriarTarefa: TButton
    Left = 532
    Top = 176
    Width = 105
    Height = 26
    Caption = 'CriarTarefa'
    TabOrder = 4
    OnClick = btnCriarTarefaClick
  end
  object btnDeletar: TButton
    Left = 532
    Top = 283
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 5
    OnClick = btnDeletarClick
  end
  object dsToDo: TDataSource
    Left = 648
    Top = 96
  end
end
