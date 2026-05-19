object FBird: TFBird
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 365
  Top = 191
  Height = 558
  Width = 1079
  object DBERP: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\Otimotex.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ri1903'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    AfterConnect = DBERPAfterConnect
    AfterDisconnect = DBERPAfterDisconnect
    BeforeDisconnect = DBERPBeforeDisconnect
    Left = 40
    Top = 8
  end
  object DBEDI: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\SheildEdicao.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'lc_ctype=WIN1252'
      'password=ri1903')
    LoginPrompt = False
    Left = 352
    Top = 64
  end
  object TFBEEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBEDI
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 352
    Top = 120
  end
  object DBEvent: TIBEvents
    AutoRegister = False
    Database = DBERP
    Registered = False
    OnEventAlert = DBEventEventAlert
    Left = 104
    Top = 8
  end
  object SPFBEvent: TIBStoredProc
    Database = DBERP
    Transaction = TFBEvent
    Left = 240
    Top = 8
  end
  object TFBConsulta: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saRollback
    Left = 40
    Top = 64
  end
  object SQLFBConsulta: TIBSQL
    Database = DBERP
    Transaction = TFBConsulta
    Left = 40
    Top = 160
  end
  object LocalHost: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 488
    Top = 456
  end
  object DTSFBCAD_PRO: TDataSource
    AutoEdit = False
    Left = 968
    Top = 112
  end
  object SQLFBEEdicao: TIBSQL
    Database = DBEDI
    Transaction = TFBEEdicao
    Left = 352
    Top = 168
  end
  object DTSFBBAI_FINANCEIRO: TDataSource
    AutoEdit = False
    DataSet = FBBAI_FINANCEIRO
    Left = 848
    Top = 104
  end
  object FBBAI_FINANCEIRO: TIBQuery
    Tag = 1
    Database = DBERP
    Transaction = TFBFinanceiro
    SQL.Strings = (
      
        'SELECT    PK.CDPV,PK.DEPV,PK.CTNR,PK.CDRO,PK.CDNF AS PV_CDNF,PK.' +
        'CDCX,CAST(IIF(PK.CDNF > 0,PK.DTNF,PK.DTCA) AS DATE) AS DTCX,'
      
        '          ABS(IIF(PK.VNF > 0,PK.VNF,PK.TCDE))     AS VPED   ,PK.' +
        'TPCO,'
      '          PK.IDCL,PK.IDCV,PK.IDCR,'
      '          PK.STPD,PK.STCO,PK.CDPG,'
      
        '          FK.NFE_CDNF AS CDNF,FK.NFE_TITU AS TITULO,FK.NFE_DNFE ' +
        'AS DTNF,FK.NFE_DVEN AS DTVE,FK.NFE_VDUP AS VDUP,'
      '          PK.CSCD     AS CONSIGNADO,'
      '          PK.FAPD     AS FATURAR,'
      
        '          COALESCE(TRIM(CAST(SUBSTRING(PK.INFADPED FROM 1 FOR 81' +
        '2) AS VARCHAR(812))),'#39#39')||ASCII_CHAR(13)||ASCII_CHAR(10)||COALES' +
        'CE(TRIM(CAST(SUBSTRING(NC.NFE_OBSE FROM 1 FOR 812) AS VARCHAR(81' +
        '2))),'#39#39') AS INFADPED'
      'FROM      ped_ven_cab_005 AS PK'
      'LEFT JOIN nfe_cab         AS NC ON (NC.NFE_CDNF = PK.CDNF)'
      'LEFT JOIN nfe_dup_005     AS FK ON (FK.NFE_CDNF = PK.CDNF)'
      'WHERE     PK.ID = 14112'
      'ORDER BY  FK.NFE_TITU')
    Left = 848
    Top = 56
    object FBBAI_FINANCEIROCDPV: TLargeintField
      FieldName = 'CDPV'
      Origin = '"PED_VEN_CAB"."CDPV"'
    end
    object FBBAI_FINANCEIRODEPV: TIBStringField
      FieldName = 'DEPV'
      Origin = '"PED_VEN_CAB"."DEPV"'
      Size = 30
    end
    object FBBAI_FINANCEIROCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"PED_VEN_CAB_005"."CTNR"'
    end
    object FBBAI_FINANCEIROCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"PED_VEN_CAB"."CDRO"'
    end
    object FBBAI_FINANCEIROPV_CDNF: TLargeintField
      FieldName = 'PV_CDNF'
      Origin = '"PED_VEN_CAB"."CDNF"'
    end
    object FBBAI_FINANCEIROCDCX: TLargeintField
      FieldName = 'CDCX'
      Origin = '"PED_VEN_CAB"."CDCX"'
    end
    object FBBAI_FINANCEIRODTCX: TDateField
      FieldName = 'DTCX'
      ProviderFlags = []
    end
    object FBBAI_FINANCEIROVPED: TIBBCDField
      FieldName = 'VPED'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object FBBAI_FINANCEIROTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"PED_VEN_CAB"."TPCO"'
    end
    object FBBAI_FINANCEIROIDCL: TIntegerField
      FieldName = 'IDCL'
      Origin = '"PED_VEN_CAB"."IDCL"'
    end
    object FBBAI_FINANCEIROIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"PED_VEN_CAB"."IDCV"'
    end
    object FBBAI_FINANCEIROIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"PED_VEN_CAB"."IDCR"'
    end
    object FBBAI_FINANCEIROSTPD: TIBStringField
      FieldName = 'STPD'
      Origin = '"PED_VEN_CAB"."STPD"'
      Size = 60
    end
    object FBBAI_FINANCEIROSTCO: TIBStringField
      FieldName = 'STCO'
      Origin = '"PED_VEN_CAB"."STCO"'
      Size = 60
    end
    object FBBAI_FINANCEIROCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"PED_VEN_CAB"."CDPG"'
    end
    object FBBAI_FINANCEIROCDNF: TIntegerField
      FieldName = 'CDNF'
      Origin = '"NFE_DUP"."NFE_CDNF"'
    end
    object FBBAI_FINANCEIROTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = '"NFE_DUP"."NFE_TITU"'
      Size = 30
    end
    object FBBAI_FINANCEIRODTNF: TDateField
      FieldName = 'DTNF'
      Origin = '"NFE_DUP"."NFE_DNFE"'
    end
    object FBBAI_FINANCEIRODTVE: TDateField
      FieldName = 'DTVE'
      Origin = '"NFE_DUP"."NFE_DVEN"'
    end
    object FBBAI_FINANCEIROVDUP: TIBBCDField
      FieldName = 'VDUP'
      Origin = '"NFE_DUP"."NFE_VDUP"'
      Precision = 18
      Size = 2
    end
    object FBBAI_FINANCEIROCONSIGNADO: TSmallintField
      FieldName = 'CONSIGNADO'
      Origin = '"PED_VEN_CAB"."CSPD"'
    end
    object FBBAI_FINANCEIROFATURAR: TSmallintField
      FieldName = 'FATURAR'
      Origin = '"PED_VEN_CAB"."FAPD"'
    end
    object FBBAI_FINANCEIROINFADPED: TIBStringField
      FieldName = 'INFADPED'
      ProviderFlags = []
      Size = 1626
    end
  end
  object DTSFBBAI_CAIXA: TDataSource
    AutoEdit = False
    DataSet = FBBAI_CAIXA
    Left = 848
    Top = 200
  end
  object FBBAI_CAIXA: TIBQuery
    Tag = 1
    Database = DBERP
    Transaction = TFBFinanceiro
    SQL.Strings = (
      
        'SELECT   (SELECT ID FROM CAI_TSR WHERE CAI_DESC = '#39'CAIXA INICIAL' +
        #39') AS CDCXINI,'
      '         PK.FIN_CDCX AS CDCX,PK.FIN_DCAD AS DTCX,'
      
        '         PK.FIN_CONC AS CREDITO,PK.FIN_CONC||FSTRZERO(FK.ID,19) ' +
        'AS DOCUMENTO,PK.FIN_TIPO AS TIPO,'
      '         MAX((SELECT SUM(F.FIN_VALO) FROM FIN_REC_BAN_BAI AS F'
      '              WHERE  F.FIN_CDCX = PK.FIN_CDCX'
      '              AND    F.FIN_CONC = PK.FIN_CONC'
      '              AND    F.FIN_TIPO = PK.FIN_TIPO)) AS VT'
      'FROM     FIN_REC_BAN_BAI AS PK'
      'JOIN     TAB_COB AS FK ON (FK.VEN_TIPO = PK.FIN_TIPO)'
      'WHERE    PK.FIN_CDBX = :CDBX'
      'GROUP BY 1,2,3,4,5,6'
      'UNION'
      
        'SELECT   (SELECT ID FROM CAI_TSR WHERE CAI_DESC = '#39'CAIXA INICIAL' +
        #39') AS CDCXINI,'
      '         PK.FIN_CDCX AS CDCX,PK.FIN_DCAD AS DTCX,'
      
        '         PK.FIN_CONC AS CREDITO,PK.FIN_CONC||FSTRZERO(FK.ID,19) ' +
        'AS DOCUMENTO,PK.FIN_TIPO AS TIPO,'
      '         MAX((SELECT SUM(F.FIN_VALO) FROM FIN_REC_CAR_BAI AS F'
      '              WHERE  F.FIN_CDCX = PK.FIN_CDCX'
      '              AND    F.FIN_CONC = PK.FIN_CONC'
      '              AND    F.FIN_TIPO = PK.FIN_TIPO)) AS VT'
      'FROM     FIN_REC_CAR_BAI AS PK'
      'JOIN     TAB_COB AS FK ON (FK.VEN_TIPO = PK.FIN_TIPO)'
      'WHERE    PK.FIN_CDBX = :CDBX'
      'GROUP BY 1,2,3,4,5,6')
    Left = 848
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CDBX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDBX'
        ParamType = ptInput
      end>
    object FBBAI_CAIXACDCXINI: TIntegerField
      FieldName = 'CDCXINI'
      ProviderFlags = []
    end
    object FBBAI_CAIXACDCX: TIntegerField
      FieldName = 'CDCX'
      ProviderFlags = []
    end
    object FBBAI_CAIXADTCX: TDateField
      FieldName = 'DTCX'
      ProviderFlags = []
    end
    object FBBAI_CAIXACREDITO: TSmallintField
      FieldName = 'CREDITO'
      ProviderFlags = []
    end
    object FBBAI_CAIXADOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      Size = 50
    end
    object FBBAI_CAIXATIPO: TIBStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 60
    end
    object FBBAI_CAIXAVT: TIBBCDField
      FieldName = 'VT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object TFBEndereco: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saRollback
    Left = 848
    Top = 296
  end
  object SQLFBEndereco: TIBSQL
    Database = DBERP
    Transaction = TFBEndereco
    Left = 848
    Top = 344
  end
  object TFBFinanceiro: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saRollback
    Left = 848
    Top = 8
  end
  object TFBProdutos: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saRollback
    Left = 968
    Top = 16
  end
  object SQLFBBaixas: TIBSQL
    Database = DBERP
    Transaction = TFBConsulta
    Left = 848
    Top = 248
  end
  object SQLFBFKConsulta: TIBSQL
    Database = DBERP
    Transaction = TFBConsulta
    Left = 40
    Top = 256
  end
  object THintHidePause: TTimer
    Enabled = False
    Interval = 0
    OnTimer = THintHidePauseTimer
    Left = 408
    Top = 456
  end
  object QFBConsulta: TIBQuery
    Database = DBERP
    Transaction = TFBConsulta
    Left = 40
    Top = 112
  end
  object SQLFBPKConsulta: TIBSQL
    Database = DBERP
    Transaction = TFBConsulta
    Left = 40
    Top = 208
  end
  object FBCAD_PRO: TIBQuery
    Database = DBERP
    Transaction = TFBProdutos
    OnCalcFields = FBCAD_PROCalcFields
    SQL.Strings = (
      'SELECT * FROM SP_CAD_PRO_PSQ(0,0,'#39'CP.ID'#39')')
    Left = 968
    Top = 64
    object FBCAD_PROID: TIntegerField
      FieldName = 'ID'
      Origin = '"SP_CAD_PRO_PSQ"."ID"'
    end
    object FBCAD_PROIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"SP_CAD_PRO_PSQ"."IDEP"'
    end
    object FBCAD_PRODEEP: TIBStringField
      FieldName = 'DEEP'
      Origin = '"SP_CAD_PRO_PSQ"."DEEP"'
      Size = 30
    end
    object FBCAD_PROIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"SP_CAD_PRO_PSQ"."IDCA"'
    end
    object FBCAD_PRODTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"SP_CAD_PRO_PSQ"."DTCA"'
    end
    object FBCAD_PROIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"SP_CAD_PRO_PSQ"."IDED"'
    end
    object FBCAD_PRODTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"SP_CAD_PRO_PSQ"."DTED"'
    end
    object FBCAD_PROIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"SP_CAD_PRO_PSQ"."IDST"'
    end
    object FBCAD_PRODTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"SP_CAD_PRO_PSQ"."DTST"'
    end
    object FBCAD_PROCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"SP_CAD_PRO_PSQ"."CDST"'
    end
    object FBCAD_PROREST: TIBStringField
      FieldName = 'REST'
      Origin = '"SP_CAD_PRO_PSQ"."REST"'
      Size = 10
    end
    object FBCAD_PRODEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"SP_CAD_PRO_PSQ"."DEST"'
      Size = 60
    end
    object FBCAD_PROARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"SP_CAD_PRO_PSQ"."ARTIGO"'
      Size = 30
    end
    object FBCAD_PROIMG_ART: TLargeintField
      FieldName = 'IMG_ART'
      Origin = '"SP_CAD_PRO_PSQ"."IMG_ART"'
    end
    object FBCAD_PROIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"SP_CAD_PRO_PSQ"."IDAK"'
    end
    object FBCAD_PRONCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"SP_CAD_PRO_PSQ"."NCM"'
      Size = 8
    end
    object FBCAD_PROCEST: TIBStringField
      FieldName = 'CEST'
      Origin = '"SP_CAD_PRO_PSQ"."CEST"'
      Size = 7
    end
    object FBCAD_PROPIPI: TIBBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'PIPI'
      Origin = '"SP_CAD_PRO_PSQ"."PIPI"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEXTIPI: TIBStringField
      FieldName = 'EXTIPI'
      Origin = '"SP_CAD_PRO_PSQ"."EXTIPI"'
      Size = 3
    end
    object FBCAD_PROSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"SP_CAD_PRO_PSQ"."SKU"'
      Size = 30
    end
    object FBCAD_PROIMG_SKU: TLargeintField
      FieldName = 'IMG_SKU'
      Origin = '"SP_CAD_PRO_PSQ"."IMG_SKU"'
    end
    object FBCAD_PROIDEK: TLargeintField
      FieldName = 'IDEK'
      Origin = '"SP_CAD_PRO_PSQ"."IDEK"'
    end
    object FBCAD_PROCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"SP_CAD_PRO_PSQ"."CEAN"'
    end
    object FBCAD_PRODECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"SP_CAD_PRO_PSQ"."DECP"'
      Size = 120
    end
    object FBCAD_PRODTCP: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'DTCP'
      Origin = '"SP_CAD_PRO_PSQ"."DTCP"'
      Size = 120
    end
    object FBCAD_PROCDGRD: TIBStringField
      FieldName = 'CDGRD'
      Origin = '"SP_CAD_PRO_PSQ"."CDGRD"'
      Size = 10
    end
    object FBCAD_PROREGRD: TIBStringField
      FieldName = 'REGRD'
      Origin = '"SP_CAD_PRO_PSQ"."REGRD"'
      Size = 10
    end
    object FBCAD_PRODEGRD: TIBStringField
      FieldName = 'DEGRD'
      Origin = '"SP_CAD_PRO_PSQ"."DEGRD"'
      Size = 30
    end
    object FBCAD_PROIDCOR: TSmallintField
      FieldName = 'IDCOR'
      Origin = '"SP_CAD_PRO_PSQ"."IDCOR"'
    end
    object FBCAD_PRORECOR: TIBStringField
      FieldName = 'RECOR'
      Origin = '"SP_CAD_PRO_PSQ"."RECOR"'
      Size = 10
    end
    object FBCAD_PRODECOR: TIBStringField
      FieldName = 'DECOR'
      Origin = '"SP_CAD_PRO_PSQ"."DECOR"'
      Size = 40
    end
    object FBCAD_PROSISTEMA: TIBStringField
      FieldName = 'SISTEMA'
      Origin = '"SP_CAD_PRO_PSQ"."SISTEMA"'
      Size = 10
    end
    object FBCAD_PROESCALA: TIBStringField
      FieldName = 'ESCALA'
      Origin = '"SP_CAD_PRO_PSQ"."ESCALA"'
      Size = 40
    end
    object FBCAD_PRODGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"SP_CAD_PRO_PSQ"."DGCP"'
      Size = 60
    end
    object FBCAD_PROCMP_PAD: TIBStringField
      FieldName = 'CMP_PAD'
      Origin = '"SP_CAD_PRO_PSQ"."CMP_PAD"'
      Size = 120
    end
    object FBCAD_PROIDCF: TSmallintField
      FieldName = 'IDCF'
      Origin = '"SP_CAD_PRO_PSQ"."IDCF"'
    end
    object FBCAD_PROCDCF: TIBStringField
      FieldName = 'CDCF'
      Origin = '"SP_CAD_PRO_PSQ"."CDCF"'
      Size = 30
    end
    object FBCAD_PROCEANCF: TIBStringField
      FieldName = 'CEANCF'
      Origin = '"SP_CAD_PRO_PSQ"."CEANCF"'
    end
    object FBCAD_PRODECF: TIBStringField
      FieldName = 'DECF'
      Origin = '"SP_CAD_PRO_PSQ"."DECF"'
      Size = 60
    end
    object FBCAD_PROUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"SP_CAD_PRO_PSQ"."UCOM"'
      Size = 10
    end
    object FBCAD_PRODCOM: TIBStringField
      FieldName = 'DCOM'
      Origin = '"SP_CAD_PRO_PSQ"."DCOM"'
      Size = 40
    end
    object FBCAD_PROUTRIB: TIBStringField
      FieldName = 'UTRIB'
      Origin = '"SP_CAD_PRO_PSQ"."UTRIB"'
      Size = 10
    end
    object FBCAD_PROUQVOL: TSmallintField
      FieldName = 'UQVOL'
      Origin = '"SP_CAD_PRO_PSQ"."UQVOL"'
    end
    object FBCAD_PROUESP: TIBStringField
      FieldName = 'UESP'
      Origin = '"SP_CAD_PRO_PSQ"."UESP"'
      Size = 30
    end
    object FBCAD_PROD_UESP: TIBStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'D_UESP'
      Origin = '"SP_CAD_PRO_PSQ"."D_UESP"'
      Size = 40
    end
    object FBCAD_PROUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'UCON'
      Origin = '"SP_CAD_PRO_PSQ"."UCON"'
      Size = 40
    end
    object FBCAD_PROD_UCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'D_UCON'
      Origin = '"SP_CAD_PRO_PSQ"."D_UCON"'
      Size = 40
    end
    object FBCAD_PROUCDBE: TIBStringField
      FieldName = 'UCDBE'
      Origin = '"SP_CAD_PRO_PSQ"."UCDBE"'
      FixedChar = True
      Size = 2
    end
    object FBCAD_PROUQTDE: TIBBCDField
      FieldName = 'UQTDE'
      Origin = '"SP_CAD_PRO_PSQ"."UQTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROUQTRL: TSmallintField
      FieldName = 'UQTRL'
      Origin = '"SP_CAD_PRO_PSQ"."UQTRL"'
    end
    object FBCAD_PROUPSBR: TIBBCDField
      FieldName = 'UPSBR'
      Origin = '"SP_CAD_PRO_PSQ"."UPSBR"'
      Precision = 9
      Size = 3
    end
    object FBCAD_PROUPSLQ: TIBBCDField
      FieldName = 'UPSLQ'
      Origin = '"SP_CAD_PRO_PSQ"."UPSLQ"'
      Precision = 9
      Size = 3
    end
    object FBCAD_PROUEST_MIN: TSmallintField
      FieldName = 'UEST_MIN'
      Origin = '"SP_CAD_PRO_PSQ"."UEST_MIN"'
    end
    object FBCAD_PROUPED_MIN: TSmallintField
      FieldName = 'UPED_MIN'
      Origin = '"SP_CAD_PRO_PSQ"."UPED_MIN"'
    end
    object FBCAD_PROUPED_MUL: TSmallintField
      FieldName = 'UPED_MUL'
      Origin = '"SP_CAD_PRO_PSQ"."UPED_MUL"'
    end
    object FBCAD_PROPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"SP_CAD_PRO_PSQ"."PESO"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROPSCN: TIBBCDField
      FieldName = 'PSCN'
      Origin = '"SP_CAD_PRO_PSQ"."PSCN"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROMETRO: TIBBCDField
      FieldName = 'METRO'
      Origin = '"SP_CAD_PRO_PSQ"."METRO"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROREND: TIBBCDField
      FieldName = 'REND'
      Origin = '"SP_CAD_PRO_PSQ"."REND"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROGRAM: TIBBCDField
      FieldName = 'GRAM'
      Origin = '"SP_CAD_PRO_PSQ"."GRAM"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROD_GRAM: TIBStringField
      FieldName = 'D_GRAM'
      Origin = '"SP_CAD_PRO_PSQ"."D_GRAM"'
      Size = 50
    end
    object FBCAD_PROLARU: TIBBCDField
      FieldName = 'LARU'
      Origin = '"SP_CAD_PRO_PSQ"."LARU"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROLART: TIBBCDField
      FieldName = 'LART'
      Origin = '"SP_CAD_PRO_PSQ"."LART"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROELAL: TIBBCDField
      FieldName = 'ELAL'
      Origin = '"SP_CAD_PRO_PSQ"."ELAL"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROELAC: TIBBCDField
      FieldName = 'ELAC'
      Origin = '"SP_CAD_PRO_PSQ"."ELAC"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROENCL: TIBBCDField
      FieldName = 'ENCL'
      Origin = '"SP_CAD_PRO_PSQ"."ENCL"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROENCC: TIBBCDField
      FieldName = 'ENCC'
      Origin = '"SP_CAD_PRO_PSQ"."ENCC"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROD_ENCO: TIBStringField
      FieldName = 'D_ENCO'
      Origin = '"SP_CAD_PRO_PSQ"."D_ENCO"'
      Size = 50
    end
    object FBCAD_PROD_ABNT: TIBStringField
      FieldName = 'D_ABNT'
      Origin = '"SP_CAD_PRO_PSQ"."D_ABNT"'
      Size = 50
    end
    object FBCAD_PROVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_PAD_INI"'
    end
    object FBCAD_PROVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_PAD_FIM"'
    end
    object FBCAD_PROVPRC_PAD: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_PAD'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_PAD"'
    end
    object FBCAD_PROVPRC_PAD_PRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'VPRC_PAD_PRZ'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_PAD_PRZ"'
    end
    object FBCAD_PROVPRC_PAD_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'VPRC_PAD_PRO'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_PAD_PRO"'
    end
    object FBCAD_PROPPRC_PAD_DSC: TIBBCDField
      FieldName = 'PPRC_PAD_DSC'
      Origin = '"SP_CAD_PRO_PSQ"."PPRC_PAD_DSC"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROPPRC_PAD_AJU: TIBBCDField
      FieldName = 'PPRC_PAD_AJU'
      Origin = '"SP_CAD_PRO_PSQ"."PPRC_PAD_AJU"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROVPRC_ATV: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_ATV'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_ATV"'
    end
    object FBCAD_PROVPRC_ATV_PRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'VPRC_ATV_PRZ'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_ATV_PRZ"'
    end
    object FBCAD_PROVPRC_ATV_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'VPRC_ATV_PRO'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_ATV_PRO"'
    end
    object FBCAD_PROPPRC_ATV_DSC: TIBBCDField
      FieldName = 'PPRC_ATV_DSC'
      Origin = '"SP_CAD_PRO_PSQ"."PPRC_ATV_DSC"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROPPRC_ATV_AJU: TIBBCDField
      FieldName = 'PPRC_ATV_AJU'
      Origin = '"SP_CAD_PRO_PSQ"."PPRC_ATV_AJU"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROVPRC_VAR: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_VAR'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_VAR"'
    end
    object FBCAD_PROVPRC_REP: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_REP'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_REP"'
    end
    object FBCAD_PROPMKU_LJV: TIBBCDField
      FieldName = 'PMKU_LJV'
      Origin = '"SP_CAD_PRO_PSQ"."PMKU_LJV"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROVPRC_LJV: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_LJV'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_LJV"'
    end
    object FBCAD_PROVPRC_COM_PAD: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_COM_PAD'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_COM_PAD"'
    end
    object FBCAD_PROVPRC_COM_NAC: TFloatField
      DisplayLabel = 'Nacional'
      FieldName = 'VPRC_COM_NAC'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_COM_NAC"'
    end
    object FBCAD_PROVPRC_COM_IMP: TFloatField
      DisplayLabel = 'Importado'
      FieldName = 'VPRC_COM_IMP'
      Origin = '"SP_CAD_PRO_PSQ"."VPRC_COM_IMP"'
    end
    object FBCAD_PROCF_VPRC_PAD_ORI: TIBStringField
      FieldName = 'CF_VPRC_PAD_ORI'
      Origin = '"SP_CAD_PRO_PSQ"."CF_VPRC_PAD_ORI"'
      Size = 2
    end
    object FBCAD_PROCF_VPRC_COM: TFloatField
      FieldName = 'CF_VPRC_COM'
      Origin = '"SP_CAD_PRO_PSQ"."CF_VPRC_COM"'
    end
    object FBCAD_PROIDCOL: TSmallintField
      FieldName = 'IDCOL'
      Origin = '"SP_CAD_PRO_PSQ"."IDCOL"'
    end
    object FBCAD_PRODECOL: TIBStringField
      FieldName = 'DECOL'
      Origin = '"SP_CAD_PRO_PSQ"."DECOL"'
      Size = 60
    end
    object FBCAD_PROIDSEG: TSmallintField
      FieldName = 'IDSEG'
      Origin = '"SP_CAD_PRO_PSQ"."IDSEG"'
    end
    object FBCAD_PRODESEG: TIBStringField
      FieldName = 'DESEG'
      Origin = '"SP_CAD_PRO_PSQ"."DESEG"'
      Size = 60
    end
    object FBCAD_PROIDGRP: TSmallintField
      FieldName = 'IDGRP'
      Origin = '"SP_CAD_PRO_PSQ"."IDGRP"'
    end
    object FBCAD_PRODEGRP: TIBStringField
      FieldName = 'DEGRP'
      Origin = '"SP_CAD_PRO_PSQ"."DEGRP"'
      Size = 60
    end
    object FBCAD_PROIDSGP: TSmallintField
      FieldName = 'IDSGP'
      Origin = '"SP_CAD_PRO_PSQ"."IDSGP"'
    end
    object FBCAD_PRODESGP: TIBStringField
      FieldName = 'DESGP'
      Origin = '"SP_CAD_PRO_PSQ"."DESGP"'
      Size = 60
    end
    object FBCAD_PROIDCAT: TSmallintField
      FieldName = 'IDCAT'
      Origin = '"SP_CAD_PRO_PSQ"."IDCAT"'
    end
    object FBCAD_PRODECAT: TIBStringField
      FieldName = 'DECAT'
      Origin = '"SP_CAD_PRO_PSQ"."DECAT"'
      Size = 60
    end
    object FBCAD_PROIDSCT: TSmallintField
      FieldName = 'IDSCT'
      Origin = '"SP_CAD_PRO_PSQ"."IDSCT"'
    end
    object FBCAD_PRODESCT: TIBStringField
      FieldName = 'DESCT'
      Origin = '"SP_CAD_PRO_PSQ"."DESCT"'
      Size = 60
    end
    object FBCAD_PROMKP_IDML: TSmallintField
      FieldName = 'MKP_IDML'
      Origin = '"SP_CAD_PRO_PSQ"."MKP_IDML"'
    end
    object FBCAD_PROMKP_DEML: TIBStringField
      FieldName = 'MKP_DEML'
      Origin = '"SP_CAD_PRO_PSQ"."MKP_DEML"'
      Size = 30
    end
    object FBCAD_PROMKP_IDSP: TSmallintField
      FieldName = 'MKP_IDSP'
      Origin = '"SP_CAD_PRO_PSQ"."MKP_IDSP"'
    end
    object FBCAD_PROMKP_DESP: TIBStringField
      FieldName = 'MKP_DESP'
      Origin = '"SP_CAD_PRO_PSQ"."MKP_DESP"'
      Size = 30
    end
    object FBCAD_PROMKP_IDAM: TSmallintField
      FieldName = 'MKP_IDAM'
      Origin = '"SP_CAD_PRO_PSQ"."MKP_IDAM"'
    end
    object FBCAD_PROMKP_DEAM: TIBStringField
      FieldName = 'MKP_DEAM'
      Origin = '"SP_CAD_PRO_PSQ"."MKP_DEAM"'
      Size = 30
    end
    object FBCAD_PROFIN_CAD_ID: TSmallintField
      FieldName = 'FIN_CAD_ID'
      Origin = '"SP_CAD_PRO_PSQ"."FIN_CAD_ID"'
    end
    object FBCAD_PROFIN_CAD_REF: TIBStringField
      FieldName = 'FIN_CAD_REF'
      Origin = '"SP_CAD_PRO_PSQ"."FIN_CAD_REF"'
      Size = 10
    end
    object FBCAD_PROFIN_CAD_DES: TIBStringField
      FieldName = 'FIN_CAD_DES'
      Origin = '"SP_CAD_PRO_PSQ"."FIN_CAD_DES"'
      Size = 30
    end
    object FBCAD_PROFIN_EST_ID: TSmallintField
      FieldName = 'FIN_EST_ID'
      Origin = '"SP_CAD_PRO_PSQ"."FIN_EST_ID"'
    end
    object FBCAD_PROFIN_EST_REF: TIBStringField
      FieldName = 'FIN_EST_REF'
      Origin = '"SP_CAD_PRO_PSQ"."FIN_EST_REF"'
      Size = 10
    end
    object FBCAD_PROFIN_EST_DES: TIBStringField
      FieldName = 'FIN_EST_DES'
      Origin = '"SP_CAD_PRO_PSQ"."FIN_EST_DES"'
      Size = 30
    end
    object FBCAD_PROORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"SP_CAD_PRO_PSQ"."ORIG"'
    end
    object FBCAD_PROD_ORIG: TIBStringField
      FieldName = 'D_ORIG'
      Origin = '"SP_CAD_PRO_PSQ"."D_ORIG"'
      Size = 125
    end
    object FBCAD_PROCPAIS: TSmallintField
      FieldName = 'CPAIS'
      Origin = '"SP_CAD_PRO_PSQ"."CPAIS"'
    end
    object FBCAD_PROXPAIS: TIBStringField
      FieldName = 'XPAIS'
      Origin = '"SP_CAD_PRO_PSQ"."XPAIS"'
      Size = 60
    end
    object FBCAD_PROFPAIS: TIBStringField
      FieldName = 'FPAIS'
      Origin = '"SP_CAD_PRO_PSQ"."FPAIS"'
    end
    object FBCAD_PROINFADCAD: TMemoField
      FieldName = 'INFADCAD'
      Origin = '"SP_CAD_PRO_PSQ"."INFADCAD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object FBCAD_PROINFADCAT: TMemoField
      FieldName = 'INFADCAT'
      Origin = '"SP_CAD_PRO_PSQ"."INFADCAT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object FBCAD_PROEPE_QTDE: TIBBCDField
      FieldName = 'EPE_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EPE_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEPE_QTRL: TIntegerField
      FieldName = 'EPE_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EPE_QTRL"'
    end
    object FBCAD_PROEST_QTDE: TIBBCDField
      FieldName = 'EST_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EST_QTDE"'
      Precision = 18
      Size = 2
    end
    object FBCAD_PROEST_QTRL: TIntegerField
      FieldName = 'EST_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EST_QTRL"'
    end
    object FBCAD_PROEEP_QTDE: TIBBCDField
      FieldName = 'EEP_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EEP_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEEP_QTRL: TIntegerField
      FieldName = 'EEP_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EEP_QTRL"'
    end
    object FBCAD_PROEPP_QTDE: TIBBCDField
      FieldName = 'EPP_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EPP_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEPP_QTRL: TIntegerField
      FieldName = 'EPP_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EPP_QTRL"'
    end
    object FBCAD_PROEPP_CTNR_QTDE: TIBBCDField
      FieldName = 'EPP_CTNR_QTDE'
      Origin = '"SP_CAD_PRO_PSQ_NEW"."EPP_CTNR_QTDE"'
      Precision = 18
      Size = 2
    end
    object FBCAD_PROEPP_CTNR_QTRL: TIntegerField
      FieldName = 'EPP_CTNR_QTRL'
      Origin = '"SP_CAD_PRO_PSQ_NEW"."EPP_CTNR_QTRL"'
    end
    object FBCAD_PROEPR_QTDE: TIBBCDField
      FieldName = 'EPR_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EPR_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEPR_QTRL: TIntegerField
      FieldName = 'EPR_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EPR_QTRL"'
    end
    object FBCAD_PROEPS_QTDE: TIBBCDField
      FieldName = 'EPS_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EPS_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEPS_QTRL: TIntegerField
      FieldName = 'EPS_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EPS_QTRL"'
    end
    object FBCAD_PROEAA_QTDE: TIBBCDField
      FieldName = 'EAA_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EAA_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEAA_QTRL: TIntegerField
      FieldName = 'EAA_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EAA_QTRL"'
    end
    object FBCAD_PROEA_QTDE: TIBBCDField
      FieldName = 'EA_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EA_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEA_QTRL: TIntegerField
      FieldName = 'EA_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EA_QTRL"'
    end
    object FBCAD_PROEB_QTDE: TIBBCDField
      FieldName = 'EB_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EB_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEB_QTRL: TIntegerField
      FieldName = 'EB_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EB_QTRL"'
    end
    object FBCAD_PROEC_QTDE: TIBBCDField
      FieldName = 'EC_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EC_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEC_QTRL: TIntegerField
      FieldName = 'EC_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EC_QTRL"'
    end
    object FBCAD_PROEPI_QTDE: TIBBCDField
      FieldName = 'EPI_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."EPI_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROEPI_QTRL: TIntegerField
      FieldName = 'EPI_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."EPI_QTRL"'
    end
    object FBCAD_PROESU_QTDE: TIBBCDField
      FieldName = 'ESU_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."ESU_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROESU_QTRL: TIntegerField
      FieldName = 'ESU_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."ESU_QTRL"'
    end
    object FBCAD_PROECO_QTDE: TIBBCDField
      FieldName = 'ECO_QTDE'
      Origin = '"SP_CAD_PRO_PSQ"."ECO_QTDE"'
      Precision = 9
      Size = 2
    end
    object FBCAD_PROECO_QTRL: TIntegerField
      FieldName = 'ECO_QTRL'
      Origin = '"SP_CAD_PRO_PSQ"."ECO_QTRL"'
    end
    object FBCAD_PROECO_DECO: TIBStringField
      FieldName = 'ECO_DECO'
      Origin = '"SP_CAD_PRO_PSQ"."ECO_DECO"'
      Size = 250
    end
    object FBCAD_PROILA_BMP1: TBlobField
      FieldName = 'ILA_BMP1'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS1: TIBStringField
      FieldName = 'ILA_INS1'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS1"'
      Size = 120
    end
    object FBCAD_PROILA_BMP2: TBlobField
      FieldName = 'ILA_BMP2'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS2: TIBStringField
      FieldName = 'ILA_INS2'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS2"'
      Size = 120
    end
    object FBCAD_PROILA_BMP3: TBlobField
      FieldName = 'ILA_BMP3'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS3: TIBStringField
      FieldName = 'ILA_INS3'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS3"'
      Size = 120
    end
    object FBCAD_PROILA_BMP4: TBlobField
      FieldName = 'ILA_BMP4'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS4: TIBStringField
      FieldName = 'ILA_INS4'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS4"'
      Size = 120
    end
    object FBCAD_PROILA_BMP5: TBlobField
      FieldName = 'ILA_BMP5'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS5: TIBStringField
      FieldName = 'ILA_INS5'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS5"'
      Size = 120
    end
    object FBCAD_PROILA_BMP6: TBlobField
      FieldName = 'ILA_BMP6'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS6: TIBStringField
      FieldName = 'ILA_INS6'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS6"'
      Size = 120
    end
    object FBCAD_PROILA_BMP7: TBlobField
      FieldName = 'ILA_BMP7'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS7: TIBStringField
      FieldName = 'ILA_INS7'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS7"'
      Size = 120
    end
    object FBCAD_PROILA_BMP8: TBlobField
      FieldName = 'ILA_BMP8'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_BMP8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROILA_INS8: TIBStringField
      FieldName = 'ILA_INS8'
      Origin = '"SP_CAD_PRO_PSQ"."ILA_INS8"'
      Size = 120
    end
    object FBCAD_PROIMG_ID: TLargeintField
      FieldName = 'IMG_ID'
      Origin = '"SP_CAD_PRO_PSQ"."IMG_ID"'
    end
    object FBCAD_PROIMG_NO: TIBStringField
      FieldName = 'IMG_NO'
      Origin = '"SP_CAD_PRO_PSQ"."IMG_NO"'
      Size = 30
    end
    object FBCAD_PROIMG_PAD: TBlobField
      FieldName = 'IMG_PAD'
      Origin = '"SP_CAD_PRO_PSQ"."IMG_PAD"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBCAD_PROPDF_NO: TIBStringField
      FieldName = 'PDF_NO'
      Origin = '"SP_CAD_PRO_PSQ"."PDF_NO"'
      Size = 30
    end
    object FBCAD_PROC_EST_QTDE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldKind = fkCalculated
      FieldName = 'C_EST_QTDE'
      DisplayFormat = ',##,0.00'
      Calculated = True
    end
    object FBCAD_PROC_EST_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldKind = fkCalculated
      FieldName = 'C_EST_QTRL'
      DisplayFormat = '0'
      Calculated = True
    end
    object FBCAD_PROC_VPRC_PAD: TFloatField
      DisplayLabel = #192' Vista'
      FieldKind = fkCalculated
      FieldName = 'C_VPRC_PAD'
      DisplayFormat = ',##,0.00'
      Calculated = True
    end
    object FBCAD_PROC_VPRC_PRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldKind = fkCalculated
      FieldName = 'C_VPRC_PRZ'
      DisplayFormat = ',##,0.00'
      Calculated = True
    end
    object FBCAD_PROC_VPRC_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'C_VPRC_PRO'
      DisplayFormat = ',##,0.00'
      Calculated = True
    end
    object FBCAD_PROC_COMP1: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_COMP1'
      Size = 120
      Calculated = True
    end
    object FBCAD_PROC_COMP2: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_COMP2'
      Size = 120
      Calculated = True
    end
    object FBCAD_PROB2B_ENV_SYNC: TSmallintField
      FieldName = 'B2B_ENV_SYNC'
      Origin = '"SP_CAD_PRO_PSQ_NEW"."B2B_ENV_SYNC"'
    end
    object FBCAD_PROB2B_ENV_SYNC_DATA: TDateTimeField
      FieldName = 'B2B_ENV_SYNC_DATA'
      Origin = '"SP_CAD_PRO_PSQ_NEW"."B2B_ENV_SYNC_DATA"'
    end
    object FBCAD_PROB2B_REC_SYNC: TSmallintField
      FieldName = 'B2B_REC_SYNC'
      Origin = '"SP_CAD_PRO_PSQ_NEW"."B2B_REC_SYNC"'
    end
    object FBCAD_PROB2B_REC_SYNC_DATA: TDateTimeField
      FieldName = 'B2B_REC_SYNC_DATA'
      Origin = '"SP_CAD_PRO_PSQ_NEW"."B2B_REC_SYNC_DATA"'
    end
  end
  object TFBETQConsulta: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saRollback
    Left = 40
    Top = 320
  end
  object SQLFBETQConsulta: TIBSQL
    Database = DBERP
    Transaction = TFBETQConsulta
    Left = 40
    Top = 368
  end
  object DBB2B: TIBDatabase
    DatabaseName = '198.50.189.229:C:\dbFirebird\LebiancoB2B.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=ri1903'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    AfterDisconnect = DBB2BAfterDisconnect
    Left = 488
    Top = 8
  end
  object SPB2BEdicao: TIBStoredProc
    Database = DBB2B
    Transaction = TB2BEdicao
    Left = 488
    Top = 56
  end
  object SQLB2BEdicao: TIBSQL
    Database = DBB2B
    Transaction = TB2BEdicao
    Left = 568
    Top = 56
  end
  object TB2BEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBB2B
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 568
    Top = 8
  end
  object QB2BEdicao: TIBQuery
    Database = DBB2B
    Transaction = TB2BEdicao
    SQL.Strings = (
      '')
    Left = 568
    Top = 104
  end
  object TB2BConsulta: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBB2B
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saRollback
    Left = 656
    Top = 8
  end
  object SQLB2BConsulta: TIBSQL
    Database = DBB2B
    Transaction = TB2BConsulta
    Left = 656
    Top = 56
  end
  object B2BPedidos: TIBQuery
    Database = DBB2B
    Transaction = TB2BConsulta
    SQL.Strings = (
      'SELECT * FROM PED_VEN_CAB'
      'WHERE ID = 0')
    Left = 656
    Top = 104
    object B2BPedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_VEN_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object B2BPedidosROM_DERO: TIBStringField
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
    end
    object B2BPedidosROM_DCAD: TDateTimeField
      FieldName = 'ROM_DCAD'
      Origin = '"PED_VEN_CAB"."ROM_DCAD"'
    end
    object B2BPedidosROM_DBAI: TDateTimeField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_VEN_CAB"."ROM_DBAI"'
    end
    object B2BPedidosROM_DTNF: TDateTimeField
      FieldName = 'ROM_DTNF'
      Origin = '"PED_VEN_CAB"."ROM_DTNF"'
    end
    object B2BPedidosROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_CAB"."ROM_CDNF"'
    end
    object B2BPedidosROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"PED_VEN_CAB"."ROM_CCLI"'
    end
    object B2BPedidosROM_DCLI: TIBStringField
      FieldName = 'ROM_DCLI'
      Origin = '"PED_VEN_CAB"."ROM_DCLI"'
      Size = 60
    end
    object B2BPedidosROM_RCLI: TIBStringField
      FieldName = 'ROM_RCLI'
      Origin = '"PED_VEN_CAB"."ROM_RCLI"'
      Size = 60
    end
    object B2BPedidosROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"PED_VEN_CAB"."ROM_CVEN"'
    end
    object B2BPedidosROM_DVEN: TIBStringField
      FieldName = 'ROM_DVEN'
      Origin = '"PED_VEN_CAB"."ROM_DVEN"'
      Size = 60
    end
    object B2BPedidosROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"PED_VEN_CAB"."ROM_CREP"'
    end
    object B2BPedidosROM_DREP: TIBStringField
      FieldName = 'ROM_DREP'
      Origin = '"PED_VEN_CAB"."ROM_DREP"'
      Size = 60
    end
    object B2BPedidosROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"PED_VEN_CAB"."ROM_CPAG"'
    end
    object B2BPedidosROM_DPAG: TIBStringField
      FieldName = 'ROM_DPAG'
      Origin = '"PED_VEN_CAB"."ROM_DPAG"'
      Size = 50
    end
    object B2BPedidosROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"PED_VEN_CAB"."ROM_CTRA"'
    end
    object B2BPedidosROM_DTRA: TIBStringField
      FieldName = 'ROM_DTRA'
      Origin = '"PED_VEN_CAB"."ROM_DTRA"'
      Size = 60
    end
    object B2BPedidosROM_MODFRETE: TIBStringField
      FieldName = 'ROM_MODFRETE'
      Origin = '"PED_VEN_CAB"."ROM_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object B2BPedidosROM_QTDE: TIBBCDField
      FieldName = 'ROM_QTDE'
      Origin = '"PED_VEN_CAB"."ROM_QTDE"'
      Precision = 18
      Size = 2
    end
    object B2BPedidosROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"PED_VEN_CAB"."ROM_QTRL"'
    end
    object B2BPedidosROM_QCOM: TIBBCDField
      FieldName = 'ROM_QCOM'
      Origin = '"PED_VEN_CAB"."ROM_QCOM"'
      Precision = 18
      Size = 2
    end
    object B2BPedidosROM_RCOM: TIntegerField
      FieldName = 'ROM_RCOM'
      Origin = '"PED_VEN_CAB"."ROM_RCOM"'
    end
    object B2BPedidosROM_TSDE: TIBBCDField
      FieldName = 'ROM_TSDE'
      Origin = '"PED_VEN_CAB"."ROM_TSDE"'
      Precision = 18
      Size = 2
    end
    object B2BPedidosROM_DESC: TIBBCDField
      FieldName = 'ROM_DESC'
      Origin = '"PED_VEN_CAB"."ROM_DESC"'
      Precision = 9
      Size = 2
    end
    object B2BPedidosROM_TCDE: TIBBCDField
      FieldName = 'ROM_TCDE'
      Origin = '"PED_VEN_CAB"."ROM_TCDE"'
      Precision = 18
      Size = 2
    end
    object B2BPedidosROM_VNF: TIBBCDField
      FieldName = 'ROM_VNF'
      Origin = '"PED_VEN_CAB"."ROM_VNF"'
      Precision = 18
      Size = 2
    end
    object B2BPedidosROM_VCOM: TIBBCDField
      FieldName = 'ROM_VCOM'
      Origin = '"PED_VEN_CAB"."ROM_VCOM"'
      Precision = 18
      Size = 2
    end
    object B2BPedidosROM_STFI: TSmallintField
      FieldName = 'ROM_STFI'
      Origin = '"PED_VEN_CAB"."ROM_STFI"'
    end
    object B2BPedidosROM_IMPO: TIBStringField
      FieldName = 'ROM_IMPO'
      Origin = '"PED_VEN_CAB"."ROM_IMPO"'
      FixedChar = True
      Size = 1
    end
    object B2BPedidosROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_VEN_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object B2BPedidosROM_OBSV: TMemoField
      FieldName = 'ROM_OBSV'
      Origin = '"PED_VEN_CAB"."ROM_OBSV"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object B2BPedidosROM_VCRD: TIBBCDField
      FieldName = 'ROM_VCRD'
      Origin = '"PED_VEN_CAB"."ROM_VCRD"'
      Precision = 18
      Size = 2
    end
    object B2BPedidosROM_FLAG: TSmallintField
      FieldName = 'ROM_FLAG'
      Origin = '"PED_VEN_CAB"."ROM_FLAG"'
    end
  end
  object B2BFKPedidos: TIBQuery
    Database = DBB2B
    Transaction = TB2BConsulta
    SQL.Strings = (
      'SELECT * FROM PED_VEN_ITE'
      'WHERE ID = :ID')
    Left = 656
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    object B2BFKPedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_VEN_ITE"."ID"'
      Required = True
    end
    object B2BFKPedidosROM_ITEM: TIntegerField
      FieldName = 'ROM_ITEM'
      Origin = '"PED_VEN_ITE"."ROM_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object B2BFKPedidosROM_CPRO: TIBStringField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_VEN_ITE"."ROM_CPRO"'
    end
    object B2BFKPedidosROM_DCOR: TIBStringField
      FieldName = 'ROM_DCOR'
      Origin = '"PED_VEN_ITE"."ROM_DCOR"'
      Size = 30
    end
    object B2BFKPedidosROM_DPRO: TIBStringField
      FieldName = 'ROM_DPRO'
      Origin = '"PED_VEN_ITE"."ROM_DPRO"'
      Size = 120
    end
    object B2BFKPedidosROM_DUNI: TIBStringField
      FieldName = 'ROM_DUNI'
      Origin = '"PED_VEN_ITE"."ROM_DUNI"'
      Size = 30
    end
    object B2BFKPedidosROM_QTDE: TIBBCDField
      FieldName = 'ROM_QTDE'
      Origin = '"PED_VEN_ITE"."ROM_QTDE"'
      Precision = 18
      Size = 4
    end
    object B2BFKPedidosROM_QTRL: TIntegerField
      FieldName = 'ROM_QTRL'
      Origin = '"PED_VEN_ITE"."ROM_QTRL"'
    end
    object B2BFKPedidosROM_UNIT: TIBBCDField
      FieldName = 'ROM_UNIT'
      Origin = '"PED_VEN_ITE"."ROM_UNIT"'
      Precision = 18
      Size = 4
    end
    object B2BFKPedidosROM_TOTA: TIBBCDField
      FieldName = 'ROM_TOTA'
      Origin = '"PED_VEN_ITE"."ROM_TOTA"'
      Precision = 18
      Size = 2
    end
  end
  object B2BClientes: TIBQuery
    Database = DBB2B
    Transaction = TB2BConsulta
    SQL.Strings = (
      'SELECT * FROM CAD_CLI'
      'WHERE ID = 0')
    Left = 656
    Top = 200
    object B2BClientesID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI"."ID"'
      Required = True
    end
    object B2BClientesCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object B2BClientesCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object B2BClientesCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CAD_CLI"."CLI_CNPJ"'
      Size = 14
    end
    object B2BClientesCLI_INSC: TIBStringField
      FieldName = 'CLI_INSC'
      Origin = '"CAD_CLI"."CLI_INSC"'
    end
    object B2BClientesCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CAD_CLI"."CLI_CPF"'
      Size = 11
    end
    object B2BClientesCLI_DDD: TIBStringField
      FieldName = 'CLI_DDD'
      Origin = '"CAD_CLI"."CLI_DDD"'
      Size = 2
    end
    object B2BClientesCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
      Origin = '"CAD_CLI"."CLI_FONE"'
      Size = 9
    end
    object B2BClientesCLI_MAIL: TIBStringField
      FieldName = 'CLI_MAIL'
      Origin = '"CAD_CLI"."CLI_MAIL"'
      Size = 60
    end
    object B2BClientesCLI_CREP: TIntegerField
      FieldName = 'CLI_CREP'
      Origin = '"CAD_CLI"."CLI_CREP"'
    end
    object B2BClientesCLI_TLOG: TIBStringField
      FieldName = 'CLI_TLOG'
      Origin = '"CAD_CLI"."CLI_TLOG"'
      Size = 15
    end
    object B2BClientesCLI_LOGR: TIBStringField
      FieldName = 'CLI_LOGR'
      Origin = '"CAD_CLI"."CLI_LOGR"'
      Size = 60
    end
    object B2BClientesCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CAD_CLI"."CLI_CEP"'
      Size = 9
    end
    object B2BClientesCLI_NUME: TIBStringField
      FieldName = 'CLI_NUME'
      Origin = '"CAD_CLI"."CLI_NUME"'
      Size = 10
    end
    object B2BClientesCLI_COMP: TIBStringField
      FieldName = 'CLI_COMP'
      Origin = '"CAD_CLI"."CLI_COMP"'
      Size = 40
    end
    object B2BClientesCLI_BAI: TIBStringField
      FieldName = 'CLI_BAI'
      Origin = '"CAD_CLI"."CLI_BAI"'
      Size = 40
    end
    object B2BClientesCLI_CID: TIBStringField
      FieldName = 'CLI_CID'
      Origin = '"CAD_CLI"."CLI_CID"'
      Size = 40
    end
    object B2BClientesCLI_ESTA: TIBStringField
      FieldName = 'CLI_ESTA'
      Origin = '"CAD_CLI"."CLI_ESTA"'
      Size = 2
    end
    object B2BClientesCLI_CTRA: TIntegerField
      FieldName = 'CLI_CTRA'
      Origin = '"CAD_CLI"."CLI_CTRA"'
    end
    object B2BClientesCLI_DTRA: TIBStringField
      FieldName = 'CLI_DTRA'
      Origin = '"CAD_CLI"."CLI_DTRA"'
      Size = 60
    end
    object B2BClientesCLI_MODFRETE: TIBStringField
      FieldName = 'CLI_MODFRETE'
      Origin = '"CAD_CLI"."CLI_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object B2BClientesCLI_CPAG: TIntegerField
      FieldName = 'CLI_CPAG'
      Origin = '"CAD_CLI"."CLI_CPAG"'
    end
    object B2BClientesCLI_DPAG: TIBStringField
      FieldName = 'CLI_DPAG'
      Origin = '"CAD_CLI"."CLI_DPAG"'
      Size = 60
    end
    object B2BClientesCLI_RAMO: TIBStringField
      FieldName = 'CLI_RAMO'
      Origin = '"CAD_CLI"."CLI_RAMO"'
      Size = 120
    end
    object B2BClientesCLI_DCAD: TDateField
      FieldName = 'CLI_DCAD'
      Origin = '"CAD_CLI"."CLI_DCAD"'
    end
    object B2BClientesCLI_DATA: TDateTimeField
      FieldName = 'CLI_DATA'
      Origin = '"CAD_CLI"."CLI_DATA"'
    end
  end
  object B2BTransportadoras: TIBQuery
    Database = DBB2B
    Transaction = TB2BConsulta
    SQL.Strings = (
      'SELECT * FROM CAD_TRA'
      'WHERE ID = :ID')
    Left = 656
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    object B2BTransportadorasID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_TRA"."ID"'
      Required = True
    end
    object B2BTransportadorasTRA_FANT: TIBStringField
      FieldName = 'TRA_FANT'
      Origin = '"CAD_TRA"."TRA_FANT"'
      Size = 60
    end
    object B2BTransportadorasTRA_RAZA: TIBStringField
      FieldName = 'TRA_RAZA'
      Origin = '"CAD_TRA"."TRA_RAZA"'
      Size = 60
    end
    object B2BTransportadorasTRA_CNPJ: TIBStringField
      FieldName = 'TRA_CNPJ'
      Origin = '"CAD_TRA"."TRA_CNPJ"'
      Size = 14
    end
    object B2BTransportadorasTRA_INSC: TIBStringField
      FieldName = 'TRA_INSC'
      Origin = '"CAD_TRA"."TRA_INSC"'
    end
    object B2BTransportadorasTRA_CPF: TIBStringField
      FieldName = 'TRA_CPF'
      Origin = '"CAD_TRA"."TRA_CPF"'
      Size = 11
    end
    object B2BTransportadorasTRA_DDD: TIBStringField
      FieldName = 'TRA_DDD'
      Origin = '"CAD_TRA"."TRA_DDD"'
      Size = 2
    end
    object B2BTransportadorasTRA_FONE: TIBStringField
      FieldName = 'TRA_FONE'
      Origin = '"CAD_TRA"."TRA_FONE"'
      Size = 9
    end
    object B2BTransportadorasTRA_CONT: TIBStringField
      FieldName = 'TRA_CONT'
      Origin = '"CAD_TRA"."TRA_CONT"'
      Size = 30
    end
    object B2BTransportadorasTRA_MAIL: TIBStringField
      FieldName = 'TRA_MAIL'
      Origin = '"CAD_TRA"."TRA_MAIL"'
      Size = 60
    end
    object B2BTransportadorasTRA_TLOG: TIBStringField
      FieldName = 'TRA_TLOG'
      Origin = '"CAD_TRA"."TRA_TLOG"'
      Size = 15
    end
    object B2BTransportadorasTRA_LOGR: TIBStringField
      FieldName = 'TRA_LOGR'
      Origin = '"CAD_TRA"."TRA_LOGR"'
      Size = 60
    end
    object B2BTransportadorasTRA_CEP: TIBStringField
      FieldName = 'TRA_CEP'
      Origin = '"CAD_TRA"."TRA_CEP"'
      Size = 9
    end
    object B2BTransportadorasTRA_NUME: TIBStringField
      FieldName = 'TRA_NUME'
      Origin = '"CAD_TRA"."TRA_NUME"'
      Size = 10
    end
    object B2BTransportadorasTRA_COMP: TIBStringField
      FieldName = 'TRA_COMP'
      Origin = '"CAD_TRA"."TRA_COMP"'
      Size = 40
    end
    object B2BTransportadorasTRA_BAI: TIBStringField
      FieldName = 'TRA_BAI'
      Origin = '"CAD_TRA"."TRA_BAI"'
      Size = 40
    end
    object B2BTransportadorasTRA_CID: TIBStringField
      FieldName = 'TRA_CID'
      Origin = '"CAD_TRA"."TRA_CID"'
      Size = 40
    end
    object B2BTransportadorasTRA_ESTA: TIBStringField
      FieldName = 'TRA_ESTA'
      Origin = '"CAD_TRA"."TRA_ESTA"'
      Size = 2
    end
    object B2BTransportadorasTRA_DATA: TDateTimeField
      FieldName = 'TRA_DATA'
      Origin = '"CAD_TRA"."TRA_DATA"'
    end
    object B2BTransportadorasFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"CAD_TRA"."FLAG"'
    end
  end
  object QFBTAB_USER_ADM: TIBQuery
    Database = DBERP
    Transaction = TFBConsulta
    SQL.Strings = (
      
        'SELECT   FK.ID,PK.LG_ID,FK.DESCRICAO,FK.REFERENCIA,FK.REGRA,FK.C' +
        'ONTROLE,'
      
        '         FK.INCLUI,FK.ALTERA,FK.EXCLUI,FK.SALVA,FK.VALIDA,FK.CAN' +
        'CELA,'
      '         FK.VISUALIZA,FK.IMPRIME,'
      '         PK.IS_DESCONTO,PK.PM_DESCONTO,'
      '         PK.IS_ACRESCIMO,PK.PM_ACRESCIMO,'
      '         PK.IS_CREDITO,PK.PM_CREDITO,'
      '         PK.IS_BLOQUEIO,FK.ADM'
      ''
      'FROM     TAB_USER     AS PK'
      'JOIN     TAB_USER_ADM AS FK ON (FK.LG_ID = PK.LG_ID)'
      ''
      'WHERE    PK.LG_ID = :LG_ID'
      'ORDER BY PK.LG_ID,FK.DESCRICAO,FK.REFERENCIA,FK.REGRA')
    Left = 168
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LG_ID'
        ParamType = ptUnknown
      end>
  end
  object DTSFBTAB_USER_ADM: TDataSource
    AutoEdit = False
    DataSet = CDSFBTAB_USER_ADM
    Left = 168
    Top = 328
  end
  object CDSFBTAB_USER_ADM: TClientDataSet
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DSPFBTAB_USER_ADM'
    ReadOnly = True
    Left = 168
    Top = 376
    object CDSFBTAB_USER_ADMID: TLargeintField
      FieldName = 'ID'
      Origin = '"TAB_USER_ADM"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFBTAB_USER_ADMLG_ID: TSmallintField
      FieldName = 'LG_ID'
      Origin = '"TAB_USER"."LG_ID"'
    end
    object CDSFBTAB_USER_ADMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = '"TAB_USER_ADM"."DESCRICAO"'
      Size = 60
    end
    object CDSFBTAB_USER_ADMREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = '"TAB_USER_ADM"."REFERENCIA"'
      Size = 60
    end
    object CDSFBTAB_USER_ADMREGRA: TStringField
      FieldName = 'REGRA'
      Origin = '"TAB_USER_ADM"."REGRA"'
      Size = 120
    end
    object CDSFBTAB_USER_ADMCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      Origin = '"TAB_USER_ADM"."CONTROLE"'
    end
    object CDSFBTAB_USER_ADMINCLUI: TSmallintField
      FieldName = 'INCLUI'
      Origin = '"TAB_USER_ADM"."INCLUI"'
    end
    object CDSFBTAB_USER_ADMALTERA: TSmallintField
      FieldName = 'ALTERA'
      Origin = '"TAB_USER_ADM"."ALTERA"'
    end
    object CDSFBTAB_USER_ADMEXCLUI: TSmallintField
      FieldName = 'EXCLUI'
      Origin = '"TAB_USER_ADM"."EXCLUI"'
    end
    object CDSFBTAB_USER_ADMSALVA: TSmallintField
      FieldName = 'SALVA'
      Origin = '"TAB_USER_ADM"."SALVA"'
    end
    object CDSFBTAB_USER_ADMVALIDA: TSmallintField
      FieldName = 'VALIDA'
      Origin = '"TAB_USER_ADM"."VALIDA"'
    end
    object CDSFBTAB_USER_ADMCANCELA: TSmallintField
      FieldName = 'CANCELA'
      Origin = '"TAB_USER_ADM"."CANCELA"'
    end
    object CDSFBTAB_USER_ADMVISUALIZA: TSmallintField
      FieldName = 'VISUALIZA'
      Origin = '"TAB_USER_ADM"."VISUALIZA"'
    end
    object CDSFBTAB_USER_ADMIMPRIME: TSmallintField
      FieldName = 'IMPRIME'
      Origin = '"TAB_USER_ADM"."IMPRIME"'
    end
    object CDSFBTAB_USER_ADMIS_DESCONTO: TSmallintField
      FieldName = 'IS_DESCONTO'
      Origin = '"TAB_USER"."IS_DESCONTO"'
    end
    object CDSFBTAB_USER_ADMPM_DESCONTO: TBCDField
      FieldName = 'PM_DESCONTO'
      Origin = '"TAB_USER"."PM_DESCONTO"'
      Precision = 9
      Size = 2
    end
    object CDSFBTAB_USER_ADMIS_ACRESCIMO: TSmallintField
      FieldName = 'IS_ACRESCIMO'
      Origin = '"TAB_USER"."IS_ACRESCIMO"'
    end
    object CDSFBTAB_USER_ADMPM_ACRESCIMO: TBCDField
      FieldName = 'PM_ACRESCIMO'
      Origin = '"TAB_USER"."PM_ACRESCIMO"'
      Precision = 9
      Size = 2
    end
    object CDSFBTAB_USER_ADMIS_CREDITO: TSmallintField
      FieldName = 'IS_CREDITO'
      Origin = '"TAB_USER"."IS_CREDITO"'
    end
    object CDSFBTAB_USER_ADMPM_CREDITO: TBCDField
      FieldName = 'PM_CREDITO'
      Origin = '"TAB_USER"."PM_CREDITO"'
      Precision = 9
      Size = 2
    end
    object CDSFBTAB_USER_ADMIS_BLOQUEIO: TSmallintField
      FieldName = 'IS_BLOQUEIO'
      Origin = '"TAB_USER"."IS_BLOQUEIO"'
    end
    object CDSFBTAB_USER_ADMADM: TSmallintField
      FieldName = 'ADM'
      Origin = '"TAB_USER"."ADM"'
    end
  end
  object DSPFBTAB_USER_ADM: TDataSetProvider
    DataSet = QFBTAB_USER_ADM
    ResolveToDataSet = True
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 424
  end
  object DB_EDI: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\SHE-EDI.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'lc_ctype=WIN1252'
      'password=ri1903')
    LoginPrompt = False
    Left = 352
    Top = 8
  end
  object TFBEdicao: TIBTransaction
    DefaultDatabase = DBERP
    Left = 168
    Top = 72
  end
  object SQLFBEdicao: TIBSQL
    Database = DBERP
    Transaction = TFBEdicao
    Left = 168
    Top = 120
  end
  object SPFBEdicao: TIBStoredProc
    Database = DBERP
    Transaction = TFBEdicao
    Left = 168
    Top = 224
  end
  object TFBEvent: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = DBERP
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 168
    Top = 8
  end
  object SQLFBFKEdicao: TIBSQL
    Database = DBERP
    Transaction = TFBEdicao
    Left = 168
    Top = 168
  end
  object SQLFBFKEEdicao: TIBSQL
    Database = DBEDI
    Transaction = TFBEEdicao
    Left = 352
    Top = 216
  end
end
