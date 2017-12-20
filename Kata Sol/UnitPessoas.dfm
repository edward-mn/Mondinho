object FormPessoas: TFormPessoas
  Left = 0
  Top = 0
  Caption = 'FormPessoas'
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
  object dbGridPessoas: TDBGrid
    Left = 0
    Top = 0
    Width = 489
    Height = 299
    Align = alLeft
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsPessoas: TDataSource
    Left = 216
    Top = 160
  end
end
