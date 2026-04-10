inherited frmtab_nat: Tfrmtab_nat
  Left = 286
  Top = 203
  Caption = 'Tabela de C.F.O.P.'
  ClientWidth = 1089
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1089
    inherited siPSQ: TSpeedItem
      Visible = False
    end
    inherited siPRN: TSpeedItem
      Visible = False
    end
    inherited siSAIR: TSpeedItem
      Left = 85
    end
  end
  inherited pnldir: TPanel
    Left = 1089
  end
  inherited pnlpri: TPanel
    Width = 1089
    inherited pnldbg: TPanel
      Width = 1089
      inherited gbDET: TGroupBox
        Width = 1035
        inherited DBGConsulta: TdxDBGrid
          Width = 1031
          KeyField = 'ID'
          Filter.Active = True
          Filter.Criteria = {00000000}
          object dbgConsultaNAT_CNAT: TdxDBGridMaskColumn
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CNAT'
          end
          object dbgConsultaNAT_DNAT: TdxDBGridMaskColumn
            Width = 430
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_DNAT'
          end
          object dbgConsultaNAT_OPER: TdxDBGridMaskColumn
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_OPER'
          end
          object dbgConsultaNAT_TIPO: TdxDBGridMaskColumn
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_TIPO'
          end
          object dbgConsultaNAT_CCST: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CCST'
          end
          object dbgConsultaNAT_CSTS: TdxDBGridMaskColumn
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTS'
          end
          object dbgConsultaNAT_CSTA: TdxDBGridMaskColumn
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTA'
          end
          object dbgConsultaNAT_CSTI: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTI'
          end
          object dbgConsultaNAT_CSTP: TdxDBGridMaskColumn
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTP'
          end
          object dbgConsultaNAT_PIPP: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_PIPP'
          end
          object dbgConsultaNAT_CSTC: TdxDBGridMaskColumn
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CSTC'
          end
          object dbgConsultaNAT_PIPC: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_PIPC'
          end
          object DBGConsultaCBENEF: TdxDBGridMaskColumn
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CBENEF'
          end
          object DBGConsultaCSTIS: TdxDBGridMaskColumn
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CSTIS'
          end
          object DBGConsultaCCLASSTRIBIS: TdxDBGridMaskColumn
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CCLASSTRIBIS'
          end
          object DBGConsultaPIS: TdxDBGridCurrencyColumn
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PIS'
            DisplayFormat = '0.00'
            Nullable = False
          end
          object DBGConsultaPISESPEC: TdxDBGridCurrencyColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PISESPEC'
            Nullable = False
          end
          object DBGConsultaCSTCBS: TdxDBGridMaskColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CSTCBS'
          end
          object DBGConsultaCCLASSTRIBCBS: TdxDBGridMaskColumn
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CCLASSTRIBCBS'
          end
          object DBGConsultaPCBS: TdxDBGridCurrencyColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCBS'
            DisplayFormat = '0.00'
            Nullable = False
          end
          object dbgConsultaNAT_CFOP: TdxDBGridMaskColumn
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAT_CFOP'
          end
        end
      end
    end
    inherited pnlbot: TPanel
      Width = 1089
    end
  end
  inherited sbMSG: TStatusBar
    Width = 1089
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'SELECT * FROM TAB_NAT'
      'WHERE NAT_STA = '#39'0'#39)
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_NAT"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroNAT_CNAT: TIBStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NAT_CNAT'
      Origin = '"TAB_NAT"."NAT_CNAT"'
      Size = 10
    end
    object cadastroNAT_DNAT: TIBStringField
      DisplayLabel = 'Natureza de Opera'#231#227'o'
      FieldName = 'NAT_DNAT'
      Origin = '"TAB_NAT"."NAT_DNAT"'
      Size = 60
    end
    object cadastroNAT_OPER: TIBStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'NAT_OPER'
      Origin = '"TAB_NAT"."NAT_OPER"'
      Size = 10
    end
    object cadastroNAT_BIPI: TIBStringField
      FieldName = 'NAT_BIPI'
      Origin = '"TAB_NAT"."NAT_BIPI"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_MATE: TIBStringField
      FieldName = 'NAT_MATE'
      Origin = '"TAB_NAT"."NAT_MATE"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NAT_TIPO'
      Origin = '"TAB_NAT"."NAT_TIPO"'
    end
    object cadastroNAT_CSTI: TIBStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'NAT_CSTI'
      Origin = '"TAB_NAT"."NAT_CSTI"'
      Size = 3
    end
    object cadastroNAT_PIPP: TIBBCDField
      DisplayLabel = 'PIS %'
      FieldName = 'NAT_PIPP'
      Origin = '"TAB_NAT"."NAT_PIPP"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_CSTP: TIBStringField
      DisplayLabel = 'CST PIS'
      FieldName = 'NAT_CSTP'
      Origin = '"TAB_NAT"."NAT_CSTP"'
      Size = 3
    end
    object cadastroNAT_PIPC: TIBBCDField
      DisplayLabel = 'COFINS %'
      FieldName = 'NAT_PIPC'
      Origin = '"TAB_NAT"."NAT_PIPC"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_CSTC: TIBStringField
      DisplayLabel = 'CST COFINS'
      FieldName = 'NAT_CSTC'
      Origin = '"TAB_NAT"."NAT_CSTC"'
      Size = 3
    end
    object cadastroNAT_STA: TIBStringField
      FieldName = 'NAT_STA'
      Origin = '"TAB_NAT"."NAT_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_CCST: TIBStringField
      DisplayLabel = 'CST ICMS'
      FieldName = 'NAT_CCST'
      Origin = '"TAB_NAT"."NAT_CCST"'
      Size = 3
    end
    object cadastroNAT_PENF: TIBBCDField
      FieldName = 'NAT_PENF'
      Origin = '"TAB_NAT"."NAT_PENF"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cadastroNAT_FRET: TIBStringField
      FieldName = 'NAT_FRET'
      Origin = '"TAB_NAT"."NAT_FRET"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_OBSE: TMemoField
      FieldName = 'NAT_OBSE'
      Origin = '"TAB_NAT"."NAT_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroNAT_CSTS: TIBStringField
      DisplayLabel = 'CSOSN'
      FieldName = 'NAT_CSTS'
      Origin = '"TAB_NAT"."NAT_CSTS"'
      Size = 3
    end
    object cadastroNAT_CSTA: TIBStringField
      DisplayLabel = 'CSOSN CICMS'
      FieldName = 'NAT_CSTA'
      Origin = '"TAB_NAT"."NAT_CSTA"'
      Size = 3
    end
    object cadastroNAT_INDT: TIBStringField
      FieldName = 'NAT_INDT'
      Origin = '"TAB_NAT"."NAT_INDT"'
      FixedChar = True
      Size = 1
    end
    object cadastroNAT_CFOP: TIBStringField
      DisplayLabel = 'CFOP Contra'
      FieldName = 'NAT_CFOP'
      Origin = '"TAB_NAT"."NAT_CFOP"'
      Size = 10
    end
    object CadastroCBENEF: TIBStringField
      DisplayLabel = 'C'#243'd. Benef.'
      FieldName = 'CBENEF'
      Origin = '"TAB_NAT"."CBENEF"'
      Size = 10
    end
    object CadastroCSTIS: TIBStringField
      DisplayLabel = 'CST IBS'
      FieldName = 'CSTIS'
      Origin = '"TAB_NAT"."CSTIS"'
      Size = 3
    end
    object CadastroCCLASSTRIBIS: TIBStringField
      DisplayLabel = 'Classif. IBS'
      FieldName = 'CCLASSTRIBIS'
      Origin = '"TAB_NAT"."CCLASSTRIBIS"'
      Size = 6
    end
    object CadastroPIS: TIBBCDField
      DisplayLabel = 'IBS %'
      FieldName = 'PIS'
      Origin = '"TAB_NAT"."PIS"'
      Precision = 9
      Size = 4
    end
    object CadastroPISESPEC: TIBBCDField
      FieldName = 'PISESPEC'
      Origin = '"TAB_NAT"."PISESPEC"'
      Precision = 9
      Size = 4
    end
    object CadastroCSTCBS: TIBStringField
      DisplayLabel = 'CST CBS'
      FieldName = 'CSTCBS'
      Origin = '"TAB_NAT"."CSTCBS"'
      Size = 3
    end
    object CadastroCCLASSTRIBCBS: TIBStringField
      DisplayLabel = 'Classif. CBS'
      FieldName = 'CCLASSTRIBCBS'
      Origin = '"TAB_NAT"."CCLASSTRIBCBS"'
      Size = 6
    end
    object CadastroPCBS: TIBBCDField
      DisplayLabel = 'CBS %'
      FieldName = 'PCBS'
      Origin = '"TAB_NAT"."PCBS"'
      Precision = 9
      Size = 4
    end
    object CadastroINDDOACAO: TIBStringField
      FieldName = 'INDDOACAO'
      Origin = '"TAB_NAT"."INDDOACAO"'
      FixedChar = True
      Size = 1
    end
  end
end
