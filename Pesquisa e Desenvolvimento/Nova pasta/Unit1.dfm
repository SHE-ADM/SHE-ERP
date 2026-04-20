object Form1: TForm1
  Left = 339
  Top = 117
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnTestar: TButton
    Left = 112
    Top = 64
    Width = 75
    Height = 25
    Caption = 'btnTestar'
    TabOrder = 0
    OnClick = btnTestarClick
  end
  object edtDoc: TEdit
    Left = 264
    Top = 80
    Width = 561
    Height = 21
    TabOrder = 1
    Text = 'edtDoc'
  end
  object memResp: TMemo
    Left = 0
    Top = 416
    Width = 1289
    Height = 220
    Align = alBottom
    Lines.Strings = (
      'memResp')
    TabOrder = 2
  end
end
