inherited frmfin_rec_con: Tfrmfin_rec_con
  Left = -3
  Top = 1
  AlphaBlendValue = 0
  ClientHeight = 992
  ClientWidth = 1917
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 971
    Width = 1917
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 80
        Text = 'Consulta'
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1440
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clBlack
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        MinWidth = 137
        Width = 137
      end>
  end
  inherited PNLForm: TPanel
    Width = 1917
    Height = 906
    inherited PNLPrincipal: TPanel
      Width = 1917
      Height = 906
      inherited PNLPrincipalRodape: TPanel
        Top = 906
        Width = 1917
      end
      inherited PNLPrincipalME: TPanel
        Height = 906
      end
      inherited PNLPrincipalMD: TPanel
        Left = 1917
        Height = 906
      end
      inherited PNLCadastro: TPanel
        Width = 1917
        Height = 906
        inherited PNLCadastroCabecalho: TPanel
          Width = 1917
        end
        inherited PNLCustomize: TPanel
          Width = 1917
          Height = 906
          inherited PNLCustomizeSumario: TPanel
            Top = 906
            Width = 1917
          end
          inherited PNLCustomizeConsulta: TPanel
            Width = 1917
            Height = 906
            inherited GBCadastro: TGroupBox
              Left = 0
              Width = 1917
              Height = 906
              Caption = '  Consulta  '
              inherited PCConsulta: TdxPageControl
                Width = 1913
                Height = 885
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Tag = 1
                    Width = 1913
                    Height = 885
                    Bands = <
                      item
                        Caption = 'Faturas'
                        Fixed = bfLeft
                      end
                      item
                        Caption = 'Acr'#233'scimos R$'
                        Visible = False
                      end
                      item
                        Caption = 'Descontos R$'
                        Visible = False
                        Width = 106
                      end
                      item
                        Caption = 'Recebimentos R$'
                      end
                      item
                        Caption = 'Instru'#231#245'es Banc'#225'rias'
                        Visible = False
                      end
                      item
                        Caption = 'Vendedores'
                      end
                      item
                        Caption = 'Empresa'
                      end>
                    DefaultLayout = False
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    PopupMenu = PMPrincipal
                    BandColor = clGray
                    BandFont.Color = clWhite
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    IndentDesc = 10
                    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                    PreviewLines = 3
                    ShowBands = True
                    OnCustomDrawCell = dbgConsultaCustomDrawCell
                    object DBGConsultaC_ID: TdxDBGridColumn
                      DisableEditor = True
                      Visible = False
                      Width = 67
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'C_ID'
                    end
                    object DBGConsultaDOCUMENTO: TdxDBGridMaskColumn
                      Color = clGray
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      MinWidth = 70
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DOCUMENTO'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                    end
                    object DBGConsultaCTNR: TdxDBGridMaskColumn
                      DisableEditor = True
                      Visible = False
                      Width = 80
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CTNR'
                    end
                    object DBGConsultaSTPD: TdxDBGridMaskColumn
                      DisableEditor = True
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'STPD'
                    end
                    object DBGConsultaRECO: TdxDBGridMaskColumn
                      Alignment = taCenter
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      HeaderAlignment = taCenter
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RECO'
                    end
                    object DBGConsultaDECD: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Width = 250
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DECD'
                    end
                    object DBGConsultaIDCD: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 47
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'IDCD'
                      DisableFilter = True
                    end
                    object DBGConsultaGRUPO: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Visible = False
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'GRUPO'
                    end
                    object DBGConsultaTITULO: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      MinWidth = 70
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TITULO'
                    end
                    object DBGConsultaDTFA: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTFA'
                    end
                    object DBGConsultaDTVC: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTVC'
                    end
                    object DBGConsultaVDUP: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      HeaderAlignment = taRightJustify
                      Width = 92
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VDUP'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VDUP'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaNAFA: TdxDBGridMaskColumn
                      DisableEditor = True
                      Visible = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAFA'
                    end
                    object DBGConsultaVJUR: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 60
                      BandIndex = 1
                      RowIndex = 0
                      FieldName = 'VJUR'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VJUR'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVMUL: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 60
                      BandIndex = 1
                      RowIndex = 0
                      FieldName = 'VMUL'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VMUL'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVDSC: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 85
                      BandIndex = 2
                      RowIndex = 0
                      FieldName = 'VDSC'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VDSC'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaDTPG: TdxDBGridDateColumn
                      DisableEditor = True
                      Visible = False
                      Width = 86
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'DTPG'
                    end
                    object DBGConsultaVPAG: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Visible = False
                      Width = 92
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'VPAG'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VPAG'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVPEN: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 92
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'VPEN'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VPEN'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaDEST: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 100
                      Width = 100
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'DEST'
                    end
                    object DBGConsultaDTBX: TdxDBGridDateColumn
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Visible = False
                      Width = 72
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'DTBX'
                    end
                    object DBGConsultaAPI_CA: TdxDBGridMaskColumn
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Width = 55
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_CA'
                    end
                    object DBGConsultaAPI_DTCA: TdxDBGridDateColumn
                      Width = 95
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_DTCA'
                    end
                    object DBGConsultaCDDP: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Width = 55
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'CDDP'
                    end
                    object DBGConsultaDTDP: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 95
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'DTDP'
                    end
                    object DBGConsultaAPI_NN: TdxDBGridColumn
                      Alignment = taLeftJustify
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      MinWidth = 60
                      Width = 60
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_NN'
                      DisableFilter = True
                    end
                    object DBGConsultaAPI_INFADCAD: TdxDBGridBlobColumn
                      Alignment = taCenter
                      HeaderAlignment = taCenter
                      Width = 30
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_INFADCAD'
                      MaxDisplayLength = 1000
                      MemoSelectionBar = True
                      PopupBorder = pbFlat
                      PopupHeight = 600
                      PopupWidth = 500
                    end
                    object DBGConsultaAPI_ST: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 100
                      Width = 100
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_ST'
                    end
                    object DBGConsultaAPI_MT: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 100
                      Width = 100
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_MT'
                    end
                    object DBGConsultaAPI_DTED: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 95
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_DTED'
                    end
                    object DBGConsultaDECV: TdxDBGridMaskColumn
                      DisableEditor = True
                      Width = 100
                      BandIndex = 5
                      RowIndex = 0
                      FieldName = 'DECV'
                    end
                    object DBGConsultaDECR: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 105
                      Width = 105
                      BandIndex = 5
                      RowIndex = 0
                      FieldName = 'DECR'
                    end
                    object DBGConsultaDEEP: TdxDBGridMaskColumn
                      DisableEditor = True
                      Width = 100
                      BandIndex = 6
                      RowIndex = 0
                      FieldName = 'DEEP'
                    end
                  end
                  object PNLINFADCAD: TPanel
                    Left = 0
                    Top = 885
                    Width = 1913
                    Height = 0
                    Cursor = crHandPoint
                    Hint = 'Informa'#231#245'es Adicionais'
                    Align = alBottom
                    Alignment = taLeftJustify
                    BevelOuter = bvNone
                    Color = clInfoBk
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold, fsItalic]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    object Bevel2: TBevel
                      Left = 0
                      Top = 0
                      Width = 1913
                      Height = 0
                      Align = alClient
                    end
                    object DBINFADCAD: TdxDBMemo
                      Left = 0
                      Top = 0
                      Width = 1913
                      Cursor = crHandPoint
                      Hint = 'Informa'#231#245'es Adicionais'
                      Align = alClient
                      Color = clInfoBk
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.BorderStyle = xbsNone
                      Style.ButtonStyle = btsFlat
                      Style.Edges = []
                      Style.Shadow = False
                      TabOrder = 0
                      DataField = 'INFADCAD'
                      DataSource = DTSCadastro
                      HideSelection = False
                      ReadOnly = False
                      HideScrollBars = False
                      ScrollBars = ssVertical
                      Height = 0
                      StoredValues = 64
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeCabecalho: TPanel
              Width = 1917
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 906
              Width = 1917
            end
            inherited GBMenuEdicao: TGroupBox
              Width = 0
              Height = 906
              Visible = False
              inherited SBMenuEdicao: TSpeedBar
                Height = 885
              end
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Tag = 245
      Top = 906
      Width = 1917
      Visible = False
      inherited PNLFormRodapeME: TPanel
        TabOrder = 1
      end
      inherited PNLFormRodapeMD: TPanel
        Left = 1917
        TabOrder = 0
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1917
    inherited siREL: TSpeedItem
      Left = 645
    end
    inherited siSAIR: TSpeedItem
      Left = 725
    end
    object SINovo: TSpeedItem
      Action = ACTFIN_REC_INS
      BtnCaption = 'Incluir'
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de T'#237'tulos'
      ImageIndex = 4
      Spacing = 0
      Left = 165
      Top = 5
      Visible = True
      OnClick = ACTFIN_REC_INSExecute
      SectionName = 'Menu Principal'
    end
    object SIAltera: TSpeedItem
      Action = ACTFIN_REC_EDI
      BtnCaption = 'Alterar'
      Cursor = crHandPoint
      Hint = 'Edi'#231#227'o de T'#237'tulos'
      ImageIndex = 5
      Spacing = 0
      Left = 245
      Top = 5
      Visible = True
      OnClick = ACTFIN_REC_EDIExecute
      SectionName = 'Menu Principal'
    end
    object SICancela: TSpeedItem
      Action = ACTFIN_REC_DEL
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelamento de T'#237'tulos'
      ImageIndex = 6
      Spacing = 0
      Left = 325
      Top = 5
      Visible = True
      OnClick = ACTFIN_REC_DELExecute
      SectionName = 'Menu Principal'
    end
    object SIRecebe: TSpeedItem
      Action = ACTFIN_REC_BXD
      BtnCaption = 'Receber'
      Cursor = crHandPoint
      Hint = 'Baixa de recebimentos dos t'#237'tulos'
      ImageIndex = 7
      Spacing = 0
      Left = 405
      Top = 5
      Visible = True
      OnClick = ACTFIN_REC_BXDExecute
      SectionName = 'Menu Principal'
    end
    object SICAD_CLI_EDI: TSpeedItem
      BtnCaption = 'Clientes'
      Cursor = crHandPoint
      Hint = 'Informa'#231#245's cadastrais do cliente'
      ImageIndex = 8
      Spacing = 0
      Left = 485
      Top = 5
      Visible = True
      SectionName = 'Menu Principal'
    end
    object SICAD_CLI_INF: TSpeedItem
      BtnCaption = 'Comercial'
      Cursor = crHandPoint
      Hint = 'Informa'#231#245'es comerciais do cliente'
      ImageIndex = 9
      Spacing = 0
      Left = 565
      Top = 5
      Visible = True
      OnClick = SICAD_CLI_INFClick
      SectionName = 'Menu Principal'
    end
  end
  inherited TConsulta: TIBTransaction
    DefaultAction = TARollback
    AutoStopAction = saNone
    Left = 592
    Top = 320
  end
  inherited SQLConsulta: TIBSQL
    Left = 624
    Top = 320
  end
  inherited QConsulta: TIBQuery
    Left = 592
    Top = 352
  end
  inherited Cadastro: TIBQuery
    AfterClose = CadastroAfterClose
    AfterScroll = CadastroAfterScroll
    OnCalcFields = CadastroCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      
        'SELECT CAST(PK.ID AS BIGINT) AS ID ,PK.IDEP,EP.FANTASIA AS DEEP,' +
        'PK.DTEV,'
      
        '       PK.DOCUMENTO,PK.DTFA,PK.CTNR,PK.STPD,PK.TPCO,PK.RECO,PK.C' +
        'DCX,'
      '       PK.TITULO,PK.DTVC,PK.VDUP,'
      
        '       PK.IDCD,IIF(POSITION(LEFT(CD.FANTASIA,10) IN CD.RAZAO) > ' +
        '0,CD.FANTASIA,CD.FANTASIA||'#39' '#39'||CD.RAZAO) AS DECD,CD.GRUPO,'
      '       PK.IDCV,CV.LOGIN AS DECV,PK.IDCR,CR.FANTASIA AS DECR,'
      '       PK.VJUR,PK.VMUL,PK.VDSC,'
      '       PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,'
      '       PK.CDBX,PK.DTBX,'
      '       PK.CDDP,PK.DTDP,'
      
        '       PK.API_ID,PK.API_CA,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.' +
        'API_ST,PK.API_MT,PK.API_INFADCAD,'
      
        '       NULLIF(TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) A' +
        'S VARCHAR(1064))),'#39#39') AS INFADCAD'
      'FROM fin_rec_ban_bai_004 AS PK'
      'JOIN  TAB_PAR_SIS      AS EP  ON (EP.ID = PK.IDEP)'
      'JOIN  CAD_CLI          AS CD  ON (CD.ID = PK.IDCD)'
      'JOIN  TAB_USER         AS CV  ON (CV.ID = PK.IDCV)'
      
        'JOIN  CAD_REP          AS CR  ON (CAST(CR.ID AS SMALLINT) = PK.I' +
        'DCR)'
      '),'
      'CTE_PSQ'
      'AS ('
      
        'SELECT PK.*,COALESCE(CRD.VCRD,0) AS VCRD,COALESCE(CRD.NAFA,0) AS' +
        ' NAFA'
      'FROM   PK'
      
        'JOIN   CAD_CLI_CRD AS CRD ON (CRD.IDCD = PK.IDCD AND CRD.IDEP = ' +
        'PK.IDEP)'
      ')'
      'SELECT DISTINCT PK.* FROM CTE_PSQ AS PK'
      'JOIN PED_VEN_CAB_004 AS FK ON (PK.CDBX = FK.CDBX)'
      'WHERE FK.DEPK LIKE '#39'219979%'#39
      'ORDER BY PK.DTEV DESC')
    Left = 592
    Top = 384
    object CadastroID: TLargeintField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"FIN_REC_BAN_BAI_004"."IDEP"'
    end
    object CadastroDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object CadastroDOCUMENTO: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_REC_BAN_BAI_004"."DOCUMENTO"'
      Size = 30
    end
    object CadastroDTFA: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTFA'
      Origin = '"FIN_REC_BAN_BAI_004"."DTFA"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CTNR"'
      Size = 30
    end
    object CadastroSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"FIN_REC_BAN_BAI_004"."STPD"'
      Size = 60
    end
    object CadastroTPCO: TSmallintField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'TPCO'
      Origin = '"FIN_REC_BAN_BAI_004"."TPCO"'
    end
    object CadastroRECO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'RECO'
      Origin = '"FIN_REC_BAN_BAI_004"."RECO"'
      Size = 3
    end
    object CadastroCDCX: TLargeintField
      DisplayLabel = 'Caixa'
      FieldName = 'CDCX'
      Origin = '"FIN_REC_BAN_BAI_004"."CDCX"'
    end
    object CadastroTITULO: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'TITULO'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_TITU"'
      Size = 30
    end
    object CadastroDTVC: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'DTVC'
      Origin = '"FIN_REC_BAN_BAI_004"."DTVC"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroVDUP: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VDUP'
      Origin = '"FIN_REC_BAN_BAI_004"."VDUP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroIDCD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCD'
      Origin = '"FIN_REC_BAN_BAI_004"."IDCD"'
    end
    object CadastroDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      ProviderFlags = []
      Size = 121
    end
    object CadastroGRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"CAD_CLI"."CLI_DEGP"'
      Size = 30
    end
    object CadastroVCRD: TIBBCDField
      FieldName = 'VCRD'
      Origin = '"CAD_CLI_CRD"."VCRD"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNAFA: TSmallintField
      FieldName = 'NAFA'
      Origin = '"CAD_CLI_CRD"."NAFA"'
    end
    object CadastroIDCV: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCV'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CVEN"'
    end
    object CadastroDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'DECV'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CadastroIDCR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCR'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CREP"'
    end
    object CadastroDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldName = 'DECR'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object CadastroVJUR: TIBBCDField
      DisplayLabel = 'Vl. Juros'
      FieldName = 'VJUR'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VJUR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVMUL: TIBBCDField
      DisplayLabel = 'Vl. Multa'
      FieldName = 'VMUL'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VMUL"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VDSC'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VDES"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroDTPG: TDateField
      DisplayLabel = 'Pagamento'
      FieldName = 'DTPG'
      Origin = '"FIN_REC_BAN_BAI_004"."DTPG"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroVPAG: TIBBCDField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'VPAG'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VPAG"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVPEN: TIBBCDField
      DisplayLabel = 'Vl. Pendente'
      FieldName = 'VPEN'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VPEN"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"FIN_REC_BAN_BAI_004"."DEST"'
      Size = 30
    end
    object CadastroCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"FIN_REC_BAN_BAI_004"."CDBX"'
    end
    object CadastroDTBX: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'DTBX'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_DBAI"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroCDDP: TSmallintField
      DisplayLabel = 'Envio'
      FieldName = 'CDDP'
      Origin = '"FIN_REC_BAN_BAI_004"."CDDP"'
      DisplayFormat = '0'
    end
    object CadastroDTDP: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTDP'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_DTDP"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroAPI_ID: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'API_ID'
      Origin = '"FIN_REC_BAN_BAI_004"."API_ID"'
    end
    object CadastroAPI_CA: TSmallintField
      DisplayLabel = 'Carteira'
      FieldName = 'API_CA'
      Origin = '"FIN_REC_BAN_BAI_004"."API_CA"'
      DisplayFormat = '0'
    end
    object CadastroAPI_DTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'API_DTCA'
      Origin = '"FIN_REC_BAN_BAI_004"."API_DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroAPI_DTED: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldName = 'API_DTED'
      Origin = '"FIN_REC_BAN_BAI_004"."API_DTED"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroAPI_NN: TLargeintField
      DisplayLabel = 'Nosso N'#186
      FieldName = 'API_NN'
      Origin = '"FIN_REC_BAN_BAI_004"."API_NN"'
    end
    object CadastroAPI_ST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'API_ST'
      Origin = '"FIN_REC_BAN_BAI_004"."API_ST"'
      Size = 30
    end
    object CadastroAPI_MT: TIBStringField
      DisplayLabel = 'Motivo'
      FieldName = 'API_MT'
      Origin = '"FIN_REC_BAN_BAI_004"."API_MT"'
      Size = 120
    end
    object CadastroAPI_INFADCAD: TMemoField
      DisplayLabel = 'obs'
      FieldName = 'API_INFADCAD'
      Origin = '"FIN_REC_BAN_BAI_004"."API_INFADCAD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object CadastroINFADCAD: TIBStringField
      DisplayLabel = 'obs'
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 1064
    end
    object CadastroC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  inherited DTSCadastro: TDataSource
    Left = 624
    Top = 384
  end
  inherited TEdicao: TIBTransaction
    Left = 656
    Top = 320
  end
  inherited SQLEdicao: TIBSQL
    Left = 688
    Top = 320
  end
  inherited SPEdicao: TIBStoredProc
    Left = 720
    Top = 320
  end
  inherited QEdicao: TIBQuery
    Left = 656
    Top = 352
  end
  inherited TEvent: TIBTransaction
    Left = 752
    Top = 320
  end
  inherited SPEvent: TIBStoredProc
    Left = 784
    Top = 320
  end
  inherited EEvent: TIBEvents
    Left = 816
    Top = 320
  end
  inherited TSEdicao: TIBTransaction
    Left = 848
    Top = 320
  end
  inherited SQLSEdicao: TIBSQL
    Left = 880
    Top = 320
  end
  inherited QSEdicao: TIBQuery
    Left = 848
    Top = 352
  end
  inherited SQLEvent: TIBSQL
    Left = 624
    Top = 352
  end
  inherited ALPrincipal: TActionList
    object ACTCAD_CLI_INF: TAction
      Category = 'Sistema'
      Caption = 'Comercial'
      Hint = 'Informa'#231#245'es comerciais do cliente'
      OnExecute = ACTCAD_CLI_INFExecute
    end
    object ACTCAD_CLI_EDI: TAction
      Category = 'Sistema'
      Caption = 'Clientes'
      Hint = 'Informa'#231#245'es cadastrais do cliente'
      OnExecute = ACTCAD_CLI_EDIExecute
    end
    object ACTFIN_REC_INS: TAction
      Category = 'Sistema'
      Caption = 'Incluir'
      Hint = 'Inclus'#227'o de T'#237'tulos'
      OnExecute = ACTFIN_REC_INSExecute
    end
    object ACTFIN_REC_EDI: TAction
      Category = 'Sistema'
      Caption = 'Alterar'
      Hint = 'Edi'#231#227'o de T'#237'tulos'
      OnExecute = ACTFIN_REC_EDIExecute
    end
    object ACTFIN_REC_DEL: TAction
      Category = 'Sistema'
      Caption = 'Cancelar'
      Hint = 'Cancelamento de T'#237'tulos'
      OnExecute = ACTFIN_REC_DELExecute
    end
    object ACTFIN_REC_BXD: TAction
      Category = 'Sistema'
      Caption = 'Receber'
      Hint = 'Baixa de recebimentos dos t'#237'tulos'
      OnExecute = ACTFIN_REC_BXDExecute
    end
  end
  inherited ILMenuPrincipal: TImageList
    Bitmap = {
      494C01010A000E0004003E002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000F800000080000000010020000000000000F0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F3F2FFF6F6F6FFF8F8F8FFFAF9FAFFFEFD
      FEFFFCFAFCFFF8F5F7FFF7F6F7FFFAFAFAFFF8F8F8FFF9F9F9FFFEFDFEFFFAFA
      FAFFF6F6F6FFF1F1F1FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BE63AEFFB28096FFBB7D9BFFB39192FFB89190FFBD9594FFC59B
      92FFD1A196FFB17F7CFF63414BFF36212FFF462324FF6E3425FF6E362CFF6E38
      2EFF723F3AFF7A4641FF7F4C47FF834E47FF8B5149FFBD7E6CFFE2A98EFFE0A9
      8FFFE4AE93FFE3AB90FFDBA28DFFCF9583FFC08379FFB57875FFAE7170FFAC6F
      70FF9C6269FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF4F4F4FFF8F8F8FFFEFBFEFFF8F3F8FFEBE6EAFFC8C0C7FF979297FF7C7B
      7CFF707670FF565A56FF4F4F4EFF606060FFDCDBDCFFC5C6C5FF6F756EFFA4A3
      A5FFE7E3E7FFFDFBFDFFF5F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085778BFF957393FF9F7E9DFFA58A9DFFAF8F9DFFB999A0FFC9A0
      9BFFDCB0A6FF895F55FF2B0D00FF62320CFFB15915FFD77120FFC86613FFB455
      0AFFA44D0AFF964002FF8A3500FF812B00FF742100FFA45A38FFE7B29AFFE5B1
      95FFECB7A0FFE8B6A2FFE0A996FFD19687FFBF7F7DFFB37575FFB37571FFA86C
      6EFF8A5766FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F2F2FFFDFB
      FDFFF2ECF1FFD5D1D5FFA0A7A0FF657867FF3E5B41FF2D4F2FFF17461BFF0D43
      12FF094510FF023A09FF002500FF000700FF464B48FF3F453FFF001000FF1628
      15FF404C3FFF818281FFECEAECFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C4271FF5C4F7EFF6F5F94FF846F9CFF947D9FFFB295A6FFCDA3
      9FFFD8AEA8FFC59681FFD59B6FFFEDB186FFF0B68AFFE7AE81FFE9B181FFE6AB
      76FFDE9C5EFFE8A56BFFE7A064FFE99959FFDF884DFFD89771FFE3AF97FFEBB7
      9FFFF2C1ADFFEDBDAAFFE0AC99FFCB8E84FFB87875FFB7776EFFB27170FF9159
      6AFF78485FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF9F8F8FFF8F7F8FF9CA2
      9DFF446646FF2C6C32FF176C20FF177220FF1A7925FF1E7F2AFF26872FFF2A8A
      33FF288632FF217A2BFF196D22FF0A3D10FF010703FF012505FF07390DFF052F
      09FF0A400CFF084A0BFF859485FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C3133FF63434FFF372D5DFF3E3777FF504582FF9379A4FFD0A4
      A0FFE1B1A3FFE6B7ACFFE1B6A8FFD8B0A3FFDCB4A5FFDDB6A7FFDFB6A2FFDEB4
      9CFFDCB198FFE4BAA2FFF0C5B0FFF4C8B4FFEDBEA7FFE8B49AFFE5B198FFF2C2
      AEFFFACDB7FFF6C7B2FFD89E90FFBD7D73FFBA7768FFB1716EFF875469FF6F44
      60FF68415EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F1F1FFF8F8F8FFDEDBDDFFBFBEBEFF2359
      28FF14751DFF2D9438FF3BA646FF3CAF49FF39B748FF38B646FF37B243FF3BB2
      46FF38B046FF32A03BFF2C9735FF207B28FF0B2C0CFF25922FFF249430FF1762
      20FF105118FF0D6A16FF689369FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008B4713FFCB7840FF5A3930FF0E143BFF34284AFF332B5BFFCC9D
      99FFE4B5A1FFDFB6A4FFDEB6A5FFDFB7A7FFE5BEADFFE3BBA7FFE2B9A3FFE5BC
      A8FFE4BCA8FFE0B7A3FFE9C3B0FFEBC1ABFFF1C0A4FFF3C1A8FFF4C5AFFFFCD4
      BDFFFDD9C3FFDAA594FFB27469FFAB6B5DFF965F61FF6C4358FF503248FF492E
      40FF442A34FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF3F4
      F5FFF6F7F8FFFAFDFFFFF9FDFFFFF6FCFFFFE6EBEFFF515152FF292B29FF2167
      27FF2A9634FF37AB42FF40BB4DFF42C050FF45C353FF4BC657FF4AC456FF44C5
      54FF41C551FF38B845FF31AB3CFF32AE3DFF37A442FF59E26AFF4CD15CFF2B92
      36FF196A20FF107219FF729C74FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000445287FF5E6198FF4B5694FF3F55A1FF2E3568FF32488DFFC4AC
      B0FFE7C0A6FFDBB7A3FFD5B0A1FFCEA797FFD0AE9EFFD1B1A1FFCDAD9FFFD8BE
      B2FFDEC7BDFFE4D2CAFFE9DCD4FFEDE3DBFFF0E6E0FFF9F0EAFFFFF6EFFFFEF6
      F0FFF6F2EEFFB0806AFF8C4925FF8F5338FF824C39FF885036FF935B3AFF9C67
      43FFA06D44FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFEFEFEFFFF8F8F9FFF6F9FCFFE8EB
      F0FFD3CFD2FFB8ACA8FFA3948FFF9F8479FF7A614DFF07290CFF000E00FF1F75
      26FF3CBD48FF4CD25BFF66E776FF73E981FF76E984FF7AEA88FF79EC8AFF74ED
      87FF6DED80FF5BE36DFF49D458FF47D357FF5BE96EFF72EE87FF62DB75FF40BE
      4FFF269230FF12851CFF88AF8BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005879D1FF4A70DEFF5076E4FF5375DAFF3A5CBCFF5273D6FFA0A5
      D1FFF1E7DAFFDFD7D2FFE0D7D4FFE9E2DFFFEEE9E7FFF6F5F5FFF9F9FBFFFEFF
      FFFFFFFFFFFFFFFFFFFFF4F7F8FFEFF3F6FFEFF4F8FFEAEBEBFFF8FBFAFFFFFF
      FFFFF9FEFFFFDBCEC4FF874E3BFF905545FFA6634BFFC07A5AFFCE8661FFC679
      55FFC37752FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F1FFFEFEFEFFD6D6DBFF9F8878FF9D6D
      33FF975718FF934B00FF985000FFAA5A00FF914B00FF144911FF1B7628FF309F
      3BFF4FD460FF64E676FF82F491FF8DF79BFF90F59CFF92F59FFF8DF6A0FF93F9
      A5FF95FBA3FF82F493FF6DE87FFF59E06AFF57E069FF5EE26FFF59DB6BFF40C9
      4EFF2BAA37FF148D1EFFA2BCA3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000728BD3FF597ADFFF597FDFFF6B8ADBFF6587DDFF7389D5FFDFDB
      E2FFF0ECE6FFF0F1F1FFFEFFFFFFFEFDFAFFFFFFFFFFFAF5EFFFFBF3EAFFFAF1
      E8FFE8D5C2FFF6E1D0FFFFFFFFFFE3C6A9FFCA976BFFCD9768FFDAB896FFFFFF
      FDFFFAFBF7FFF7FAF5FFA4878AFF75444CFF85545AFF8F5D62FFB78077FFE7A7
      93FFDC9379FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F6F6FFE0E8ECFF89685EFF8C4100FFC178
      00FFC68400FFC88B00FFC88C01FFC98C02FFB77600FF27470BFF1E932FFF38B3
      44FF57D767FF6BE87BFF82F392FF8EF9A0FF92F59FFF91F59EFF92F8A1FF97F9
      A9FF9DFAAAFF97FBA5FF8CF39AFF79EC86FF60DF71FF5DDA6CFF54D463FF3FC7
      4BFF26B232FF15891CFFC2CCC2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008CA7DFFF6890EBFF6C93EBFF7E9EE8FF7594DCFFC9C8D6FFF8ED
      DFFFEBE7E1FFF9F8F7FFFEFBEEFFF4DDC2FFFAF7F1FFE1CBB4FFD7B089FFE1BC
      99FFD0AE8CFFCF935EFFFFF9F1FFF4E4D0FFCB8F5AFFC6844BFFC58A55FFF1E1
      D0FFFFFFFFFFF9FBF5FFDAD3D2FF402C39FF302236FF2D1F2DFF231628FF4032
      3EFFBD9386FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0A9A7FF2D282EFF793E0CFFC37A00FFD29F
      03FFD7A802FFDAAE02FFDDB302FFDCAF02FFDAA201FF373401FF0E6C20FF3CBF
      49FF5CD86DFF70E67FFF84F293FF92F79FFF94F8A2FF95F8A3FF95F9A6FF9BFA
      AAFF9AF9ABFF99FAA9FF96F9A5FF90F89FFF80EF8FFF77E585FF63DF72FF42D1
      50FF13A11DFF2A7B2EFFE7E6E8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000091AEE8FF7197ECFF7498EBFF7E99DEFF7089DFFF6471A4FFBABB
      B5FFFFFFFDFFFEFFFAFFFDF9F0FFF8ECD9FFEEE8D8FFEAE5D8FFE7DDC9FFE6D5
      BEFFEAE0D2FFBF9267FFE9C09DFFFFFFFFFFF6F2E0FFDDC1A3FFCA8D59FFD4A6
      7EFFFFFFFBFFF6F8F6FFFFFEF9FF666262FF000000FF000000FF000000FF0000
      00FF020306FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AC9490FF2D0000FF824700FFD59B02FFEED0
      05FFF6DF06FFF5DC05FFF4DC06FFF3DA03FFFDE405FF6B5500FF023613FF38C1
      49FF55D465FF74E682FF84EC90FF92F59FFF97F7A6FF9EF8ACFFA3FAAEFFA2F9
      B3FFA2F7B3FFA3FAB5FFA3FAB1FF9BFAA7FF93F8A3FF85EF93FF66EA75FF38CE
      47FF06780EFF6A8A6CFFFBF7FBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009BB5F3FF89A9F4FF5E7DDCFF5473D3FF6887E4FF394C8BFF4E54
      6CFFFAF9EFFFFFFFEFFFFAF6EBFFEDDFD0FFEDDFCDFFF1ECDEFFFAF9EAFFFAF8
      E9FFF5F5E9FFDBCBB5FFC28956FFFCE9D9FFFDFFF6FFF2F4E8FFE8D8C5FFCA98
      6CFFF1DBC4FFFCFEFFFFF9FAF3FFD3CDC9FF3E292DFF38252DFF3B282FFF3C28
      30FF39262FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BBAEB1FF853200FFAF6200FFD3A203FFEED1
      03FFF7DF03FFFAE303FFF9E104FFF5DD03FFFFEC04FFA48C01FF031706FF2DAC
      3DFF4CD15BFF6ADF78FF86ED93FF93F49EFFA3F9ADFFA4FAAEFF90FA9FFF95F9
      A5FFA9FBBBFFB2FEC3FFA9FBB5FF9EFCA7FF96F8A3FF7CEF8CFF57E967FF1FB6
      2DFF18681EFFB4BAB6FFFAF8FAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4C5FFFF81A5FBFF7F9AEEFF829CE1FF657AAEFF5C70ACFF4457
      A4FFA0A2B7FFFFFFF2FFF3EEDFFFECE5D7FFEDDCCBFFFAF0DEFFFDFCEBFFFDFA
      E9FFF1EDDDFFEDEBDEFFE2D2BAFFF7D2B4FFFDF7E6FFF0EEDFFFEEEEE2FFE7DB
      CAFFF4E5CFFFFEFAEFFFEEECE0FFF7F8F0FFB08A89FF895558FF8E5B5EFF8C59
      5BFF8D595AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D2D7FF7A350EFFB15E00FFD09C03FFE5C0
      03FFECCD03FFF2D603FFF4D903FFF2D803FFF6DB02FFEDCE02FF665800FF1572
      26FF43D655FF48C755FF67E176FF6BF07FFF60F876FF44F95CFF50F96CFF6DFA
      85FF7BFB91FF9FFCAEFF99F7A4FF88F596FF95F4A2FF68EB79FF3EDB4FFF007F
      0AFF6E8A6FFFFBF5FBFFF3F2F3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006A7A9CFFA6A7B9FFEAECECFFCEC4C4FF6474A6FF6A80B8FF5E78
      C3FF475C9DFFD9D3CAFFFAF0E1FFECE6DAFFEFDECEFFFBE7D1FFFDF6E3FFFCF8
      E7FFEFE8D8FFEAE4D6FFF4F3E6FFFDF5E3FFFDF7E8FFF2F0E4FFECE8DDFFEEEB
      E2FFFAF9F0FFFEFBF2FFF0EDE6FFF2F5F3FFE2D3CEFFBF8976FFD6A48EFFDCAD
      96FFE5B59EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF1F4FF644342FF8E3D00FFC68803FFDBAE
      03FFE3BD03FFECCE03FFF2D603FFF2D703FFF1D303FFFADC03FFDABA01FF2250
      05FF2CB241FF38CE46FF20BE2EFF3CED51FF5AF76EFF96FCA6FFB4FEC6FF80FE
      99FF69FD83FF74FA8BFF72FA89FF51F469FF56E767FF42DD52FF11A71EFF2B5E
      2EFFE0DCE0FFF9F8F9FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000350C00FFAD8C68FFFFFFE6FFD2CAC7FF738ABFFF8298C8FF7D94
      D0FF6984D2FFA0A4CBFFF6DFD2FFEFE5D9FFEFE5D8FFFCEEDDFFFDF7EDFFFEFC
      F4FFF7F5EFFFF2F1ECFFFBFAF6FFFEFFFBFFFEFEFCFFF1F0EFFFEDEDEDFFEFF0
      F0FFFDFDFEFFFFFFFFFFF1F2F3FFEEEFF0FFF7F7F6FFCBA48FFFBD9177FFC59E
      85FFC69F84FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFDFEFF76727DFF713100FFBE7501FFD5A4
      03FFE1BB03FFE9C803FFE4B403FFE9BE03FFEFCE03FFECCF03FFF6CE03FF6C78
      00FF0B6C23FF2FC741FF0CAB17FF70F77FFFBBFFCAFFBDFFC8FFB0FFBAFF77FE
      8CFF4AFC63FF72FA84FF71FD89FF4BFC66FF33E947FF12B51FFF005804FF9A99
      99FFFFFFFFFFEFEFEFFFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521900FF9A7255FFFFFFFEFFDCE3E8FF7DA0DCFF6381C0FF6A85
      C3FF859DDBFF889FE8FFBFB6CEFFF5D9CAFFEFE4D7FFFDF8EAFFFFFFFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFAFAF9FFEFF1F2FFEEF1F3FFF4F7
      FAFFFFFFFFFFFFFFFFFFF3F5F6FFEEF0F1FFF9FBFEFFE9E0D9FFCBB7A7FFC4AE
      A0FFB39D92FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FFD3D9E0FF6B553CFFAE6900FFB46B
      03FFC37F03FFCE8A03FFD19505FFDEB004FFDDAB03FFE3B703FFEABC03FFC99E
      02FF374703FF0A5E17FF0A8F13FF329D39FF2CA331FF0D9D12FF089F0CFF0DB1
      15FF0DB316FF19AA22FF1CAB26FF1CAD28FF1A9E24FF134D16FF818581FFF4F2
      F4FFF5F4F5FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C6852FFC0927BFFC0A8ACFF8E8397FF9CAECEFF90AEE0FF88A2
      D8FF9EB5EAFF99AEEBFF879ADEFFD5BCBFFFF8DDCBFFF4E9DAFFFDF8EBFFFFFF
      FFFFFCFAF6FFFCFAF6FFFBF7F3FFF8F1ECFFE9E1D8FFE3D8CDFFE5DDD3FFECE2
      D6FFE9D7C4FFEADED0FFE6DDD2FFEBDFD4FFF5EBE1FFFFFFFFFFFFFFF2FFFFFE
      EDFFFFFFF3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFFEFFFFFFC0C4C8FF785015FF7C18
      00FF9A4603FFDDAA06FFE7B808FFE7B205FFDA9202FFDCA103FFD89F03FFCE77
      02FF853200FF230D0BFF28552DFF004700FF002100FF001500FF002200FF063E
      09FF0C4110FF012405FF002E00FF004400FF344C34FFC2BAC2FFFFFCFFFFF5F5
      F5FFEFEFEFFFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCD6BAFFFFDBBBFFBE8D74FF2D1D25FF1E1916FF848F9EFFB9D1
      FDFFAEC5F7FFA5BAF7FF819EF1FF8B97CEFFDEBEBBFFF2D7C4FFE7CDB8FFE3C4
      A7FFDCAA7FFFE0AF84FFCB9463FFC48E5BFFCA9666FFCC9768FFD29E6FFFB373
      39FFA75F20FF9F5F25FF92581FFFA46733FFDC9969FFF6E5DAFFFEFAF4FFFDF1
      E5FFFBEBD9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF1F1F1FFFEFFFFFF8A8C8BFF4B0B
      00FF641000FFB04002FFCB4202FFB83B02FFB35502FFC26E03FFD66703FF9229
      00FF301A0DFF919392FFEAD2EBFF7B877DFF032207FF146319FF2D9428FF2E93
      2EFF3DAB4DFF22A533FF004101FF555354FFEEE3EEFFFFFFFFFFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000087663CFF7D613BFF71502BFF5E3F24FF583B1DFF7D6042FFA3B4
      D2FFACCDFDFFA1C0FFFF96B5FFFF7C9BEAFF6D82D3FFBBB4D2FFDEBFA4FFC07E
      49FFC78A58FFD5AB84FFD4A67EFFD19C6DFFDCAB81FFE8BA95FFE4AC7EFFA762
      24FFAF6A2EFFB27642FFB48051FFC49A74FFE3B896FFE5BEA1FFFDFDFDFFFFFF
      FEFFEFE3D8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF6F6F5FFE5E9EBFF7D77
      74FF482528FF530D04FF5E2602FF692E02FF6C3A02FF562801FF5E1901FF5D31
      29FF9996A2FFFBB0FEFFFDC8FBFF6DA170FF1B861EFF29A12BFF31A930FF2897
      2CFF24872EFF1B8B24FF15991BFF3D9D43FFCDCACDFFFFFAFFFFEFF0EFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000231100FF341C00FF361E00FF40280BFF312317FF190F03FF362A
      20FF907F76FFCFC8CCFFC0CCE7FFA8C1FAFFA7BDF9FFACBDEBFFE4D7C4FFC99A
      6DFFE0D1BDFFE6E1D1FFDDCEB8FFCEAF8EFFC28B58FFDEB48CFFDDB38AFFB66F
      31FFB97C45FFC1905FFFC89E75FFCD9B6FFFC58758FFCA9269FFF9F2EDFFFFFF
      FEFFF3E5D8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFEFEFEFFFF7F6F6FFFFFF
      FFFFA9ADB1FF5E4212FF7F5200FF7E4B03FF733C03FF6C3001FF552402FF848A
      79FFFFA2FFFFFF71FFFF84B084FF21AA24FF2AB931FF2ABB32FF32C33BFF35C7
      41FF30C03BFF2BB133FF37AE3BFF37BC3AFF489B4FFFDDD9DDFFF7F5F6FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004F3A47FF574D57FF4B4557FF210E00FF3A2714FF88654BFFCE9F
      7EFFE3B394FFF0C09FFFFCCBA5FFE7BA95FFA69A8CFFFFFEF4FFF4F4E7FFDAC2
      A2FFCAA57DFFCEA783FFD6B08AFFE1BE99FFEDCBAAFFF5DDC3FFE9D4BAFFB783
      51FFC4996FFFBD8859FFB27840FFCE9D6FFFEBC7A8FFF2D8C0FFF4E2D3FFFEFE
      F6FFF0E1D1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0EFFFF9FAFCFFC1C3
      C3FF79592DFF854100FF803902FF873F03FF823D03FF7B3803FF975F00FF8962
      0CFFC1BAC5FFDEE4E1FF35A13AFF1DB424FF1FB628FF32C53BFF5CD967FF68DB
      75FF51D25FFF32C03DFF2FBE3AFF47CE52FF2EC039FF80AD82FFFFF7FFFFF1F1
      F1FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006077CCFF5E79D2FF4C63B6FF51486CFFCB9475FFFBC8A3FFEEC3
      A7FFEAC0A2FFE6B998FFEDB790FFFAB987FF96714FFFDBDCD4FFFFFFF6FFF2E1
      C8FFF1D5B8FFF6DCC1FFF7DEC3FFF5DBBFFFF4D6B8FFEFD0B0FFEAA06AFFDCBA
      9CFFDECEB8FFE4D4BEFFECDCCBFFF7EDE4FFFAF3EDFFF9F1E5FFF7EFDFFFFEFA
      EDFFECD6C1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF2F2F2FFF4F7F8FF8E79
      5BFF723400FF7F3102FF904803FFA86D03FFA66703FF8A3F03FF945102FFAC7A
      00FF9E7D69FFA7C9B5FF259E2CFF25B72CFF26BE2EFF3DCB49FF7DE48BFF96EA
      A4FF70DF84FF41C750FF2BB535FF31BD3BFF3ACC42FF57A45BFFE8DFE8FFF5F4
      F5FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000087A3EEFF627BC9FF6782D1FF617CD6FF6E6186FFC08F78FFDDAB
      85FFE2B28DFFE1B28DFFE2B28DFFEDB990FFC99468FFB5AB9FFFFFFFFBFFFAF0
      DCFFF2DBBEFFF3DCC2FFF2DCC1FFF1E0C7FFEFE1CBFFF4F2E5FFBE8E5FFF9179
      65FFF6F4EEFFF4F4EAFFFFFBEFFFFEFFFBFFFFFFFDFFFFFFF2FFFFFAECFFFFF5
      E7FFFEF3E3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF6F7F8FFE0DFDBFF834A
      19FF883C00FF7A2C03FFAD6F03FFD9B303FFDCB903FFA76803FF8C4403FF9D5E
      01FF7F4713FF326640FF29B733FF23AF2AFF1BAF26FF44CD53FF97EDA4FFABFA
      C1FF90F0A9FF5DD66FFF3BC347FF32B93BFF2ABE31FF319537FFB5B8B5FFF9F7
      F9FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CB5F7FF6781D7FF627ED0FF546BC6FF2F4199FF827499FFF1BF
      9BFFE7B999FFE5B896FFE4B691FFE3B592FFE5B28BFFB4967CFFF1F0E5FFF8F2
      E3FFF6F1E0FFF6F4E4FFF4F2E3FFF1EBDEFFEFE9DBFFEFEBDEFFD4C3AAFF532D
      05FFBEAE9BFFFAEEDBFFFFF7E9FFFFFFF1FFFFFBEDFFFFE9DCFFFFE8DCFFFFEB
      D8FFFFECD9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF8FAFBFFC6BEC2FF7942
      0BFF7D3700FF6C1703FFC28A03FFF3DD02FFEDD403FFBC8503FFA36303FF9A56
      03FF622100FF053303FF29B833FF119B1AFF19B125FF46D35DFF82EFA2FF82F8
      A4FF7CEB99FF67D97AFF45CB52FF38C243FF27BC2EFF248028FFB0B3B0FFF9F8
      F9FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1E4FFFF91AAF5FF6B86DFFF6A82DCFF8690CDFFF2D5C8FFFECA
      AAFFF1C6A9FFE9C0A3FFE7BC9DFFE8BC9DFFEBBD9BFFCFA07BFFDBD1C1FFF0EA
      DDFFECE7DAFFEDEBDCFFF0EDE0FFF6EFE2FFFCF4E5FFF1E4D1FFF5E8DAFFB393
      70FF66462BFFD1C6BBFFCCB9A6FFBB9B7EFFB48562FFA86D45FFA6693AFFC8B7
      B4FF777AA9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF8FAFAFFD1CCD0FF6C31
      0FFF601200FF752403FFD2A603FFE9CD03FFD6AA03FFB87D03FFA46703FF9D59
      01FF67270EFF2F4F32FF19A723FF0A9B15FF26BB37FF67E180FF6FE994FF55E4
      7BFF61DD7CFF64DB74FF45CD4FFF3BC544FF24BB2CFF358039FFD2CED2FFF7F6
      F7FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000696C6BFFC8D9FEFF9DADD9FF7B869CFF665456FFEBCEAFFFFFE5
      CEFFFAC8A8FFF6C9AAFFEEC2A6FFEAC0A3FFEAC2A5FFE5BA98FFE0C8ABFFFFFD
      F2FFFBF5E9FFF2ECE0FFE3DBCEFFCEC3B3FFB8A791FF9E8B76FF836D55FF664C
      35FF985D2DFF894612FF422507FF6C5B61FF653409FF683000FF3C292EFF2C38
      84FF3B51A5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF4F5F5FFEBEDEEFF5E40
      3DFF490000FFC28E05FFFFF206FFBD8202FF9D5603FFB07703FFA16303FF8948
      00FF71504BFFB5B9BBFF19891FFF16BA26FF89ED98FFE3FFEAFF7EE897FF1BBE
      35FF45D158FF5AE066FF3BC141FF3AC241FF1A9E20FF6E896FFFFBF5FAFFF3F3
      F3FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080000FF998B71FF3E2E21FF0F0000FF180200FF5F4126FFF8E4
      C7FFFFE3CAFFFBC8A7FFFCCDAEFFF8CFB1FFF3CCB1FFF2C7A8FFDAB797FF8D86
      7BFF8C755BFF6F5537FF573B1AFF482C0AFF402200FF3C1C00FF3F1E00FF3116
      00FF82603BFFE68836FF5A476BFF5069DEFF333274FF292A57FF283F9CFF4762
      C1FF6688D4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0EFEFFFFCFCFCFFB6BC
      C1FF432C27FFD0A300FFBD9A05FF4D1501FF894903FFA36C03FF894D00FF5031
      06FFB0B2B7FFFFFFFFFF587558FF25B637FFE0FFEEFFE9FFF1FF3DB949FF079F
      10FF3ED348FF42D54BFF34B53BFF38BF40FF226025FFD3CFD3FFFBFAFBFFEFEF
      EFFFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C0A00FF150500FF0F0300FF2B1600FF301B00FF230C00FF6B4E
      35FFE2CFB6FFFFE6CEFFFBCBADFFFCCDADFFFDCEADFFFFD1B1FFEFCCAAFF3825
      12FF250D00FF462600FF452700FF472900FF492A00FF4C2C00FF4E2B00FF4325
      00FF51320EFFAB877BFF7B6C98FF4F6AD1FF5577D5FF6185E0FF7DA2EEFF7DA5
      F3FF83A9F3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFFEFF
      FFFFA0A5A8FF603A0FFF571200FF572200FF9C6700FF965F00FF582D00FF6F6B
      6DFFF6F9F9FFFDFDFDFFC0BABFFF206E29FF81E497FF6CE57EFF008706FF22B1
      2AFF46DC4DFF3DD645FF28A22EFF15691AFF79837AFFFDFAFDFFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000220F01FF110400FF130701FF301A01FF2F1900FF372000FF250F
      00FF472714FFE8D2B7FFFFE7CFFFFBCAAAFFFCD1B3FFFCD2B5FFFFE5C5FFBDA1
      82FF120500FF522E00FF522E00FF512E00FF502D01FF542E00FF4E2C00FF4D29
      00FF674016FF7E9AEEFFA393AEFFAB929BFF678CE1FF5C78CFFF5471CEFF7398
      EEFF86B2F5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1
      F1FFFAFCFBFFB9BAC3FF8A7772FF94744DFF896E49FF908272FFB2ADAAFFEFF0
      F3FFF4F4F4FFF0F0F0FFFCFAFCFFB3B2B3FF417544FF13881CFF27A734FF34BB
      3FFF30BA3AFF32AC38FF467F49FF8A8E89FFF1EFF1FFF4F4F4FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000210E00FF1A0901FF1C0C00FF321B00FF2F1800FF321C00FF341E
      00FF2B1200FF604021FFEEE0C7FFFEE1C9FFFCD3B6FFFCD3B4FFFED7BAFFFCE2
      C0FF483824FF280C00FF3B1C00FF412400FF472A01FF4B2B01FF422601FF4D2A
      01FF472400FF7E87ADFF767BC4FFC17344FF3C3779FF1D34A3FF405BCFFF7093
      ECFF83ABEEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1F1F1FFFCFDFDFFF8FCFEFFE8ECF2FFE7EAF1FFF6F9FEFFFCFDFEFFF3F3
      F3FFEFEFEFFFF0F0F0FFF0F1F0FFFCFAFCFFF0E7EFFFC5C3C4FF99AC9AFF83A7
      85FF87A38AFFAFB5AFFFEAE4EAFFFEFCFEFFF4F4F4FFEFEFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000371D01FF261100FF251200FF331A01FF2D1700FF2C1701FF381F
      01FF3D2401FF260C00FF8D694CFFFFF6E1FFFDDCC2FFFCCFAFFFFCD3B4FFFFDB
      BCFFE5C8A8FFA6896EFFA68A6AFF88643BFF542F04FF4F2C01FF512D02FF4F2A
      01FF5E340FFFD2C6B4FF9AC0FFFF9A8DACFF9C655EFF4C6CD5FF7FA0F9FF9EBD
      FAFFCFDDF7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F1FFF3F3F3FFF3F3F3FFF1F1F1FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F3FFFCFAFCFFFCF5FCFFF7ED
      F6FFFBF2FAFFFEFAFEFFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002F1800FF271200FF2D1700FF321A00FF291300FF321A01FF3C22
      01FF3D2301FF2E1400FFA77859FFFFF2DDFFFCE8D3FFFCD7BCFFFCCFB0FFFFE7
      CCFFFFF6D9FFD9C2A8FF806650FF3E2512FF2E1801FF2C1601FF281400FF230C
      00FF7A5B3AFFFFFFFBFFF8FBF3FFD7E6F8FFE4B392FFD3D1D8FFECF4F4FFF6F5
      EBFFFFFDE9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F2
      F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003A1F01FF2C1601FF341B00FF301900FF291301FF381F01FF3B21
      00FF3C2300FF381A00FFC49680FFFBDBC5FFFBE1C9FFFDE8D1FFFFECD2FFC8A4
      84FF523424FF280F00FF210B00FF281400FF2E1A00FF311A00FF2C1801FF270E
      00FF9A7E58FFFFFFF2FFFFF7DFFFFFFCE3FFFCF4E1FFFAEDD6FFFFFADCFFFFF5
      DAFFFFF2DBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DDEFE300DAEEE000E5F2EB00FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D3D3FF777777FF656463FFA6A6A5FFD1D2
      CEFFDBD8D1FFD9D5CEFFD6D3CFFFD4D2CFFFD1D0D0FFCFCECFFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCDCDCDFFCFCFCFFFD4D4D4FFD7D7D7FFDEDE
      DEFFEBEBEBFFF5F5F5FFF3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEF900FFFFFA00F8F8F300E2E2F000DADAEF00D1D1ED00C2C3EA00C2C3
      EA00D1D1EC00DADAEF00E2E2F000F8F8F300FFFFFA00FEFEF900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E0037373700C2C2C200FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4F5FA00DDF2FA00DEF3
      FB00DEF3FB00DEF3FA00DEF3FB00DEF3FB00DEF3FA00DEF3FA00DEF3FA00DEF3
      FA00DEF3FA00DEF3FA00DEF3FA00DEF3FA00DEF3FA00DEF3FB00DEF3FA00DFF4
      FC00E2F2FD0088CBA40028A956002DAC5B0035AE5E00A6D7BF00DFF3FE00FAFD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBEFF272622FF070606FF385479FF79A5
      E2FFACCBEFFFD3E0E5FFEAEAE4FFF3EDE6FFEFEAE9FFE9E6E7FFE5E5E5FFE5E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE7E7E7FFE5E5E5FFD1D1D1FFC0C0
      C0FFCCCCCCFFE6E6E6FFF4F4F4FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFCF800FFFF
      FA00E3E3EF00AEAEE5009594E5007B7BE5006B6BE6006E6EEA007677EE007677
      EE006E6EEA006B6BE6007B7BE5009594E500AEAEE500E3E3EF00FFFFFA00FBFB
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA002221210056332300130C0800ACACAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009FD9F3002CAEE40028ADE30029AF
      E40029AFE40029AEE20029AFE30029AEE30029AEE30029AFE30029AEE30029AE
      E30029AFE30029AFE30029AEE30029AFE30029AEE30029AEE40029AFE2002AAE
      E9002CADE90021AB740027AE54002AB0640027AE4C0021AD93002AA9EA007ECE
      EF00FDFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCAC9FF52504EFF0C2839FF0357AAFF1778
      FAFF2F83FEFF5597F5FF84B6F2FFB3D3F2FFE1EAF0FFF9F4F3FFF5F3F4FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFE3E3E3FFC8C8
      C8FFBEBEBEFFCCCCCCFFE4E4E4FFF3F3F3FFF1F1F1FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F700FFFFFA00F0F0F300A3A3
      E2007C7DE5007575EC007F80F5009192FB009394FB009394F9009293F9009293
      F9009394F9009394FB009192FB007F80F5007575EC007C7DE500A3A3E200F0F0
      F300FFFFFA00F8F8F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8B8B8002C1A1300BC714F001308020067676700EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C4E8F50019A7E00000A0E00001A4E10001A4
      E00002A4E00002A3E00001A2DF0003A4E10002A4E00001A5E00002A5E10000A3
      E00001A4E00001A5E00002A5E10000A5E00001A4E10002A5E10002A4DF0001A3
      E70000A4E50024B27F0034B763002FB46E0035B85C001BAF9A0000A2E90002A1
      E20098D8F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDAD8FFB4BAB9FF65A1C3FF1E97EEFF0283
      FCFF006EFAFF0263F9FF1365FCFF2A7CE2FF73B5BAFFD3E7D2FFFBF5F5FFF5F2
      F4FFEEEFEEFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF2F2F2FFEFEFEFFFDCDC
      DCFFCBCBCBFFC9C9C9FFCCCCCCFFE9E9E9FFF3F3F3FFF1F1F1FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F700FFFFFA00D1D0EB007C7CDF00797A
      EF00898AF8009293FA009091F8009192F8009394FA008F91FA008E8EFA008E8E
      FA008F90FA009394FA009192F8009091F8009293FA00898AF700797AEF007C7C
      DF00D1D1EB00FFFFFA00F8F8F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000058585800764732007C462C001A2329004C555B001C1C
      1C00818181009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A00A2A2A200CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000081D3EF0000A2E0000DABE30010ACE5000FAA
      E20010ACE30010ACE4000EABE30010ADE5000FACE3000EABE30010ADE4000EAB
      E20010AAE3000FABE30010ADE4000FABE30010ACE40010ADE4000FAAE1000EAB
      E9000EACE70028B682002EBA65002AB870002FBB600020B49F000EACED0000A3
      E2005CC1EA00FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDCDBFFE0E8E7FFB3EBFFFF5CC8FFFF1FA1
      F8FF0A8AF6FF0274FAFF005EFFFF0069D7FF239A81FF73C28AFFD3E4D9FFFDF5
      FAFFF5F2F3FFEEEFEFFFF0F0F0FFF0F0F0FFEFEFEFFFF0F0F0FFF1F1F1FFE5E5
      E5FFD7D7D7FFDDDDDDFFCECECEFFD4D4D4FFEEEEEEFFF3F3F3FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F700FFFFF900C3C3E7006E6EE2008687F7009091
      F9008F90F8009091F8009192FB007C7DF2006E6EE8007B7BE8008383E8008383
      E8007B7BE8006E6EE8007C7DF2009192FB009091F8009091F8009091F9008687
      F7006E6EE200C3C3E700FFFFF900F9F9F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30014111000AD684900280F01006C7E9000E9FFFF009EB0
      C300525B66004A525C004A525C004A525C004A525C004B545C00454D53001B1E
      210044444400D7D7D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007DD3F10001A6E40012ADE50013AEE60013AE
      E60013ADE50013AEE50013AEE50013ADE50013ADE50013ADE50013AEE50013AE
      E60013AEE50013ADE50013AEE50013ADE50013ADE60013AEE60013ADE50011AD
      EC0011ADEA0024BB85002BBF690029BE74002CC0650021B5A20011ACEE0005A7
      E50064C5ED00FFFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCDADAFFE0E3E0FFD3F6F6FF9CE2FEFF4DBB
      F9FF21A2F9FF1191FFFF148BF4FF2DA0BDFF35B479FF2AA65BFF68B289FFD5E2
      DBFFFFF9FFFFF7F4F6FFEFF0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFE6E6
      E6FFD6D6D6FFE8E8E8FFE5E5E5FFD3D3D3FFE0E0E0FFF1F1F1FFF1F1F1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFA00C3C2E7006B6BE3008C8DFA009091F8008E8F
      F7009192F9008081F2007373E000A2A2E500C2C2EB00CFCFEB00D7D7EB00D7D6
      EB00CFCFEB00C2C2EB00A3A3E5007373E1007B7BF0008E8FF9009091F8009091
      F8008C8DFA006A6BE300C3C2E700FFFFFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFAFAF0044291D00A46040000F0F1000B6CDE500D1E9FF00D5ED
      FF00D9F2FF00D9F1FF00D9F1FF00D9F1FF00D9F1FF00D9F2FF00DAF2FF00CBE2
      F600707D8A0014141400D2D2D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000082D4EF0007A7E3001AADE5001BADE5001BAD
      E5001BADE5001BADE5001BADE5001BADE5001BAEE5001BADE5001BADE5001BAD
      E5001BADE5001BADE5001BAEE6001AACED001AABEE0019ACED0019ACEB0019AB
      F30019ABF10024BC890028C26D0027C1780029C4680021B8A60018AAF5000CA7
      ED0069C8F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBD9DAFFDCDEDBFFDDF4EDFFC6EFFBFF85D4
      FDFF42B6FFFF2AA9F2FF2BAAB3FF37B079FF47BD78FF2BAC66FF178D4CFF66AA
      84FFDCE7E1FFFFFCFFFFF6F4F5FFF0F1F1FFF1F1F1FFF1F1F1FFF3F3F3FFEBEB
      EBFFDADADAFFDEDEDEFFE5E5E5FFDDDDDDFFDEDEDEFFEDEDEDFFF2F2F2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFF900CFCFEC006E6FE2008C8DFA009192F8008E8FF7008F90
      F9007374E700A1A0E000EAEAF300F9F9F500FFFFFA00FFFFF900FFFFFA00FFFF
      FA00FFFFF900FFFFFA00FAFAF500E5E5F100A3A3E2007373E5008586F7009293
      F9009091F8008C8DFA006E6FE200CFCFEC00FFFFF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003434340090563C0065372000212B3300DAF3FF00CFE6FF00C9E0
      FB00CAE1FB00CAE1FB00CAE2FC00D5EEFF00D7F0FF00D7F0FF00D7F0FF00DCF5
      FF00ECFFFF00808E9E0019191900DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000083D4EE0009A7E4001CADE6001EAEE6001EAE
      E6001EAEE6001EAEE6001EAEE6001EAEE6001EAEE6001EAEE6001EAEE6001EAE
      E6001EAEE6001EAEE8001DAEE9001FB3CB0021B7B40021B7B60021B7B60021B6
      BA0022B6BA0023C0850025C4740025C37A0026C6700022BF930021B6BC001AB5
      B80046C6B90098E4BE0095E2BF00DDF5EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBD9DAFFDDDEDCFFE1F4EDFFCEF0FBFFB1E6
      FFFF71D0FFFF41B9BFFF26A265FF199142FF299D5CFF36AF6FFF17964FFF0F7B
      3AFF6CA482FFDEE8E5FFFFFDFFFFF5F4F4FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1
      F1FFEAEAEAFFE0E0E0FFD9D9D9FFD6D6D6FFDDDDDDFFF0F0F0FFF4F4F4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCF800F0F0F3007D7CE0008688F7009091F8008E8FF7008E8FF7008F90
      F8007D7EEE009998E10000000000FFFFFA00F6F6F70000000000000000000000
      00000000000000000000F9F9F800FEFEF900FFFFF900CCCCEA007778E0008284
      F6009293F9009091F8008687F7007D7CE000F0F0F300FCFCF800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004343430029191100170D090017181800545E6900D6EEFF00D0E8
      FF00C9E0FB00CBE2FC00C8DEF80090A1B3008F9FB20091A1B4008B9BAD008392
      A50097A8BC00E9FFFF00788694001F1F1F00E1E1E10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000088D6F0000FA9E60020AEE80022AFE80022AF
      E80022AFE80022AFE80022AFE80022AFE80022AFE80022AFE80022AFE80022AF
      E80022AFE80022ADEF0023B3DB0023C5820024CA6F0024C9750024C9740024CA
      740024C8750023C77A0024C77C0024C77C0024C77C0024C7790024C9740024C9
      74001DC6740015C473000DC16E004AD093000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBD9DAFFDFDFDDFFE8F6EEFFC4EBF3FF94D9
      DFFF69CCC2FF4ABF8CFF239B50FF0C823CFF0D8140FF219454FF28A05DFF0B80
      39FF0E692CFF6EA081FFE0E9E7FFFFFDFFFFF5F3F4FFF0F0F0FFF1F1F1FFF1F1
      F1FFF3F3F3FFF0F0F0FFE4E4E4FFD3D3D3FFD0D0D0FFEAEAEAFFFAFAFAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFB00A4A4E2007979EF009091F9008E8FF7008F90F8008F90F8008F90
      F7009192FA007879EF009090DF00F0F0F600FFFFF90000000000000000000000
      000000000000000000000000000000000000F8F8F700FFFFFB00E2E2EE007778
      E0008586F6009091F8009091F9007979EF00A4A4E200FFFFFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AAAAAA0060606000E2E2E2004646460048505A00D2EA
      FD00D2EAFF00CDE4FD00C7DDF4002F34390000000000000000000C0D0F003C42
      4300131618005F6A7500EEFFFF00717E8B0026262600E7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008BD6F20012ABE70024B0E90025B1E90025B1
      E90025B1E90025B1E90025B1E90025B1E90025B1E90025B1E90025B1E90025B1
      E90025B1E90027AFF10026B5D0001FCA7B0022CB7B0023CA7F0023CA7E0023CB
      7E0022CB7D0021CB7D0021CA7E0021CA7E0021CB7E0021CA7E0022CB7E0023CA
      7E0021CA7E0020CA7E001ECA7C0014C679000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDFDFDEFFF1F9F1FFD0EDECFF6CC3
      A3FF28A160FF36AE67FF37AD6BFF198E4DFF087937FF0B7837FF1A8949FF1B8F
      4CFF026B25FF115E24FF769F85FFE5ECEAFFFFFEFFFFF4F3F4FFF1F1F1FFF1F1
      F1FFF2F2F2FFF4F4F4FFF3F3F3FFE7E7E7FFD0D0D0FFD5D5D5FFEEEEEEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      F900E2E1EF007C7CE500898AF8008F90F8009192F9007474E7007C7DEE009192
      FA008F90F7009192FA007878EE009191E000F2F2F500FEFEF900F6F6F7000000
      00000000000000000000000000000000000000000000F6F6F700FFFFFB00CFCF
      EA007273E5008E8FF9008F90F800898AF8007C7CE500E2E2EF00FDFDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900515151003C43
      4C00CCE3F600D7F0FF00D0E8FF00D1E8FF009DAEBF004D555D001C1F23004D56
      5A009DAFC300191C2000515B6500ECFFFF006A7683002E2E2E00EDEDED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008DD7F10017ACE70028B2E8002AB2E8002AB2
      E8002AB2E8002AB2E8002AB2E8002AB2E8002AB2E8002AB2E8002AB2E8002AB2
      E8002AB2E8002AAFF1002CBAD30026D17F0019CB780018C97C0019CA7C0019CA
      7C0017CB7D001CCC800021CC820020CD820021CC82001DCC7F0018CA7C0019CA
      7C0017C97C0012C87B0013CA7C0017CB7E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDDDFDDFFF3F9F0FFF1F6F2FFA3D4
      B7FF2D9757FF0C853EFF2EA463FF2EA362FF128240FF056E2DFF066D2CFF107A
      3AFF107C39FF005A17FF165423FF7D9F8AFFE7EEECFFFFFEFFFFF5F4F5FFF1F2
      F2FFF2F2F2FFF1F1F1FFF3F3F3FFF5F5F5FFE6E6E6FFCCCCCCFFD6D6D6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FA00AEAEE5007475ED009293FA008F90F8008080F100A0A0E0009898E0007879
      EE009192FA008F90F7009091F9007878EE009090DF00F1F1F600FDFDFA00F6F6
      F700000000000000000000000000000000000000000000000000F8F8F700FFFF
      F900A4A4E3007B7BF1008F90F8009293F9007475EC00AEAEE600FFFFFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005F5F
      5F0031373E00B0C4D400C6DCF400D4ECFF00E6FFFF00EAFFFF00C5DCEE00555F
      6B0030363C00CDE4FC001C1F2300464E5700E7FFFF00626E790036363600F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008FD8F1001DADE8002DB3E90030B4E70030B4
      E70030B4E70030B4E70030B4E70030B4E70030B4E70030B4E70030B4E7002FB4
      E7002FB4E80030B3ED002FB6E20040D2A6003DDA900039D695003AD695003BD6
      95003FD7960028D08C001CCF85001FCF87001CCE84002FD38C003CD796003AD6
      95003CD7950041D896003CD995007BE4B9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDCDFDDFFEEF8EFFFFCF9F6FFF1F4
      F1FF9ACAAFFF23854CFF087834FF269957FF229653FF0A7533FF005E1EFF0259
      1CFF0A6A2DFF076C2CFF00470CFF1A4E25FF93AD9FFFF9F8F8FFFEFCFDFFF4F4
      F4FFF3F3F3FFF3F3F3FFF1F1F1FFF5F5F5FFF2F2F2FFD7D7D7FFD0D0D0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F3009494E6007F80F4009091F8009192FB007373E100EDEDF300F3F3F7008F8F
      E0007879EE009091FA008F90F7009091FA007879EE009090DF00F0F0F500FFFF
      FA0000000000000000000000000000000000000000000000000000000000FEFE
      F900E8E8F1007474E1009192FB009091F8007F80F4009494E600F6F6F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000757575001C1C1D001A1D1F0032373D004F586100717E8B009FB2C00091A2
      B400000000006C788600D6EFFF0025292E0040474F00E2FBFF00626E7A005858
      5800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000090D9F2002AB1EA002FB2E90032B5E80034B6
      E80033B6E80033B6E80033B6E80033B6E80033B6E80033B6E80033B5E80034B5
      E80034B6E80034B6E80032B3EC0034B9E50041C2DB0045C3DF0045C2DF0046C1
      E30049C2E10028CE9B001CD3850020D18C0019D47F0030CCAC0048C0E5003CBE
      DF007BD6E600E9FCF300E2FBEE00F9FDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDDDFDDFFEEF8EEFFF5F8F4FFFEFA
      FEFFF5F7F6FF91C1A6FF1C753CFF066726FF1D8848FF158442FF036022FF004C
      12FF024D17FF055B24FF005216FF09481AFF5F7A69FFCAC7C8FFF7F5F5FFFAFA
      FAFFF5F5F5FFF4F4F4FFF3F3F3FFF5F5F5FFF1F1F1FFDEDEDEFFD6D6D6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      F0007B7BE5009091FB009192F8007C7DF200A3A2E500F8F8F500FEFEFB00F2F2
      F5009090DF007879EE009192FA008F90F7009192FA007879EE009190E000F2F1
      F500FEFEF900F6F6F7000000000000000000000000000000000000000000F9F9
      F800F9F9F500A3A3E5007C7DF2009192F8009091FB007B7BE500E3E3F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEEEEE00CECECE00A5A5A5007C7C7C00515151003939
      3900979797003A3A3A00636E7800DBF3FF0023272C004249520099ABBF000F0F
      0F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CDDF60048C0ED0045BAEA0032B2E90034B3
      E90034B4E90034B4E90034B4E90034B4E90033B3E80034B3E90033B4EA002FB2
      E80036B5E90038B7EA0038B7EA0035B5EE0033B3EE0034B4EE0034B2EE0035B1
      F40035B1F10021CD9C001DD685001FD38F0019D7810024C5B40037B1F50026AD
      EE0075CBF5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDDDFDDFFEFF7EFFFEEF2EEFFE8E6
      E7FFF4ECF0FFDFE6E4FF73A587FF10521EFF025016FF13773AFF0D7132FF0252
      19FF00400FFF003709FF034A18FF46805FFF87928DFF989295FFCFCECEFFFAF9
      F7FFFDFCFBFFF5F5F5FFF4F4F4FFF6F6F6FFF2F2F2FFDFDFDFFFD7D7D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDB
      F0006A6BE6009394FB009394FA006D6EE800C3C3EA00FFFFFA0000000000FFFF
      FA00F1F1F5008F90DF007878EE009192FA008F90F7009091F9007878EE009090
      E000F2F1F500FDFDFA00F6F6F700000000000000000000000000000000000000
      0000FFFFFA00C3C3EA006D6EE8009394FA009394FB006A6BE600DBDBF0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E400A9A9A900848484007A7A7A0089898900ACACAC00E7E7
      E70000000000F8F8F8003F3F3F003D444A0022262A004A4A4A002A2A2A00ABAB
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B7D9F30041B9EB0072D6F70065CDF20061CC
      F50062CBF60061CBF40062CAF40062CCF30064D0F70062CEF60069CEF3005FC9
      F00038B6EB0038B5EC0040B8EC003FB8EA003EB9EB003FB9EB003FB9EA0040B7
      F00040B6ED0021D19C0017D785001AD38F0015D9830028C9B40042B7F10032B2
      E90079CDF000FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFF0F7F0FFE8EBE8FFD0D0
      D0FFCECCCDFFDCD5DAFFC2CAC7FF648A70FF0F4416FF014411FF0C6930FF0762
      28FF003A09FF002A01FF356645FFA8C1B5FFBFBEC0FF939092FFA7A6A6FFD7D7
      D5FFFBFBFAFFFDFDFBFFF5F5F5FFF6F6F6FFF4F4F4FFE1E1E1FFD7D7D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D1
      ED006E6FEA009394F9009091FA007B7BE800D0CFEB00FFFFFA00000000000000
      0000FDFDFA00F0F0F5008F8FDF007778EE009091FA008F90F7009091FA007779
      EE00908FE000F0F0F500FEFEF900000000000000000000000000000000000000
      0000FFFFFA00D0CFEB007B7BE8009091FA009394F9006E6FEA00D1D1ED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFDF
      DF005E5E5E001016190022465100336C80003F839A003D7D9200264F5C00141A
      1D0065656500EBEBEB00000000009E9E9E00C3C3C30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0D0EA00197CCC002CA9E4005CCBF00057C2
      E60060CAEC005ACBF00059C9EE005DC9F30055BDE2005AC1E7004EC4F3005FCF
      FC007BD8F70040B8EC003AB7EB0042BAEB0041B9EB0041BAEB0041BAEA0043B9
      F00042B8EF0021D29E0017D986001CD58F0015DC830028CBB50045B8F20037B5
      EC007CD0F200FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDDDFDDFFEFF8EFFFEEF1EEFFE1E0
      E1FFDCDDDCFFE2E0E1FFEFE9EDFFD5E0DCFF6C9279FF0F3914FF00380CFF0156
      1FFF024511FF255431FF8EA395FFCBC8C8FFB9B5B6FFACACAAFF9C9C9BFF898D
      9AFFB0B6CFFFF3F5F8FFFAFAF8FFF6F6F6FFF3F3F3FFE1E1E1FFD7D7D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C3
      EA007677EE009293F9008E8FFA008383E900D7D6EB00FFFFFA00000000000000
      0000F6F6F700FDFDFA00F2F2F5009091E0007879EE009091FA008F90F7009192
      FA007879EE009190DF00F1F1F500FFFFF9000000000000000000000000000000
      0000FFFFFA00D7D6EB008383E8008E8FFA009293F9007677EE00C2C3EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7001313
      1400326677005CC3E5006BE1FF0077F0FF004C9CB900326E84004EA5C2005FC4
      E100346C7C0019191900C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCD7EF000B61C200699FD200EAF4F200E6E3
      DB00E2C6B600DDDACC00E2ECDE00DFD2BB00E3CEBF00E6D3C100DBBDA7009FB8
      C00062C6ED0073D6FB004ABEED0043BAEE0047BCEF0046BCEE0046BCEE0048BA
      F3004ABBF1001ED3A00011D9890017D893000FDB830029CCB4004ABAF5003BB6
      ED007FD0F300FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDCDFDCFFEEF8EEFFF6F9F6FFF9F7
      F9FFF9F9F9FFF8F8F8FFFDFBFCFFFFFFFFFFDAE9E3FF678773FF0B2D0EFF0135
      0EFF35734DFF89A695FFB7B6B7FFB1ACADFFABABAAFFB4B3AEFFA0A1A1FF545A
      81FF394084FFA8ADCCFFF7F8F7FFFBFBF8FFF3F3F3FFE1E1E1FFD9D9D9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C3
      EA007677EE009293F9008E8FFA008383E900D7D6EB00FFFFFA00000000000000
      00000000000000000000FFFFF900F1F1F5009090DF007879EE009192FA008F90
      F7009091F9007879EE009091E000F2F2F500FDFDFA00F6F6F700000000000000
      0000FFFFFA00D7D6EB008383E9008E8FFA009293F9007677EE00C2C3EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00080D0F004B9C
      B7006DE7FF0077DFFF0089E0FB009CF3FF0077B5C3003A54570017212400122A
      310056B3CC0050A5C0000C0E0F00CACACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B3D2EF002B81D200CEDDE700FBF1EB00EFF1
      F300E9E9EA00DBD3CB00DBCCC400CCBAAB00F0F2F300F3FBFD00E0D7D300DDB5
      9C00D4CDC50074C9EE0060CBF50048B9ED0049BBEF004CBBEF004CBCEE004CBA
      F10052BAF50034D8AA0015DF840016DC8E001BE284003DCFBD004FBAF4003FB6
      EC007FCEF200FDFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDDDFDDFFEFF8EFFFF7FAF7FFF8F8
      F8FFF8F8F8FFF8F8F8FFF7F7F7FFFCFAFBFFFFFFFFFFD5E2DCFF6C8174FF384F
      44FF8A9D97FFD3D5D4FFB7B2B4FFA5A4A6FFA7A6A5FFA4A29BFF989BA8FF3C42
      82FF010254FF50548EFFE6E7ECFFFFFFFCFFF5F5F4FFE2E2E2FFDBDBDBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D0
      ED006E6FEA009394F9009091FA007B7BE800D0CFEB00FFFFFA00000000000000
      0000000000000000000000000000FEFEF900F0F0F5008E8FDE007879EE009091
      FA008F90F7009091FA007778EE008F90DF00F1F1F600FDFDFA00000000000000
      0000FFFFFA00D0CFEB007B7BE8009091FA009394F9006E6FEA00D1D1ED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDED00171717004895B2006FE7
      FF0083DEFB009AE7FC00A3F5FF0095E2F7005E909D00A6FDFF00A1F6FF005C89
      9200050608004898B3004B9BB80021212100F4F4F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B1D5F20081B5E000F4F1EB00F0EEEE00EEF0
      F500DAC9A600BB994D00D6C9B200DBD8D300DBD8D500E9E7E500DED5D000CCC7
      C000D5C4B400C4C5C10072CAEC005FC9F60048B9ED004FBDEF0052BFF00051BE
      EF0050B8F50052CBD7004ADFB10047DCB3004FDCB60053C5E10052BCF30043B9
      EE007FCCEF00FCFBFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFF0F8F0FFF5F7F5FFF4F4
      F4FFF4F4F4FFF3F3F3FFF2F2F2FFF3F3F3FFF8F7F7FFFFFFFEFFDEE1E1FF9D9F
      AAFF9D9AA9FFC3C0C5FFC2C3C1FFACABA9FF9A978FFF909191FF626999FF1114
      6AFF000047FF3F4280FFE1E2EAFFFFFFFDFFF5F5F4FFE2E2E2FFDBDBDBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDB
      F0006A6BE6009394FB009394FA006D6EE800C3C3EA00FFFFFA00000000000000
      0000000000000000000000000000F6F6F700FDFDFA00F1F1F5008F8FDF007879
      EE009091F9008F90F7009192FA007878EE009090E000F1F1F500FFFFFA000000
      0000FFFFFA00C3C3EA006D6EE8009394FA009394FB006A6BE600DBDBF0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075757500295463006DE6FF0083DE
      FC009CE9FC009EF1FF0086CEDD001E2F34000000000023373D008DD8E800ADFF
      FF0077B3C1000100000059BADD00285362008585850000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8F3FA00E0E6EB00EFECEA00EDECED00EDF0
      F500E0CFAF00BA8C2E00D9C9A500EAEBE800D4CAB800D8D0CA00CEBEB300D3D0
      CA00B5B7B100C5B4A300A8C8D2006FD3FD006CCDF50049BAEC0048B9EE004EBB
      EE004EBBEE004DBAF20051BCEF0050BDED004EBBEF004EB9F10045B6EE0056C2
      F0008DD1EE00F6F3F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFF2F8F2FFEEF0EEFFDDDD
      DDFFD9D9D9FFDADADAFFDBDBDBFFDBDBDBFFDADADAFFDEDDDDFFEBE9EBFFDEDA
      E2FFA4A2B1FF9595A1FFBEBFBDFFC1C0B6FF999A9AFF5C658FFF1A227BFF0000
      56FF0F125BFF8185AEFFF3F3F5FFFDFDFBFFF3F3F4FFE2E2E2FFDBDBDBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      F0007B7BE5009091FB009192F8007C7DF200A3A3E500FAF9F500F9F9F8000000
      000000000000000000000000000000000000F6F6F700FEFEFA00F2F1F5009191
      E0007879EE009192FA008F90F7009192FA007879EE009191DF00F2F2F500FEFE
      FB00F8F8F500A3A2E5007C7DF2009192F8009091FB007B7BE500E3E3F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F2001518190056B6DA0077E1FF009AE8
      FC0099EAFE009AECFA00162328002B434A001F3034002A414700273C43009EF1
      FE00A9FFFF005178820016343F0059B8DA001F202100F9F9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF9F700EAEAEB00EAEAEA00EAEA
      EB00EBEDEE00EBE5DC00EFEEEF00CEB47800AE7F2000D0C3A400E5E2E200DCD5
      D200D8D4CE00C2BEB400C3BAAC008ECBE20066CFF6007FD6F5006ECBF20064C7
      F20065C8F20065C7F30065C6F60065C6F50065C7F40063C6F20072CEF30071D2
      F50081CBEC00F2EEED00FEFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFF1F8F1FFECEEECFFD4D4
      D4FFCFCFCFFFD1D1D1FFD2D2D2FFD2D2D2FFD0D1D1FFCECECEFFDADAD9FFF3F3
      F2FFDADBE0FFA2A2AFFF9697A5FF98A0B3FF6374AAFF18258BFF00006BFF0405
      60FF5B5F97FFDBDEE8FFFEFDFBFFF7F7F7FFF3F3F3FFE3E3E3FFDCDCDCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F3009494E6007F80F4009091F8009192FB007474E100E8E8F100FEFEF9000000
      0000000000000000000000000000000000000000000000000000FFFFFA00F0F0
      F5008F90DE007879EE009092FA008F90F7009091FA007779EE009090E000F3F3
      F800EEEEF4007373E1009192FB009091F8007F80F4009494E600F6F6F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCBCBC0018323C0068DBFF0087E1FD009BE9
      FC0099EBFE008DD9EE00476D760082C7DA002131360082C7D9000F181B008DD8
      EE009EF1FF0094E2F60011191B0054B0D100172F3800CACACA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800EFEFEF00EAEA
      EA00EAEBEB00ECEEF400EDF0F600E7DBC000D0AC6600DCCEB100DDD3B500D3C2
      9F00DCD3CA00E0D7D000E0D2C700DECFC50095D3F70062C8F80078D6FC0081DE
      FF007FD9FF007CD3F9007DD5F7007CD5F7007DD5F90081DBFF0078D9FF0053BE
      F300B7D9EB00F6EEE900F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDDDFDDFFF0F8F0FFF6F8F6FFF3F2
      F3FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF2F2F1FFFBFB
      FAFFFFFFFFFFDFDFE4FF878DAFFF344493FF111F91FF000582FF080C73FF5055
      96FFC9CCDFFFFFFFFFFFF8F8F7FFF5F5F5FFF4F4F4FFE4E4E4FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FA00AFAEE5007475ED009293FA008F90F8007B7BF100A4A4E300FFFFF900F8F8
      F700000000000000000000000000000000000000000000000000F6F6F700FDFD
      FA00F1F1F6008F8FDF007779EE009192F9008F90F7009192FA007879EE009998
      E000A1A1E0008080F1008F90F8009293FA007475ED00AEAEE500FFFFFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000909090002B5A6C0074EDFF0097EEFF0098E7
      FC0097E7FC0097E7FD00AAFFFF0091DEF2001C2B2F00446872001A292E009BED
      FB0098E9FE00A3FAFF00263639003A7D97002F6071009F9F9F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F2F2
      F200EDEDED00EAEAEA00EAEAEA00EEF2FA00EFF1F900F2F1F200CDAE6D00AE7E
      1B00DED5BD00F0F1F400D9D0C200EAE3DE00EDDBC400C0D7E00084C7E0006EB0
      B50077BED0007DCDF1007FCAF0007ECCF2007ECCEF0074B3BB006BADB300B7D8
      E200FCF2F200ECEAE800EFEFEF00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFF0F8F0FFF5F7F5FFF3F2
      F3FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F3FFF0EF
      F0FFF4F4F3FFF7F8F6FFB1B7D2FF364595FF000976FF111777FF555B97FFBEC2
      D4FFFCFCF9FFFAFAF8FFF4F4F4FFF6F6F6FFF4F4F4FFE4E4E4FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      F900E2E1EF007C7CE500898AF8008F90F8008E8FF9007273E500CFCFEA00FFFF
      FB00F6F6F700000000000000000000000000000000000000000000000000F6F6
      F700FEFEFA00F2F2F5009090DF007879EE009192FA008F90F7009192FA007D7D
      EE007374E7009192F9008F90F800898AF8007C7CE500E2E1EF00FDFDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E00377288005AB8D0007ABBCC009CEE
      FD0097E7FC009CEEFE008FDCEB002F4950000204040010191B0078B9C7009FF3
      FF0097E7FC00A0F4FE00598793004999B100346B7F008D8D8D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00F3F3F300EDEDED00EAEAEA00ECECEF00EDEEF100F7EFDE00B8A4
      7E009E9A9400DEE3E700F8FBFD00E6E1CF00B4842600E5D9BA00EACDA200BD79
      0200D5AA6000F7F4F000F7F2EE00F7F1EC00F7F0EA00E8C48D00F0C89200F9EE
      E300EBEDF000E8E8E800EDEDED00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFF1F7F1FFEAEBEAFFD5D5
      D5FFD2D2D2FFD4D4D4FFD5D5D5FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
      D7FFD7D7D6FFDEDEDCFFD6D8DAFF9BA1BAFF5F6795FF74789BFFB6B8C2FFE0E0
      DDFFEBEBE8FFF3F3F2FFF4F4F4FFF6F6F6FFF4F4F4FFE4E4E4FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFB00A4A4E2007979EF009091F9009091F8008586F6007878E000E2E2
      EE00FFFFFB00F8F8F80000000000000000000000000000000000000000000000
      000000000000FFFFFA00F0F0F5008F90DF007879EF009192FA008F90F7008F90
      F8008F90F8008E8FF7009091F9007979EF00A4A4E200FFFFFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686003A778D002E657B0038505500A5FC
      FF0098E8FD009EF1FE00294047001F2F3400162225008AD3E600AAFFFF0097E7
      FD0097E7FC0098E7FC0097EFFF0073EBFF002956660097979700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F9F9F900EFEFEF00EBEBEB00F3F3F400E9EBEC00777C
      830050505300605F5E00ADB0B300E8E2D300E1CBA300EBE9E200E6E1D100D7C2
      9300DED1B500EBEDEE00ECECEE00EAEAEA00EAEBEC00EFF1F500ECF3FA00E8EC
      EE00E9E9E900EFEFEF00F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFF1F7F1FFEDEFEDFFDDDD
      DDFFDCDCDCFFDDDDDDFFDDDDDDFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFFDEDEDEFFDFDFDEFFE7E6E3FFE8E7E3FFDEDDDBFFE2E1DFFFE9E9E4FFE2E2
      E0FFE8E8E8FFF5F5F5FFF6F6F6FFF6F6F6FFF4F4F4FFE4E4E4FFDEDEDEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCF800F0F0F3007D7CE0008788F7009091F8009293F9008284F6007778
      E000CDCCEA00FFFFF900FEFEF900F9F9F8000000000000000000000000000000
      000000000000F6F6F700FFFFFA00000000009898E0007D7EEE008F90F8008E8F
      F7008E8FF7009091F8008788F7007D7CE000F0F0F300FCFCF800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA0027505F004796B300202D3000A0F4
      FF009CEEFF0087CEE30010191C007FC3D5001D2C30008FDBEF0073B0BF0093E1
      F70098E9FD009BE9FC0089E2FD0069DCFF001A364000B9B9B900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F800EBEBEB00F6F6F500939494004949
      4A007F7F7F00B3B3B300D5D5D500EDEEF000EFF1F900ECECEE00EBEEF000EFF2
      F700EEF0F300EAEBEB00EBEBEB00EDECED00EBEDEB00E9EAEB00EBEBEB00EFEF
      EE00F7F7F700FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDEDFDEFFEFF8EFFFF5F8F5FFF6F5
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF4F4F5FFFBFBF8FFFFFFFDFFFFFFFCFFF7F6F6FFF4F4
      F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF3F3F3FFE6E6E6FFE1E1E1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFA00CFCFEB006E6FE2008C8DFA009091F8009293F9008586
      F7007373E500A4A4E200E5E5F100FAFAF500FFFFFA00FFFFFA00FFFFFA00FFFF
      FA00FFFFF900FFFFFA00F9F9F500EAEAF400A0A0E0007374E7008F90F9008E8F
      F7009192F8008C8DFA006E6FE200CFCFEB00FFFFFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2E2E2000E181C005DC0E4000915190079B6
      C700A4FBFF0092E0F200121C1F0055828F00263A3F004F7A86000E171A0098E9
      F90099EAFE009BE9FC007AE1FF005ABFE50011161700ECECEC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900ECECEC00E5E5E500BBBBBB00D7D7
      D700F7F7F700F8F8F800F0F0F000ECECEC00EBEBEC00ECECEC00ECEDED00ECED
      EE00ECECED00ECECEC00ECECEC00EAEAEA00EAEAEA00EDEDED00F6F6F500FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAD9DAFFDDDFDDFFF0F8F0FFF2F4F2FFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFE9E9E9FFE7E7E7FFEBEBEBFFF5F5F5FFF4F4F4FFE8E8E8FFE1E1E1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F8F700FFFFFA00C2C2E7006A6BE3008C8DFA009091F8009091
      F8008E8FF9007B7CF0007373E100A3A4E500C2C2EB00CFCFEB00D7D6EB00D7D6
      EB00CFCFEB00C2C2EB00A2A3E5007373E1008081F2009192F9008E8FF7009091
      F8008C8DFA006A6BE300C2C2E700FFFFFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004C4C4C00448BA5003B7F9800171D
      1E009CEEFB00A8FFFF006399A60005090A0000000000080C0E006CA6B300A0F5
      FF009CE9FC008BE1FB006FE7FF00346D81005C5C5C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F3F3F300F3F3F30000000000FEFE
      FE00F1F1F100F0F0F000F2F2F200F2F2F200F0F0EF00EBEBEB00EEEEEE00ECEC
      EC00EDEDED00ECECEC00ECECEC00EDEDED00F4F4F400FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D9D9FFDDDFDDFFF1F8F1FFECEDECFFDCDC
      DCFFD9D9D9FFDCDCDCFFDCDCDCFFDDDDDDFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDDDDDDFFDCDCDCFFDCDC
      DCFFDBDBDBFFD7D7D7FFDFDFDFFFF4F4F4FFF7F7F7FFE7E7E7FFE1E1E1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F800FFFFF900C2C2E7006E6EE2008788F7009091
      F9009091F8009091F8009192FB007C7DF2006E6EE8007C7CE8008383E8008383
      E8007B7BE8006E6EE8007C7DF2009192FB009091F8008F90F8009091F9008788
      F7006E6EE200C3C2E700FFFFF900F9F9F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC000912160063CBF1001D42
      4F00222F33008FD9E500B1FFFF0082C7D9002C4349007FC2D500A3F8FF009CE8
      FC008FE3FB0070E3FF0057B7D900080E0F00D8D8D80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FDFD
      FD00FEFEFE00FDFDFD00FEFEFE00FDFDFD00FAFAFA00E9E9E900E9E9E900EAEA
      EA00EBEBEB00EFEFEF00F6F6F600FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D9D9FFE1E0E1FFF3F7F3FFF2F2F2FFE8E8
      E8FFE6E6E6FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8
      E8FFE7E7E7FFE5E5E5FFE9E9E9FFF5F5F5FFF3F3F3FFE1E1E1FFE5E5E5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F700FFFFFA00D0D0EB007C7DDF00797A
      EF00898AF8009293F9009091F8009192F8009394FA009091FA008E8FFA008E8E
      FA008F91FA009394FA009192F8009091F8009293F900898AF800797AEF007C7C
      DF00D0D0EB00FFFFFA00F8F8F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008282820018323B0067D3
      F6002C5F6E000D1317004464690072ACB70090D9EA00A2F4FF0095E6FC0082DF
      FC0070E5FF005EC6E70012242B00919191000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000E9E9E900F2F2
      F200F9F9F900FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E3E3FFE7E3E7FFF3F3F3FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF5F5F5FFE7E7E7FFDCDCDCFFEEEEEEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F700FFFFFA00F0F0F300A3A3
      E2007C7CE5007575ED007F80F5009192FB009394FB009394F9009293F9009293
      F9009394F9009394FB009192FB007F80F5007575ED007C7CE500A3A3E200F0F0
      F300FFFFFA00F8F8F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F6F6F001327
      2E0059B6D00056B3CD0028596B00132B35004B8A9F0082F2FF0072E5FF006AE0
      FF004DA0BA000E1D23007C7C7C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F7F7F700FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F3FFE8E8E8FFEBEBEBFFF3F3F3FFF5F5
      F5FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF6F6F6FFF4F4F4FFE8E8E8FFDADADAFFE4E4E4FFF5F5F5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFBF800FFFF
      FA00E2E2EF00AEAEE5009494E6007B7BE5006B6AE6006E6EEA007677EE007677
      EE006E6EEA006B6AE6007B7BE5009494E600AEAEE500E2E2EF00FFFFFA00FCFC
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C001A1A1A00264F5B004B9BB40056B2D10056B5D60050ABCB0040879D001F3F
      490020202000A6A6A60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F3FFEEEEEEFFE7E7E7FFE9E9E9FFEEEE
      EEFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEEEEEEFFE6E6E6FFDCDCDCFFE1E1E1FFEFEFEFFFF2F2F2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEF900FFFFFB00F8F8F300E2E2F000DAD9EF00D1D1ED00C2C3EA00C2C3
      EA00D1D1ED00DAD9EF00E2E2F000F8F8F300FFFFFB00FEFEF900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500AAAAAA005C5C5C0027272700161616002A2A2A0060606000AFAF
      AF00F8F8F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E8E800E4E4E400E1E1E100DEDEDE00D5D5D500CDCDCD00C6C6C600C4C4
      C400DDDDDD00F2F2F200F2F2F200000000000000000000000000F1F1F1000000
      0000E8E8E800D2D2D200CBCACB00C9C7C900C5C4C500C5C5C500DDDDDD00EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00F7F7F700FFFFFF00FFFFFF00FCFFFC00EFF3EF00F0EF
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100EBEBEB00E5E5E500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E5E5E500EAEAEA00F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000335912003554
      1800355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      19003354190037571B00455E20005E682C006A6E350000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100DCDCDC00BCBCBC00B5B5B500B6B6B600B6B6B600B7B7B700B8B8B800B7B7
      B700B8B8B800D2D2D200EFEFEF00F6F6F600F6F7F700F9F9F900FBFCFC00D6D6
      D600ACABAC00B7B0B900BAB3BB00B0ADB100B1ABB100B0A8B100A09DA000B3B4
      B300E9E9E900F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F2F2F200FAFAFA00FAFAFA009D9D9C0071717100D9CADA00FFE9FF00EFF3
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F1F100EDEDED00D5D5D500CFCFCF00D0D0D000D2D2
      D200D3D3D300D4D4D400D6D6D600D7D7D700D8D8D800D9D9D900D9D9D900D9D9
      D900D9D9D900D8D8D800D7D7D700D6D6D600D5D5D500D3D3D300D2D2D200CFCF
      CF00CFCFCF00D8D8D800EEEEEE00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000766B3000005400000051
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000520000004F00000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F1F1F100E2E2E200C8C8C800BCBBBC00BFBEBF00C1C1C100C2C3C300C3C4
      C400C1C2C200BBBCBD00C5C6C700DBDDDE00D9DADB00CACBCC00AEAEAD00AFAB
      AF00C3BEC300729B6E002F8D250023931A002A8F21005E925900B7B9B500CCC6
      CD00E8E8E800F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00F2F2
      F200FCFCFC00F2F2F200C4C4C400323131000000000012031200AA9AAA00FAFF
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00E3E3E300E4E4E400E3E3E300E6E6
      E600E8E8E800EAEAEA00ECECEC00EEEEEE0000000000F1F1F100F2F2F200F2F2
      F200F1F1F10000000000EEEEEE00ECECEC00EAEAEA00E8E8E800E6E6E600E3E3
      E300E3E3E300E2E2E200EDEDED00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B633800025D0700469C
      4F0053A455004BA156004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA1550053A55C00308A3A000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F2F500FBF6FA00FDF5
      FD00FFF5FF00FFF6FF00F2E5F100C7BFC700A9A6A9009F989E008C8B8C007E7C
      7B00726E6C0066615E005D5550005E534D0062554C005B4B3F006E5E5900A3A2
      A400368030000A8800004EA7400072AC68005AA94E00149D02001D7D16009CA9
      9C00DAD5DB00F3F4F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00F3F3F300FBFB
      FB00E9E9E900C8C8C800757474001917170027262500080B07009C779C00FFFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100E5E5E500E1E1E100DFDFDF00E3E3
      E300E5E5E500E7E7E700EAEAEA00EDEDED00EFEFEF0000000000F1F1F100F1F1
      F100F1F1F100EFEFEF00EDEDED00EAEAEA00E8E8E800E6E6E600E3E3E300E0E0
      E000E2E2E200E5E5E500F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007660330010781C004595
      4B002A7D2E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028802E00348B3F0070BB8A000059000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF0F000F6F5F600E8E8E900BBC8BC00A2C4
      A4008FC6940073BA780055AB5B0037A041001C8B28003C593300684D4B006551
      490069574E00736055007C685C007F6B6000877164009A827500A3989C00417E
      3E00117F0300A1B59800C3B1C200AAA9AA0075BC720030CB1B000E9600002373
      1800A2A2A100E4E1E400F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00F8F8F800FBFBFB00E4E4
      E400BEBEBE009E9E9E003B3A3900272424002220200045454500F7E7F700F6F5
      F600EFF0EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200F3F3F300F5F5F500E6E6E600D9D9D900DADADA00DDDD
      DD00E0E0E000E3E3E300E6E6E600E8E8E800EBEBEB00ECECEC00EDEDED00ECEC
      EC00ECECEC00ECECEC00E9E9E900E7E7E700E4E4E400E0E0E000DDDDDD00DADA
      DA00D9D9D900E4E4E400F5F5F500F3F3F300F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108214001770
      1600004D00000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      00000052000000500000005C00004FB16400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBF4FA00B4DCB90029B1370016BC230011CA
      1C000BCB160008C4130006B7120006A712000497120005831000628B5600BA9B
      9100A58A7E00927E6F008C786A00957F7000AB928100AB8E8200818C81000060
      00008FB18300C9C6C70050BD430038DC340030E1260030BE1A00799F68001670
      08005B7F5800CBC4CC00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00F7F7F700FAFAFA00E0E0E000BABA
      BA00A9A9A90072717000242322003C3B39001B1A1A00B1B1B100FFFFFF00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F8F8F800F4F4F400EAEAEA00ECECEC00E5E5E500C7C7C700C3C3C300C5C5
      C500C8C8C800CCCCCC00CECECE00D0D0D000D3D3D300D4D4D400D4D4D400D4D4
      D400D4D4D400D3D3D300D1D1D100CFCFCF00CCCCCC00C9C9C900C6C6C600C4C4
      C400C5C5C500DFDFDF00EDEDED00EAEBEB00F4F4F400F8F8F800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005800000059000000590000005900000059
      00000059000000570000066308004DB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF5FE008FD0980000B3080016DB24001DDE
      290021D72E0024CC310020BD2E0018AD2700109B1D00057F1200006607004072
      3400D2CCC200EDE0E300E5DDDF00F3EEF000FFFBFC00BEABA900617F5F004C88
      4400E6E1E500A1C198002DB616002BCA150028C0100073AC6400CAB0C900758E
      6C0040723B00BAB6BB00F6F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300F4F4F400F6F6F600F1F1F100EFEFEF000000
      00000000000000000000EFEFEF00F6F6F600F9F9F900DEDEDE00BBBBBB00A9AA
      AA009E9D9D003E3C3C003936360034333100504F4F00F7F7F700F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300DEDEDF009E9E9E007F7E7D007B7A7A007A7A7A0092939300A0A0A0009F9F
      9F00A1A1A100A4A4A400A6A6A600A8A8A800AAAAAA00ABABAB00ABABAB00ABAB
      AB00ABABAB00A9A9A900A8A8A800A6A6A600A4A4A400A2A2A200A0A0A0009F9F
      9F00969696007C7C7C007B7B7B00807F7F009A9A9A00D8D8D800F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000056000000540000005400000054000000540000005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000570000005000000058000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDF4FD00A3D9AA0001A90F0011B21E001FBB
      2D002AC0390024B7330018AA25000FA31B000BA116000B981600046F10000048
      00002C693700A2BEAA009CB5A200819B88006D816E0069706200607E5D008EAA
      8900FFFFFF00D4DACF00349B190023A70400299F090085A37400CABFC9008092
      7A004B744600B9B7B900F6F5F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400DFDFE000CDCDCD00D2D1D100F0F1F200F9F9FA00F1F1
      F100EFEFEF00EFEFEF00F7F7F700F8F8F800DEDEDE00BFBFBF00AEAEAE00B1B2
      B200797878002D2A2A00534F4E0028262600B1B0B000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F900B0AFAE0066636100716D6A00514F4D001B1B1B004A4A4A00656565006464
      6400676767006B6B6B007070700075757500797979007B7B7B007C7C7C007C7C
      7C007B7B7B007878790075757500717171006C6C6C0068686800646464006565
      65004E4E4E001B1B1A0044424100716E6B0065615F009A999900F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D0000520000096307000D6B10000C690E000C690E000C6A100009670B00015B
      0000005800000059000000590000005900000059000000590000005900000059
      00000059000000550000146B18005BAD70000E66120000550000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F300F4EEF0006BA65F0001950C00038C
      0F0005950F00069D0F0008A0110009A113000AA314000AA615000FA51A000B74
      16000032000000260000001A0000000F00000006000010271500778A78002369
      1B00D0DBCB006FAB5C00218B00002A930300278E03008DB57C00DCD6D9001967
      0C00547A5300CFC9D000F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100ECECEC00D7D7D700D6D6D600A79B9100AEA7A000D4D3D200F0F1
      F300F8F8F900FCFCFC00F6F6F600DEDEDE00C5C5C500B7B7B700B6B6B600B4B4
      B300444140004B474600434140005C5C5B00F7F7F700F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800A8A6A4007673700087838100524F4E0005040400161515001C1B1B001B1B
      1A001C1B1B001D1C1B001D1C1C001E1D1D001F1E1E001F1E1E001F1F1E001F1E
      1E001F1E1E001F1E1E001E1D1D001D1D1C001D1C1B001C1B1B001B1B1A001C1B
      1B0017161600040404003C3A390086838000797572008E8C8A00EDEDED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004C000078BB8800D2F6EE00C0F2E600C0F2E600C7F3EC00A0E0B6000E6A
      0500005400000059000000590000005900000059000000590000005900000059
      000000590000004F0000367E3B00E2FFFF0021782A0000510000004F0000004F
      0000004E000000520000066409004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100FFEAF70092BE7D000DD41B000FB3
      1A00089B12000CA2150011B21A0011B01A0011B01A0010AF1A000FB0180018BD
      24001B8D2A000A410E000B3F1100094410000049060000540A0081978900437A
      3E003F862D003E8B23005C9E41009FC18F00CADBC100FEF6FF0088B17D00216D
      1500959E9600E9E6E900F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300DBDBDB00EBEDEE00D1CCC600D5BEAB00C0AC9C00A9998C00AFA7
      A000D5D4D400F2F4F500E4E4E400CBCBCB00BFBFBF00BCBCBC00D0D0D0008C8B
      8A003633310065605F0033313000BCBCBB00FDFDFD00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700ADABAB007C7A77008B888600504F4E000F0E0E0016151500141413001414
      1300141413001413130014131200131312001313120013131200131312001313
      1200131312001313120013131200141312001414130014141300141413001414
      130015151400100F0F003B393900898684007E7C790097959400EEEDEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007DC6A000E9FFFF00D9FFFF00D9FFFF00E1FFFF00BEEED000146B
      0900005300000059000000590000005900000059000000590000005900000059
      00000059000000500000307D3900D5FFFF001F712400025F0600349154003F98
      6000479961001C742600035E04004EB16400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200FDEBF60085BB730003D718001CDD
      320025CA38001DB02C0016AD220019B324001BB626001DB726001EBA28001CC8
      320023D9420033CE4D002BC8480012C1310025B8330084BF7700C4BAB100868C
      82003A79340056974700A9C5A100E6E8E700DFE6DE0098BD9000387C2E00748C
      7300E0DBE100F5F5F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200E6E6E600DCDDDD00E1E2E200CEBDAD00DAC2AF00CDB7A500C0AB9800AB97
      86009C8C7F009D958E00B0AFAF00C6C8C900CACBCB00D4D4D400D9D9D8004946
      45005C5755004E4A490065646400F6F7F700F2F2F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700B1AFAE0082807E00918F8C0052505000100E0E0019171700191717001917
      1700191718001917180019171800191718001917180019171800191718001917
      1800191718001917180019171800191718001917180019171800191717001917
      170019171700100F0F003C3B3B008D8A8800817E7D009D9B9A00EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005400000059000000590000005900000059000000590000005900000059
      00000059000000500000307E3C00D8FFFF00116315000B6F0D00CAFCEA00EAFF
      FF00F8FFFF0062A66E00005200004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F200F3EDEF00B9B99A006A9242004A89
      2D004CB24B003EBD4E0028AC3A001FA7310020AA320024B4390028C446002CCD
      4F002ACB4C0019C43D0023C5460073CB7E00C7BCA800D5ACA400D9C5BB00D8D1
      D2009EA5A1005F835E0060905C00699A64005F925B00548455008C9D9000E4DE
      E300F3F3F300F0F1F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100D6D6D600E9EAEC00C2BBB600B9A59500B29F9000AF9B8B00AF9A8A00AC96
      8600A5907F00917D6B0078685A00867E7800B7B6B500F5F7F700969493003D39
      3800716D6B003B393800C0BFBF00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F700B6B5B4008986840097949200565453000E0E0E0018171700181717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700181717000F0F0F003C3A3900AAA8A600ADABAA00A2A09E00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005400000059000000590000005900000059000000590000005900000059
      0000005900000051000026782D00DCFFFD0069B17F00157E1E00ABE2C3005CAD
      68004FA252001E751F00035C04004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EDEDEB00DABDB400CD826B009F47
      200099512A00864F2600A3A37E00A9E0B9007BD5910059D17A0040CA670033C7
      5C0031C65A006ED48900D0E9D700FDF2FC00F3EFF400DBD3CC00F2F7FA00EEF1
      F300F0EFF300D8D9DD00B2BBB8009EA79D00A4A9A100BAACA200CBA89300F1EF
      ED00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300E2E2
      E200E3E4E400D7D7D700A5988E00AF9D8F00B4A19200B8A49400BBA49300BAA3
      9000B59E8A00AA9380009A836F008B74610098857500A9A19900434141006B65
      6300514D4C006C6B6B00FAFAFA00F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600BCBBBA00928F8D009F9D9B005C5B5A001515150020202000202020002121
      2100222221002323220023232300242423002424240025242400252424002524
      2400252424002424240024242400232323002323220023222200222222002121
      2100202020001717170046444300A7A4A300A19F9E00ABAAA800F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005300000055000000580000005800000058000000580000005800000058
      0000005800000056000002580000469B5600D9FFFE00BAE6CB009CDCC2000063
      0F00004C000000540000066409004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEEEC00DAC4B500B67959007E26
      01008129080075130000CAA09200FFFFFF00FDF9FF00F0F4F500DAEEE200B4D4
      B100BAE2C700F4F1F400F9F1F700ECEAE900E7E2DE00D7C6BA00E5DDD800E1D7
      D000DED2CA00DCCFC800DDCDC600C9AA9900E6CCC100CBA58700B4855F00EFED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100EFEFEF00DADA
      DA00ECEDEE00B2ACA800BCAA9D00CFBBAC00D9C4B100DDC3B100DDC2AC00DEC0
      A900DDC0A800DBBBA400CBAD9600BA9E8700C2A38A007263560045424300807A
      78003E3D3D00CACBCC00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300D3D2D100B6B4B300C3C2C0007C7B7A002B2B2B00393939003C3C3C00403F
      3F004343420045454500484847004A4A4A004C4C4C004D4D4D004E4E4E004F4E
      4E004E4D4D004D4D4D004C4C4C0049494A004747460045454400424242003F3F
      3F003C3B3B002E2E2F0066666500C5C2C100B3B2B100C8C7C700F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      080000530000086F100000540000005300000053000000530000005300000053
      0000005500000053000000500000004800006AC18700EEFFFF00B4EFE4000A68
      17000053000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEDEC00DDC7B800BD805F008C39
      110093431C008D3B1500C8A18900F0E5DD00E9D8CC00E8D4CA00E8D1C700E5BF
      B200E8CBC200E0CBC000DFCEC100DDCCC000DBC6B800CEB3A000D7C4B600D7C3
      B700D8C7BA00D9CAC000DCD1CB00C7AC9B00DEC5B800C9A58900B4886400EEED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400DEDEDD00E3E4
      E400CBCBCB00C4B7AB00E4D1C200E9D5C400EAD4C100E9CEB900EFD0B800E9CA
      B200CBB09A00AD978400947F6F00816D5E008D7663009C8D8400AFABAA006765
      650061585000CCBFB400E1E0E000F4F6F900F4F5F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F4
      F400D8D6D600B0AFAD00BBB9B80081807F0027272700302F2F00302F2F002F2E
      2E002E2E2E002D2D2D002C2C2C002C2B2B002B2B2B002B2A2A002A2A2A002A29
      2900292828002828280027272700272727002626260025252500252524002424
      2400242424001818180061606000BEBDBB00AEADAC00CCCBCA00F5F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA000C64
      0200297F3900A3D8B20071BA6A0070BA6A0070BA6A0070BA6A0071BA6B0075BA
      6C002B8835005BAF620072B969005BA858007DC49200E5FFFF00A9E5D200035E
      08000056000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F200EFEEED00DCC7B700CC926F00A85A
      2E00A85D32009D4E2200CFA68C00F4E9DF00F0E4DC00EFE6E000E9E2DC00E3D1
      C300E9E3DE00EDEAE700F1EFED00F1F2F200EFEFEE00E1D7CE00F2F4F600F0F3
      F500EFF2F500EEF2F400F1F8FC00D4C0B300DEC5B700C9A48900B2856100EEEC
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100ECECEC00D8D8D800DEDF
      E000C2BCB600ECDCCE00EEDDCF00ECD9C800F1DBC800EBD0BA00B19C8C006F66
      5F0056535000605F610063666800545759004B4D500097959500F3F5F600A29A
      9200D0AE9100C8A88C00B29A8400BEB3A500E0DFDE00F4F6F900F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400D9D8D800A5A3A100ACAAA8008B8A88003D3D3C00403F3F003F3F3F003F3E
      3D003D3D3C003C3C3B003B3B3A003A3939003938380038373700373636003535
      34003434330033333200323232003232310031303000302F2F002F2E2E002E2D
      2D002D2D2C00232322006E6D6B00AFADAC00A3A2A000CAC9C800F4F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA000B63
      02002A872E00ACEECE0096DFCB0096DEC80096DEC80096DEC80096DEC9009CDE
      CC003E9B610077CDB200B0ECDF00E2FFFF00DCFFFF00E6FFFF006CB377000049
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100EFEEED00E3CCBD00BF825F008630
      050089360E007E240000C8A69400FBFFFF00F3F7FB00F3F7FA00F3F6F900EBE0
      D600F5F7F900F7FBFD00F4F8FA00F2F5F700EFF0EE00E1D7CD00EFEFF000ECEA
      E900EBE7E400E8E4E100E8E5E100D1B9A900E1C8BB00C8A48900B1825E00EEEC
      EB00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400D9D9D900E2E2E200C4C3
      C300E1D5CB00F4E6D900EDDED000F6E4D300DDCBBB00716760004A4849008281
      8200B5B0AD00D9CABF00E2CEBF00E4CFBF00E4D0C000DACABE00CDC8C4008182
      820092827300DEB89900D5AF9200BF9C7800B3966F00CABCAB00F0F1F200F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400E1E1E100A9A7A500ADACAA009B9998005352520051505000505050005050
      4F004F4E4E004E4D4D004D4C4C004B4B4B004A4A490049494800484848004847
      4700464646004545450044444400434242004241410041414100404040003F3F
      3E003E3E3D003636360086848300B1AFAE00A9A8A600D5D5D400F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA001568
      0800005D00001D8C280002691B00036819000369190003691900036919000469
      190001610600005D120033954E00D4FFF900D4FFFB00C8F5EC002D8833000C6A
      0A00005A000000560000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100EFEEED00E5CEC000C4876400913C
      0F0096471B00903C1200CEA89000F3F0ED00EEE4DD00F1E7DE00EFE1D800E7CD
      BC00EAD9CD00E9D7C900E6D4C500E5D0C200E1CCBC00D9BCA800DECABB00DDC7
      B800DCC4B500DAC3B400DAC6B800CDAE9800E4CDC000C8A58A00B0815B00EEEC
      EB00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200E8E8E800D9D9D900D5D6D700C6C2
      BE00F8EBE200F0E3D900F9E9DB00D3C6B90055504E0065626400C7C3C100E8D3
      C100E2BFA400DAB39500D7B09100D7AE8F00D8B09000DBB29200DDB99B00E4CF
      BE00A8AAAC0099887B00DFB69500D8B39400CFA27000C79B7300EEEEF000F1F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300E7E7E600B4B2B100AFADAC00A8A7A5006A6A6A0063626200646463006362
      62006161610060605F005F5E5E005E5D5D005C5C5C005C5B5B005A5A5A005959
      5800585757005756560056565600555455005353530052535200525252005150
      50004F4F4E004C4C4C009A989700B3B1B000ADABAA00E0DFDF00F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      0900005100000054000000540000005400000054000000540000005400000054
      000000560000004C00002B832F00D7FFFF00E4FFFF0078B98E000E670F00A7EA
      C60016711A0000510000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00E5CEC000D49A7600B061
      3300AF643800A6592D00D4AA9000F0E4D900EDDCD000ECDED200EBDDD200E9D2
      C200EBE0D800F0E7DF00F0E9E300F1EAE700EFE9E500E4D7CB00F1F0ED00F0F0
      EF00F0F1F200F0F1F200F2F7F900DCC7B800E2CCBD00C8A48A00AE7E5A00EEEC
      EB00F1F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200D9D9D900E1E1E200BCBBBA00E8E1
      D900F6ECE300F8ECE100E4D9CE005C5856007D797900EAE2DE00F5E3D300DAB6
      9A00D2AC8D00D6B09200D5B09200D6AF9200D5AF9100D5AF9100D4AD8D00D5A9
      8600E6C9B400AEB0B300B0957E00DEB48D00D8A86B00E6D3C000F2F5F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F200EDEDEC00C0BFBE00B0AEAD00B1B0AE0083828200797978007A7A7A007979
      7800787777007776760076757400747373007372710071707000706F6F006E6E
      6D006D6C6C006C6A6A006A6A6900696868006867670067656500656464006363
      63006160600064636300A8A6A500B5B3B100B6B4B200E8E7E700F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFFFF00BAEACA00156A
      090000530000005A000000590000005900000059000000590000005900000059
      000000590000004E000024802900BBF1DB00D6FFFE0097D9C30088CFB5008AD3
      B600095C0B0000540000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00EAD4C600C88B6600973E
      0D00984115008B310500CEAC9900FAFFFF00F4F8FA00F4F8FC00F5F9FB00F0E7
      DE00F3F6F800F6FAFD00F5F8FC00F4F8FB00F3F4F500E9E0D900F4F6F800F2F3
      F300F1F1F200EFEFEF00F1F2F300DDC5B500E5CDBF00C6A38900AB7A5700EEEC
      EB00F1F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300E1E1E100DEDEDE00CBCBCC00C6C2BF00FBF3
      EC00F5ECE400FBF1E800847E7B0074706F00F2EDE900F6E7D900EBD9C900DFC2
      AC00D2AB8D00D4AE9000D4AE9000D4AD8F00D3AD8F00D3AC8E00D2AB8C00D1A9
      8A00C6997600DCCDC100B3ABA800D1A06A00DBB58B00F0F1F400F0F1F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400C9C8C600B3B1B000B7B5B40094949300898989008B8A8A008989
      8900888989008888880087878700868686008585850084848400838383008282
      820081818100807F80007E7E7E007D7C7C007C7C7C007B7A7A00797979007878
      7800747474007B7A7A00B3B2B000B5B2B100C3C1C000EDEDED00F1F1F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E00007AC39C00E3FFFF00D4FFFF00D4FFFF00DCFFFF00BBEBCB00156A
      0900005400000059000000590000005900000059000000590000005900000059
      000000570000025A02006AB57900A3E0B200BCE9CF00DCFDF800C7F7EB00207A
      23000050000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EFEE00ECD6C700CD906B00A14C
      1A00A65326009F491C00D5AE9600F6F0EC00F0E5DD00EFE3DB00EDE1D800EDD7
      C500ECDDD200EADDD200EADACF00E8D9CD00E6D6CA00E5CDBA00EAD8CD00E8D4
      C800E6D0C200E2CDBE00E1CCBD00D8B69F00EAD7CB00C5A28800A8765100EEEC
      EB00F2F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F200E8E8E800D9D9D900B1B0B000E5DFDB00FAF2
      EC00FCF3ED00CDC6C100635F5D00DAD6D500FBF1E900F0E1D500ECDDCF00E4CB
      B800D1AA8B00D2AC8D00D2AB8C00D1AB8C00D2AB8C00D2AA8B00D0A88800CAA2
      8200B48D6B00BB9D8500CDCDCE00BA936700ECDBCD00F3F5F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300DAD9D800B8B7B500B8B6B5009F9E9D0094939400939393009292
      910091919100908F8F008F8E8E008D8D8C008C8C8C008B8A8A008A8A8A008989
      8800888787008887870087878700868686008686850085858500858584008484
      8300828282008C8B8B00B7B6B500B6B4B300CECCCC00F4F5F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D74
      1C00004E000081C89F00EEFFFF00DEFFFF00DEFFFF00E6FFFF00C2F1D100166B
      0900005400000059000000590000005900000059000000590000005900000059
      00000055000001610700B6F1E600E7FFFF002C833100116511000C670F000055
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EEED00EBD5C600DAA17D00BF70
      3F00BE744500B7693800E0B49800F7EBE000F5E6DA00F1E4D900EBDFD500EDD8
      C600ECE0D600ECE2DA00ECE3DC00EDE5DF00EDE6DF00E8DACD00EDE8E500F1EE
      EC00F2EFED00F0EFED00F2F3F400E3CDBD00EAD8CD00C29F8600A4714C00EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400D2D2D200B6B4B100EDE8E300F8F1
      EC00FFFCF5009993900099949300FEF9F600F5ECE400F1E4DA00ECDED000EAD7
      C700D5B29600CFA68700D0A88A00D0A88A00D1A88800CEA58400C79E7E00B792
      7000A07B5A009E7B6000E1DBD900D1C2B400F1F1F100F0F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100EFEFEF00D0D0CF00C9C8C700AEADAC008C8C8B00989898009999
      99009A9A9A009B9B9B009B9C9B009C9C9C009E9D9D009E9E9D009E9D9D009D9D
      9D009C9C9B009B9A9A0098989800969696009494940093929200919191008F8F
      8F00828181009E9D9C00C9C9C800CCCAC900E8E8E800F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00004F0000479646007FBF8B0074B8820074B8820078BC880061AC63000762
      0200005600000059000000590000005900000059000000590000005900000059
      0000005700000159020081C28E00AADFB7000B650D00004F0000005400000058
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F0EFEE00F0DACB00CE916B00A34A
      1400A44E1C00993E0B00D3B09C00F9FFFF00F4F8FB00F4F8FB00F4F8FA00F3E9
      E100F3F7F900F4FAFE00F4F9FD00F3F9FE00F5F8FB00ECE8E100F5FBFF00F9FE
      FF00F8FEFF00F8FEFF00FAFFFF00E8D5C800EBD8CE00BF9C8400A06D4700EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200EBEBEB00CECBC700DFDBD600F8F2
      ED00F6F0EA008A838000CFCCCA00FDF9F500F7EFE800F2E7DE00EEE0D400EBDB
      CC00E0C5B000CCA38300CEA68700CEA48600C8A08000C0987700B18B6900A07C
      5B00936D4D00A17D6000E8E1DE00E2E3E400F0F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100F2F2F200F9F9F900D1D0CF008E8D8B00B6B6B600BBBB
      BB00C0C0C000C5C5C500CBCBCB00D0D0D100D6D6D700DADADA00DCDCDC00DDDD
      DD00DADADA00D7D7D700D1D1D100CCCCCC00C6C6C600C1C1C100BCBCBC00B7B7
      B800908E8D00BFBEBD00F9F9F900F2F2F200F1F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005500000056000000520000005200000052000000520000005200000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000055000003600100086901000058000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1EFEE00F1DBCC00D2967000AD55
      2000AF5C2A00A84F1D00DDB8A300FFFFFF00FBFAF800F9F8F600F9F7F300F6E6
      D800F8F1EA00F7F0E900F5EDE400F3E8DD00EFE0D300EAD3BF00ECDBCD00EBD5
      C500E8CFC000E3CAB900DFC1AF00DDB59D00EFE0D700BE9B80009D684100EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F2F200F0EFEF00E6E4E200F1EC
      E900E6E1DC007C757300ECE9E900FCF9F600F5EFEA00F2E9E200EFE2D700EADB
      CC00E7D4C500D2B19800C2987800BE987700B38E6E00A68261009A755500936E
      5000956C4A00BA9B7E00EFEBEA00EDEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F500D6D5D500AAA9A800D3D4D400D7D7
      D700DCDCDC00E0E0E000E5E5E500E9E9E900ECECEC00EFEFEF00000000000000
      0000EFEFEF00ECECEC00E9E9E900E5E5E500E1E1E100DCDCDC00D8D8D800D3D4
      D400AAA9A800C7C6C500F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000580000005800000058000000580000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000560000005500000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1EFEE00F0DACB00DCA37E00C473
      4200C6784A00C5764700D1916800CA8B6300C5835B00BF7A5300B8724C00C17D
      5300AD633C00A65B3300A1562E009F532900A0582B00B06D42009A532700954D
      220091471D008C4319007F340A00B0714F00F9EEE600BC977F009A633D00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100F1F2F200F3F2
      F200E0DEDD008B848200E8E6E500FAF8F600F4EFEC00EFE9E300EBE1D900E6D8
      CC00DFCEC000D7C2B300B6977B009E79580099755700936F5100936C4E009B73
      5300A5774E00D6C0AD00E5E4E500E9E9EA00F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400DBDADA00BCBBBA00E4E4E400E5E5
      E500E9E9E900EDEDED0000000000F4F4F400F6F6F600F8F8F800FAFAFA00F9F9
      F900F9F9F900F7F7F700F5F5F500F1F1F100EEEEEE00EAEAEA00E6E6E600E3E3
      E300BAB9B900CECDCC00F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077613500108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F0EFEE00F2DED000D6987100B258
      2000B25C2600AE5A2600B56634009F4611009D4411009942100097401000AA5C
      2E009342160092451900964A1F00964D210097512400A76439008E471C008D46
      1C008A441B0087411A007D350D00B1755200F8ECE800BA937F0098613C00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100EFF0F000A8A3A200E1DFDE00FBFAF900F6F2EF00EEE9E500E7E0D900E0D5
      CB00D6C7BC00CEBCAF00C1AE9E00A2856D00916A4C00956E4E00A1795600AA7C
      5300C1997500EBE3E000E2E0E000E8E9E900F1F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100EAEAEA00E2E1E100E5E5E500E8E8
      E800EDEDED00EFEFEF00F2F2F200F5F5F500F8F8F800FAFAFA00FBFBFB00FBFB
      FB00FAFAFA00F8F8F800F6F6F600F3F3F30000000000EDEDED00E9E9E900E4E4
      E400E0E0E000E7E7E700F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078623600108114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004EB26400005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F0EFEE00F2E3D700DCA27D00C06C
      3600BF6E3B00BA6D3800C3794800B3653100B3643100AF623100AD623100BC75
      4600AA603000A65E2D00A35B2B009E5627009F572900AD693C00974E2200964E
      2100934D2100924A2000873E1200B8805500F7D0E800BB7A80009A6A3E00EDEC
      EA00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F8F800BBB8B700D9D6D600FDFDFD00FAF7F500F2EEEA00EAE4DF00E2D9
      D000D9CCC100D0BFB300C8B5A600C4AE9B00B8987F00B1886600B3855A00B786
      5A00E2D2C600EBE9E900E4E4E400F1F2F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F10000000000E3E3E300E6E6
      E600EBEBEB00EEEEEE0000000000F3F3F300F6F6F600F7F7F700F9F9F900F9F9
      F900F7F7F700F6F6F600F4F4F400F1F1F100EEEEEE00EBEBEB00E7E7E700E4E4
      E40000000000F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000776135000F8114001D75
      1D00005400000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000570000066308004CB36300005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100F1F0EE00F0E0D100EAC2A600E3AE
      8A00E5B29100E3B39400E5B79900E2B39300E3B49500E3B59600E3B59800E7B9
      9D00E4B69A00E4B79B00E4B89D00E3B99D00E4B99E00E6BDA300E3BAA100E4BC
      A200E4BEA400E5BDA500E3BDA400E6C5AD00F2E8E000C2A08600A4714B00EDEC
      EB00F2F3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400DBDADA00C3BFBD00F7F6F600FFFFFD00F8F4F100F3ECE700EBE3
      DC00E5D8CE00DFCEC000D8C3B200D4BAA600D3B49D00CEA88A00C49B7800DDC9
      BA00EEEAEA00E6E4E400ECEDED00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00E2E2E200E5E5
      E500E8E8E800EBEBEB00EEEEEE0000000000F2F2F200F4F4F400F4F4F400F4F4
      F400F4F4F400F3F3F300F1F1F100EFEFEF00ECECEC00E8E8E800E5E5E500E2E2
      E200ECECEC00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F653800128215001A6E
      1500004B00000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      00000052000000500000005B000055AC6800005C010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F1F100F1F0ED00F0DCCD00F4E8E000F4ED
      E500F4ECE500F6EAE600F5E9E500F5EBE400F4EAE300F4E9E200F4EAE100F4E8
      E000F4E8E200F4E9E200F4E8E100F3E7E100F2E6DE00F0E3DC00F1E5DD00F0E4
      DC00EFE3DC00EFE1DC00F0E2DC00EDDED700EFE4DD00CDAD9200B6896500EEED
      EC00F1F2F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F3F300CFCCCC00D7D5D300F1F0F000FFFFFC00FAF4F000F4EB
      E500EEE3D900EADACC00E6CFBC00E3C6B000D7B59B00CAAE9700E5D9D000F6F2
      F000E4E2E200E5E6E600F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00DEDEDE00E2E2
      E200E5E5E500E7E7E700EAEAEA00EDEDED00EEEEEE00EFEFEF00000000000000
      000000000000EFEFEF00EDEDED00EAEAEA00E7E7E700E5E5E500E3E3E300E0E0
      E000EAEAEA00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F7141000F771B00439C
      5C002D873C002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002D893E003D96520083BA8A000056010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F0EE00F0DBCE00F4E5DC00F2E6
      DE00F0E7DE00F0E6DE00F2E5DE00F2E4DE00F1E4DB00EFE3D900EFE2D900EFE2
      D900EFE2D900EFE2D800EFE2D800F0E1D800F0E1D700EDDFD600EEDED400EDDD
      D400ECDCD300ECDCD300ECDBD300EBD9D200F0E4DE00DCBEA400CBA48100EFED
      EC00F1F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200EEEEEE00D5D5D400D7D5D400E3E1DF00F1EEEB00F3EE
      EA00EBE2DB00E2D5CA00DBCBBC00C2B0A400BDB2AB00EBE7E500FAF5F400ECEA
      EA00E6E6E600F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00E1E1E100E5E5
      E500E7E7E700E8E8E800EAEAEA00EDEDED00EEEEEE0000000000000000000000
      000000000000EEEEEE00EDEDED00EBEBEB00E8E8E800E7E7E700E5E5E500E1E1
      E100EAEAEA00EEEEEE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0885700005A0500308D
      3F003D983F003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003B963F003F9948002E7E2B000056000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F1F100F0E2DA00F2E0D400F4E5
      DC00F1E4DB00EFE4DB00F0E4DA00F1E2DA00F1E1DB00F0E1D800F0E0D600EFDF
      D600EFDFD600EFDFD600EFE0D600EFDFD500EFDED400EEDDD400ECDCD200ECDA
      D100ECDBD000EBDACF00EAD9D000EADAD100E2CCC000CBA38000DDC4AB00F1F3
      F400F0F0F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F200EEEEEE00E3E2E100D2CFCE00D6D3D100D4D2
      D000CFCAC900C7C2C000ADA9A900B9B5B500E9E7E700F3F1EF00E9E9E800EFEF
      EF00F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00E8E8E800E9E9
      E900EAEAEA00EBEBEB00EBEBEB00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00ECECEC00EBEBEB00EBEBEB00EAEAEA00E9E9E900E8E8
      E800ECECEC00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8C5600004E00000050
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000500000005000000057000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00F1EDEB00F1EE
      EB00F1EDEA00F1EDEB00F1EDEA00F1EDE900F1ECE800F1ECE900F0ECE800F0EB
      E800F0EBE800F0EBE800F0E9E700EFEAE600EFE9E600EFE8E500EEE9E500EEE8
      E400EEE7E300EEE7E300EDE7E300EEE8E300D5C6BB00CDBBAC00EEEDEC00F1F2
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100F2F2F200EAEAEA00E7E6E600EAE9
      E700D1CDCC00D0CDCB00D9D5D400F8F7F600E9EAEA00EAEAEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7AE980076673C00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766D3E00766D3E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000F8000000800000000100010000000000001000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFFFFFF83FFFFFFFFE0000001FFFFF
      FFFFF0003FFFFFFFFFFE1FFFFFFFFF00FFFF8000000FFFFFFFFE0000001FFFFF
      FFFFC0000FFFFFFFFFFC1FFFFFFFFF00FFFF00000007FFFFFFFE0000001FFFFF
      FFFF000003FFFFFFFFFC0FFFFFFFFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFFE000001FFFFFFFFFC000FFFFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFFC000000FFFFFFFFF80003FFFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFFC000000FFFFFFFFF80001FFFFFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFF80000007FFFFFFFF80000FFFFFF00FFFE00000000FFFFFFFE0000001FFFFF
      FFF0027C003FFFFFFFF800007FFFFF00FFFE00000000FFFFFFFE0000001FFFFF
      FFF0007F003FFFFFFFFC00003FFFFF00FFFE00000000FFFFFFFE0000001FFFFF
      FFE0001F801FFFFFFFFF80001FFFFF00FFFE00000000FFFFFFFE0000001FFFFF
      FFE0000FC01FFFFFFFFFE0000FFFFF00FFFE00000000FFFFFFFE0000001FFFFF
      FFE0000FE01FFFFFFFFFF0000FFFFF00FFFE00000000FFFFFFFE0000001FFFFF
      FFE00003E01FFFFFFFFFFC000FFFFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFE02001F01FFFFFFFFFF8080FFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFE03001F01FFFFFFFFFE0027FFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFE03000F01FFFFFFFFFC001FFFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFE03C00301FFFFFFFFF8000FFFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFE03E00301FFFFFFFFF00007FFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFE03E00101FFFFFFFFF00007FFFFF00FFFE00000003FFFFFFFE0000001FFFFF
      FFE01F00001FFFFFFFFE00003FFFFF00FFFF00000001FFFFFFFE0000001FFFFF
      FFE01FC0001FFFFFFFFE00003FFFFF00FFFF80000001FFFFFFFE0000001FFFFF
      FFE00FC0001FFFFFFFFE00003FFFFF00FFFFC0000000FFFFFFFE0000001FFFFF
      FFE007E0001FFFFFFFFE00003FFFFF00FFFFF0000000FFFFFFFE0000001FFFFF
      FFF003F8003FFFFFFFFE00003FFFFF00FFFFF8000001FFFFFFFE0000001FFFFF
      FFF000F9003FFFFFFFFE00003FFFFF00FFFFFE000003FFFFFFFE0000001FFFFF
      FFF80000007FFFFFFFFE00003FFFFF00FFFFFE00000FFFFFFFFE0000001FFFFF
      FFF8000000FFFFFFFFFF00007FFFFF00FFFFFE20003FFFFFFFFE0000001FFFFF
      FFFC000000FFFFFFFFFF00007FFFFF00FFFFFFC000FFFFFFFFFE0000001FFFFF
      FFFE000001FFFFFFFFFF8000FFFFFF00FFFFFFFF83FFFFFFFFFE0000001FFFFF
      FFFF000003FFFFFFFFFFC001FFFFFF00FFFFFFFF8FFFFFFFFFFE0000001FFFFF
      FFFFC0000FFFFFFFFFFFE003FFFFFF00FFFFFFFFFFFFFFFFFFFE0000001FFFFF
      FFFFF0003FFFFFFFFFFFF007FFFFFF00FFFFF001D00FFFFFFFFFFFFFF80FFFFF
      FFFE000001FFFFFFFFC00000007FFF00FFFFE0000003FFFFFFFFFFFFE00FFFFF
      FFFC000000FFFFFFFF800000007FFF00FFFFE0000003FFFFFFFFFFFFC00FFFFF
      FFFE008400FFFFFFFF800000007FFF00FFFF80000003FFFFFFFFFFFF800FFFFF
      FFFE004001FFFFFFFF800000007FFF00FFFE00000001FFFFFFFFFFFF0007FFFF
      FFF80000007FFFFFFF800000007FFF00FFFE00000001FFFFFFFFFFFE000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFFC1C001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFF800003FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000003FFFFFFFFE000007FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000003FFFFFFFFE00000FFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFFC00000FFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF800001FFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF0000000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFC0000001FFFFF
      FFF00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFC0000003FFFFF
      FFF00000003FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000003FFFFF
      FFF00000003FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000007FFFFF
      FFF80000007FFFFFFF800000007FFF00FFFE00000007FFFFFFFF000000FFFFFF
      FFFE003001FFFFFFFF800000007FFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFFE020001FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFE000007FFFFF
      FFFE000081FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFFF42000BFFFFFFFF800000007FFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFFF810003FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFF80001FFFFFF
      FFFF803803FFFFFFFF800000007FFF00FFFF00000007FFFFFFFFF80003FFFFFF
      FFFF807803FFFFFFFF800000007FFF00FFFF00000007FFFFFFFFFC0007FFFFFF
      FFFF800003FFFFFFFF800000007FFF00FFFF8000000FFFFFFFFFFE003FFFFFFF
      FFFFFFFFFFFFFFFFFF800000007FFF0000000000000000000000000000000000
      000000000000}
  end
  object PMPrincipal: TPopupMenu
    Left = 592
    Top = 416
    object ExpXLS: TMenuItem
      Caption = 'Gerar Excel'
    end
  end
end
