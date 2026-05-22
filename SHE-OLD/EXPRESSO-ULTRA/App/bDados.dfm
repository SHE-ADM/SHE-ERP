object DMDados: TDMDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 501
  Top = 197
  Height = 559
  Width = 757
  object IBDB: TIBDatabase
    DatabaseName = 'C:\Dev\Dados\FBird\EXPRESSO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ri1903'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    AfterConnect = IBDBAfterConnect
    BeforeDisconnect = IBDBBeforeDisconnect
    Left = 32
    Top = 8
  end
  object tTRA: TIBTransaction
    DefaultDatabase = IBDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 80
    Top = 8
  end
  object ibSP: TIBStoredProc
    Database = IBDB
    Transaction = tTRA
    Left = 120
    Top = 8
  end
  object bSHEILD: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\Sheild.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'lc_ctype=WIN1252'
      'password=ri1903')
    LoginPrompt = False
    Left = 32
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
    Left = 80
    Top = 56
  end
  object bCEP: TIBDatabase
    DatabaseName = 'C:\Sheild\FBird\CEP.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=ri1903')
    LoginPrompt = False
    Left = 30
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
    Left = 78
    Top = 104
  end
  object TFBCadastro: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = IBDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saCommit
    Left = 32
    Top = 168
  end
  object QFBCadastro: TIBQuery
    Database = IBDB
    Transaction = TFBCadastro
    SQL.Strings = (
      '')
    Left = 120
    Top = 168
  end
  object SQLFBCadastro: TIBSQL
    Database = IBDB
    Transaction = TFBCadastro
    Left = 32
    Top = 216
  end
  object DTSQFBCadastro: TDataSource
    DataSet = QFBCadastro
    Left = 120
    Top = 216
  end
  object TFBEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = IBDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 32
    Top = 264
  end
  object QFBEdicao: TIBQuery
    Database = IBDB
    Transaction = TFBEdicao
    SQL.Strings = (
      '')
    Left = 120
    Top = 264
  end
  object SPFBEdicao: TIBStoredProc
    Database = IBDB
    Transaction = TFBEdicao
    Left = 32
    Top = 312
  end
  object DTSQFBEdicao: TDataSource
    DataSet = QFBEdicao
    Left = 120
    Top = 312
  end
  object SQLFBEdicao: TIBSQL
    Database = IBDB
    Transaction = TFBEdicao
    Left = 32
    Top = 360
  end
  object QFBConsulta: TIBQuery
    Database = IBDB
    Transaction = TFBConsulta
    SQL.Strings = (
      '')
    Left = 120
    Top = 360
  end
  object TFBConsulta: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = IBDB
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saCommit
    Left = 32
    Top = 408
  end
  object DSTQFBConsulta: TDataSource
    AutoEdit = False
    DataSet = QFBConsulta
    Left = 120
    Top = 408
  end
  object SQLFBConsulta: TIBSQL
    Database = IBDB
    Transaction = TFBConsulta
    Left = 32
    Top = 456
  end
  object DBEvent: TIBEvents
    AutoRegister = False
    Database = IBDB
    Registered = False
    OnEventAlert = DBEventEventAlert
    Left = 168
    Top = 8
  end
  object TFBEvent: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = IBDB
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 168
    Top = 56
  end
  object SPFBEvent: TIBStoredProc
    Database = IBDB
    Transaction = TFBEvent
    Left = 168
    Top = 104
  end
  object TFBCaixa: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = IBDB
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    AutoStopAction = saRollback
    Left = 232
    Top = 8
  end
  object SQLFBCaixa: TIBSQL
    Database = IBDB
    Transaction = TFBCaixa
    Left = 232
    Top = 56
  end
end
