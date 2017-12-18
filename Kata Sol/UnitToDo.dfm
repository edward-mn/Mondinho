object FormView: TFormView
  Left = 0
  Top = 0
  Caption = 'FormView'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbGridPrincipal: TDBGrid
    Left = 48
    Top = 16
    Width = 537
    Height = 233
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnCriarTarefa: TButton
    Left = 48
    Top = 266
    Width = 75
    Height = 25
    Caption = 'CriarTarefa'
    TabOrder = 1
    OnClick = btnCriarTarefaClick
  end
  object dsToDo: TDataSource
    Left = 368
    Top = 272
  end
end
