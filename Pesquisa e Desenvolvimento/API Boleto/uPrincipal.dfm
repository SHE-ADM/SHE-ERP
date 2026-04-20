object Form1: TForm1
  Left = 774
  Top = 161
  Width = 1108
  Height = 666
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtBaseURL: TdxEdit
    Left = 152
    Top = 32
    Width = 121
    TabOrder = 0
  end
  object edtCnpjSh: TdxEdit
    Left = 152
    Top = 56
    Width = 121
    TabOrder = 1
  end
  object edtCnpjCedente: TdxEdit
    Left = 152
    Top = 104
    Width = 121
    TabOrder = 2
  end
  object edtTokenSh: TdxEdit
    Left = 152
    Top = 80
    Width = 121
    TabOrder = 3
  end
  object edtChunkSize: TdxEdit
    Left = 152
    Top = 128
    Width = 121
    TabOrder = 4
  end
  object edtDB: TdxEdit
    Left = 152
    Top = 152
    Width = 121
    TabOrder = 5
  end
  object edtDBUser: TdxEdit
    Left = 152
    Top = 176
    Width = 121
    TabOrder = 6
  end
  object edtDBPass: TdxEdit
    Left = 152
    Top = 200
    Width = 121
    TabOrder = 7
  end
  object edtWebhookURL: TdxEdit
    Left = 152
    Top = 224
    Width = 121
    TabOrder = 8
  end
  object edtWebhookAuthHeader: TdxEdit
    Left = 152
    Top = 248
    Width = 121
    TabOrder = 9
  end
  object edtWebhookAuthValue: TdxEdit
    Left = 152
    Top = 272
    Width = 121
    TabOrder = 10
  end
  object memJson: TdxMemo
    Left = 24
    Top = 336
    Width = 353
    TabOrder = 11
    Lines.Strings = (
      'memJson')
    Height = 153
  end
  object memResp: TdxMemo
    Left = 384
    Top = 336
    Width = 353
    TabOrder = 12
    Lines.Strings = (
      'dxMemo1')
    Height = 153
  end
  object btnTestPost: TButton
    Left = 448
    Top = 48
    Width = 75
    Height = 25
    Caption = 'btnTestPost'
    TabOrder = 13
  end
  object btnEnviarLote: TButton
    Left = 448
    Top = 80
    Width = 75
    Height = 25
    Caption = 'btnEnviarLote'
    TabOrder = 14
  end
  object btnPollOnce: TButton
    Left = 448
    Top = 112
    Width = 75
    Height = 25
    Caption = 'btnPollOnce'
    TabOrder = 15
  end
  object btnCadastrarWebhook: TButton
    Left = 448
    Top = 144
    Width = 75
    Height = 25
    Caption = 'btnCadastrarWebhook'
    TabOrder = 16
  end
  object btnInitDB: TButton
    Left = 448
    Top = 176
    Width = 75
    Height = 25
    Caption = 'btnInitDB'
    TabOrder = 17
  end
end
