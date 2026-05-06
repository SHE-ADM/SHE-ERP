object Form1: TForm1
  Left = 331
  Top = 76
  Width = 1262
  Height = 887
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object EditNumeroDuimp: TEdit
    Left = 168
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '26BR00004580355'
  end
  object EditVersaoDuimp: TEdit
    Left = 168
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0001'
  end
  object BTNAutentica: TButton
    Left = 8
    Top = 8
    Width = 150
    Height = 25
    Caption = 'Autenticar'
    TabOrder = 2
    OnClick = BTNAutenticaClick
  end
  object MemoRetorno: TMemo
    Left = 0
    Top = 279
    Width = 1246
    Height = 569
    Align = alBottom
    Lines.Strings = (
      'MemoRetorno')
    TabOrder = 3
  end
  object EditNumeroItem: TEdit
    Left = 168
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '1'
  end
  object BTNConsultaDUIMP: TButton
    Left = 8
    Top = 40
    Width = 150
    Height = 25
    Caption = 'Consulta DUIMP'
    TabOrder = 5
    OnClick = BTNConsultaDUIMPClick
  end
  object BTNConsultaItems: TButton
    Left = 8
    Top = 72
    Width = 150
    Height = 25
    Caption = 'Consulta Itens'
    TabOrder = 6
    OnClick = BTNConsultaItemsClick
  end
end
