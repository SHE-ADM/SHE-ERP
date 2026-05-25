object dmDADOS: TdmDADOS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 366
  Top = 143
  Height = 588
  Width = 922
  object ibDB: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\TRIMS21.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ri1903'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = tTRA
    Left = 24
    Top = 8
  end
  object tTRA: TIBTransaction
    DefaultDatabase = ibDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 72
    Top = 8
  end
  object ibSP: TIBStoredProc
    Database = ibDB
    Transaction = tTRA
    Left = 112
    Top = 8
  end
  object bSHEILD: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\SHEILD.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'lc_ctype=WIN1252'
      'password=ri1903')
    LoginPrompt = False
    DefaultTransaction = tSHEILD
    Left = 24
    Top = 56
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 72
    Top = 56
  end
  object bCEP: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\CEP.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ri1903')
    LoginPrompt = False
    DefaultTransaction = tCEP
    Left = 22
    Top = 104
  end
  object tCEP: TIBTransaction
    DefaultDatabase = bCEP
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 70
    Top = 104
  end
  object TFBCadastro: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = ibDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saCommit
    Left = 184
    Top = 200
  end
  object QFBCadastro: TIBQuery
    Database = ibDB
    Transaction = TFBCadastro
    SQL.Strings = (
      '')
    Left = 272
    Top = 200
  end
  object SQLFBCadastro: TIBSQL
    Database = ibDB
    Transaction = TFBCadastro
    Left = 184
    Top = 248
  end
  object DTSQFBCadastro: TDataSource
    DataSet = QFBCadastro
    Left = 272
    Top = 248
  end
  object TFBEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = ibDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 184
    Top = 296
  end
  object QFBEdicao: TIBQuery
    Database = ibDB
    Transaction = TFBEdicao
    SQL.Strings = (
      '')
    Left = 272
    Top = 296
  end
  object SPFBEdicao: TIBStoredProc
    Database = ibDB
    Transaction = TFBEdicao
    Left = 184
    Top = 344
  end
  object DTSQFBEdicao: TDataSource
    DataSet = QFBEdicao
    Left = 272
    Top = 344
  end
  object SQLFBEdicao: TIBSQL
    Database = ibDB
    Transaction = TFBEdicao
    Left = 184
    Top = 392
  end
  object QFBConsulta: TIBQuery
    Database = ibDB
    Transaction = TFBConsulta
    SQL.Strings = (
      '')
    Left = 272
    Top = 392
  end
  object TFBConsulta: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = ibDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saCommit
    Left = 184
    Top = 440
  end
  object DSTQFBConsulta: TDataSource
    AutoEdit = False
    DataSet = QFBConsulta
    Left = 272
    Top = 440
  end
  object SQLFBConsulta: TIBSQL
    Database = ibDB
    Transaction = TFBConsulta
    Left = 184
    Top = 488
  end
  object FBProdutos: TIBQuery
    Database = ibDB
    Transaction = TFBConsulta
    SQL.Strings = (
      
        'SELECT   CAD_PRO.ID          ,CAD_PRO.PRO_CBAR    ,CAD_PRO.PRO_C' +
        'FOR    ,CAD_PRO.PRO_CART    ,CAD_PRO.PRO_CPRO,'
      
        '         CAD_PRO.PRO_CCOR    ,CAD_PRO.PRO_PCOR    ,CAD_PRO.PRO_D' +
        'COR    ,CAD_PRO.PRO_DUNI    ,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_COMP,'
      
        '         CAD_PRO.PRO_DPRO    ,CAD_PRO.PRO_DPR2    ,CAD_PRO.PRO_D' +
        'PR3    ,CAD_PRO.PRO_DPR4    ,CAD_PRO.PRO_DPR5,'
      
        '         CAD_PRO.PRO_CDEP    ,CAD_PRO.PRO_DEEP    ,CAD_PRO.PRO_C' +
        'DFO    ,CAD_PRO.PRO_DEFO    ,'
      
        '         CAD_PRO.PRO_CCOL    ,CAD_PRO.PRO_DCOL    ,CAD_PRO.PRO_C' +
        'GRP    ,CAD_PRO.PRO_DGRP    ,CAD_PRO.PRO_CCAT,CAD_PRO.PRO_DCAT,'
      
        '         CAD_PRO.PRO_PREC    ,CAD_PRO.PRO_PPRO    ,CAD_PRO.PRO_P' +
        'DSC    ,CAD_PRO.PRO_VPRC    ,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,'
      
        '         CAD_PRO.PRO_RPRC    ,CAD_PRO.PRO_RPRO    ,CAD_PRO.PRO_R' +
        'DSC    ,CAD_PRO.PRO_APRC    ,CAD_PRO.PRO_LDSC,'
      
        '         CAD_PRO.PRO_CUST    ,CAD_PRO.PRO_PCOM    ,CAD_PRO.PRO_C' +
        'LIB,'
      
        '         CAD_PRO.PRO_PIPI    ,CAD_PRO.PRO_CCLF    ,CAD_PRO.PRO_C' +
        'CST    ,CAD_PRO.PRO_DORI    ,CAD_PRO.PRO_REPR,CAD_PRO.PRO_METR,'
      
        '         CAD_PRO.PRO_REND    ,CAD_PRO.PRO_PESO    ,CAD_PRO.PRO_P' +
        'SCN    ,CAD_PRO.PRO_PSMR    ,CAD_PRO.PRO_STLN,CAD_PRO.PRO_LARG,'
      
        '         CAD_PRO.PRO_GRAM    ,CAD_PRO.PRO_UTIL    ,CAD_PRO.PRO_D' +
        'ENS    ,CAD_PRO.PRO_TITF,'
      
        '         CAD_PRO.PRO_APRO    ,CAD_PRO.PRO_OBSE    ,CAD_PRO.PRO_O' +
        'BSF    ,CAD_PRO.PRO_STA     ,CAD_PRO.PRO_STAV,'
      
        '         CAD_PRO_IMG.PRO_FOTO,CAD_PRO_IMG.PRO_FOT2,CAD_PRO_IMG.P' +
        'RO_FOT3,CAD_PRO_IMG.PRO_FOT4,'
      
        '         CAD_PRO_IMG.PRO_FOT5,CAD_PRO_IMG.PRO_FOT6,CAD_PRO_IMG.P' +
        'RO_FOT7,CAD_PRO_IMG.PRO_FOT8,'
      
        '         CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.P' +
        'RO_INS3,CAD_PRO_IMG.PRO_INS4,'
      
        '         CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.P' +
        'RO_INS7,CAD_PRO_IMG.PRO_INS8,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_REST,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QSEP,'
      
        '         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RSEP,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM cad_pro_PRG     WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,'
      
        '         (SELECT COUNT(*)               FROM cad_pro_PRG     WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,'
      
        '         (SELECT SUM(EST_CRED)          FROM cad_pro_PRC     WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,'
      
        '         (SELECT SUM(EST_DEBI)          FROM cad_pro_PRC     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,'
      
        '         (SELECT COUNT(*)               FROM cad_pro_PRC     WHE' +
        'RE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RCOM,'
      
        '         (SELECT SUM(EST_CRED-EST_DEBI) FROM cad_pro_DEF     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,'
      
        '         (SELECT COUNT(*)               FROM cad_pro_DEF     WHE' +
        'RE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF'
      '         FROM     CAD_PRO,CAD_PRO_IMG'
      '         WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART'
      '         AND      CAD_PRO.ID = 0'
      'ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR')
    Left = 72
    Top = 216
    object FBProdutosC_DCST: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_DCST'
      Size = 200
      Calculated = True
    end
    object FBProdutosC_STAV: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_STAV'
      Size = 30
      Calculated = True
    end
    object FBProdutosC_QEST: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QEST'
      Calculated = True
    end
    object FBProdutosC_REST: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_REST'
      Calculated = True
    end
    object FBProdutosC_QRES: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QRES'
      Calculated = True
    end
    object FBProdutosC_RRES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_RRES'
      Calculated = True
    end
    object FBProdutosC_QSEP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QSEP'
      Calculated = True
    end
    object FBProdutosC_RSEP: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_RSEP'
      Calculated = True
    end
    object FBProdutosC_QDIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QDIS'
      Calculated = True
    end
    object FBProdutosC_RDIS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_RDIS'
      Calculated = True
    end
    object FBProdutosC_QDEF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QDEF'
      Calculated = True
    end
    object FBProdutosC_RDEF: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_RDEF'
      Calculated = True
    end
    object FBProdutosC_QCOM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QCOM'
      Calculated = True
    end
    object FBProdutosC_RCOM: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_RCOM'
      Calculated = True
    end
    object FBProdutosC_QPRG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QPRG'
      Calculated = True
    end
    object FBProdutosC_RPRG: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_RPRG'
      Calculated = True
    end
    object FBProdutosC_QSLD: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QSLD'
      Calculated = True
    end
    object FBProdutosC_RSLD: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_RSLD'
      Calculated = True
    end
    object FBProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FBProdutosPRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO"."PRO_CBAR"'
    end
    object FBProdutosPRO_CFOR: TIBStringField
      FieldName = 'PRO_CFOR'
      Origin = '"CAD_PRO"."PRO_CFOR"'
    end
    object FBProdutosPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object FBProdutosPRO_CPRO: TIBStringField
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object FBProdutosPRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO"."PRO_CCOR"'
    end
    object FBProdutosPRO_PCOR: TIBStringField
      FieldName = 'PRO_PCOR'
      Origin = '"CAD_PRO"."PRO_PCOR"'
      Size = 30
    end
    object FBProdutosPRO_DCOR: TIBStringField
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object FBProdutosPRO_DUNI: TIBStringField
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object FBProdutosPRO_GRAD: TIBStringField
      FieldName = 'PRO_GRAD'
      Origin = '"CAD_PRO"."PRO_GRAD"'
      Size = 3
    end
    object FBProdutosPRO_COMP: TIBStringField
      FieldName = 'PRO_COMP'
      Origin = '"CAD_PRO"."PRO_COMP"'
      Size = 120
    end
    object FBProdutosPRO_DPRO: TIBStringField
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO"."PRO_DPRO"'
      Size = 120
    end
    object FBProdutosPRO_DPR2: TIBStringField
      FieldName = 'PRO_DPR2'
      Origin = '"CAD_PRO"."PRO_DPR2"'
      Size = 120
    end
    object FBProdutosPRO_DPR3: TIBStringField
      FieldName = 'PRO_DPR3'
      Origin = '"CAD_PRO"."PRO_DPR3"'
      Size = 120
    end
    object FBProdutosPRO_DPR4: TIBStringField
      FieldName = 'PRO_DPR4'
      Origin = '"CAD_PRO"."PRO_DPR4"'
      Size = 120
    end
    object FBProdutosPRO_DPR5: TIBStringField
      FieldName = 'PRO_DPR5'
      Origin = '"CAD_PRO"."PRO_DPR5"'
      Size = 120
    end
    object FBProdutosPRO_CDEP: TIntegerField
      FieldName = 'PRO_CDEP'
      Origin = '"CAD_PRO"."PRO_CDEP"'
    end
    object FBProdutosPRO_DEEP: TIBStringField
      FieldName = 'PRO_DEEP'
      Origin = '"CAD_PRO"."PRO_DEEP"'
      Size = 60
    end
    object FBProdutosPRO_CDFO: TIntegerField
      FieldName = 'PRO_CDFO'
      Origin = '"CAD_PRO"."PRO_CDFO"'
    end
    object FBProdutosPRO_DEFO: TIBStringField
      FieldName = 'PRO_DEFO'
      Origin = '"CAD_PRO"."PRO_DEFO"'
      Size = 60
    end
    object FBProdutosPRO_CCOL: TIntegerField
      FieldName = 'PRO_CCOL'
      Origin = '"CAD_PRO"."PRO_CCOL"'
    end
    object FBProdutosPRO_DCOL: TIBStringField
      FieldName = 'PRO_DCOL'
      Origin = '"CAD_PRO"."PRO_DCOL"'
      Size = 30
    end
    object FBProdutosPRO_CGRP: TIntegerField
      FieldName = 'PRO_CGRP'
      Origin = '"CAD_PRO"."PRO_CGRP"'
    end
    object FBProdutosPRO_DGRP: TIBStringField
      FieldName = 'PRO_DGRP'
      Origin = '"CAD_PRO"."PRO_DGRP"'
      Size = 30
    end
    object FBProdutosPRO_CCAT: TIntegerField
      FieldName = 'PRO_CCAT'
      Origin = '"CAD_PRO"."PRO_CCAT"'
    end
    object FBProdutosPRO_DCAT: TIBStringField
      FieldName = 'PRO_DCAT'
      Origin = '"CAD_PRO"."PRO_DCAT"'
      Size = 30
    end
    object FBProdutosPRO_PREC: TFloatField
      FieldName = 'PRO_PREC'
      Origin = '"CAD_PRO"."PRO_PREC"'
    end
    object FBProdutosPRO_PPRO: TFloatField
      FieldName = 'PRO_PPRO'
      Origin = '"CAD_PRO"."PRO_PPRO"'
    end
    object FBProdutosPRO_PDSC: TIBBCDField
      FieldName = 'PRO_PDSC'
      Origin = '"CAD_PRO"."PRO_PDSC"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_VPRC: TFloatField
      FieldName = 'PRO_VPRC'
      Origin = '"CAD_PRO"."PRO_VPRC"'
    end
    object FBProdutosPRO_VPRO: TFloatField
      FieldName = 'PRO_VPRO'
      Origin = '"CAD_PRO"."PRO_VPRO"'
    end
    object FBProdutosPRO_VDSC: TIBBCDField
      FieldName = 'PRO_VDSC'
      Origin = '"CAD_PRO"."PRO_VDSC"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_RPRC: TFloatField
      FieldName = 'PRO_RPRC'
      Origin = '"CAD_PRO"."PRO_RPRC"'
    end
    object FBProdutosPRO_RPRO: TFloatField
      FieldName = 'PRO_RPRO'
      Origin = '"CAD_PRO"."PRO_RPRO"'
    end
    object FBProdutosPRO_RDSC: TIBBCDField
      FieldName = 'PRO_RDSC'
      Origin = '"CAD_PRO"."PRO_RDSC"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_APRC: TIBStringField
      FieldName = 'PRO_APRC'
      Origin = '"CAD_PRO"."PRO_APRC"'
      FixedChar = True
      Size = 1
    end
    object FBProdutosPRO_LDSC: TIBBCDField
      FieldName = 'PRO_LDSC'
      Origin = '"CAD_PRO"."PRO_LDSC"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_CUST: TFloatField
      FieldName = 'PRO_CUST'
      Origin = '"CAD_PRO"."PRO_CUST"'
    end
    object FBProdutosPRO_PCOM: TFloatField
      FieldName = 'PRO_PCOM'
      Origin = '"CAD_PRO"."PRO_PCOM"'
    end
    object FBProdutosPRO_CLIB: TFloatField
      FieldName = 'PRO_CLIB'
      Origin = '"CAD_PRO"."PRO_CLIB"'
    end
    object FBProdutosPRO_PIPI: TSmallintField
      FieldName = 'PRO_PIPI'
      Origin = '"CAD_PRO"."PRO_PIPI"'
    end
    object FBProdutosPRO_CCLF: TIBStringField
      FieldName = 'PRO_CCLF'
      Origin = '"CAD_PRO"."PRO_CCLF"'
      Size = 10
    end
    object FBProdutosPRO_CCST: TIBStringField
      FieldName = 'PRO_CCST'
      Origin = '"CAD_PRO"."PRO_CCST"'
      FixedChar = True
      Size = 1
    end
    object FBProdutosPRO_DORI: TIBStringField
      FieldName = 'PRO_DORI'
      Origin = '"CAD_PRO"."PRO_DORI"'
      Size = 30
    end
    object FBProdutosPRO_REPR: TIBStringField
      FieldName = 'PRO_REPR'
      Origin = '"CAD_PRO"."PRO_REPR"'
      FixedChar = True
      Size = 1
    end
    object FBProdutosPRO_METR: TIBBCDField
      FieldName = 'PRO_METR'
      Origin = '"CAD_PRO"."PRO_METR"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_REND: TIBBCDField
      FieldName = 'PRO_REND'
      Origin = '"CAD_PRO"."PRO_REND"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"CAD_PRO"."PRO_PESO"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_PSCN: TIBBCDField
      FieldName = 'PRO_PSCN'
      Origin = '"CAD_PRO"."PRO_PSCN"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_PSMR: TIBBCDField
      FieldName = 'PRO_PSMR'
      Origin = '"CAD_PRO"."PRO_PSMR"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_STLN: TIBStringField
      FieldName = 'PRO_STLN'
      Origin = '"CAD_PRO"."PRO_STLN"'
      FixedChar = True
      Size = 1
    end
    object FBProdutosPRO_LARG: TIBBCDField
      FieldName = 'PRO_LARG'
      Origin = '"CAD_PRO"."PRO_LARG"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_GRAM: TIBBCDField
      FieldName = 'PRO_GRAM'
      Origin = '"CAD_PRO"."PRO_GRAM"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_UTIL: TIBBCDField
      FieldName = 'PRO_UTIL'
      Origin = '"CAD_PRO"."PRO_UTIL"'
      Precision = 9
      Size = 2
    end
    object FBProdutosPRO_DENS: TIBStringField
      FieldName = 'PRO_DENS'
      Origin = '"CAD_PRO"."PRO_DENS"'
    end
    object FBProdutosPRO_TITF: TIBStringField
      FieldName = 'PRO_TITF'
      Origin = '"CAD_PRO"."PRO_TITF"'
    end
    object FBProdutosPRO_APRO: TMemoField
      FieldName = 'PRO_APRO'
      Origin = '"CAD_PRO"."PRO_APRO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object FBProdutosPRO_OBSE: TMemoField
      FieldName = 'PRO_OBSE'
      Origin = '"CAD_PRO"."PRO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object FBProdutosPRO_OBSF: TMemoField
      FieldName = 'PRO_OBSF'
      Origin = '"CAD_PRO"."PRO_OBSF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object FBProdutosPRO_STA: TIBStringField
      FieldName = 'PRO_STA'
      Origin = '"CAD_PRO"."PRO_STA"'
      FixedChar = True
      Size = 1
    end
    object FBProdutosPRO_STAV: TIBStringField
      FieldName = 'PRO_STAV'
      Origin = '"CAD_PRO"."PRO_STAV"'
      FixedChar = True
      Size = 1
    end
    object FBProdutosPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_IMG"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_FOT2: TBlobField
      FieldName = 'PRO_FOT2'
      Origin = '"CAD_PRO_IMG"."PRO_FOT2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_FOT3: TBlobField
      FieldName = 'PRO_FOT3'
      Origin = '"CAD_PRO_IMG"."PRO_FOT3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_FOT4: TBlobField
      FieldName = 'PRO_FOT4'
      Origin = '"CAD_PRO_IMG"."PRO_FOT4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_FOT5: TBlobField
      FieldName = 'PRO_FOT5'
      Origin = '"CAD_PRO_IMG"."PRO_FOT5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_FOT6: TBlobField
      FieldName = 'PRO_FOT6'
      Origin = '"CAD_PRO_IMG"."PRO_FOT6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_FOT7: TBlobField
      FieldName = 'PRO_FOT7'
      Origin = '"CAD_PRO_IMG"."PRO_FOT7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_FOT8: TBlobField
      FieldName = 'PRO_FOT8'
      Origin = '"CAD_PRO_IMG"."PRO_FOT8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS1: TBlobField
      FieldName = 'PRO_INS1'
      Origin = '"CAD_PRO_IMG"."PRO_INS1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS2: TBlobField
      FieldName = 'PRO_INS2'
      Origin = '"CAD_PRO_IMG"."PRO_INS2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS3: TBlobField
      FieldName = 'PRO_INS3'
      Origin = '"CAD_PRO_IMG"."PRO_INS3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS4: TBlobField
      FieldName = 'PRO_INS4'
      Origin = '"CAD_PRO_IMG"."PRO_INS4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS5: TBlobField
      FieldName = 'PRO_INS5'
      Origin = '"CAD_PRO_IMG"."PRO_INS5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS6: TBlobField
      FieldName = 'PRO_INS6'
      Origin = '"CAD_PRO_IMG"."PRO_INS6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS7: TBlobField
      FieldName = 'PRO_INS7'
      Origin = '"CAD_PRO_IMG"."PRO_INS7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_INS8: TBlobField
      FieldName = 'PRO_INS8'
      Origin = '"CAD_PRO_IMG"."PRO_INS8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object FBProdutosPRO_QEST: TIBBCDField
      FieldName = 'PRO_QEST'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object FBProdutosPRO_REST: TLargeintField
      FieldName = 'PRO_REST'
      ProviderFlags = []
    end
    object FBProdutosPRO_QRES: TIBBCDField
      FieldName = 'PRO_QRES'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object FBProdutosPRO_RRES: TLargeintField
      FieldName = 'PRO_RRES'
      ProviderFlags = []
    end
    object FBProdutosPRO_QSEP: TIBBCDField
      FieldName = 'PRO_QSEP'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object FBProdutosPRO_RSEP: TLargeintField
      FieldName = 'PRO_RSEP'
      ProviderFlags = []
    end
    object FBProdutosPRO_QPRG: TIBBCDField
      FieldName = 'PRO_QPRG'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object FBProdutosPRO_RPRG: TLargeintField
      FieldName = 'PRO_RPRG'
      ProviderFlags = []
    end
    object FBProdutosPRO_QCOM: TIBBCDField
      FieldName = 'PRO_QCOM'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object FBProdutosPRO_QPRD: TIBBCDField
      FieldName = 'PRO_QPRD'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object FBProdutosPRO_RCOM: TLargeintField
      FieldName = 'PRO_RCOM'
      ProviderFlags = []
    end
    object FBProdutosPRO_QDEF: TIBBCDField
      FieldName = 'PRO_QDEF'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object FBProdutosPRO_RDEF: TLargeintField
      FieldName = 'PRO_RDEF'
      ProviderFlags = []
    end
  end
  object DTSFBProdutos: TDataSource
    AutoEdit = False
    DataSet = FBProdutos
    Left = 72
    Top = 264
  end
end
