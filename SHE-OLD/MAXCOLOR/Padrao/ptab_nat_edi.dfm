inherited frmtab_nat_edi: Tfrmtab_nat_edi
  Left = 517
  Top = 102
  ClientHeight = 454
  ClientWidth = 564
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 564
    Height = 435
    inherited PaintBox: TPaintBox
      Width = 564
      Height = 160
    end
    object Label36: TLabel [1]
      Left = 6
      Top = 77
      Width = 140
      Height = 14
      AutoSize = False
      Caption = 'C.F.O.P.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel [2]
      Left = 6
      Top = 101
      Width = 140
      Height = 14
      AutoSize = False
      Caption = 'Natureza de Opera'#231#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel [3]
      Left = 6
      Top = 125
      Width = 140
      Height = 14
      AutoSize = False
      Caption = 'Tipo da Natureza'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel [4]
      Left = 381
      Top = 125
      Width = 140
      Height = 14
      AutoSize = False
      Caption = 'Opera'#231#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel [5]
      Left = 6
      Top = 149
      Width = 140
      Height = 14
      AutoSize = False
      Caption = 'C.S.T.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel [6]
      Left = 6
      Top = 173
      Width = 140
      Height = 14
      AutoSize = False
      Caption = 'C.S.O.S.N.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel [7]
      Left = 6
      Top = 197
      Width = 140
      Height = 14
      AutoSize = False
      Caption = 'C.S.O.S.N. [C.I.C.M.]'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    inherited SBMenuPrincipal: TSpeedBar
      Width = 564
      TabOrder = 9
    end
    object eddnat: TdxEdit
      Tag = 1
      Left = 144
      Top = 96
      Width = 417
      Hint = 'Natureza de Opera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 1
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 60
      Height = 24
      StoredValues = 2
    end
    object cbtipo: TdxImageEdit
      Tag = 1
      Left = 144
      Top = 120
      Width = 209
      Hint = 'Tipo da Natureza'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 2
      Alignment = taLeftJustify
      AutoSize = False
      DropDownRows = 15
      Descriptions.Strings = (
        'VENDA'
        'REVENDA'
        'COMPRA'
        'BRINDE'
        'DEVOLU'#199#195'O'
        'TRANSFERENCIA'
        'BENEFICIAMENTO'
        'SERVI'#199'O'
        'IMPORTA'#199#195'O'
        'EXPORTA'#199#195'O')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
      Values.Strings = (
        'VENDA'
        'REVENDA'
        'COMPRA'
        'BRINDE'
        'DEVOLU'#199#195'O'
        'TRANSFERENCIA'
        'BENEFICIAMENTO'
        'SERVI'#199'O'
        'IMPORTA'#199#195'O'
        'EXPORTA'#199#195'O')
      Height = 24
      StoredValues = 1
    end
    object cboper: TdxImageEdit
      Tag = 1
      Left = 448
      Top = 120
      Width = 113
      Hint = 'Opera'#231#227'o'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 3
      Text = 'SA'#205'DA'
      Alignment = taLeftJustify
      AutoSize = False
      DropDownRows = 15
      Descriptions.Strings = (
        'ENTRADA'
        'SA'#205'DA')
      ImageIndexes.Strings = (
        '0'
        '1')
      Values.Strings = (
        'ENTRADA'
        'SA'#205'DA')
      Height = 24
      StoredValues = 1
    end
    object pcmain: TdxPageControl
      Left = 0
      Top = 225
      Width = 564
      Height = 210
      ActivePage = tsicms
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      ParentFont = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 4
      TabPosition = dxtpTop
      TabWidth = 0
      object tsicms: TdxTabSheet
        Caption = 'Apura'#231#227'o'
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 564
          Height = 186
          Align = alClient
        end
        object Label12: TLabel
          Left = 8
          Top = 85
          Width = 55
          Height = 14
          Caption = 'Valor (R$)'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object rbfret: TRadioButton
          Left = 8
          Top = 8
          Width = 321
          Height = 17
          Caption = 'Incluir o Valor do Frete no Valor da Base do I.C.M.S. ?'
          TabOrder = 0
        end
        object rbbipi: TRadioButton
          Left = 8
          Top = 32
          Width = 321
          Height = 17
          Caption = 'Incluir o Valor do I.P.I. no Valor da Base do I.C.M.S. ?'
          TabOrder = 1
        end
        object rbmate: TRadioButton
          Left = 8
          Top = 56
          Width = 281
          Height = 17
          Caption = 'Calcular M'#227'o de Obra ?'
          TabOrder = 2
        end
        object edpenf: TdxEdit
          Left = 88
          Top = 80
          Width = 50
          Hint = 'Fantasia'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edpenfValidate
          Height = 24
          StoredValues = 3
        end
        object rgindt: TRadioGroup
          Left = 8
          Top = 112
          Width = 265
          Height = 73
          Caption = 'Valor do item do produto'
          ItemIndex = 0
          Items.Strings = (
            'N'#195'O somar no valor total na nota fiscal'
            'Somar no valor total da nota fiscal')
          TabOrder = 4
        end
      end
      object dxTabSheet1: TdxTabSheet
        Caption = 'P.I.S.'
        object Bevel2: TBevel
          Left = 0
          Top = 0
          Width = 564
          Height = 186
          Align = alClient
        end
        object Label8: TLabel
          Left = 10
          Top = 13
          Width = 53
          Height = 14
          Caption = 'Valor (%)'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 10
          Top = 37
          Width = 34
          Height = 14
          Caption = 'C.S.T.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edpipp: TdxEdit
          Left = 88
          Top = 8
          Width = 50
          Hint = 'Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edpippValidate
          Height = 24
          StoredValues = 3
        end
        object cbcstp: TdxImageEdit
          Tag = 1
          Left = 88
          Top = 32
          Width = 473
          Hint = 'Tipo da Natureza'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          Alignment = taLeftJustify
          AutoSize = False
          DropDownRows = 15
          Descriptions.Strings = (
            
              '01 - Opera'#231#227'o Tribut'#225'vel (Base de C'#225'lculo = Valor da Opera'#231#227'o Al' +
              #237'quota Normal (Cumulativo/n'#227'o Cumulativo))'
            
              '02 - Opera'#231#227'o Tribut'#225'vel (Base de C'#225'lculo = Valor da Opera'#231#227'o Al' +
              #237'quota Normal (Al'#237'quota Diferenciada))'
            
              '03 - Opera'#231#227'o Tribut'#225'vel (Base de C'#225'lculo = Quantidade Vendida x' +
              ' Al'#237'quota por Unidade de Produto)'
            '04 - Opera'#231#227'o Tribut'#225'vel (Tributa'#231#227'o Monof'#225'sica (Al'#237'quota Zero))'
            '06 - Opera'#231#227'o Tribut'#225'vel (Al'#237'quota Zero)'
            '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 - Opera'#231#227'o Sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 - Outras Sa'#237'das'
            '99 - Outras Opera'#231#245'es')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
          Values.Strings = (
            '01'
            '02'
            '03'
            '04'
            '06'
            '07'
            '08'
            '09'
            '49'
            '99')
          Height = 24
          StoredValues = 1
        end
      end
      object tscofins: TdxTabSheet
        Caption = 'C.O.F.I.N.S.'
        object Label10: TLabel
          Left = 10
          Top = 13
          Width = 53
          Height = 14
          Caption = 'Valor (%)'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 10
          Top = 37
          Width = 34
          Height = 14
          Caption = 'C.S.T.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Bevel3: TBevel
          Left = 0
          Top = 0
          Width = 564
          Height = 186
          Align = alClient
        end
        object edpipc: TdxEdit
          Tag = 1
          Left = 88
          Top = 8
          Width = 50
          Hint = 'Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          Alignment = taRightJustify
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 20
          OnValidate = edpipcValidate
          Height = 24
          StoredValues = 3
        end
        object cbcstc: TdxImageEdit
          Tag = 1
          Left = 88
          Top = 32
          Width = 473
          Hint = 'Tipo da Natureza'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          Alignment = taLeftJustify
          AutoSize = False
          DropDownRows = 15
          Descriptions.Strings = (
            
              '01 - Opera'#231#227'o Tribut'#225'vel (Base de C'#225'lculo = Valor da Opera'#231#227'o Al' +
              #237'quota Normal (Cumulativo/n'#227'o Cumulativo))'
            
              '02 - Opera'#231#227'o Tribut'#225'vel (Base de C'#225'lculo = Valor da Opera'#231#227'o Al' +
              #237'quota Normal (Al'#237'quota Diferenciada))'
            
              '03 - Opera'#231#227'o Tribut'#225'vel (Base de C'#225'lculo = Quantidade Vendida x' +
              ' Al'#237'quota por Unidade de Produto)'
            '04 - Opera'#231#227'o Tribut'#225'vel (Tributa'#231#227'o Monof'#225'sica (Al'#237'quota Zero))'
            '06 - Opera'#231#227'o Tribut'#225'vel (Al'#237'quota Zero)'
            '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 - Opera'#231#227'o Sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 - Outras Sa'#237'das'
            '99 - Outras Opera'#231#245'es')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
          Values.Strings = (
            '01'
            '02'
            '03'
            '04'
            '06'
            '07'
            '08'
            '09'
            '49'
            '99')
          Height = 24
          StoredValues = 1
        end
      end
      object dxTabSheet3: TdxTabSheet
        Caption = 'I.P.I'
        object Label13: TLabel
          Left = 10
          Top = 13
          Width = 34
          Height = 14
          Caption = 'C.S.T.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Bevel4: TBevel
          Left = 0
          Top = 0
          Width = 564
          Height = 186
          Align = alClient
        end
        object cbcsti: TdxImageEdit
          Tag = 1
          Left = 48
          Top = 8
          Width = 513
          Hint = 'Tipo da Natureza'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          Alignment = taLeftJustify
          AutoSize = False
          DropDownRows = 15
          Descriptions.Strings = (
            '01 - Entrada Tributada com Al'#237'quota Zero'
            '02 - Entrada Isenta'
            '03 - Entrada N'#227'o-Tributada'
            '04 - Entrada Imune'
            '05 - Entrada com Suspens'#227'o'
            '50 - Sa'#237'da Tributada'
            '51 - Sa'#237'da Tributada com Al'#237'quota Zero'
            '52 - Sa'#237'da Isenta'
            '53 - Sa'#237'da n'#227'o-Tributada'
            '54 - Sa'#237'da Imune'
            '55 - Sa'#237'da com Suspens'#227'o'
            '99 - Outras Sa'#237'das')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11')
          Values.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '99')
          Height = 24
          StoredValues = 1
        end
      end
      object tsmsg: TdxTabSheet
        Caption = 'Mensagens'
        object edobse: TdxMemo
          Left = 0
          Top = 0
          Width = 564
          Align = alClient
          Color = 14789952
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          Height = 186
        end
      end
      object dxTabSheet2: TdxTabSheet
        Caption = 'Outros'
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 564
          Height = 186
          Align = alClient
        end
        object Label6: TLabel
          Left = 6
          Top = 13
          Width = 140
          Height = 14
          AutoSize = False
          Caption = 'C.F.O.P. Equivalente'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edcfop: TdxEdit
          Tag = 1
          Left = 128
          Top = 8
          Width = 113
          Hint = 'C.F.O.P.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 0
          OnExit = edcnatExit
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 10
          Height = 24
          StoredValues = 2
        end
      end
    end
    object edid: TdxEdit
      Left = 144
      Top = 72
      Width = 25
      Hint = 'C.F.O.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 5
      Text = '0'
      Visible = False
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 20
      Height = 24
      StoredValues = 2
    end
    object edcnat: TdxEdit
      Tag = 1
      Left = 144
      Top = 72
      Width = 113
      Hint = 'C.F.O.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 0
      OnExit = edcnatExit
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 10
      Height = 24
      StoredValues = 2
    end
    object cbccst: TdxImageEdit
      Left = 144
      Top = 144
      Width = 417
      Hint = 'C.S.T.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 6
      Alignment = taLeftJustify
      AutoSize = False
      DropDownRows = 15
      Descriptions.Strings = (
        '')
      ImageIndexes.Strings = (
        '0')
      Values.Strings = (
        '')
      Height = 24
      StoredValues = 1
    end
    object cbcsts: TdxImageEdit
      Left = 144
      Top = 168
      Width = 417
      Hint = 'C.S.O.S.N.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 7
      Alignment = taLeftJustify
      AutoSize = False
      DropDownRows = 15
      Descriptions.Strings = (
        '')
      ImageIndexes.Strings = (
        '0')
      Values.Strings = (
        '')
      Height = 24
      StoredValues = 1
    end
    object cbcsta: TdxImageEdit
      Left = 144
      Top = 192
      Width = 417
      Hint = 'C.S.O.S.N. [C.I.C.M.]'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 8
      Alignment = taLeftJustify
      AutoSize = False
      DropDownRows = 15
      Descriptions.Strings = (
        '')
      ImageIndexes.Strings = (
        '0')
      Values.Strings = (
        '')
      Height = 24
      StoredValues = 1
    end
  end
  inherited sbMSG: TStatusBar
    Top = 435
    Width = 564
  end
end
