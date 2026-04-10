inherited frmctr_ped: Tfrmctr_ped
  Left = 274
  Top = 46
  Caption = 'Controle de Pedidos'
  ClientHeight = 694
  ClientWidth = 1356
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Label23: TLabel [0]
    Left = 240
    Top = 272
    Width = 56
    Height = 14
    Caption = 'ROM_CCLI'
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1356
    inherited siPRN: TSpeedItem [1]
      Left = 725
    end
    inherited siREF: TSpeedItem [2]
      Spacing = 0
    end
    inherited siPSQ: TSpeedItem [3]
      Spacing = 0
    end
    inherited siSAIR: TSpeedItem
      Spacing = 0
      Left = 805
    end
    object SINovo: TSpeedItem
      BtnCaption = 'Incluir'
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Pedidos'
      ImageIndex = 4
      Spacing = 0
      Left = 165
      Top = 5
      Visible = True
      OnClick = SINovoClick
      SectionName = 'Menu Principal'
    end
    object siARO: TSpeedItem
      BtnCaption = 'Alterar'
      Cursor = crHandPoint
      Hint = 'Altera'#231#227'o de Pedidos'
      ImageIndex = 5
      Spacing = 0
      Left = 245
      Top = 5
      Visible = True
      OnClick = siAROClick
      SectionName = 'Menu Principal'
    end
    object siCRO: TSpeedItem
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelamento de Pedidos'
      ImageIndex = 6
      Spacing = 0
      Left = 325
      Top = 5
      Visible = True
      OnClick = siCROClick
      SectionName = 'Menu Principal'
    end
    object SICLI: TSpeedItem
      BtnCaption = 'Clentes'
      Cursor = crHandPoint
      Hint = 'Informa'#231#245'es Cadastrais'
      ImageIndex = 7
      Spacing = 0
      Left = 405
      Top = 5
      Visible = True
      SectionName = 'Menu Principal'
    end
    object siINF: TSpeedItem
      BtnCaption = 'Comercial'
      Cursor = crHandPoint
      Hint = 'Informa'#231#245'es Comerciais'
      ImageIndex = 8
      Spacing = 0
      Left = 485
      Top = 5
      Visible = True
      OnClick = siINFClick
      SectionName = 'Menu Principal'
    end
    object siGRO: TSpeedItem
      BtnCaption = 'Romaneios'
      Cursor = crHandPoint
      Hint = 'Emiss'#227'o de Romaneios'
      ImageIndex = 9
      Spacing = 0
      Left = 565
      Top = 5
      Visible = True
      OnClick = siGROClick
      SectionName = 'Menu Principal'
    end
    object siBRO: TSpeedItem
      BtnCaption = 'Finalizar'
      Cursor = crHandPoint
      Hint = 'Baixa de Pedidos'
      ImageIndex = 10
      Spacing = 0
      Left = 645
      Top = 5
      Visible = True
      OnClick = siBROClick
      SectionName = 'Menu Principal'
    end
  end
  inherited pnldir: TPanel
    Left = 1355
    Width = 1
    Height = 610
    Caption = 'd'
  end
  inherited pnlpri: TPanel
    Width = 1355
    Height = 610
    inherited pnldbg: TPanel
      Width = 1355
      Height = 342
      inherited gbDET: TGroupBox
        Width = 1301
        Height = 342
        inherited DBGConsulta: TdxDBGrid
          Width = 1297
          Height = 321
          KeyField = 'ID'
          ShowSummaryFooter = True
          Filter.Active = True
          Filter.Criteria = {00000000}
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
          PreviewFieldName = 'ROM_DEVO'
          ShowRowFooter = True
          OnCustomDrawCell = dbgConsultaCustomDrawCell
          object dbgConsultaROM_DERO: TdxDBGridMaskColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_DERO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = ',##,0'
          end
          object dbgConsultaROM_DROM: TdxDBGridDateColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_DROM'
          end
          object dbgConsultaROM_CDNF: TdxDBGridMaskColumn
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_CDNF'
          end
          object dbgConsultaROM_DNFS: TdxDBGridDateColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_DNFS'
          end
          object dbgConsultaCLI_FANT: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLI_FANT'
          end
          object dbgConsultaUSU_DUSU: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USU_DUSU'
          end
          object dbgConsultaREP_FANT: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REP_FANT'
          end
          object dbgConsultaROM_TSDE: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_TSDE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'ROM_TSDE'
            SummaryFooterFormat = ',##,0.00'
            DisableFilter = True
          end
          object dbgConsultaROM_PDSC: TdxDBGridColumn
            HeaderAlignment = taRightJustify
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_PDSC'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'ROM_PDSC'
            SummaryFooterFormat = ',##,0.00'
            DisableFilter = True
          end
          object dbgConsultaROM_TCDE: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_TCDE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'ROM_TCDE'
            SummaryFooterFormat = ',##,0.00'
            DisableFilter = True
          end
          object dbgConsultaROM_STFI: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_STFI'
          end
          object dbgConsultaROM_STCO: TdxDBGridMaskColumn
            Width = 133
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_STCO'
          end
          object dbgConsultaPAG_DPAG: TdxDBGridMaskColumn
            Width = 141
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAG_DPAG'
          end
          object dbgConsultaROM_STPD: TdxDBGridMaskColumn
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_STPD'
          end
          object dbgConsultaROM_DTRA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_DTRA'
          end
          object dbgConsultaROM_PPRN: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_PPRN'
          end
        end
      end
      inherited GBMenuEdicao: TGroupBox
        Height = 342
        inherited SBMenuEdicao: TSpeedBar
          Height = 321
        end
      end
    end
    inherited pnlbot: TPanel
      Top = 342
      Width = 1355
      Height = 268
      Visible = True
      object pcITE: TdxPageControl
        Left = 0
        Top = 0
        Width = 1055
        Height = 268
        ActivePage = tsITE
        Align = alClient
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object tsITE: TdxTabSheet
          Caption = 'Itens'
          object dbgite: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1055
            Height = 244
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Color = clWhite
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = DBGConsultaDblClick
            OnKeyDown = DBGConsultaKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtsrom_ite
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            PreviewFieldName = 'ROM_OBSE'
            OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
            object dbgiteROM_ITEM: TdxDBGridMaskColumn
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_ITEM'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object dbgitePRO_CPRO: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PRO_CPRO'
            end
            object dbgiteROM_DCOR: TdxDBGridMaskColumn
              Tag = 150
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DCOR'
            end
            object dbgiteROM_DPRO: TdxDBGridMaskColumn
              Tag = 290
              Width = 290
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DPRO'
            end
            object dbgiteROM_DUNI: TdxDBGridMaskColumn
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DUNI'
            end
            object dbgiteROM_QTDE: TdxDBGridMaskColumn
              Color = clMedGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteROM_QTRL: TdxDBGridMaskColumn
              Color = clMedGray
              HeaderAlignment = taRightJustify
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTRL'
              SummaryFooterFormat = '0'
            end
            object dbgiteROM_QTPD: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTPD'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTPD'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteROM_RLPD: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_RLPD'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_RLPD'
              SummaryFooterFormat = '0'
            end
            object dbgiteROM_UNIT: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_UNIT'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'ROM_UNIT'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteROM_VDSC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_VDSC'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'ROM_VDSC'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteROM_TOTA: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_TOTA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_TOTA'
              SummaryFooterFormat = '#,0.00'
            end
          end
        end
        object tsOBS: TdxTabSheet
          Caption = 'Observa'#231#245'es'
          object edobse: TdxMemo
            Left = 0
            Top = 0
            Width = 703
            Align = alClient
            Style.Shadow = True
            TabOrder = 0
            Height = 242
          end
        end
      end
      object pnlfoto: TPanel
        Left = 1055
        Top = 0
        Width = 300
        Height = 268
        Align = alRight
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object pcIMG: TdxPageControl
          Left = 0
          Top = 0
          Width = 300
          Height = 268
          ActivePage = tsFOTO
          Align = alClient
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpTop
          TabWidth = 0
          object tsFOTO: TdxTabSheet
            Caption = 'Imagem do Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            object writefoto: TImage
              Left = 0
              Top = 0
              Width = 300
              Height = 244
              Align = alClient
              Stretch = True
              OnClick = writefotoClick
            end
          end
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 675
    Width = 1356
    Panels = <
      item
        Text = 'Consulta'
        Width = 80
      end
      item
        Text = '0'
        Width = 20
      end
      item
        Width = 50
      end>
  end
  inherited Consulta: TIBQuery
    Left = 672
    Top = 216
  end
  inherited DTSCadastro: TDataSource
    OnDataChange = dtscadastroDataChange
    Left = 672
    Top = 248
  end
  inherited Cadastro: TIBQuery
    AfterScroll = CadastroAfterScroll
    BeforeOpen = CadastroBeforeOpen
    OnCalcFields = cadastroCalcFields
    SQL.Strings = (
      
        'SELECT PK.ID,PK.ROM_CDEP,PK.ROM_DERO,PK.ROM_DROM,PK.ROM_HROM,PK.' +
        'ROM_CDRO,PK.ROM_CDNF,PK.ROM_DNFS,PK.ROM_CDBX,PK.ROM_DBAI,PK.ROM_' +
        'CDCX,PK.ROM_CTNR,'
      
        '       PK.ROM_CCLI,CD.CLI_FANT,PK.ROM_CVEN,CV.USU_DUSU,PK.ROM_CR' +
        'EP,CR.REP_FANT,'
      '       PK.ROM_QTVE,PK.ROM_RLVE,PK.ROM_QTPD,PK.ROM_RLPD,'
      '       PK.ROM_TSDE,PK.ROM_TCDE,PK.ROM_PDSC,PK.ROM_TDSC,'
      '       PK.ROM_CTRA,PK.ROM_DTRA,PK.ROM_VFRT,PK.ROM_DSEP,'
      '       PK.ROM_VTSP,PK.ROM_VNF ,'
      
        '       PK.ROM_STPD,PK.ROM_STCO,PK.ROM_CONC,PK.TPCO,PK.RECO,PK.RO' +
        'M_CPAG,PG.PAG_DPAG,PK.ROM_STFI,'
      '       PK.ROM_CDRD,PK.ROM_DERD,'
      '       PK.ROM_OBSE,PK.ROM_PPRN,ROM_STA'
      ''
      'FROM   PED_VEN_CAB AS PK'
      'JOIN   CAD_CLI     AS CD ON (CD.ID = PK.ROM_CCLI)'
      'JOIN   CAD_USU     AS CV ON (CV.USU_CUSU = PK.ROM_CVEN)'
      'JOIN   CAD_REP     AS CR ON (CR.ID = PK.ROM_CREP)'
      'JOIN   TAB_PAG     AS PG ON (PG.ID = PK.ROM_CPAG)'
      ''
      'WHERE    PK.ROM_DROM > '#39'01/01/26'#39
      'ORDER BY PK.ID DESC')
    Left = 640
    Top = 248
    object CadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_VEN_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroROM_CDEP: TSmallintField
      FieldName = 'ROM_CDEP'
      Origin = '"PED_VEN_CAB"."ROM_CDEP"'
    end
    object CadastroROM_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'ROM_DERO'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
      Size = 30
    end
    object CadastroROM_DROM: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ROM_DROM'
      Origin = '"PED_VEN_CAB"."ROM_DROM"'
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroROM_HROM: TTimeField
      FieldName = 'ROM_HROM'
      Origin = '"PED_VEN_CAB"."ROM_HROM"'
    end
    object CadastroROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_CAB"."ROM_CDRO"'
    end
    object CadastroROM_CDNF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_CAB"."ROM_CDNF"'
    end
    object CadastroROM_DNFS: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ROM_DNFS'
      Origin = '"PED_VEN_CAB"."ROM_DNFS"'
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"PED_VEN_CAB"."ROM_CDBX"'
    end
    object CadastroROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"PED_VEN_CAB"."ROM_DBAI"'
    end
    object CadastroROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"PED_VEN_CAB"."ROM_CDCX"'
    end
    object CadastroROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"PED_VEN_CAB"."ROM_CTNR"'
    end
    object CadastroROM_CCLI: TIntegerField
      FieldName = 'ROM_CCLI'
      Origin = '"PED_VEN_CAB"."ROM_CCLI"'
    end
    object CadastroCLI_FANT: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object CadastroROM_CVEN: TIntegerField
      FieldName = 'ROM_CVEN'
      Origin = '"PED_VEN_CAB"."ROM_CVEN"'
    end
    object CadastroUSU_DUSU: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object CadastroROM_CREP: TIntegerField
      FieldName = 'ROM_CREP'
      Origin = '"PED_VEN_CAB"."ROM_CREP"'
    end
    object CadastroREP_FANT: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object CadastroROM_QTVE: TIBBCDField
      FieldName = 'ROM_QTVE'
      Origin = '"PED_VEN_CAB"."ROM_QTVE"'
      Precision = 18
      Size = 4
    end
    object CadastroROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"PED_VEN_CAB"."ROM_RLVE"'
    end
    object CadastroROM_QTPD: TIBBCDField
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_CAB"."ROM_QTPD"'
      Precision = 18
      Size = 4
    end
    object CadastroROM_RLPD: TIntegerField
      FieldName = 'ROM_RLPD'
      Origin = '"PED_VEN_CAB"."ROM_RLPD"'
    end
    object CadastroROM_TSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldName = 'ROM_TSDE'
      Origin = '"PED_VEN_CAB"."ROM_TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroROM_TCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TCDE'
      Origin = '"PED_VEN_CAB"."ROM_TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroROM_PDSC: TIBBCDField
      DisplayLabel = 'Desc %'
      FieldName = 'ROM_PDSC'
      Origin = '"PED_VEN_CAB"."ROM_PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"PED_VEN_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"PED_VEN_CAB"."ROM_CTRA"'
    end
    object CadastroROM_DTRA: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'ROM_DTRA'
      Origin = '"PED_VEN_CAB"."ROM_DTRA"'
      Size = 60
    end
    object CadastroROM_VFRT: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'ROM_VFRT'
      Origin = '"PED_VEN_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object CadastroROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"PED_VEN_CAB"."ROM_DSEP"'
      Size = 40
    end
    object CadastroROM_VTSP: TIBBCDField
      FieldName = 'ROM_VTSP'
      Origin = '"PED_VEN_CAB"."ROM_VTSP"'
      Precision = 18
      Size = 2
    end
    object CadastroROM_VNF: TIBBCDField
      FieldName = 'ROM_VNF'
      Origin = '"PED_VEN_CAB"."ROM_VNF"'
      Precision = 18
      Size = 2
    end
    object CadastroROM_STPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ROM_STPD'
      Origin = '"PED_VEN_CAB"."ROM_STPD"'
      Size = 30
    end
    object CadastroROM_STCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'ROM_STCO'
      Origin = '"PED_VEN_CAB"."ROM_STCO"'
      Size = 30
    end
    object CadastroROM_CONC: TSmallintField
      FieldName = 'ROM_CONC'
      Origin = '"PED_VEN_CAB"."ROM_CONC"'
    end
    object CadastroTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"PED_VEN_CAB"."TPCO"'
    end
    object CadastroRECO: TIBStringField
      FieldName = 'RECO'
      Origin = '"PED_VEN_CAB"."RECO"'
      FixedChar = True
      Size = 3
    end
    object CadastroROM_CPAG: TIntegerField
      FieldName = 'ROM_CPAG'
      Origin = '"PED_VEN_CAB"."ROM_CPAG"'
    end
    object CadastroPAG_DPAG: TIBStringField
      DisplayLabel = 'Prazo'
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object CadastroROM_STFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ROM_STFI'
      Origin = '"PED_VEN_CAB"."ROM_STFI"'
      Size = 30
    end
    object CadastroROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_VEN_CAB"."ROM_CDRD"'
    end
    object CadastroROM_DERD: TIBStringField
      FieldName = 'ROM_DERD'
      Origin = '"PED_VEN_CAB"."ROM_DERD"'
    end
    object CadastroROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_VEN_CAB"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object CadastroROM_PPRN: TSmallintField
      FieldName = 'ROM_PPRN'
      Origin = '"PED_VEN_CAB"."ROM_PPRN"'
    end
    object CadastroROM_STA: TIBStringField
      FieldName = 'ROM_STA'
      Origin = '"PED_VEN_CAB"."ROM_STA"'
      FixedChar = True
      Size = 1
    end
    object CadastroROM_DEVO: TStringField
      FieldKind = fkCalculated
      FieldName = 'ROM_DEVO'
      Size = 60
      Calculated = True
    end
  end
  inherited IBTra: TIBTransaction
    Left = 728
    Top = 288
  end
  inherited ibSP: TIBStoredProc
    Left = 728
    Top = 256
  end
  inherited pTRA: TIBTransaction
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
  end
  inherited ILMenuPrincipal: TImageList
    Left = 104
    Top = 312
    Bitmap = {
      494C01010C000E0004003E002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000BE63AEFFB28096FFBB7D9BFFB39192FFB891
      90FFBD9594FFC59B92FFD1A196FFB17F7CFF63414BFF36212FFF462324FF6E34
      25FF6E362CFF6E382EFF723F3AFF7A4641FF7F4C47FF834E47FF8B5149FFBD7E
      6CFFE2A98EFFE0A98FFFE4AE93FFE3AB90FFDBA28DFFCF9583FFC08379FFB578
      75FFAE7170FFAC6F70FF9C6269FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E2E2FFDCDCDCFFD8D8D8FFD4D4D4FFD1D1D1FFCECECEFFCACA
      CAFFC5C5C5FFC3C3C3FFC4C4C4FFC9C9C9FFCECECEFFCDCDCDFFCCCCCCFFCBCB
      CBFFCBCBCBFFC8C8C8FFC7C7C7FFC3C3C3FFBEBEBEFFB9B9BAFFB6B6B3FFAEAE
      A7FF9E9E9DFFA2A2A2FFADADADFFB6B6B6FFBFBFBFFFC8C8C8FFD2D2D2FFD8D8
      D8FFE1E1E1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F1FFFBFBFBFFA5A59FFFA09F99FFCBCAC7FFDDDD
      DAFFECECEBFFF4F5F5FFF7F7F7FFF6F6F7FFF3F3F3FFF2F2F2FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F351F400979C
      9E00488257003A724C003F7F5D003F8060003E7957003C6F47003D734E003D73
      4E003E7A5800428263003F7A58003B6E47003D724E003D734E003E7854003F80
      60005B8A6A00B8C8B700F9F8F900F2F1F200F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000085778BFF957393FF9F7E9DFFA58A9DFFAF8F
      9DFFB999A0FFC9A09BFFDCB0A6FF895F55FF2B0D00FF62320CFFB15915FFD771
      20FFC86613FFB4550AFFA44D0AFF964002FF8A3500FF812B00FF742100FFA45A
      38FFE7B29AFFE5B195FFECB7A0FFE8B6A2FFE0A996FFD19687FFBF7F7DFFB375
      75FFB37571FFA86C6EFF8A5766FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E0FFDBDBDBFFD6D6D6FFCFCFCFFFCACACAFFC7C7C7FFC3C3
      C3FFBCBCBCFFA8A8A8FF989898FF989898FFA0A0A0FFADADADFFBFBFBFFFC3C3
      C3FFC3C3C3FFC2C2C2FFBEBEBEFFBABABAFFB4B4B4FFADADABFF80818CFF5051
      71FF484A4CFF464646FF757575FF9E9E9EFFACACACFFB8B8B8FFCDCDCDFFD8D8
      D8FFE2E2E2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFFEFEFEFFC7C8C7FF6D6E68FF79796FFF78776FFF6E6E
      66FF85857EFFA7A6A0FFC0BFBBFFD5D4D2FFE9E9E7FFF2F2F2FFF4F4F5FFF7F7
      F7FFF3F3F4FFF2F2F2FFF0F0F0FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF4DF200459A55000031
      0200000A0000000D000002514F0019B4DE0018AFD50000403D0000060000000B
      0000002C200023A7C20033C0DD00084D4A0000070000000B0000002311002397
      A5001EA3AC00035A340082A58800F8F7F800F2F1F100F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004C4271FF5C4F7EFF6F5F94FF846F9CFF947D
      9FFFB295A6FFCDA39FFFD8AEA8FFC59681FFD59B6FFFEDB186FFF0B68AFFE7AE
      81FFE9B181FFE6AB76FFDE9C5EFFE8A56BFFE7A064FFE99959FFDF884DFFD897
      71FFE3AF97FFEBB79FFFF2C1ADFFEDBDAAFFE0AC99FFCB8E84FFB87875FFB777
      6EFFB27170FF91596AFF78485FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E2E2FFDADADAFFD1D1D1FFC5C5C5FFBDBDBDFFB5B5B5FFB1B1
      B1FFABABABFFABABABFFB5B5B5FFA4A4A4FF989898FF848484FFA3A3A3FFBCBC
      BCFFBBBBBBFFBBBBBBFFB9B9B9FFB4B4B4FFAFAFADFFA6A5A1FF24249CFF0000
      8BFF1F2127FF0A0908FF1A1919FF545454FF858585FFBABABAFFD5D5D5FFDCDC
      DCFFE3E3E3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF5F4
      F4FFF1F1F1FFFCFCFCFFC4C4C3FF282927FF4F4F4AFF8A8981FF818079FF6A6A
      63FF5C5C55FF575651FF60605AFF6E6E67FF919089FFA6A59FFFBABAB5FFD7D7
      D3FFE8E7E5FFF2F2F2FFF7F8F8FFF9FAFAFFF5F5F5FFF2F2F3FFF1F1F1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000091999400006B43000F8D
      A90001241C0000080000001306000E6D7C0029D5FF0022BAE500053B3E000006
      0000000A00000842430037C9EC003FD0F2000E4B4B0000040000000A00000939
      320044CCED0030BDCC000D602900C4D6C800F9F6F800F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004C3133FF63434FFF372D5DFF3E3777FF5045
      82FF9379A4FFD0A4A0FFE1B1A3FFE6B7ACFFE1B6A8FFD8B0A3FFDCB4A5FFDDB6
      A7FFDFB6A2FFDEB49CFFDCB198FFE4BAA2FFF0C5B0FFF4C8B4FFEDBEA7FFE8B4
      9AFFE5B198FFF2C2AEFFFACDB7FFF6C7B2FFD89E90FFBD7D73FFBA7768FFB171
      6EFF875469FF6F4460FF68415EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E4FFDDDDDDFFD4D4D4FFBDBDBDFFA3A3A3FF909090FF8484
      84FF7A7A7AFFA1A1A1FFB5B5B5FFA2A2A2FFB7B7B7FFB4B4B4FFA5A5A5FFB2B2
      B2FFB7B7B7FFB8B8B8FFB5B5B5FFB0B1B0FFA9AAA6FFA4A497FF58579FFF1314
      99FF18192AFF141311FF0F0E10FF0B0A0AFF171717FF707070FFDCDCDCFFDEDE
      DEFFE4E4E4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F4F4FFEBEF
      F0FFFFFFFFFFECECECFF2F302EFF000100FF61615BFF8B8983FF87857FFF8E8D
      84FF8B8B83FF87867FFF7E7D77FF72716AFF818079FF807F78FF96968DFF807F
      78FF888781FFA3A29DFFC0C0BBFFD5D5D2FFE3E3E1FFF1F1F0FFF1F2F2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000488C4E0003887F0025DA
      FF001696B6000016070000070000000D00000F6B750032DCFF0028BDE600063D
      3D0000060000000500000945440041D4F70048D9F400104C4900000600000007
      00000B4240003CC8DF00017B440089B09300FEF9FC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008B4713FFCB7840FF5A3930FF0E143BFF3428
      4AFF332B5BFFCC9D99FFE4B5A1FFDFB6A4FFDEB6A5FFDFB7A7FFE5BEADFFE3BB
      A7FFE2B9A3FFE5BCA8FFE4BCA8FFE0B7A3FFE9C3B0FFEBC1ABFFF1C0A4FFF3C1
      A8FFF4C5AFFFFCD4BDFFFDD9C3FFDAA594FFB27469FFAB6B5DFF965F61FF6C43
      58FF503248FF492E40FF442A34FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E5FFDFDFDFFFDADADAFFB0AFB0FF8B8B8BFF8E8F8EFF9797
      97FF717171FF727272FF9A9A9AFF919191FF989898FFAFAFAFFFB2B2B2FFB5B5
      B5FFB8B8B8FFB9B9B9FFB6B7B7FFB2B1AEFF7C7D8AFF45456BFF525164FF4B4A
      70FF17182EFF141311FF141315FF141314FF020202FF373737FFE0E0E0FFDFDF
      DFFFE5E5E5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCFCFDFFD6D6D6FF777D
      7DFFB1B3B2FF515150FF070805FF0F0F0EFF232320FF73786EFF84897DFF8383
      7DFF8D8C85FF97968EFF9B9891FFA19E97FF9D9A93FF92908AFFA1A099FF8685
      7FFF767570FF73726CFF74716BFF7C7974FF8F8E88FFAEADA8FFBBBBB7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036874C00014E1E001792
      B7002ADDFF00178DA80000180C0000080000000B00001378880039E0FF002EC0
      E700073E3E0000080000000900000E4F500048DAF6004CDAF6000B4544000006
      00000005000004413300007231008AB79900FEF8FC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000445287FF5E6198FF4B5694FF3F55A1FF2E35
      68FF32488DFFC4ACB0FFE7C0A6FFDBB7A3FFD5B0A1FFCEA797FFD0AE9EFFD1B1
      A1FFCDAD9FFFD8BEB2FFDEC7BDFFE4D2CAFFE9DCD4FFEDE3DBFFF0E6E0FFF9F0
      EAFFFFF6EFFFFEF6F0FFF6F2EEFFB0806AFF8C4925FF8F5338FF824C39FF8850
      36FF935B3AFF9C6743FFA06D44FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8E8FFE1E1E1FFE0E0E0FF4A4C4BFF141414FF444344FF9A9A
      9AFF7F7F7FFF797979FF9B9B9BFF999999FF9F9F9FFFB1B1B1FFB9B9B9FFBDBD
      BDFFBEBEBEFFBFBFBFFFBEBEBEFFC5C4BAFF42429AFF000091FF01047AFF1315
      6FFF1A1B32FF13110EFF141315FF141315FF09090AFF3A3A3AFFE0E0E0FFE5E5
      E5FFE8E8E8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFBFBFBFFE0E0DFFF6D6C68FF3634
      31FF141412FF050503FF0C0D0CFF131313FF1B1C1BFF414840FF3F4740FF4947
      44FF62665DFF4D514CFF666E6BFF7D7F7AFF93938DFFA0A098FFA3A19BFFACA9
      A4FFABA9A3FFA6A49FFF9D9B94FF8E8D86FF908F89FFA5A49EFFA4A39DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A93580000390000011B
      15001B9CBA0031DFFF001A8FA700001F0E00000C0000001906001984960042E1
      FF0033C0E400043B3200000E0000000D00000F5452004DDCF90047CEEB000C45
      41000006000000150000005F15008CBDA000FEF8FC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005879D1FF4A70DEFF5076E4FF5375DAFF3A5C
      BCFF5273D6FFA0A5D1FFF1E7DAFFDFD7D2FFE0D7D4FFE9E2DFFFEEE9E7FFF6F5
      F5FFF9F9FBFFFEFFFFFFFFFFFFFFFFFFFFFFF4F7F8FFEFF3F6FFEFF4F8FFEAEB
      EBFFF8FBFAFFFFFFFFFFF9FEFFFFDBCEC4FF874E3BFF905545FFA6634BFFC07A
      5AFFCE8661FFC67955FFC37752FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEBFFE5E5E5FFE9E9E8FF404242FF000000FF020304FF7676
      76FF848484FF6D6D6DFF989898FFA0A0A0FFACACACFFC3C3C3FFC4C4C4FFC6C6
      C6FFC7C7C7FFC9C9C9FFC9C9C9FFD1D0C9FF9897C7FF3132B7FF090B80FF0B0C
      7FFF232547FF343528FF151515FF151413FF0E0E0FFF232323FFCFCFCFFFEEEE
      EEFFE9E9E9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFF8F8F8FFDEDEDDFF6B6B66FF4D4D46FF2120
      1FFF000000FF040301FF131410FF565F55FF6D7367FF4C4E4DFF434B46FF3737
      32FF171715FF141717FF1E2626FF242928FF393F3CFF4A4E4AFF565954FF7A83
      7AFF929790FFA4A29DFFB3B0A7FFBAB6A9FFB9B5ABFFAEADA7FFA9A8A3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B9A5D00004815000004
      00000225170022A9CB003AE1FF00229BB300042C180000120000001E09001C87
      97004AE3FF0038C0E10009453C0000160000000F00001155520055DCFA0052D4
      F100144A490000170000006A20008CC0A100FEF7FC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000728BD3FF597ADFFF597FDFFF6B8ADBFF6587
      DDFF7389D5FFDFDBE2FFF0ECE6FFF0F1F1FFFEFFFFFFFEFDFAFFFFFFFFFFFAF5
      EFFFFBF3EAFFFAF1E8FFE8D5C2FFF6E1D0FFFFFFFFFFE3C6A9FFCA976BFFCD97
      68FFDAB896FFFFFFFDFFFAFBF7FFF7FAF5FFA4878AFF75444CFF85545AFF8F5D
      62FFB78077FFE7A793FFDC9379FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFEAE9EAFFF1F3F1FF464A48FF010305FF000102FF5B5C
      5CFF939393FF787878FF9E9E9EFFA2A2A2FFBBBBBBFFD3D3D3FFCFCFCFFFD2D2
      D2FFD2D2D2FFD3D3D3FFD4D4D4FFD4D4D4FFE2E1D8FFCECED3FF27298DFF090A
      8CFF11136BFF35364BFF3A3B35FF1A1B19FF15140CFF0F0E09FFB7B7B9FFF6F6
      F6FFEDEDEDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFEFEFEFFFF6F6F6FFEEEEEEFF706F6BFF4E4C47FF5C5B56FF2423
      21FF020200FF10100EFF5A6161FF586255FF45483BFF53554FFF636E5EFF373E
      36FF222C2AFF2A322CFF2F342EFF2C2F28FF121212FF121313FF101412FF161F
      1BFF263027FF2A2D27FF4C5B77FF6A7697FF7C8795FF9B9A95FFACAAA4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003C9E6100005F2200002C
      0700002A000004512E001FADB30024C2D5000C7D6A000036070000350500003D
      0F001B98900031CAD600179E9A000044160000360700002D000016785F003FCF
      D00027AEAC00014E2500007527008CC1A200FEF7FB00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CA7DFFF6890EBFF6C93EBFF7E9EE8FF7594
      DCFFC9C8D6FFF8EDDFFFEBE7E1FFF9F8F7FFFEFBEEFFF4DDC2FFFAF7F1FFE1CB
      B4FFD7B089FFE1BC99FFD0AE8CFFCF935EFFFFF9F1FFF4E4D0FFCB8F5AFFC684
      4BFFC58A55FFF1E1D0FFFFFFFFFFF9FBF5FFDAD3D2FF402C39FF302236FF2D1F
      2DFF231628FF40323EFFBD9386FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F2FFEEF0EEFFF7E9F7FF453A47FF000301FF000102FF3A3B
      3BFF919191FF919191FFA7A7A7FFA6A6A6FFCCCCCCFFDCDCDCFFDADADAFFDBDB
      DBFFDADADAFFDCDCDCFFDDDDDDFFDDDDDDFFE2E2E0FFDADBDBFF2C2E89FF0808
      91FF00007FFF06076FFF292977FF0E0F79FF08086BFF1B1B33FFBDBEB8FFF6F6
      F6FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFEFEFEFFFF4F4F4FFFAFAFAFFA0A09CFF514F4AFF605E58FF605E58FF1D1D
      1BFF040504FF78818CFF99A8BCFF293243FF344975FF3D4550FF5D605EFF5359
      5EFF202625FF293130FF303934FF212422FF1F2520FF232C25FF223129FF1B24
      1FFF0E1117FF07111EFF02142FFF021437FF00041AFF7A7978FFECEBE9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E9F640002873300006C
      1800006F1B00006A1300006E1A00007323000077270000711C0000721C00006E
      1600006D160000742200007A270000761F0000731C0000731B00006E15000075
      2100007A270002822D00008C3A008CC1A200FEF6FB00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000091AEE8FF7197ECFF7498EBFF7E99DEFF7089
      DFFF6471A4FFBABBB5FFFFFFFDFFFEFFFAFFFDF9F0FFF8ECD9FFEEE8D8FFEAE5
      D8FFE7DDC9FFE6D5BEFFEAE0D2FFBF9267FFE9C09DFFFFFFFFFFF6F2E0FFDDC1
      A3FFCA8D59FFD4A67EFFFFFFFBFFF6F8F6FFFFFEF9FF666262FF000000FF0000
      00FF000000FF000000FF020306FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F4FFF1F7F1FFFBDFFBFF4E3751FF000601FF000000FF2A2B
      2BFF888888FF9F9F9FFFABABABFFA9A9A9FFDCDCDCFFE3E3E3FFE3E3E3FFE2E2
      E2FFE2E2E2FFE3E3E3FFE2E2E2FFE2E2E3FFECEBE8FFD3D4DBFF1C1D7CFF0203
      94FF03028AFF02027AFF0000C9FF0205D1FF0000CFFF8D8DCBFFFCFCEFFFF1F1
      F1FFF1F1F1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF3F3F3FFFBFBFBFFA8A7A4FF585752FF615F5AFF63625CFF60605AFF3F3E
      3AFF2C2C29FF3E4249FF20252CFF283956FF425984FF636B78FF9FB4D0FF6C7A
      8CFF2B3855FF4E5A70FF606868FF656E6EFF232824FF2A312CFF202620FF1C22
      23FF112347FF08255DFF001A45FF060806FF686661FFEBEBEBFFF9F9F9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041A4680009923D000076
      1B0000791E00007A1F0000781C0000771B0000781C00007A1F00007B1F00007B
      1F00007A1D0000781B0000791C00007B1F00007B1F00007C2000007B1F00007B
      1B000079190003862A00039746008BC3A400FEF6FB00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009BB5F3FF89A9F4FF5E7DDCFF5473D3FF6887
      E4FF394C8BFF4E546CFFFAF9EFFFFFFFEFFFFAF6EBFFEDDFD0FFEDDFCDFFF1EC
      DEFFFAF9EAFFFAF8E9FFF5F5E9FFDBCBB5FFC28956FFFCE9D9FFFDFFF6FFF2F4
      E8FFE8D8C5FFCA986CFFF1DBC4FFFCFEFFFFF9FAF3FFD3CDC9FF3E292DFF3825
      2DFF3B282FFF3C2830FF39262FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F6FFF4F3F4FFF7FCF7FFA4AAA6FF666668FF202121FF4141
      41FF989898FFABABABFFACACACFFA7A7A7FFE5E5E5FFEBEBEBFFE8E8E9FFEEED
      EBFFF6F6F0FFEBEAEAFFE8E8E8FFE9E9E8FFFAFAF5FF9292C0FF060680FF0403
      A1FF0202A5FF030471FF272BA9FF0309E9FF2929D7FFF4F3F5FFF7F7F3FFF3F3
      F3FFF4F4F4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F1FFF5F5F5FFAAAAA7FF5E5D57FF63625CFF66645FFF64625EFF696962FF8383
      7AFF7F7E77FF73706BFF63615BFF585853FF4B4841FF444647FF313A45FF1E22
      29FF2B3854FF3E454AFF5B675CFF51655DFF4C654EFF596159FF847F88FF4643
      4CFF3A3743FF303240FF222730FF9F9F9EFFF8F8F7FFF6F6F6FFEFEFEFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000045A86C00159A4500007B
      1C00007E20000080210000802100008021000081210000812100008121000081
      2100008121000082210000812100008122000082220000822300008323000084
      230000822000058E30000BA051008CC6A500FEF6FA00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4C5FFFF81A5FBFF7F9AEEFF829CE1FF657A
      AEFF5C70ACFF4457A4FFA0A2B7FFFFFFF2FFF3EEDFFFECE5D7FFEDDCCBFFFAF0
      DEFFFDFCEBFFFDFAE9FFF1EDDDFFEDEBDEFFE2D2BAFFF7D2B4FFFDF7E6FFF0EE
      DFFFEEEEE2FFE7DBCAFFF4E5CFFFFEFAEFFFEEECE0FFF7F8F0FFB08A89FF8955
      58FF8E5B5EFF8C595BFF8D595AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F6FFF7F7F7FFF5F5F5FFFEFEFEFFFFFFFFFFAEAFAFFF9394
      94FFB0B1B1FFB1B1B1FFAEAEAEFFA0A0A0FFE3E3E3FFF3F3F4FFF7F7F4FFD9D8
      E7FF797BB2FFE9E7EBFFF5F5F3FFF6F6F5FFD8D9D5FF393971FF080899FF0101
      A8FF0304B3FF000087FF343484FF080ACFFF8282DAFFFFFFF8FFF4F4F4FFF3F3
      F3FFF1F1F1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFFCCCCCBFF63625CFF686761FF6A6A63FF6A6962FF696762FF7E7D76FF8E8F
      85FF94928BFF9B9A93FF9F9E97FFA09F96FF9E9D95FF95948CFF8D8B81FF8481
      7AFF6D6B63FF575751FF3D3E39FF222320FF252A24FF262626FF312D32FF312C
      33FF524B56FF272425FFB4B2AFFFFFFFFFFFF3F3F3FFEFEFEFFFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000049AC6F001FA450000085
      23000088280000882A0000892A0000892A00008A2B00008A2B00008A2C00008A
      2C00008B2C00008B2E00008C2E00008D2F00008E3000008E3000008E3000008E
      3100008C30000A99400017A85B008BC8A600FEF5FA00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006A7A9CFFA6A7B9FFEAECECFFCEC4C4FF6474
      A6FF6A80B8FF5E78C3FF475C9DFFD9D3CAFFFAF0E1FFECE6DAFFEFDECEFFFBE7
      D1FFFDF6E3FFFCF8E7FFEFE8D8FFEAE4D6FFF4F3E6FFFDF5E3FFFDF7E8FFF2F0
      E4FFECE8DDFFEEEBE2FFFAF9F0FFFEFBF2FFF0EDE6FFF2F5F3FFE2D3CEFFBF89
      76FFD6A48EFFDCAD96FFE5B59EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF2F2F2FFF5F5F5FFF8F8F8FFFBFAFAFFF3F4F4FFC9CA
      CAFFC2C2C2FFB5B5B5FFAAAAAAFF8A8A8AFFB0AFB0FFFEFEFEFFEDEEEBFF8583
      9AFF4B476CFF908F8DFFE8E9E8FFFFFFFFFFA0A09BFF040511FF020297FF0102
      ADFF0205B1FF010392FF090971FF0000AFFF8283D2FFFFFFFCFFF7F8F8FFF1F1
      F1FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      DBFF7B7A75FF6B6964FF6E6D68FF6E6D68FF5C5B56FF454341FF41403DFF4948
      43FF65635DFF7A7A72FF83837BFF8D8C84FF96948EFFA0A09AFFA8A6A0FFAEAD
      A7FFB5B4AEFFB6B5AFFFB3B2ABFFAAA8A2FF94928EFF7B7A74FF61615CFF4949
      46FF242422FF272825FFD9D9D7FFF9F9F9FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CAF720029AD61000091
      370001943B0002943C0002943D0002943D0002953E0002963E0002963F000296
      4000029640000396410003984200039842000398430003994300049944000499
      44000197410011A3530021B067008ACAA700FEF5FA00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000350C00FFAD8C68FFFFFFE6FFD2CAC7FF738A
      BFFF8298C8FF7D94D0FF6984D2FFA0A4CBFFF6DFD2FFEFE5D9FFEFE5D8FFFCEE
      DDFFFDF7EDFFFEFCF4FFF7F5EFFFF2F1ECFFFBFAF6FFFEFFFBFFFEFEFCFFF1F0
      EFFFEDEDEDFFEFF0F0FFFDFDFEFFFFFFFFFFF1F2F3FFEEEFF0FFF7F7F6FFCBA4
      8FFFBD9177FFC59E85FFC69F84FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F6FFF3F3F3FFF4F4F4FFF8F8F8FFF8F8F8FFF7F7F7FFCECE
      CEFFC1C1C1FFADADADFF929392FF717171FF757476FFA2A2A3FF848586FF8484
      7FFFA09E9BFF77777CFFAEAEA9FFFFFFFFFF9F9F9BFF05050DFF010198FF0103
      AFFF0103A7FF010283FF111173FF0000AEFF494BC5FFFEFEF9FFF9F9F8FFF1F1
      F1FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007776
      71FF6A6A64FF72706AFF74726CFF676560FF3D3C38FF32312EFF3D3C39FF5D5C
      58FF71706AFF8B8B84FF898881FF87877FFF898881FF8E8D87FF95958DFF9B9A
      94FFA2A19BFFACABA5FFB4B3ADFFBCB9B4FFC3C1BBFFC7C6C0FFC3C1BCFFB7B6
      B0FFACABA5FFA4A29CFFE0DFDEFFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004FB3740033B67000019C
      4800069F4B00069E4C00069E4C00069F4C0007A14D0007A14E0007A14E0007A1
      4F0007A1500008A2500008A2510008A2510007A2510008A4520009A3530009A3
      530005A14F0019AE620029B670008ACBA700FEF5FA00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000521900FF9A7255FFFFFFFEFFDCE3E8FF7DA0
      DCFF6381C0FF6A85C3FF859DDBFF889FE8FFBFB6CEFFF5D9CAFFEFE4D7FFFDF8
      EAFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFAFAF9FFEFF1
      F2FFEEF1F3FFF4F7FAFFFFFFFFFFFFFFFFFFF3F5F6FFEEF0F1FFF9FBFEFFE9E0
      D9FFCBB7A7FFC4AEA0FFB39D92FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFF9F9F9FFF4F4F4FFF3F3F3FFF5F5F5FFE4E4E4FFB6B6
      B6FFB5B5B5FF949494FF717171FF818181FFACACACFFABABABFFAAAAAAFFB4B5
      B0FFA0A1B2FF3032A2FF656687FFFFFFFFFFD2D4CBFF111118FF000198FF0203
      B5FF0202ADFF030476FF1C1B7AFF0000B0FF3637CEFFFCFCF7FFF2F2F0FFEFEF
      EFFFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000696A
      60FF71716AFF75736DFF6C6B64FF454440FF373633FF4B4A46FF6C6A65FF7E7D
      77FF999891FFBAB9B2FFB6B5B0FFB4B4ADFFB4B2ACFFB3B2AAFFB1B0A9FFAFAE
      A7FFADACA5FFADACA6FFAEADA7FFB1AFA9FFB5B3AEFFBBBAB4FFB8B6B1FFAAA9
      A3FFB1B0A9FFDCDAD5FFF3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052B679003FBF7D0006A7
      57000CA95A000CA95A000CA95B000CAB5C000CAB5C000DAB5C000DAB5D000DAB
      5D000EAC5D000DAD5E000DAD5F000DAD5F000FAD5F000FAE61000FAE610010AE
      61000BAC5F0022B8710032BD79008ACDA900FDF4F900F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6852FFC0927BFFC0A8ACFF8E8397FF9CAE
      CEFF90AEE0FF88A2D8FF9EB5EAFF99AEEBFF879ADEFFD5BCBFFFF8DDCBFFF4E9
      DAFFFDF8EBFFFFFFFFFFFCFAF6FFFCFAF6FFFBF7F3FFF8F1ECFFE9E1D8FFE3D8
      CDFFE5DDD3FFECE2D6FFE9D7C4FFEADED0FFE6DDD2FFEBDFD4FFF5EBE1FFFFFF
      FFFFFFFFF2FFFFFEEDFFFFFFF3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFCFCFCFFF9F9F9FFF7F7F7FFF9F9F9FFA8A8A8FF9292
      92FFA6A6A6FF7F7F7FFF8E8E8EFFB1B1B1FFBFBFBFFFD2D2D2FFE4E4E4FFD9D9
      D4FFB8B8C7FF0202BAFF000068FF5C5C94FFC8C9D0FF3E3E47FF00009BFF0606
      C0FF0908B5FF050672FF080889FF0000C0FF6C6CE0FFFFFFFCFFF8F8F7FFF3F3
      F3FFF1F1F1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006F6D
      63FF74756DFF6A6963FF464541FF343330FF53524DFF76746EFF898880FFA09F
      98FFCDCCC5FFD8D7D1FFDBD7D0FFDBD8CFFFDBD7D0FFDAD8D3FFDAD8D2FFD9D8
      D1FFD7D6D0FFD6D4D0FFD6D4CFFFD0CECAFFC8C7C3FFC7C4BFFFBAB8B1FFBAB8
      B0FFE7E6E3FFF7F7F6FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000057BB82004AC68A000EB1
      650013B3680014B3690014B3690015B4690015B6690016B66A0016B66A0016B6
      6A0017B76B0017B76C0017B76C0017B76C0017B76E0018B76E0018B86E0019B8
      6F0015B66D002DC17F003CC483008BD0AC00FDF4F900F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCD6BAFFFFDBBBFFBE8D74FF2D1D25FF1E19
      16FF848F9EFFB9D1FDFFAEC5F7FFA5BAF7FF819EF1FF8B97CEFFDEBEBBFFF2D7
      C4FFE7CDB8FFE3C4A7FFDCAA7FFFE0AF84FFCB9463FFC48E5BFFCA9666FFCC97
      68FFD29E6FFFB37339FFA75F20FF9F5F25FF92581FFFA46733FFDC9969FFF6E5
      DAFFFEFAF4FFFDF1E5FFFBEBD9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFDFDFDFFFDFDFDFFFFFFFFFFFAFAFAFF9C9C9CFF9C9C
      9CFFAFAFAFFFAFAFAFFFBABABAFFC0C0C0FFD6D6D6FFFAFAFAFFFFFFFFFFEBEB
      EAFFC9CACAFF8687DCFF1E22CAFF00009CFF11116FFF27274CFF050693FF0102
      C5FF0504A5FF060780FF0102A9FF0001CEFFC2C3F1FFFFFFFFFFFDFDFDFFFDFD
      FDFFFCFCFCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000736F
      66FF6E6C65FF45433FFF3A3835FF4D4C47FF73726CFF7F7E77FF9C9B92FFC3C2
      BAFFA4A59EFF90908BFFA8AFB1FFB9C0C4FFC8CBCBFFD4D3D2FFDCDAD5FFE1E0
      DBFFE4E2E0FFE9E8E3FFEBE8E4FFE9E7E6FFE9E8E6FFE7E5E4FFE1E1DDFFF2F2
      F0FFF7F8F8FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000058BF880057CF960017BB
      71001DBD75001EBD76001FBD76001FBD76001FBE77001FBF780020C0780020C0
      780021C0780021C1790022C1790022C1790022C17B0023C17B0024C27B0024C2
      7B0021C0790038CA8A0046CB8E008CD3AF00FDF4F800F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087663CFF7D613BFF71502BFF5E3F24FF583B
      1DFF7D6042FFA3B4D2FFACCDFDFFA1C0FFFF96B5FFFF7C9BEAFF6D82D3FFBBB4
      D2FFDEBFA4FFC07E49FFC78A58FFD5AB84FFD4A67EFFD19C6DFFDCAB81FFE8BA
      95FFE4AC7EFFA76224FFAF6A2EFFB27642FFB48051FFC49A74FFE3B896FFE5BE
      A1FFFDFDFDFFFFFFFEFFEFE3D8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFAEAEAEFFAAAA
      AAFFC2C2C2FFCECECEFFD1D1D1FFCBCBCBFFF7F7F7FFFFFFFFFFFEFEFEFFFCFC
      FCFFEDEDEDFFFFFFFCFFE5E5FAFF6F6FE1FF000088FF06075DFF0F1392FF0407
      D6FF0102B7FF0506B9FF0000D2FF3333DBFFF9FAF9FFFFFFFDFFFDFDFDFFFEFE
      FEFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006562
      59FF423F3AFF33322FFF4D4C48FF696762FF83837DFF898982FFAAABA3FFB5AD
      ACFF7E7075FF626360FF647B98FF6B88ACFF7B95B3FF939698FF9D9B93FFA5A4
      9DFFC4C1C1FFCCC9DDFFD9DBE3FFE2E4E6FFE9E7E6FFE8E7E5FFF3F3F3FFF3F3
      F3FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006AC9980072DDAC0032C9
      860027C47D002BC680002BC681002CC681002CC681002DC682002DC783002FC8
      830030C8830031C9840032C9850032C9850034C9860034C9860034C9860035CA
      86002EC7820061DAA4005ED29B0093D5B500FCF3F800F0F0F000F0F0F000F0F0
      F000F1F1F100F3F3F300F3F3F300F3F3F300F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000231100FF341C00FF361E00FF40280BFF3123
      17FF190F03FF362A20FF907F76FFCFC8CCFFC0CCE7FFA8C1FAFFA7BDF9FFACBD
      EBFFE4D7C4FFC99A6DFFE0D1BDFFE6E1D1FFDDCEB8FFCEAF8EFFC28B58FFDEB4
      8CFFDDB38AFFB66F31FFB97C45FFC1905FFFC89E75FFCD9B6FFFC58758FFCA92
      69FFF9F2EDFFFFFFFEFFF3E5D8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFCBCBCBFFB3B3
      B3FFC1C1C1FFCACACAFFC6C6C6FF9E9E9EFFF3F3F3FFFFFFFFFFFEFEFEFFFEFE
      FEFFFFFFFFFFFEFDFDFFFFFFFFFFF9F9FCFF3636ACFF00007BFF181B50FF0B10
      B9FF0406C9FF0004D7FF0306E0FFBEBFF1FFFFFFFDFFFDFDFDFFFEFEFEFFFDFD
      FDFFFDFDFDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A7
      A3FF797671FF4A4C49FF595B56FF7B7B76FF878680FF989791FFC5C5BDFFB5A4
      A9FF98878CFF7F898EFF6E88ABFF6C8AAFFF8393A4FF85837CFF83827BFF9D99
      94FFADAEAAFF8C9896FF90ACA2FFA9ADB9FFDDCFD7FFECEDEBFFF5F4F5FFF0F1
      F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009FDABC0060D59E0093EB
      C4005AD69E0052D4990053D59A0054D59A0054D59B0056D59C0056D69C0057D6
      9C0058D69D0058D79E0058D79E0059D79E005AD79E005BD79F005BD7A0005AD7
      9F0075E1B1009DEFC90054C99000C9E7D800F7F2F500F0F0F000F0F0F000F1F1
      F100EFEFEF00C7C7C700EBEBEB00E5E5E500BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004F3A47FF574D57FF4B4557FF210E00FF3A27
      14FF88654BFFCE9F7EFFE3B394FFF0C09FFFFCCBA5FFE7BA95FFA69A8CFFFFFE
      F4FFF4F4E7FFDAC2A2FFCAA57DFFCEA783FFD6B08AFFE1BE99FFEDCBAAFFF5DD
      C3FFE9D4BAFFB78351FFC4996FFFBD8859FFB27840FFCE9D6FFFEBC7A8FFF2D8
      C0FFF4E2D3FFFEFEF6FFF0E1D1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FFBFBF
      BFFFA4A4A4FF9B9B9BFF797979FFAAAAAAFFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFDFDFDFFFDFDFDFFFFFFFFFFD4D4F2FF1514A5FF0C0D35FF0B0F
      79FF0506A6FF2526C2FFACACE6FFFFFFFDFFFEFEFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFFDFDFCFFACACA9FF6B6A65FFA2A19CFF84837DFFB9B8B1FFD2CFC8FFCFCC
      C6FFCFCFC7FFCCCCC8FFBFC3C4FFBBC2C6FFC2C0BDFFAEACA5FFACAAA2FFBDBE
      BDFF95A2A8FF9A9D64FF919E63FF9EA3A7FFE7E2E6FFF7F7F6FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECF0EE006ED1A2006AD9
      A6009CEDC800B0F2D200AFF2D100AEF2D100AEF2D100AFF2D100AFF2D100AFF2
      D100AFF2D100AFF2D100AFF2D100B3F6D500B0F4D300AFF2D200B4F7D700ADF3
      D20092E9C20052CD9400A0DEC000FAF4F600F1F0F000F0F0F000F0F0F000F2F2
      F200EBEBEB00AAAAAA00E0E0E000D5D5D500A9A9A90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006077CCFF5E79D2FF4C63B6FF51486CFFCB94
      75FFFBC8A3FFEEC3A7FFEAC0A2FFE6B998FFEDB790FFFAB987FF96714FFFDBDC
      D4FFFFFFF6FFF2E1C8FFF1D5B8FFF6DCC1FFF7DEC3FFF5DBBFFFF4D6B8FFEFD0
      B0FFEAA06AFFDCBA9CFFDECEB8FFE4D4BEFFECDCCBFFF7EDE4FFFAF3EDFFF9F1
      E5FFF7EFDFFFFEFAEDFFECD6C1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2
      B2FF6C6C6CFF6C6C6CFF686868FFC5C5C5FFFFFFFFFFFEFEFEFFFEFEFEFFFFFF
      FFFFFFFFFFFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFCDCEEFFF2F2F9AFF1D1E
      80FF0B0B69FF42428FFFF4F4F5FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EFFFFAFAFBFFCDCDCAFF9A9993FFA1A09AFF8C8C86FFD6D4CFFFDEDDD8FFD4D3
      CDFFD4D3CDFFD7D5CFFFDEDAD5FFDFDBD3FFC4C2BAFFE1E0DCFFF1EFEDFFE5E4
      E4FFD4D3D4FFCFC1B6FFC6B6A6FFD1CCC5FFF6F8F7FFF3F3F3FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F2F400F3F6F400A8E1
      C7008CD9B40098DDBB0098DDBB0098DDBB0098DDBB0097DDBA0097DDBA0097DD
      BA0097DDBA0098DDBA0097DDBA007AC09D008ACFAD0094D9B70077BD9A008ED6
      B2008CDAB500C5EBDA00FFFAFD00F1F0F000F0F0F000F0F0F000F0F0F000F1F1
      F100ECECEC00B5B5B500E4E4E400D4D4D400B1B1B10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087A3EEFF627BC9FF6782D1FF617CD6FF6E61
      86FFC08F78FFDDAB85FFE2B28DFFE1B28DFFE2B28DFFEDB990FFC99468FFB5AB
      9FFFFFFFFBFFFAF0DCFFF2DBBEFFF3DCC2FFF2DCC1FFF1E0C7FFEFE1CBFFF4F2
      E5FFBE8E5FFF917965FFF6F4EEFFF4F4EAFFFFFBEFFFFEFFFBFFFFFFFDFFFFFF
      F2FFFFFAECFFFFF5E7FFFEF3E3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FF8080
      80FF808080FF858585FF7E7E7EFF7A7A7AFFECECECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2EBFF292990FF0202
      6EFF00006BFF000062FF2D2D88FFF3F5F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FFECECECFFB3B2ADFFA8A6A0FF9E9D96FFA8A7A1FFC6C4BFFF8D8E8CFFD9D8
      D3FFE1DFDBFFD5D4CCFFD8D9CDFFD6D5D1FF9B9A94FFBCBBB8FFD3D2D1FFE3E1
      DFFFF0EEEBFFF4F5F6FFEEEEEFFFEEEDEBFFF2F2F2FFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFF0EF00F2F0F100FBF3
      F700FBF3F700F9F3F600F9F3F600F9F3F600F9F3F600F9F3F600F9F3F600F9F3
      F600F9F3F600F9F3F600FDF7FA00C9C3C600E2DCDF00FDF6FA00C1BBBE00F0E9
      EC00FEF6F900F9F3F600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1
      F100ECECEC00BCBCBC00E9E9E900D5D5D500B7B7B70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CB5F7FF6781D7FF627ED0FF546BC6FF2F41
      99FF827499FFF1BF9BFFE7B999FFE5B896FFE4B691FFE3B592FFE5B28BFFB496
      7CFFF1F0E5FFF8F2E3FFF6F1E0FFF6F4E4FFF4F2E3FFF1EBDEFFEFE9DBFFEFEB
      DEFFD4C3AAFF532D05FFBEAE9BFFFAEEDBFFFFF7E9FFFFFFF1FFFFFBEDFFFFE9
      DCFFFFE8DCFFFFEBD8FFFFECD9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFB1B1B1FF8F8F
      8FFF9A9A9AFF989898FF969696FF848484FFADADADFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFCFF4E4FB1FF020396FF0000
      8AFF01018DFF01018BFF00007CFFABACD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F3FFE8E7E6FFADABA6FFACABA5FF9E9D98FF7B7B77FF9C9B96FF939490FFD5D4
      D2FFE7E6E2FFEBEAE4FFEBECDDFFC9C9C3FFB0AFABFF9A938FFF4C4946FFB3B3
      B2FFF0EEECFFCCCAC7FFEEEDEBFFF7F7F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F1F0F000F1F0F000F1F0F000F1F0F000F1F0F000F1F0F000F1F0F000F1F0
      F000F1F0F000F0F0F000F4F4F400CBCBCB00D9D8D900F8F7F800C4C3C300E9E8
      E900F2F2F200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F2F2
      F200EAEAEA00BEBEBE00EEEEEE00D1D1D100C7C7C70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1E4FFFF91AAF5FF6B86DFFF6A82DCFF8690
      CDFFF2D5C8FFFECAAAFFF1C6A9FFE9C0A3FFE7BC9DFFE8BC9DFFEBBD9BFFCFA0
      7BFFDBD1C1FFF0EADDFFECE7DAFFEDEBDCFFF0EDE0FFF6EFE2FFFCF4E5FFF1E4
      D1FFF5E8DAFFB39370FF66462BFFD1C6BBFFCCB9A6FFBB9B7EFFB48562FFA86D
      45FFA6693AFFC8B7B4FF777AA9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFFA4A4A4FFACAC
      ACFFAFAFAFFFAEAEAEFFABABABFFA1A1A1FF959595FFF0F0F0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C5EBFF0609A1FF0303A0FF0302
      A5FF0204A9FF0203AAFF00009CFF4645B4FFFCFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FFECEBEBFFAEADA8FFB0AEA8FF989792FF0D0C0BFF171111FF2C2727FF3631
      31FF514F4DFF716F6EFF989897FFBAB9B7FFC8C6C4FF8D8580FF514E4CFFE0DE
      DEFFE9E5E5FFB6B4B0FFF5F4F3FFF5F5F5FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F3F3F300D5D5D500D4D4D400FAFAFA00C9C9C900E1E1
      E100F2F2F200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F3F3
      F300E8E8E800C2C2C200F3F3F300CCCCCC00D2D2D20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000696C6BFFC8D9FEFF9DADD9FF7B869CFF6654
      56FFEBCEAFFFFFE5CEFFFAC8A8FFF6C9AAFFEEC2A6FFEAC0A3FFEAC2A5FFE5BA
      98FFE0C8ABFFFFFDF2FFFBF5E9FFF2ECE0FFE3DBCEFFCEC3B3FFB8A791FF9E8B
      76FF836D55FF664C35FF985D2DFF894612FF422507FF6C5B61FF653409FF6830
      00FF3C292EFF2C3884FF3B51A5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2FFB7B7B7FFC0C0
      C0FFC2C2C2FFC2C2C2FFBFBFBFFFB7B7B7FFA7A7A7FFE5E5E5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A4E6FF0000A1FF0000B0FF0203
      BCFF0806BFFF0407C6FF0002C4FF1010B7FFE6E6F5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F1FFF2F2F2FFCBCBC7FFB7B5B0FF87847FFF08130DFF042818FF041F13FF0215
      0BFF020C05FF000000FF3A3A38FFC6C5C0FFE1DFDCFFCFCDCBFFC2C0BEFFEDE7
      E7FFEAE6E5FFE6E6E4FFF7F7F6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F3F3F300E1E1E100CDCDCD00FBFBFB00D3D3D300D8D8
      D800F4F4F400F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F5F5
      F500E0E0E000CDCDCD00F6F6F600C9C9C900D9D9D90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080000FF998B71FF3E2E21FF0F0000FF1802
      00FF5F4126FFF8E4C7FFFFE3CAFFFBC8A7FFFCCDAEFFF8CFB1FFF3CCB1FFF2C7
      A8FFDAB797FF8D867BFF8C755BFF6F5537FF573B1AFF482C0AFF402200FF3C1C
      00FF3F1E00FF311600FF82603BFFE68836FF5A476BFF5069DEFF333274FF292A
      57FF283F9CFF4762C1FF6688D4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFCACACAFFD2D2
      D2FFD3D3D3FFD4D4D4FFD1D1D1FFCBCBCBFFBCBCBCFFECECECFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9DE5FF0000B5FF0101C9FF0102
      D3FF1314E6FF080AE1FF0002DAFF0B0CCCFFDFDFF3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF3F3F3FFF6F6F5FFC8C6C1FF64625FFF000804FF052C19FF053F21FF0645
      25FF063F23FF04120CFF959291FFE4E3DDFFE3E1DDFFD4D3D0FFBBB8B5FFEFE8
      E9FFECE8E8FFF2F2F1FFF4F4F5FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F1F1F100ECECEC00CDCDCD00F5F5F500E5E5E500CFCF
      CF00F3F3F300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F8F8
      F800D3D3D300E0E0E000F2F2F200C8C8C800E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C0A00FF150500FF0F0300FF2B1600FF301B
      00FF230C00FF6B4E35FFE2CFB6FFFFE6CEFFFBCBADFFFCCDADFFFDCEADFFFFD1
      B1FFEFCCAAFF382512FF250D00FF462600FF452700FF472900FF492A00FF4C2C
      00FF4E2B00FF432500FF51320EFFAB877BFF7B6C98FF4F6AD1FF5577D5FF6185
      E0FF7DA2EEFF7DA5F3FF83A9F3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFD9D9D9FFDEDE
      DEFFDFDFDFFFE1E1E1FFDFDFDFFFD6D6D6FFD1D1D1FFFAFAFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C5EEFF0002CFFF0206E8FF0304
      E7FF0F16FBFF080DEFFF0000E9FF2E2EE3FFF5F7F9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFFDFDFDFFD6D5D0FF5B5B56FF22211FFF201C1DFF131111FF0A0A
      0AFF000602FF0F1210FFC2C1BDFFE2E1DBFFDFDDD9FFC8C7C1FFC8C3BEFFE5DE
      DCFFE8E6E4FFF6F7F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F5F5F500D6D6D600E5E5E500F9F9F900D0D0
      D000DFDFDF00F8F8F800F4F4F400F2F2F200F2F2F200F3F3F300F8F8F800E6E6
      E600D0D0D000F7F7F700E6E6E600CCCCCC00F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000220F01FF110400FF130701FF301A01FF2F19
      00FF372000FF250F00FF472714FFE8D2B7FFFFE7CFFFFBCAAAFFFCD1B3FFFCD2
      B5FFFFE5C5FFBDA182FF120500FF522E00FF522E00FF512E00FF502D01FF542E
      00FF4E2C00FF4D2900FF674016FF7E9AEEFFA393AEFFAB929BFF678CE1FF5C78
      CFFF5471CEFF7398EEFF86B2F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDFFE8E8
      E8FFEBEBEBFFEBEBEBFFE9E9E9FFE1E1E1FFE9E9E9FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFCFF4E4EE5FF0000F7FF0405
      F9FF1016FCFF1921FAFF0001F9FF9192F1FFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF1F1F1FFE9E9E9FFD5D4D2FFB2B1ADFF757570FF726E65FF605B53FF4F4D
      4AFF4F4C4AFF73716DFFC9C8BFFFCCCAC3FFCDCCC5FFBFBDB7FFC7C6BFFFD6D5
      CFFFE9E9E5FFF3F3F4FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F4F4F400EAEAEA00D1D1D100F8F8F800F0F0
      F000D1D1D100D8D8D800E8E8E800EFEFEF00EFEFEF00E7E7E700D9D9D900D3D3
      D300F0F0F000FAFAFA00D2D2D200DEDEDE00F3F3F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000210E00FF1A0901FF1C0C00FF321B00FF2F18
      00FF321C00FF341E00FF2B1200FF604021FFEEE0C7FFFEE1C9FFFCD3B6FFFCD3
      B4FFFED7BAFFFCE2C0FF483824FF280C00FF3B1C00FF412400FF472A01FF4B2B
      01FF422601FF4D2A01FF472400FF7E87ADFF767BC4FFC17344FF3C3779FF1D34
      A3FF405BCFFF7093ECFF83ABEEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF5F5
      F5FFF6F6F6FFF5F5F5FFF3F3F3FFF1F1F1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDF6FF1111F4FF0000
      FCFF0E0EFAFF0001F9FF1C1DF3FFEBEDFAFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      F5FFE1E1E1FF3A3939FF1A1919FF252424FF10110FFF191814FF181712FF2726
      24FFC6C4C0FFECEAE6FFD2D0CCFFCBC9C4FFC8C5BFFFBBBAB3FFB8B7B0FFDDDB
      D6FFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F6F6F600DDDDDD00D8D8D800F7F7
      F700F6F6F600E4E4E400DCDCDC00DCDCDC00DCDCDC00DDDDDD00E5E5E500F6F6
      F600FAFAFA00DDDDDD00D6D6D600F3F3F300F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000371D01FF261100FF251200FF331A01FF2D17
      00FF2C1701FF381F01FF3D2401FF260C00FF8D694CFFFFF6E1FFFDDCC2FFFCCF
      AFFFFCD3B4FFFFDBBCFFE5C8A8FFA6896EFFA68A6AFF88643BFF542F04FF4F2C
      01FF512D02FF4F2A01FF5E340FFFD2C6B4FF9AC0FFFF9A8DACFF9C655EFF4C6C
      D5FF7FA0F9FF9EBDFAFFCFDDF7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFF9F9F9FFF8F8F8FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBF5FF6A6A
      F0FF5C5CF5FF7576F0FFD7D9F6FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFFDFDFDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F6FFDEDEDDFF201F1EFF080902FF11110AFF050503FF040503FF000000FF1E1D
      1BFFDAD9D9FFFFFFFFFFF7F7F7FFF3F2F2FFF0F0EFFFEEEEECFFEAE9E7FFF2F2
      F1FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F2F2F200E1E1E100DADA
      DA00E7E7E700F2F2F200F4F4F400F5F5F500F5F5F500F5F5F500F3F3F300EAEA
      EA00DCDCDC00DCDCDC00F5F5F500F2F2F200F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F1800FF271200FF2D1700FF321A00FF2913
      00FF321A01FF3C2201FF3D2301FF2E1400FFA77859FFFFF2DDFFFCE8D3FFFCD7
      BCFFFCCFB0FFFFE7CCFFFFF6D9FFD9C2A8FF806650FF3E2512FF2E1801FF2C16
      01FF281400FF230C00FF7A5B3AFFFFFFFBFFF8FBF3FFD7E6F8FFE4B392FFD3D1
      D8FFECF4F4FFF6F5EBFFFFFDE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FDFFFFFFFCFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F7FFDCDCDCFF1B1B1AFF020300FF090905FF000000FF000000FF000000FF4D4B
      49FFF1F0F0FFF3F3F3FFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F3FFF0F0
      F1FFF0F0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F5F5F500EDED
      ED00E1E1E100E0E0E000DEDEDE00DDDDDD00DDDDDD00DEDEDE00DEDEDE00E0E0
      E000E8E8E800F3F3F300F2F2F200EFEFEF00F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003A1F01FF2C1601FF341B00FF301900FF2913
      01FF381F01FF3B2100FF3C2300FF381A00FFC49680FFFBDBC5FFFBE1C9FFFDE8
      D1FFFFECD2FFC8A484FF523424FF280F00FF210B00FF281400FF2E1A00FF311A
      00FF2C1801FF270E00FF9A7E58FFFFFFF2FFFFF7DFFFFFFCE3FFFCF4E1FFFAED
      D6FFFFFADCFFFFF5DAFFFFF2DBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F3FFE8E8E8FF797977FF595957FF5F5F5DFF5F5E5AFF595955FF474743FF9C9C
      99FFFBFBFBFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1
      F100F3F3F300F0F0F000EDEDED00ECECEC00ECECEC00EDEDED00EFEFEF00F2F2
      F200F2F2F200F0F0F000F0F0F000F0F0F000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4FFF3F3
      F3FFDFDFDFFFC6C6C6FFB5B5B5FFAFAFAFFFB0B0B0FFB0B0B0FFB0B0B0FFB0B0
      B0FFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAEAEAEFFAFAFAFFFBCBC
      BCFFCECECEFFDCDCDCFFEDEDEDFFF5F5F5FFF3F3F3FFF0F0F0FFF0F0F0FFF0F0
      F0FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1F1F0FFF6F6F1FFFCFCF2FFFFFFF3FFF7F8F1FFF2F3EFFFF3F4EFFFF2F3
      EFFFF7F8F1FFFFFFF3FFFCFCF2FFF6F6F1FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F3F2FFF6F6F6FFF8F8
      F8FFFAF9FAFFFEFDFEFFFCFAFCFFF8F5F7FFF7F6F7FFFAFAFAFFF8F8F8FFF9F9
      F9FFFEFDFEFFFAFAFAFFF6F6F6FFF1F1F1FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F3FFD8D8
      D8FFC4C4C4FFCECECEFFDADADAFFDBDBDBFFDBDBDBFFDBDBDBFFDCDCDCFFDDDD
      DDFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDEDEDEFFDCDC
      DCFFC9C9C9FFB7B7B7FFC5C5C5FFE2E2E2FFF4F4F4FFF3F3F3FFF0F0F0FFF0F0
      F0FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F0FFFBFA
      F2FFFAFBF2FFDFE1EEFFA7ABE2FF7D7EDBFF5C5FDCFF4B50DBFF4D51DBFF4B50
      DBFF5C5FDCFF7B7DDCFFA7ABE3FFE2E3F0FFFCFCF4FFFBFBF3FFF1F1F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF4F4F4FFF8F8F8FFFEFBFEFFF8F3F8FFEBE6EAFFC8C0
      C7FF979297FF7C7B7CFF707670FF565A56FF4F4F4EFF606060FFDCDBDCFFC5C6
      C5FF6F756EFFA4A3A5FFE7E3E7FFFDFBFDFFF5F5F5FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E0FFC3C3
      C3FFD2D2D2FFE6E6E6FFEAEAEAFFEAEAEAFFE9E9E9FFEAEAEAFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEFEFEFFFEEEE
      EEFFDDDDDDFFBABABAFFAFAFAFFFC1C1C1FFE3E3E3FFF5F5F5FFF3F3F3FFF0F0
      F0FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFF0FFF7F6F2FFFFFFF9FFCACC
      EAFF6B6EDBFF2429D9FF0205DCFF0000DEFF0000E0FF0000E1FF0000E1FF0000
      E0FF0000DFFF0000DDFF0204DCFF2327D8FF6F72DFFFCDCFEDFFFFFFF5FFF6F6
      F1FFEFEFF0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF2F2F2FFFDFBFDFFF2ECF1FFD5D1D5FFA0A7A0FF657867FF3E5B41FF2D4F
      2FFF17461BFF0D4312FF094510FF023A09FF002500FF000700FF464B48FF3F45
      3FFF001000FF162815FF404C3FFF818281FFECEAECFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCBFFCECE
      CEFFE7E7E7FFEAEAEAFFE8E8E8FFE9E9E9FFE9E9E9FFE9E9E9FFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF0F0
      F0FFEEEEEEFFD1D1D1FFBCBCBCFFB8B8B8FFC6C6C6FFE7E7E7FFF4F4F4FFF1F1
      F1FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFBFBF2FFECEEF3FF7A7FDFFF0C12
      D9FF0000E1FF0000E6FF0000E4FF0000E3FF0000E2FF0000E2FF0000E2FF0000
      E2FF0000E1FF0000E2FF0000E4FF0000E4FF0000E0FF0F12DAFF747ADFFFEEF0
      F6FFFDFCF3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF9F8
      F8FFF8F7F8FF9CA29DFF446646FF2C6C32FF176C20FF177220FF1A7925FF1E7F
      2AFF26872FFF2A8A33FF288632FF217A2BFF196D22FF0A3D10FF010703FF0125
      05FF07390DFF052F09FF0A400CFF084A0BFF859485FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBFFFDDDD
      DDFFECECECFFE7E7E7FFE8E8E8FFEAEAEAFFEAEAEAFFEBEBEBFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
      EEFFF1F1F1FFDCDCDCFFCFCFCFFFD1D1D1FFC1C1C1FFCFCFCFFFEDEDEDFFF4F4
      F4FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCFCF2FFCFD1EAFF3C41D9FF0000E1FF0000
      E9FF0000E5FF0000E4FF0000E4FF0000E5FF0000E5FF0000E7FF0000E7FF0000
      E6FF0000E5FF0000E4FF0000E4FF0000E4FF0000E4FF0000E7FF0000E0FF3B40
      DCFFCFD1ECFFFDFDF2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F1F1FFF8F8F8FFDEDB
      DDFFBFBEBEFF235928FF14751DFF2D9438FF3BA646FF3CAF49FF39B748FF38B6
      46FF37B243FF3BB246FF38B046FF32A03BFF2C9735FF207B28FF0B2C0CFF2592
      2FFF249430FF176220FF105118FF0D6A16FF689369FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCBCBCFFE3E3
      E3FFECECECFFE8E8E8FFEAEAEAFFECECECFFECECECFFECECECFFECECECFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEF
      EFFFEFEFEFFFDFDFDFFFD0D0D0FFE1E1E1FFDADADAFFC9C9C9FFDFDFDFFFF4F4
      F4FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0EFFFFEFEF3FFC3C6E8FF252ADBFF0000E8FF0000E9FF0000
      E6FF0000E7FF0000E8FF0000EBFF0000EBFF0000E9FF0004EAFF0004EAFF0003
      EAFF0000E9FF0000EBFF0000E8FF0000E7FF0000E6FF0000E5FF0000E8FF0000
      E7FF282EE0FFC9CCEDFFFCFBF1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF1F1F1FFF3F4F5FFF6F7F8FFFAFDFFFFF9FDFFFFF6FCFFFFE6EBEFFF5151
      52FF292B29FF216727FF2A9634FF37AB42FF40BB4DFF42C050FF45C353FF4BC6
      57FF4AC456FF44C554FF41C551FF38B845FF31AB3CFF32AE3DFF37A442FF59E2
      6AFF4CD15CFF2B9236FF196A20FF107219FF729C74FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBDFFE3E3
      E3FFEEEEEEFFEDEDEDFFF1F1F1FFF1F1F1FFF2F2F2FFF1F1F1FFEFEFEFFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEFEFEFFFE7E7E7FFD4D4D4FFD7D7D7FFDEDEDEFFD4D4D4FFDBDBDBFFEFEF
      EFFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFEFF0F0FFFCFCF4FFDADAF1FF252DDDFF0000EBFF0000EAFF0001E9FF0001
      EAFF0003EDFF0002EDFF0312E8FF3743E7FF7379E8FF8792E6FF8893E8FF8892
      E6FF6F75E6FF2833E8FF0009EEFF0002EAFF0001E9FF0001E9FF0000E8FF0000
      E9FF0000EAFF2A30E3FFD6D8EFFFFBFAF1FFEFEFF0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFEFEFEFFFF8F8
      F9FFF6F9FCFFE8EBF0FFD3CFD2FFB8ACA8FFA3948FFF9F8479FF7A614DFF0729
      0CFF000E00FF1F7526FF3CBD48FF4CD25BFF66E776FF73E981FF76E984FF7AEA
      88FF79EC8AFF74ED87FF6DED80FF5BE36DFF49D458FF47D357FF5BE96EFF72EE
      87FF62DB75FF40BE4FFF269230FF12851CFF88AF8BFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0FFE4E4
      E4FFEEEEEEFFEAEAEAFFE8E8E8FFE7E7E7FFE7E7E7FFE9E9E9FFEDEDEDFFEFEF
      EFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEFEFEFFFE5E5E5FFD9D9D9FFCFCFCFFFCDCDCDFFD9D9D9FFF0F0
      F0FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF5F4F0FFF1F2F2FF4552E2FF0000ECFF0003ECFF0004EBFF0003EBFF0008
      F0FF000EECFF4A57E8FFBABDECFFECEDEFFFFEFEF3FFFFFEF1FFFEFDF1FFFFFE
      F1FFFFFFF3FFCAC9EFFF0C1EEAFF0004EEFF0003EBFF0004EBFF0003EBFF0002
      EAFF0001EAFF0000EAFF454BE4FFF8F8F6FFF4F4F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F1FFFEFEFEFFD6D6
      DBFF9F8878FF9D6D33FF975718FF934B00FF985000FFAA5A00FF914B00FF1449
      11FF1B7628FF309F3BFF4FD460FF64E676FF82F491FF8DF79BFF90F59CFF92F5
      9FFF8DF6A0FF93F9A5FF95FBA3FF82F493FF6DE87FFF59E06AFF57E069FF5EE2
      6FFF59DB6BFF40C94EFF2BAA37FF148D1EFFA2BCA3FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3C3C3FFE7E7
      E7FFF0F0F0FFDCDCDCFFC9C9C9FFC8C8C8FFC9C9C9FFCDCDCDFFE2E2E2FFF0F0
      F0FFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFF0F0F0FFF0F0F0FFEBEBEBFFDBDBDBFFC7C7C7FFCACACAFFEAEA
      EAFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFFEFDF2FF8E93E9FF0008EAFF0006EFFF0006EDFF0005EEFF000DF2FF061B
      EBFF8D93ECFFF9F9F5FFFFFFF2FFF4F4F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4
      F0FFFCFAF2FF838DEFFF0318F0FF0006F0FF0007EFFF0007EEFF0006EEFF0006
      EDFF0005EBFF0003EEFF0000E9FF8C92ECFFFFFFF4FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F6F6FFE0E8ECFF8968
      5EFF8C4100FFC17800FFC68400FFC88B00FFC88C01FFC98C02FFB77600FF2747
      0BFF1E932FFF38B344FF57D767FF6BE87BFF82F392FF8EF9A0FF92F59FFF91F5
      9EFF92F8A1FF97F9A9FF9DFAAAFF97FBA5FF8CF39AFF79EC86FF60DF71FF5DDA
      6CFF54D463FF3FC74BFF26B232FF15891CFFC2CCC2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C4C4FFE7E7
      E7FFF1F1F1FFDDDDDDFFCACACAFFCACACAFFCACACAFFCECECEFFE2E2E2FFEFEF
      EFFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEEEEEEFFEFEFEFFFF1F1F1FFF0F0F0FFDEDEDEFFC5C5C5FFCACA
      CAFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F7F6
      F0FFDEDEF0FF2438E8FF0006F2FF0007EFFF0006F0FF0010F3FF0724EEFF9EA2
      F0FFFFFFF7FFF4F4F0FFEFEFF0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4EFFFFBF9
      F2FF8894F2FF0529F3FF000FF4FF0007F1FF0009F1FF0009F0FF0008F0FF0007
      EFFF0007EFFF0006EDFF0001F0FF1D2BEAFFDDDFF4FFF7F7F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0A9A7FF2D282EFF793E
      0CFFC37A00FFD29F03FFD7A802FFDAAE02FFDDB302FFDCAF02FFDAA201FF3734
      01FF0E6C20FF3CBF49FF5CD86DFF70E67FFF84F293FF92F79FFF94F8A2FF95F8
      A3FF95F9A6FF9BFAAAFF9AF9ABFF99FAA9FF96F9A5FF90F89FFF80EF8FFF77E5
      85FF63DF72FF42D150FF13A11DFF2A7B2EFFE7E6E8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C5C5FFE8E8
      E8FFF1F1F1FFEBEBEBFFE7E7E7FFE8E8E8FFE8E8E8FFE8E8E8FFECECECFFEFEF
      EFFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFEFFFEEEEEEFFEFEFEFFFF3F3F3FFF3F3F3FFD9D9D9FFB0B0
      B0FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FFFE
      F2FF8D95EDFF0013EFFF0008F2FF0007F1FF000DF3FF0022F3FF808DEEFFFFFF
      F4FFF3F3F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F0FFFFFEF7FF8998
      F3FF0230F5FF0013F6FF000AF4FF000CF3FF000CF3FF000AF3FF0007F2FF0007
      F1FF0008F1FF0008F0FF0007F1FF0004EFFF8D93F1FFFFFEF4FFF0F0EFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC9490FF2D0000FF8247
      00FFD59B02FFEED005FFF6DF06FFF5DC05FFF4DC06FFF3DA03FFFDE405FF6B55
      00FF023613FF38C149FF55D465FF74E682FF84EC90FF92F59FFF97F7A6FF9EF8
      ACFFA3FAAEFFA2F9B3FFA2F7B3FFA3FAB5FFA3FAB1FF9BFAA7FF93F8A3FF85EF
      93FF66EA75FF38CE47FF06780EFF6A8A6CFFFBF7FBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7C7C7FFE8E8
      E8FFF1F1F1FFF2F2F2FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF2F2F2FFF2F2
      F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF1F1F1FFF0F0F0FFEFEFEFFFEFEFEFFFF5F5F5FFE9E9E9FFB5B5
      B5FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F2F1
      EFFF3F55ECFF000FF4FF000AF3FF0009F3FF001CF7FF3759F0FFEDEBF2FFF6F6
      EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F3EFFFFFFBF4FF8A9BF7FF0038
      F6FF0019F9FF000CF6FF000FF6FF000EF5FF000CF5FF0011F6FF0019F6FF0018
      F6FF000EF3FF0009F2FF0009F1FF0004F2FF3F51F0FFEEEEF2FFF4F4F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBAEB1FF853200FFAF62
      00FFD3A203FFEED103FFF7DF03FFFAE303FFF9E104FFF5DD03FFFFEC04FFA48C
      01FF031706FF2DAC3DFF4CD15BFF6ADF78FF86ED93FF93F49EFFA3F9ADFFA4FA
      AEFF90FA9FFF95F9A5FFA9FBBBFFB2FEC3FFA9FBB5FF9EFCA7FF96F8A3FF7CEF
      8CFF57E967FF1FB62DFF18681EFFB4BAB6FFFAF8FAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7C7C7FFE8E8
      E8FFF1F1F1FFF1F1F1FFF4F4F4FFF5F5F5FFF5F5F5FFF7F7F7FFF6F6F6FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF5F5F5FFF2F2F2FFF1F1F1FFF1F1F1FFF0F0F0FFF3F3F3FFECECECFFC1C1
      C1FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000D8D7
      EFFF0E34EFFF0012F6FF000BF5FF0011F7FF0130F6FF9BA8F2FFFFFEF1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4EFFFFAF5F2FF899BF5FF0045F8FF0023
      FAFF0010F8FF0013F8FF0013F8FF000DF7FF0018F9FF0032F8FF4968F6FF415D
      F4FF0025F7FF000FF5FF000BF4FF000CF5FF0F29F2FFCCCEF4FFF8F8F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D2D7FF7A350EFFB15E
      00FFD09C03FFE5C003FFECCD03FFF2D603FFF4D903FFF2D803FFF6DB02FFEDCE
      02FF665800FF157226FF43D655FF48C755FF67E176FF6BF07FFF60F876FF44F9
      5CFF50F96CFF6DFA85FF7BFB91FF9FFCAEFF99F7A4FF88F596FF95F4A2FF68EB
      79FF3EDB4FFF007F0AFF6E8A6FFFFBF5FBFFF3F2F3FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C8C8C8FFE9E9
      E9FFF2F2F2FFE4E4E4FFD7D7D7FFD7D7D7FFD9D9D9FFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFD7D7
      D7FFDCDCDCFFEBEBEBFFF3F3F3FFF2F2F2FFF1F1F1FFF5F5F5FFEDEDEDFFC5C5
      C5FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000ADB6
      EEFF0028F5FF0012F8FF000CF7FF001DF9FF1A52F5FFDBDAF4FFF7F7F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF4F3EFFFFBF6F2FF889EF7FF0352FAFF0030FAFF001B
      F9FF001EF9FF001DF9FF0018F9FF0025FAFF0035F8FF6E84F4FFFAF7F4FFDEDE
      F4FF1947F5FF0018F9FF000BF6FF000CF6FF011EF5FF9DA9F2FFFDFBF0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDF1F4FF644342FF8E3D
      00FFC68803FFDBAE03FFE3BD03FFECCE03FFF2D603FFF2D703FFF1D303FFFADC
      03FFDABA01FF225005FF2CB241FF38CE46FF20BE2EFF3CED51FF5AF76EFF96FC
      A6FFB4FEC6FF80FE99FF69FD83FF74FA8BFF72FA89FF51F469FF56E767FF42DD
      52FF11A71EFF2B5E2EFFE0DCE0FFF9F8F9FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CACACAFFEAEA
      EAFFF1F1F1FFDBDBDBFFC0C0C0FFBFBFBFFFC3C3C3FFC2C2C2FFC3C3C3FFC3C3
      C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC1C1C1FFBDBD
      BDFFC7C7C7FFE4E4E4FFF4F4F4FFF2F2F2FFF1F1F1FFF5F5F5FFEDEDEDFFC5C5
      C5FF000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000008F9F
      ECFF0027F7FF0012F8FF0012F8FF002EFAFF4676F7FFEEECF2FFF4F3F0FFF0F0
      F0FFF0F0F0FFF4F4F0FFFFFAF6FF899FF8FF025EFBFF0040FCFF002BFAFF002E
      FAFF002DFAFF0027F9FF0036FBFF0043FAFF6F86F6FFF4F1F2FFFBF9EFFFF3F1
      F1FF4C6FF7FF0020F9FF000FF7FF000EF7FF001BF7FF8390F1FFFFFDF0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFDFEFF76727DFF7131
      00FFBE7501FFD5A403FFE1BB03FFE9C803FFE4B403FFE9BE03FFEFCE03FFECCF
      03FFF6CE03FF6C7800FF0B6C23FF2FC741FF0CAB17FF70F77FFFBBFFCAFFBDFF
      C8FFB0FFBAFF77FE8CFF4AFC63FF72FA84FF71FD89FF4BFC66FF33E947FF12B5
      1FFF005804FF9A9999FFFFFFFFFFEFEFEFFFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCBFFE9E9
      E9FFF1F1F1FFE7E7E7FFDBDBDBFFDBDBDBFFDCDCDCFFDCDCDCFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDCDCDCFFDBDB
      DBFFDFDFDFFFECECECFFF2F2F2FFF1F1F1FFF1F1F1FFF5F5F5FFEDEDEDFFC6C6
      C6FF000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000008795
      ECFF002FF8FF001AF8FF001DF9FF003BFAFF6A89F8FFFAF7F3FFF1F1EFFFF0F0
      F0FFF4F3EFFFFFF8F4FF8AA2FAFF0066FBFF0050FEFF003BFCFF003FFCFF003F
      FCFF003AFCFF004AFDFF004FFBFF6E87F8FFF7F3F3FFF6F6EFFFF1F0F0FFFBF8
      F2FF6883F8FF002DFAFF0016F8FF0013F8FF001EF8FF7786F6FFFDFCF2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FFD3D9E0FF6B55
      3CFFAE6900FFB46B03FFC37F03FFCE8A03FFD19505FFDEB004FFDDAB03FFE3B7
      03FFEABC03FFC99E02FF374703FF0A5E17FF0A8F13FF329D39FF2CA331FF0D9D
      12FF089F0CFF0DB115FF0DB316FF19AA22FF1CAB26FF1CAD28FF1A9E24FF134D
      16FF818581FFF4F2F4FFF5F4F5FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCBFFEAEA
      EAFFF3F3F3FFF4F4F4FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6
      F6FFF5F5F5FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF5F5F5FFEDEDEDFFC8C8
      C8FF000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000008897
      EEFF003AFAFF0026FAFF002CFBFF0049FBFF6E8EF8FFFBF7F3FFF0F0EFFFF4F4
      EFFFFAF3F2FF89A3F8FF0070FCFF005FFEFF0048FDFF004DFDFF004DFDFF0049
      FDFF0059FEFF0060FCFF6E8AF9FFFCF7F5FFF6F6F0FFEFF0F0FFF0F0EFFFFEFB
      F2FF718CF9FF003BFBFF0022FAFF001DF9FF0025F9FF6B81F8FFFBF9F2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFFEFFFFFFC0C4
      C8FF785015FF7C1800FF9A4603FFDDAA06FFE7B808FFE7B205FFDA9202FFDCA1
      03FFD89F03FFCE7702FF853200FF230D0BFF28552DFF004700FF002100FF0015
      00FF002200FF063E09FF0C4110FF012405FF002E00FF004400FF344C34FFC2BA
      C2FFFFFCFFFFF5F5F5FFEFEFEFFFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCDFFEBEB
      EBFFF3F3F3FFF5F5F5FFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFFAFA
      FAFFFAFAFAFFF7F7F7FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF4F4F4FFEDEDEDFFC9C9
      C9FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000889D
      EFFF0048FBFF0036FCFF003CFCFF0056FDFF5E8DFBFFF5F1F2FFF6F5EEFFFBF3
      F2FF88A5F9FF037BFDFF006AFFFF0055FFFF005AFFFF005AFFFF0056FFFF0068
      FFFF006DFDFF6E8FFAFFF5F0F3FFF6F5EEFFEFEFF0FFF0F0F0FFF2F2F0FFF7F3
      F1FF5E85FBFF0046FDFF0032FBFF002AFAFF0033FBFF7E90F6FFFFFCF0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF1F1F1FFFEFF
      FFFF8A8C8BFF4B0B00FF641000FFB04002FFCB4202FFB83B02FFB35502FFC26E
      03FFD66703FF922900FF301A0DFF919392FFEAD2EBFF7B877DFF032207FF1463
      19FF2D9428FF2E932EFF3DAB4DFF22A533FF004101FF555354FFEEE3EEFFFFFF
      FFFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCFFFECEC
      ECFFF3F3F3FFEDEDEDFFEAEAEAFFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9
      E9FFE9E9E9FFEDEDEDFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF4F4F4FFEDEDEDFFCACA
      CAFF000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000099AE
      F2FF0058FDFF0049FDFF0048FCFF0062FFFF3081FCFFF0EAF4FFFFFCF6FF89A6
      FAFF0284FDFF0077FFFF0061FFFF0065FFFF0066FFFF0063FFFF0077FFFF0079
      FEFF6F92FAFFF3EEF3FFF7F5EFFFEFF0F0FFF0F0F0FFF0F0F0FFF5F4F0FFEBE7
      F3FF3378FCFF0054FEFF0040FCFF003CFCFF0047FCFF89A0F5FFFFFBEFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF6F6
      F5FFE5E9EBFF7D7774FF482528FF530D04FF5E2602FF692E02FF6C3A02FF5628
      01FF5E1901FF5D3129FF9996A2FFFBB0FEFFFDC8FBFF6DA170FF1B861EFF29A1
      2BFF31A930FF28972CFF24872EFF1B8B24FF15991BFF3D9D43FFCDCACDFFFFFA
      FFFFEFF0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D1FFEEEE
      EEFFF5F5F5FFDFDFDFFFC7C7C7FFC5C5C5FFC7C7C7FFC7C7C7FFC7C7C7FFC5C5
      C5FFC4C4C4FFD9D9D9FFF0F0F0FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF4F4F4FFEDEDEDFFCCCC
      CCFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C1C6
      F4FF0365FCFF005BFEFF0054FEFF0068FFFF087DFCFFA3AEFCFF8BA9FCFF008D
      FDFF0080FFFF006BFFFF0071FFFF0072FFFF006FFFFF0083FFFF0085FEFF6E93
      FCFFF7F0F3FFF6F5EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFBF9EEFFC9CC
      F7FF0A6CFEFF005EFEFF004CFDFF004CFDFF0655FDFFB2BEF7FFFBF9EFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFEFEF
      EFFFF7F6F6FFFFFFFFFFA9ADB1FF5E4212FF7F5200FF7E4B03FF733C03FF6C30
      01FF552402FF848A79FFFFA2FFFFFF71FFFF84B084FF21AA24FF2AB931FF2ABB
      32FF32C33BFF35C741FF30C03BFF2BB133FF37AE3BFF37BC3AFF489B4FFFDDD9
      DDFFF7F5F6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D1FFEDED
      EDFFF4F4F4FFE3E3E3FFCECECEFFCDCDCDFFCFCFCFFFCFCFCFFFCFCFCFFFCDCD
      CDFFCCCCCCFFDEDEDEFFF3F3F3FFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF4F4F4FFF4F4F4FFF3F3F3FFF1F1F1FFF1F1F1FFF4F4F4FFEDEDEDFFCCCC
      CCFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000E8E1
      F2FF2074FAFF006DFFFF0061FFFF0067FFFF0086FFFF038AFEFF0093FEFF008C
      FFFF0075FFFF007CFFFF007DFFFF007BFFFF0090FFFF0096FFFF6E9AFCFFFCF3
      F5FFF6F6EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1EFFFFFF9F3FF6697
      FAFF0075FFFF005FFFFF0057FEFF005CFFFF1F69FDFFDFDDF8FFF7F6EFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      EFFFF9FAFCFFC1C3C3FF79592DFF854100FF803902FF873F03FF823D03FF7B38
      03FF975F00FF89620CFFC1BAC5FFDEE4E1FF35A13AFF1DB424FF1FB628FF32C5
      3BFF5CD967FF68DB75FF51D25FFF32C03DFF2FBE3AFF47CE52FF2EC039FF80AD
      82FFFFF7FFFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3D3D3FFECEC
      ECFFF3F3F3FFF2F2F2FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF3F3F3FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF4F4F4FFF4F4F4FFF3F3F3FFF1F1F1FFF1F1F1FFF4F4F4FFEDEDEDFFCCCC
      CCFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FAF4
      F1FF5F92FAFF007CFEFF006EFFFF0073FFFF0078FFFF008AFFFF0088FFFF0080
      FFFF0085FFFF0089FFFF0087FFFF009CFFFF00AFFFFF6EA9FDFFF5EDF3FFF6F5
      EEFFEFEFF0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFFFFAF0FFC7CEFBFF0A84
      FFFF007FFFFF0068FFFF0064FFFF0068FEFF6190FDFFF8F5F4FFF2F1EFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF2F2
      F2FFF4F7F8FF8E795BFF723400FF7F3102FF904803FFA86D03FFA66703FF8A3F
      03FF945102FFAC7A00FF9E7D69FFA7C9B5FF259E2CFF25B72CFF26BE2EFF3DCB
      49FF7DE48BFF96EAA4FF70DF84FF41C750FF2BB535FF31BD3BFF3ACC42FF57A4
      5BFFE8DFE8FFF5F4F5FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D4D4FFEEEE
      EEFFF3F3F3FFE9E9E9FFE2E2E2FFE2E2E2FFE3E3E3FFE3E3E3FFE4E4E4FFE5E5
      E5FFE5E5E5FFE2E2E2FFDFDFDFFFDFDFDFFFDFDFDFFFDEDEDEFFDEDEDEFFDEDE
      DEFFDDDDDDFFDEDEDEFFE8E8E8FFF0F0F0FFF2F2F2FFF3F3F3FFEDEDEDFFCECE
      CEFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FDF9
      F0FFB3BDF8FF0583FEFF0087FFFF007CFFFF0084FFFF0086FFFF008AFFFF0090
      FFFF0093FFFF0093FFFF00A8FFFF00BAFFFF6FB3FDFFF3ECF3FFF7F5EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFF0FFFDF9F1FFEAE7FBFF3B99FEFF0098
      FFFF007BFFFF0073FFFF0079FFFF0277FEFFB5C2FBFFFCF9F1FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF6F7
      F8FFE0DFDBFF834A19FF883C00FF7A2C03FFAD6F03FFD9B303FFDCB903FFA768
      03FF8C4403FF9D5E01FF7F4713FF326640FF29B733FF23AF2AFF1BAF26FF44CD
      53FF97EDA4FFABFAC1FF90F0A9FF5DD66FFF3BC347FF32B93BFF2ABE31FF3195
      37FFB5B8B5FFF9F7F9FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D5D5FFF0F0
      F0FFF4F4F4FFDDDDDDFFC7C7C7FFC6C6C6FFC9C9C9FFCBCBCBFFCBCBCBFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCBCBCBFFCBCBCBFFCACA
      CAFFC8C8C8FFC9C9C9FFDEDEDEFFF1F1F1FFF4F4F4FFF4F4F4FFEDEDEDFFCFCF
      CFFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F3F2
      EFFFF5EDF4FF4D95FDFF009DFFFF008AFFFF0090FFFF0095FFFF0099FFFF009D
      FFFF009FFFFF00ADFFFF03C2FFFF6FB7FEFFF7EDF3FFF6F4EFFFEFF0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF2F1EFFFFFF7EEFFE8E6FAFF4CADFFFF00ACFFFF0090
      FFFF0084FFFF0080FFFF0089FFFF4791FEFFF6F1F6FFF3F2EFFFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF8FA
      FBFFC6BEC2FF79420BFF7D3700FF6C1703FFC28A03FFF3DD02FFEDD403FFBC85
      03FFA36303FF9A5603FF622100FF053303FF29B833FF119B1AFF19B125FF46D3
      5DFF82EFA2FF82F8A4FF7CEB99FF67D97AFF45CB52FF38C243FF27BC2EFF2480
      28FFB0B3B0FFF9F8F9FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D5D5FFEEEE
      EEFFF4F4F4FFE9E9E9FFE0E0E0FFDFDFDFFFE0E0E0FFE1E1E1FFE0E0E0FFE0E0
      E0FFE0E0E0FFE1E1E1FFE0E0E0FFE0E0E0FFE1E1E1FFE0E0E0FFE1E1E1FFE0E0
      E0FFDEDEDEFFDFDFDFFFE9E9E9FFF5F5F5FFF4F4F4FFF4F4F4FFEEEEEEFFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFFDF9F1FFC5CBFCFF0C97FEFF00AFFFFF009AFFFF00A1FFFF00A6FFFF00A9
      FFFF00AAFFFF00C8FFFF35B6FFFFFFEDFAFFFFF9EEFFF5F2EFFFF5F2EFFFF5F2
      EFFFF7F3EFFFFEF5F0FFFBF2F5FFB7CFF9FF32B1FFFF00BBFFFF00A8FFFF0095
      FFFF0091FFFF009BFFFF0C92FFFFCDD8FFFFFDFAF2FFEFEFF0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF8FA
      FAFFD1CCD0FF6C310FFF601200FF752403FFD2A603FFE9CD03FFD6AA03FFB87D
      03FFA46703FF9D5901FF67270EFF2F4F32FF19A723FF0A9B15FF26BB37FF67E1
      80FF6FE994FF55E47BFF61DD7CFF64DB74FF45CD4FFF3BC544FF24BB2CFF3580
      39FFD2CED2FFF7F6F7FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D5D5FFEDED
      EDFFF3F3F3FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF3F3F3FFF2F2F2FFF2F2F2FFF3F3F3FFF2F2F2FFF3F3F3FFF2F2
      F2FFF2F2F2FFF2F2F2FFF1F1F1FFEFEFEFFFEFEFEFFFF4F4F4FFEEEEEEFFD2D2
      D2FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF1F0EFFFFFF8F4FF8CB3FFFF00B0FFFF00BCFFFF00ABFFFF00B1FFFF00B5
      FFFF00B6FFFF01CBFFFF28D1FFFF97C8FEFFD5E1F8FFE2E4F3FFE3E5F4FFE3E4
      F3FFD7E2F7FFA7D4FCFF5DC4FFFF08C0FFFF00C8FFFF00B3FFFF00A7FFFF00A1
      FFFF00A9FFFF00A4FFFF8EBDFDFFFFFBF4FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF4F5
      F5FFEBEDEEFF5E403DFF490000FFC28E05FFFFF206FFBD8202FF9D5603FFB077
      03FFA16303FF894800FF71504BFFB5B9BBFF19891FFF16BA26FF89ED98FFE3FF
      EAFF7EE897FF1BBE35FF45D158FF5AE066FF3BC141FF3AC241FF1A9E20FF6E89
      6FFFFBF5FAFFF3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7FFF0F0
      F0FFF3F3F3FFE5E5E5FFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDEDEDEFFDEDE
      DEFFDEDEDEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDEDEDEFFDEDEDEFFDDDD
      DDFFDDDDDDFFDCDCDCFFDBDBDBFFD6D6D6FFE0E0E0FFF2F2F2FFF0F0F0FFD3D3
      D3FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF4F3EFFFFAF1F5FF6BACFDFF00C0FFFF00CBFFFF00BAFFFF00C0
      FFFF00C4FFFF00C5FFFF0EDCFFFF21D8FFFF48C7FFFF57CFFFFF53D5FFFF4CD0
      FFFF38CAFFFF0DD4FFFF00D4FFFF00CEFFFF00BDFFFF00B7FFFF00B2FFFF00BC
      FFFF00B4FFFF71B9FEFFF5F0F2FFF3F1EEFFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0EF
      EFFFFCFCFCFFB6BCC1FF432C27FFD0A300FFBD9A05FF4D1501FF894903FFA36C
      03FF894D00FF503106FFB0B2B7FFFFFFFFFF587558FF25B637FFE0FFEEFFE9FF
      F1FF3DB949FF079F10FF3ED348FF42D54BFF34B53BFF38BF40FF226025FFD3CF
      D3FFFBFAFBFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADAFFEFEF
      EFFFF3F3F3FFE2E2E2FFD4D4D4FFD5D5D5FFD6D6D6FFD7D7D7FFD8D8D8FFD9D9
      D9FFD9D9D9FFDADADAFFDADADAFFDADADAFFDADADAFFD9D9D9FFD8D8D8FFD7D7
      D7FFD7D7D7FFD6D6D6FFD5D5D5FFD0D0D0FFDDDDDDFFF3F3F3FFF0F0F0FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFEFF0F0FFF6F4EFFFF1EAF1FF76B7FDFF0BCBFFFF07DCFFFF00CE
      FFFF00CEFFFF00D2FFFF00D2FFFF01DBFFFF0CE0FFFF0BE8FFFF08EAFFFF06E7
      FFFF05DEFFFF00D8FFFF00CFFFFF00CAFFFF00C6FFFF00C5FFFF00D0FFFF00C6
      FFFF75C2FEFFF4EFF2FFF6F3EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF1F1F1FFFEFFFFFFA0A5A8FF603A0FFF571200FF572200FF9C6700FF965F
      00FF582D00FF6F6B6DFFF6F9F9FFFDFDFDFFC0BABFFF206E29FF81E497FF6CE5
      7EFF008706FF22B12AFF46DC4DFF3DD645FF28A22EFF15691AFF79837AFFFDFA
      FDFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDEFFE9E9
      E9FFF3F3F3FFEFEFEFFFECECECFFECECECFFECECECFFECECECFFECECECFFEDED
      EDFFECECECFFECECECFFEDEDEDFFEDEDEDFFECECECFFECECECFFEDEDEDFFECEC
      ECFFECECECFFECECECFFECECECFFEBEBEBFFEFEFEFFFF5F5F5FFE7E7E7FFCFCF
      CFFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFEFF0F0FFF6F3EFFFFDF4F5FF9ECEFFFF37CBFFFF28E6
      FFFF1AE6FFFF00E0FFFF00E0FFFF00E1FFFF00E0FFFF00E0FFFF00DFFFFF00E0
      FFFF00DEFFFF00DCFFFF00DBFFFF00DAFFFF00DEFFFF00DEFFFF1CCCFFFF9CD5
      FFFFFEF6F7FFF5F2EEFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF1F1F1FFFAFCFBFFB9BAC3FF8A7772FF94744DFF896E49FF9082
      72FFB2ADAAFFEFF0F3FFF4F4F4FFF0F0F0FFFCFAFCFFB3B2B3FF417544FF1388
      1CFF27A734FF34BB3FFF30BA3AFF32AC38FF467F49FF8A8E89FFF1EFF1FFF4F4
      F4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E5FFE2E2
      E2FFEEEEEEFFF5F5F5FFF7F7F7FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF8F8F8FFF6F6F6FFEAEAEAFFD7D7D7FFDBDB
      DBFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F2EFFFFFF7F4FFCFE1FAFF7BCF
      FEFF5CDEFFFF55ECFFFF44F3FFFF25F4FFFF19F0FFFF0EF0FFFF0CF0FFFF0BEF
      FFFF12EEFFFF14F0FFFF17F0FFFF18EAFFFF1EDFFFFF63D7FFFFD1E5F9FFFFF8
      F4FFF3F1F0FFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F1FFFCFDFDFFF8FCFEFFE8ECF2FFE7EAF1FFF6F9
      FEFFFCFDFEFFF3F3F3FFEFEFEFFFF0F0F0FFF0F1F0FFFCFAFCFFF0E7EFFFC5C3
      C4FF99AC9AFF83A785FF87A38AFFAFB5AFFFEAE4EAFFFEFCFEFFF4F4F4FFEFEF
      EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEFFFE5E5
      E5FFE3E3E3FFECECECFFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFE8E8E8FFD8D8D8FFD7D7D7FFEBEB
      EBFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0EFFFF9F4EFFFF4F0
      F1FFC6E2F7FFA1DDFEFF8EE3FFFF83E1FFFF85F3FFFF83FAFFFF78FAFFFF6AFA
      FFFF63F2FFFF5DE3FFFF61E5FFFF8DE1FEFFC9E7F8FFF8F1F3FFFAF3F0FFF0EF
      EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF3F3F3FFF3F3F3FFF1F1
      F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F3FFFCFA
      FCFFFCF5FCFFF7EDF6FFFBF2FAFFFEFAFEFFF4F4F4FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F1FFF0F0
      F0FFE4E4E4FFDADADAFFDADADAFFDEDEDEFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
      DCFFDCDCDCFFDCDCDCFFDCDCDCFFD6D6D6FFCFCFCFFFD7D7D7FFE9E9E9FFF3F3
      F3FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1
      F0FFF8F2EFFFF9F3F1FFE7EBF1FFD8E9F5FFCAEBF7FFC5E9F7FFC5EAF7FFC2EA
      F7FFC9ECF7FFDAEBF5FFECECF1FFFDF3F1FFFAF2EFFFF2F0EFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF1F2F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFFC00000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFFE0000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFFF001D00FFFFFFFFFFFFFF80FFFFF
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
  object rom_ite: TIBQuery [14]
    Database = dmDADOS.ibDB
    Transaction = IBTra
    AutoCalcFields = False
    AfterScroll = rom_iteAfterScroll
    DataSource = DTSCadastro
    SQL.Strings = (
      
        'SELECT    PED_VEN_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_' +
        'CPRO,CAD_PRO.PRO_CCOR,'
      
        '          CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,CAD' +
        '_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,'
      
        '          CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD' +
        '_PRO.PRO_GRAD,'
      '          CAD_PRO_IMG.PRO_FOTO'
      'FROM      PED_VEN_ITE,CAD_PRO,CAD_PRO_IMG'
      'WHERE     PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID'
      'AND       CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART'
      'AND       PED_VEN_ITE.ROM_CCAB = :ID'
      'ORDER  BY PED_VEN_ITE.ROM_ITEM'
      '')
    Left = 640
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object rom_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_OCA_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rom_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"PED_OCA_ITE"."ROM_CDOC"'
    end
    object rom_iteROM_ITEM: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'ROM_ITEM'
      Origin = '"PED_OCA_ITE"."ROM_ITEM"'
      Size = 4
    end
    object rom_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"PED_OCA_ITE"."ROM_CPRO"'
    end
    object rom_iteROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"PED_OCA_ITE"."ROM_CPR2"'
    end
    object rom_iteROM_CDET: TIBStringField
      FieldName = 'ROM_CDET'
      Origin = '"PED_OCA_ITE"."ROM_CDET"'
      Size = 10
    end
    object rom_iteROM_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTDE'
      Origin = '"PED_OCA_ITE"."ROM_QTDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_VDSC: TIBBCDField
      DisplayLabel = 'Desc (%)'
      FieldName = 'ROM_VDSC'
      Origin = '"PED_OCA_ITE"."ROM_VDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_TOTA: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TOTA'
      Origin = '"PED_OCA_ITE"."ROM_TOTA"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object rom_iteID1: TIntegerField
      FieldName = 'ID1'
      Origin = '"CAD_PRO"."ID"'
      Required = True
    end
    object rom_itePRO_CART: TIBStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object rom_itePRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object rom_itePRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO"."PRO_CCOR"'
    end
    object rom_itePRO_RCOR: TIBStringField
      FieldName = 'PRO_RCOR'
      Origin = '"CAD_PRO"."PRO_RCOR"'
      Size = 3
    end
    object rom_itePRO_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object rom_itePRO_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object rom_itePRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_IMG"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object rom_itePRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO"."PRO_CBAR"'
    end
    object rom_itePRO_CEMB: TIntegerField
      FieldName = 'PRO_CEMB'
      Origin = '"CAD_PRO"."PRO_CEMB"'
    end
    object rom_itePRO_GRAD: TIBStringField
      FieldName = 'PRO_GRAD'
      Origin = '"CAD_PRO"."PRO_GRAD"'
      Size = 3
    end
    object rom_itePRO_PIPI: TSmallintField
      FieldName = 'PRO_PIPI'
      Origin = '"CAD_PRO"."PRO_PIPI"'
    end
    object rom_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"PED_VEN_ITE"."ROM_CCAB"'
    end
    object rom_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"PED_VEN_ITE"."ROM_CDPR"'
    end
    object rom_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"PED_VEN_ITE"."ROM_CDPD"'
    end
    object rom_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"PED_VEN_ITE"."ROM_CDRO"'
    end
    object rom_iteROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"PED_VEN_ITE"."ROM_CDRD"'
    end
    object rom_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"PED_VEN_ITE"."ROM_CDNF"'
    end
    object rom_iteROM_QTSP: TIBBCDField
      FieldName = 'ROM_QTSP'
      Origin = '"PED_VEN_ITE"."ROM_QTSP"'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_QTPD: TIBBCDField
      DisplayLabel = 'Quantidade Separada'
      FieldName = 'ROM_QTPD'
      Origin = '"PED_VEN_ITE"."ROM_QTPD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_QTRL: TIntegerField
      DisplayLabel = 'Pe'#231'a'
      FieldName = 'ROM_QTRL'
      Origin = '"PED_VEN_ITE"."ROM_QTRL"'
      DisplayFormat = '0'
    end
    object rom_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"PED_VEN_ITE"."ROM_RLSP"'
    end
    object rom_iteROM_RLPD: TIntegerField
      DisplayLabel = 'Pe'#231'a Sep'
      FieldName = 'ROM_RLPD'
      Origin = '"PED_VEN_ITE"."ROM_RLPD"'
      DisplayFormat = '0'
    end
    object rom_iteROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"PED_VEN_ITE"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"PED_VEN_ITE"."ROM_COMI"'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ROM_DPRO'
      Origin = '"PED_VEN_ITE"."ROM_DPRO"'
      Size = 120
    end
    object rom_itePRO_REPR: TIBStringField
      FieldName = 'PRO_REPR'
      Origin = '"CAD_PRO"."PRO_REPR"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"PED_VEN_ITE"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"PED_VEN_ITE"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"PED_VEN_ITE"."ROM_DCOR"'
      Size = 30
    end
    object rom_iteROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"PED_VEN_ITE"."ROM_PCOR"'
      Size = 30
    end
    object rom_iteROM_UNIT: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'ROM_UNIT'
      Origin = '"PED_VEN_ITE"."ROM_UNIT"'
      DisplayFormat = '#,0.00#######'
    end
    object rom_iteROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"PED_VEN_ITE"."ROM_PREC"'
    end
    object rom_iteROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"PED_VEN_ITE"."ROM_DCO2"'
      Size = 30
    end
    object rom_iteROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"PED_VEN_ITE"."ROM_PCO2"'
      Size = 30
    end
    object rom_itePRO_PPRO: TFloatField
      FieldName = 'PRO_PPRO'
      Origin = '"CAD_PRO"."PRO_PPRO"'
    end
    object rom_iteROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"PED_VEN_ITE"."ROM_DSEP"'
      Size = 15
    end
    object rom_iteROM_DUNI: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'ROM_DUNI'
      Origin = '"PED_VEN_ITE"."ROM_DUNI"'
      Size = 3
    end
    object rom_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"PED_VEN_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object rom_iteROM_PESO: TIBBCDField
      FieldName = 'ROM_PESO'
      Origin = '"PED_VEN_ITE"."ROM_PESO"'
      Precision = 9
      Size = 2
    end
  end
  object dtsrom_ite: TDataSource [15]
    DataSet = rom_ite
    OnDataChange = dtsrom_iteDataChange
    Left = 672
    Top = 280
  end
  object aux: TIBQuery [16]
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 736
    Top = 168
  end
  object tSHEILD: TIBTransaction [17]
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 568
    Top = 152
  end
  inherited ILMenuEdicao: TImageList
    Left = 136
    Top = 312
  end
  object TEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = dmDADOS.ibDB
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 328
    Top = 176
  end
  object SQLEdicao: TIBSQL
    Database = dmDADOS.ibDB
    Transaction = TEdicao
    Left = 360
    Top = 176
  end
  object SQLFKEdicao: TIBSQL
    Database = dmDADOS.ibDB
    Transaction = TEdicao
    Left = 360
    Top = 208
  end
  object SQLConsulta: TIBSQL
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 128
    Top = 136
  end
  object SPEdicao: TIBStoredProc
    Database = dmDADOS.ibDB
    Transaction = TEdicao
    Left = 392
    Top = 176
  end
end
