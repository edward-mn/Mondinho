object FormCriacaoEdicao: TFormCriacaoEdicao
  Left = 0
  Top = 0
  Caption = 'FormCriacaoEdicao'
  ClientHeight = 299
  ClientWidth = 635
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
  object dbGridCriacaoEdicao: TDBGrid
    Left = 48
    Top = 32
    Width = 505
    Height = 209
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsToDo: TDataSource
    Left = 576
    Top = 224
  end
end
