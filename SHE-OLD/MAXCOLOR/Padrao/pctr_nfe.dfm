inherited frmctr_nfe: Tfrmctr_nfe
  Left = 692
  Top = 70
  Caption = 'Controle de Notas Fiscais'
  ClientHeight = 610
  ClientWidth = 1100
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnldir: TPanel [0]
    Left = 1100
    Height = 526
  end
  inherited pnldbg: TPanel [1]
    Width = 1100
    Height = 526
    inherited gbDET: TGroupBox [0]
      Width = 1046
      Height = 283
      inherited DBGConsulta: TdxDBGrid
        Width = 1042
        Height = 262
        HeaderMinRowCount = 2
        KeyField = 'ID'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                ColumnName = 'dbgConsultaNFE_CDNF'
                SummaryField = 'ID'
                SummaryFormat = '0'
                SummaryType = cstCount
              end
              item
                ColumnName = 'dbgConsultaNFE_VPROD'
                SummaryField = 'NFE_VPROD'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VICMS'
                SummaryField = 'NFE_VICMS'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VIPI'
                SummaryField = 'NFE_VIPI'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VPIS'
                SummaryField = 'NFE_VPIS'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VCOFINS'
                SummaryField = 'NFE_VCOFINS'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end
              item
                ColumnName = 'dbgConsultaNFE_VNF'
                SummaryField = 'NFE_VNF'
                SummaryFormat = '#,0.00'
                SummaryType = cstSum
              end>
            Name = 'dbgConsultaSummaryGroup1'
          end>
        Filter.Active = True
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
        ShowRowFooter = True
        OnCustomDrawCell = dbgConsultaCustomDrawCell
        object dbgConsultaNFE_CDNF: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_CDNF'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object dbgConsultaNFE_DEMI: TdxDBGridDateColumn
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DEMI'
          SummaryGroupName = 'dbgConsultaSummaryGroup1'
        end
        object dbgConsultaNFE_DFAV: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 391
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DFAV'
          SummaryGroupName = 'dbgConsultaSummaryGroup1'
        end
        object dbgConsultaNFE_CNAT: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_CNAT'
          SummaryGroupName = 'dbgConsultaSummaryGroup1'
        end
        object dbgConsultaNFE_VPROD: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VPROD'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VPROD'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VICMS: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VICMS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VICMS'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VIPI: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VIPI'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VIPI'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VPIS: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VPIS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VPIS'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VCOFINS: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VCOFINS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VCOFINS'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_VNF: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_VNF'
          SummaryFooterType = cstSum
          SummaryFooterField = 'NFE_VNF'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object dbgConsultaNFE_STA: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_STA'
        end
        object dbgConsultaNFE_DVEN: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DVEN'
        end
        object dbgConsultaNFE_DREP: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NFE_DREP'
        end
      end
    end
    inherited pnlbot: TPanel [1]
      Top = 283
      Width = 1100
      Height = 243
      Visible = True
      object pcmain: TdxPageControl
        Left = 0
        Top = 0
        Width = 1100
        Height = 243
        ActivePage = tspro
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
        object tspro: TdxTabSheet
          Caption = 'Produtos'
          object dbgite: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1100
            Height = 219
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
            Color = 14789952
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = DBGConsultaDblClick
            OnKeyDown = DBGConsultaKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtsnfe_ite
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            HideSelectionColor = 16382457
            HideSelectionTextColor = 14789952
            HighlightColor = 16382457
            HighlightTextColor = 14789952
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoRowSelect, edgoUseBitmap]
            OnBackgroundDrawEvent = DBGConsultaBackgroundDrawEvent
            object dbgiteNFE_ITEMPED: TdxDBGridMaskColumn
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_ITEMPED'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object dbgiteNFE_CPROD: TdxDBGridMaskColumn
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_CPROD'
            end
            object dbgiteNFE_XPROD: TdxDBGridMaskColumn
              Width = 377
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_XPROD'
            end
            object dbgiteNFE_UCOM: TdxDBGridMaskColumn
              Width = 24
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_UCOM'
            end
            object dbgiteNFE_QCOM: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_QCOM'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_QCOM'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VUNCOM: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VUNCOM'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'NFE_VUNCOM'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VPROD: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VPROD'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VPROD'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VDESC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VDESC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VDESC'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_PIPI: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_PIPI'
            end
            object dbgiteNFE_VIPI: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VIPI'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VIPI'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VPIS: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VPIS'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VPIS'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VCOFINS: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VCOFINS'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VCOFINS'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_VNF: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_VNF'
              SummaryFooterType = cstSum
              SummaryFooterField = 'NFE_VNF'
              SummaryFooterFormat = '#,0.00'
            end
            object dbgiteNFE_CFOP: TdxDBGridMaskColumn
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_CFOP'
            end
            object dbgiteNFE_NCM: TdxDBGridMaskColumn
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NFE_NCM'
            end
          end
        end
        object tsobs: TdxTabSheet
          Caption = 'Informa'#231#245'es Adicionais'
          object dxDBMemo1: TdxDBMemo
            Left = 0
            Top = 0
            Width = 1016
            Align = alClient
            Color = 14789952
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            DataField = 'NFE_OBSE'
            DataSource = DTSCadastro
            ReadOnly = True
            Height = 217
            StoredValues = 64
          end
        end
      end
    end
    inherited GBMenuEdicao: TGroupBox
      Height = 283
      Visible = False
      inherited SBMenuEdicao: TSpeedBar
        Height = 262
      end
    end
  end
  inherited sbMSG: TStatusBar [2]
    Top = 591
    Width = 1100
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1100
    inherited siREL: TSpeedItem
      Left = 645
    end
    inherited siSAIR: TSpeedItem
      Left = 725
    end
    object siCON: TSpeedItem
      BtnCaption = 'Consultar'
      Cursor = crHandPoint
      Hint = 'Consulta situa'#231#227'o da nota fiscal no SEFAZ'
      ImageIndex = 4
      Spacing = 1
      Left = 165
      Top = 5
      Visible = True
      OnClick = siCONClick
      SectionName = 'Menu Principal'
    end
    object siVIS: TSpeedItem
      BtnCaption = 'Visualizar'
      Cursor = crHandPoint
      Hint = 'Visualiza Danfe'
      ImageIndex = 5
      Spacing = 1
      Left = 245
      Top = 5
      Visible = True
      OnClick = siVISClick
      SectionName = 'Menu Principal'
    end
    object siCCe: TSpeedItem
      BtnCaption = 'CCe'
      Cursor = crHandPoint
      Hint = 'Emiss'#227'o de carta de corre'#231#227'o eletr'#244'nica'
      ImageIndex = 6
      Spacing = 1
      Left = 325
      Top = 5
      Visible = True
      OnClick = siCCeClick
      SectionName = 'Menu Principal'
    end
    object siCNF: TSpeedItem
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelamento de nota fiscal'
      ImageIndex = 7
      Spacing = 1
      Left = 405
      Top = 5
      Visible = True
      OnClick = siCNFClick
      SectionName = 'Menu Principal'
    end
    object siTRI: TSpeedItem
      BtnCaption = 'Copiar'
      Cursor = crHandPoint
      Hint = 'Copiar nota fiscal'
      ImageIndex = 8
      Spacing = 1
      Left = 485
      Top = 5
      Visible = True
      OnClick = siTRIClick
      SectionName = 'Menu Principal'
    end
    object SIEnv: TSpeedItem
      BtnCaption = 'Email'
      Cursor = crHandPoint
      Hint = 'Enviar Email'
      ImageIndex = 9
      Spacing = 1
      Left = 565
      Top = 5
      Visible = True
      OnClick = SIEnvClick
      SectionName = 'Menu Principal'
    end
  end
  inherited Consulta: TIBQuery
    Left = 880
    Top = 48
  end
  inherited Cadastro: TIBDataSet
    AfterOpen = CadastroAfterOpen
    DeleteSQL.Strings = (
      'delete from NFE_CAB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NFE_CAB'
      
        '  (ID, NFE_AAMM, NFE_AAMMREF, NFE_CDNF, NFE_CFAV, NFE_CHAV, NFE_' +
        'CLFO, NFE_CNAT, '
      
        '   NFE_CNPJREF, NFE_CONC, NFE_CREP, NFE_CTRA, NFE_CUFREF, NFE_CV' +
        'EN, NFE_DCAN, '
      
        '   NFE_DEMI, NFE_DFAV, NFE_DHCONT, NFE_DREP, NFE_DSAI, NFE_DTRA,' +
        ' NFE_DVEN, '
      
        '   NFE_ESTO, NFE_FINNFE, NFE_HCAN, NFE_HRSE, NFE_INDPAG, NFE_ISU' +
        'F, NFE_MODREF, '
      
        '   NFE_NFREF, NFE_NNFREF, NFE_OBSE, NFE_PROC, NFE_PROCEMI, NFE_P' +
        'ROT, NFE_QCOM, '
      
        '   NFE_REFNFE, NFE_SERIEREF, NFE_STA, NFE_TPEMIS, NFE_TPNF, NFE_' +
        'VBC, NFE_VBCIRRF, '
      
        '   NFE_VBCISSQN, NFE_VBCRETPREV, NFE_VBCST, NFE_VCOFINS, NFE_VCO' +
        'FINSISSQN, '
      
        '   NFE_VDESC, NFE_VERPROC, NFE_VFRETE, NFE_VICMS, NFE_VII, NFE_V' +
        'IPI, NFE_VIRRF, '
      
        '   NFE_VISS, NFE_VNF, NFE_VOUTRO, NFE_VPIS, NFE_VPISISSQN, NFE_V' +
        'PROD, NFE_VRETCOFINS, '
      
        '   NFE_VRETCSLL, NFE_VRETPIS, NFE_VRETPREV, NFE_VSEG, NFE_VSERVI' +
        'SSQN, NFE_VST, '
      '   NFE_XJUST)'
      'values'
      
        '  (:ID, :NFE_AAMM, :NFE_AAMMREF, :NFE_CDNF, :NFE_CFAV, :NFE_CHAV' +
        ', :NFE_CLFO, '
      
        '   :NFE_CNAT, :NFE_CNPJREF, :NFE_CONC, :NFE_CREP, :NFE_CTRA, :NF' +
        'E_CUFREF, '
      
        '   :NFE_CVEN, :NFE_DCAN, :NFE_DEMI, :NFE_DFAV, :NFE_DHCONT, :NFE' +
        '_DREP, '
      
        '   :NFE_DSAI, :NFE_DTRA, :NFE_DVEN, :NFE_ESTO, :NFE_FINNFE, :NFE' +
        '_HCAN, '
      
        '   :NFE_HRSE, :NFE_INDPAG, :NFE_ISUF, :NFE_MODREF, :NFE_NFREF, :' +
        'NFE_NNFREF, '
      
        '   :NFE_OBSE, :NFE_PROC, :NFE_PROCEMI, :NFE_PROT, :NFE_QCOM, :NF' +
        'E_REFNFE, '
      
        '   :NFE_SERIEREF, :NFE_STA, :NFE_TPEMIS, :NFE_TPNF, :NFE_VBC, :N' +
        'FE_VBCIRRF, '
      
        '   :NFE_VBCISSQN, :NFE_VBCRETPREV, :NFE_VBCST, :NFE_VCOFINS, :NF' +
        'E_VCOFINSISSQN, '
      
        '   :NFE_VDESC, :NFE_VERPROC, :NFE_VFRETE, :NFE_VICMS, :NFE_VII, ' +
        ':NFE_VIPI, '
      
        '   :NFE_VIRRF, :NFE_VISS, :NFE_VNF, :NFE_VOUTRO, :NFE_VPIS, :NFE' +
        '_VPISISSQN, '
      
        '   :NFE_VPROD, :NFE_VRETCOFINS, :NFE_VRETCSLL, :NFE_VRETPIS, :NF' +
        'E_VRETPREV, '
      '   :NFE_VSEG, :NFE_VSERVISSQN, :NFE_VST, :NFE_XJUST)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NFE_CDNF,'
      '  NFE_AAMM,'
      '  NFE_DEMI,'
      '  NFE_DSAI,'
      '  NFE_HRSE,'
      '  NFE_DCAN,'
      '  NFE_HCAN,'
      '  NFE_CVEN,'
      '  NFE_DVEN,'
      '  NFE_CREP,'
      '  NFE_DREP,'
      '  NFE_CFAV,'
      '  NFE_DFAV,'
      '  NFE_CTRA,'
      '  NFE_DTRA,'
      '  NFE_CNAT,'
      '  NFE_INDPAG,'
      '  NFE_TPNF,'
      '  NFE_NFREF,'
      '  NFE_REFNFE,'
      '  NFE_CUFREF,'
      '  NFE_AAMMREF,'
      '  NFE_CNPJREF,'
      '  NFE_MODREF,'
      '  NFE_SERIEREF,'
      '  NFE_NNFREF,'
      '  NFE_TPEMIS,'
      '  NFE_FINNFE,'
      '  NFE_PROCEMI,'
      '  NFE_VERPROC,'
      '  NFE_DHCONT,'
      '  NFE_XJUST,'
      '  NFE_OBSE,'
      '  NFE_ISUF,'
      '  NFE_QCOM,'
      '  NFE_VBC,'
      '  NFE_VICMS,'
      '  NFE_VBCST,'
      '  NFE_VST,'
      '  NFE_VPROD,'
      '  NFE_VFRETE,'
      '  NFE_VSEG,'
      '  NFE_VDESC,'
      '  NFE_VII,'
      '  NFE_VIPI,'
      '  NFE_VPIS,'
      '  NFE_VCOFINS,'
      '  NFE_VOUTRO,'
      '  NFE_VNF,'
      '  NFE_VSERVISSQN,'
      '  NFE_VBCISSQN,'
      '  NFE_VISS,'
      '  NFE_VPISISSQN,'
      '  NFE_VCOFINSISSQN,'
      '  NFE_VRETPIS,'
      '  NFE_VRETCOFINS,'
      '  NFE_VRETCSLL,'
      '  NFE_VBCIRRF,'
      '  NFE_VIRRF,'
      '  NFE_VBCRETPREV,'
      '  NFE_VRETPREV,'
      '  NFE_CHAV,'
      '  NFE_PROT,'
      '  NFE_PROC,'
      '  NFE_STA,'
      '  NFE_CONC,'
      '  NFE_CLFO,'
      '  NFE_ESTO'
      'from NFE_CAB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM NFE_CAB')
    ModifySQL.Strings = (
      'update NFE_CAB'
      'set'
      '  ID = :ID,'
      '  NFE_AAMM = :NFE_AAMM,'
      '  NFE_AAMMREF = :NFE_AAMMREF,'
      '  NFE_CDNF = :NFE_CDNF,'
      '  NFE_CFAV = :NFE_CFAV,'
      '  NFE_CHAV = :NFE_CHAV,'
      '  NFE_CLFO = :NFE_CLFO,'
      '  NFE_CNAT = :NFE_CNAT,'
      '  NFE_CNPJREF = :NFE_CNPJREF,'
      '  NFE_CONC = :NFE_CONC,'
      '  NFE_CREP = :NFE_CREP,'
      '  NFE_CTRA = :NFE_CTRA,'
      '  NFE_CUFREF = :NFE_CUFREF,'
      '  NFE_CVEN = :NFE_CVEN,'
      '  NFE_DCAN = :NFE_DCAN,'
      '  NFE_DEMI = :NFE_DEMI,'
      '  NFE_DFAV = :NFE_DFAV,'
      '  NFE_DHCONT = :NFE_DHCONT,'
      '  NFE_DREP = :NFE_DREP,'
      '  NFE_DSAI = :NFE_DSAI,'
      '  NFE_DTRA = :NFE_DTRA,'
      '  NFE_DVEN = :NFE_DVEN,'
      '  NFE_ESTO = :NFE_ESTO,'
      '  NFE_FINNFE = :NFE_FINNFE,'
      '  NFE_HCAN = :NFE_HCAN,'
      '  NFE_HRSE = :NFE_HRSE,'
      '  NFE_INDPAG = :NFE_INDPAG,'
      '  NFE_ISUF = :NFE_ISUF,'
      '  NFE_MODREF = :NFE_MODREF,'
      '  NFE_NFREF = :NFE_NFREF,'
      '  NFE_NNFREF = :NFE_NNFREF,'
      '  NFE_OBSE = :NFE_OBSE,'
      '  NFE_PROC = :NFE_PROC,'
      '  NFE_PROCEMI = :NFE_PROCEMI,'
      '  NFE_PROT = :NFE_PROT,'
      '  NFE_QCOM = :NFE_QCOM,'
      '  NFE_REFNFE = :NFE_REFNFE,'
      '  NFE_SERIEREF = :NFE_SERIEREF,'
      '  NFE_STA = :NFE_STA,'
      '  NFE_TPEMIS = :NFE_TPEMIS,'
      '  NFE_TPNF = :NFE_TPNF,'
      '  NFE_VBC = :NFE_VBC,'
      '  NFE_VBCIRRF = :NFE_VBCIRRF,'
      '  NFE_VBCISSQN = :NFE_VBCISSQN,'
      '  NFE_VBCRETPREV = :NFE_VBCRETPREV,'
      '  NFE_VBCST = :NFE_VBCST,'
      '  NFE_VCOFINS = :NFE_VCOFINS,'
      '  NFE_VCOFINSISSQN = :NFE_VCOFINSISSQN,'
      '  NFE_VDESC = :NFE_VDESC,'
      '  NFE_VERPROC = :NFE_VERPROC,'
      '  NFE_VFRETE = :NFE_VFRETE,'
      '  NFE_VICMS = :NFE_VICMS,'
      '  NFE_VII = :NFE_VII,'
      '  NFE_VIPI = :NFE_VIPI,'
      '  NFE_VIRRF = :NFE_VIRRF,'
      '  NFE_VISS = :NFE_VISS,'
      '  NFE_VNF = :NFE_VNF,'
      '  NFE_VOUTRO = :NFE_VOUTRO,'
      '  NFE_VPIS = :NFE_VPIS,'
      '  NFE_VPISISSQN = :NFE_VPISISSQN,'
      '  NFE_VPROD = :NFE_VPROD,'
      '  NFE_VRETCOFINS = :NFE_VRETCOFINS,'
      '  NFE_VRETCSLL = :NFE_VRETCSLL,'
      '  NFE_VRETPIS = :NFE_VRETPIS,'
      '  NFE_VRETPREV = :NFE_VRETPREV,'
      '  NFE_VSEG = :NFE_VSEG,'
      '  NFE_VSERVISSQN = :NFE_VSERVISSQN,'
      '  NFE_VST = :NFE_VST,'
      '  NFE_XJUST = :NFE_XJUST'
      'where'
      '  ID = :OLD_ID')
    Left = 816
    Top = 48
    object cadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroNFE_CDNF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_CAB"."NFE_CDNF"'
    end
    object cadastroNFE_AAMM: TIBStringField
      FieldName = 'NFE_AAMM'
      Origin = '"NFE_CAB"."NFE_AAMM"'
      Size = 4
    end
    object cadastroNFE_DEMI: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'NFE_DEMI'
      Origin = '"NFE_CAB"."NFE_DEMI"'
    end
    object cadastroNFE_DSAI: TDateField
      FieldName = 'NFE_DSAI'
      Origin = '"NFE_CAB"."NFE_DSAI"'
    end
    object cadastroNFE_HRSE: TTimeField
      FieldName = 'NFE_HRSE'
      Origin = '"NFE_CAB"."NFE_HRSE"'
    end
    object cadastroNFE_CFAV: TIntegerField
      FieldName = 'NFE_CFAV'
      Origin = '"NFE_CAB"."NFE_CFAV"'
    end
    object cadastroNFE_CNAT: TIBStringField
      DisplayLabel = 'C.F.O.P.'
      FieldName = 'NFE_CNAT'
      Origin = '"NFE_CAB"."NFE_CNAT"'
      Size = 10
    end
    object cadastroNFE_INDPAG: TSmallintField
      FieldName = 'NFE_INDPAG'
      Origin = '"NFE_CAB"."NFE_INDPAG"'
    end
    object cadastroNFE_TPNF: TSmallintField
      FieldName = 'NFE_TPNF'
      Origin = '"NFE_CAB"."NFE_TPNF"'
    end
    object cadastroNFE_NFREF: TSmallintField
      FieldName = 'NFE_NFREF'
      Origin = '"NFE_CAB"."NFE_NFREF"'
    end
    object cadastroNFE_REFNFE: TIBStringField
      FieldName = 'NFE_REFNFE'
      Origin = '"NFE_CAB"."NFE_REFNFE"'
      Size = 44
    end
    object cadastroNFE_CUFREF: TIBStringField
      FieldName = 'NFE_CUFREF'
      Origin = '"NFE_CAB"."NFE_CUFREF"'
      Size = 2
    end
    object cadastroNFE_AAMMREF: TIBStringField
      FieldName = 'NFE_AAMMREF'
      Origin = '"NFE_CAB"."NFE_AAMMREF"'
      Size = 4
    end
    object cadastroNFE_CNPJREF: TIBStringField
      FieldName = 'NFE_CNPJREF'
      Origin = '"NFE_CAB"."NFE_CNPJREF"'
      Size = 14
    end
    object cadastroNFE_MODREF: TIBStringField
      FieldName = 'NFE_MODREF'
      Origin = '"NFE_CAB"."NFE_MODREF"'
      Size = 2
    end
    object cadastroNFE_SERIEREF: TIBStringField
      FieldName = 'NFE_SERIEREF'
      Origin = '"NFE_CAB"."NFE_SERIEREF"'
      Size = 3
    end
    object cadastroNFE_NNFREF: TIntegerField
      FieldName = 'NFE_NNFREF'
      Origin = '"NFE_CAB"."NFE_NNFREF"'
    end
    object cadastroNFE_TPEMIS: TSmallintField
      FieldName = 'NFE_TPEMIS'
      Origin = '"NFE_CAB"."NFE_TPEMIS"'
    end
    object cadastroNFE_FINNFE: TSmallintField
      FieldName = 'NFE_FINNFE'
      Origin = '"NFE_CAB"."NFE_FINNFE"'
    end
    object cadastroNFE_PROCEMI: TIBStringField
      FieldName = 'NFE_PROCEMI'
      Origin = '"NFE_CAB"."NFE_PROCEMI"'
      FixedChar = True
      Size = 1
    end
    object cadastroNFE_VERPROC: TIBStringField
      FieldName = 'NFE_VERPROC'
      Origin = '"NFE_CAB"."NFE_VERPROC"'
    end
    object cadastroNFE_DHCONT: TDateTimeField
      FieldName = 'NFE_DHCONT'
      Origin = '"NFE_CAB"."NFE_DHCONT"'
    end
    object cadastroNFE_XJUST: TMemoField
      FieldName = 'NFE_XJUST'
      Origin = '"NFE_CAB"."NFE_XJUST"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroNFE_ISUF: TIBStringField
      FieldName = 'NFE_ISUF'
      Origin = '"NFE_CAB"."NFE_ISUF"'
      Size = 10
    end
    object cadastroNFE_VBC: TIBBCDField
      FieldName = 'NFE_VBC'
      Origin = '"NFE_CAB"."NFE_VBC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VICMS: TIBBCDField
      DisplayLabel = 'Valor I.C.M.S.'
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_CAB"."NFE_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCST: TIBBCDField
      FieldName = 'NFE_VBCST'
      Origin = '"NFE_CAB"."NFE_VBCST"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VST: TIBBCDField
      FieldName = 'NFE_VST'
      Origin = '"NFE_CAB"."NFE_VST"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VPROD: TIBBCDField
      DisplayLabel = 'Total Produtos'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_CAB"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_CAB"."NFE_VFRETE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_CAB"."NFE_VSEG"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VDESC: TIBBCDField
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_CAB"."NFE_VDESC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VII: TIBBCDField
      FieldName = 'NFE_VII'
      Origin = '"NFE_CAB"."NFE_VII"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VIPI: TIBBCDField
      DisplayLabel = 'Valor Ipi'
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_CAB"."NFE_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VPIS: TIBBCDField
      DisplayLabel = 'Valor Pis'
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_CAB"."NFE_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VCOFINS: TIBBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_CAB"."NFE_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_CAB"."NFE_VOUTRO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VNF: TIBBCDField
      DisplayLabel = 'Total NF'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_CAB"."NFE_VNF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VSERVISSQN: TIBBCDField
      FieldName = 'NFE_VSERVISSQN'
      Origin = '"NFE_CAB"."NFE_VSERVISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCISSQN: TIBBCDField
      FieldName = 'NFE_VBCISSQN'
      Origin = '"NFE_CAB"."NFE_VBCISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VISS: TIBBCDField
      FieldName = 'NFE_VISS'
      Origin = '"NFE_CAB"."NFE_VISS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VPISISSQN: TIBBCDField
      FieldName = 'NFE_VPISISSQN'
      Origin = '"NFE_CAB"."NFE_VPISISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VCOFINSISSQN: TIBBCDField
      FieldName = 'NFE_VCOFINSISSQN'
      Origin = '"NFE_CAB"."NFE_VCOFINSISSQN"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETPIS: TIBBCDField
      FieldName = 'NFE_VRETPIS'
      Origin = '"NFE_CAB"."NFE_VRETPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETCOFINS: TIBBCDField
      FieldName = 'NFE_VRETCOFINS'
      Origin = '"NFE_CAB"."NFE_VRETCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETCSLL: TIBBCDField
      FieldName = 'NFE_VRETCSLL'
      Origin = '"NFE_CAB"."NFE_VRETCSLL"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCIRRF: TIBBCDField
      FieldName = 'NFE_VBCIRRF'
      Origin = '"NFE_CAB"."NFE_VBCIRRF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VIRRF: TIBBCDField
      FieldName = 'NFE_VIRRF'
      Origin = '"NFE_CAB"."NFE_VIRRF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VBCRETPREV: TIBBCDField
      FieldName = 'NFE_VBCRETPREV'
      Origin = '"NFE_CAB"."NFE_VBCRETPREV"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_VRETPREV: TIBBCDField
      FieldName = 'NFE_VRETPREV'
      Origin = '"NFE_CAB"."NFE_VRETPREV"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object cadastroNFE_CHAV: TIBStringField
      DisplayLabel = 'Chave de Acesso'
      FieldName = 'NFE_CHAV'
      Origin = '"NFE_CAB"."NFE_CHAV"'
      Size = 44
    end
    object cadastroNFE_PROT: TIBStringField
      DisplayLabel = 'Protocolo de Autoriza'#231#227'o'
      FieldName = 'NFE_PROT'
      Origin = '"NFE_CAB"."NFE_PROT"'
      Size = 30
    end
    object cadastroNFE_PROC: TIBStringField
      DisplayLabel = 'Protocolo de Cancelamento'
      FieldName = 'NFE_PROC'
      Origin = '"NFE_CAB"."NFE_PROC"'
      Size = 30
    end
    object cadastroNFE_STA: TIBStringField
      FieldName = 'NFE_STA'
      Origin = '"NFE_CAB"."NFE_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroNFE_DFAV: TIBStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'NFE_DFAV'
      Origin = '"NFE_CAB"."NFE_DFAV"'
      Size = 60
    end
    object cadastroNFE_OBSE: TMemoField
      FieldName = 'NFE_OBSE'
      Origin = '"NFE_CAB"."NFE_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroNFE_DCAN: TDateField
      FieldName = 'NFE_DCAN'
      Origin = '"NFE_CAB"."NFE_DCAN"'
    end
    object cadastroNFE_HCAN: TTimeField
      FieldName = 'NFE_HCAN'
      Origin = '"NFE_CAB"."NFE_HCAN"'
    end
    object cadastroNFE_CVEN: TIntegerField
      FieldName = 'NFE_CVEN'
      Origin = '"NFE_CAB"."NFE_CVEN"'
    end
    object cadastroNFE_DVEN: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NFE_DVEN'
      Origin = '"NFE_CAB"."NFE_DVEN"'
      Size = 30
    end
    object cadastroNFE_CREP: TIntegerField
      FieldName = 'NFE_CREP'
      Origin = '"NFE_CAB"."NFE_CREP"'
    end
    object cadastroNFE_DREP: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'NFE_DREP'
      Origin = '"NFE_CAB"."NFE_DREP"'
      Size = 40
    end
    object cadastroNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_CAB"."NFE_CTRA"'
    end
    object cadastroNFE_DTRA: TIBStringField
      FieldName = 'NFE_DTRA'
      Origin = '"NFE_CAB"."NFE_DTRA"'
      Size = 40
    end
    object cadastroNFE_QCOM: TIBBCDField
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_CAB"."NFE_QCOM"'
      Precision = 18
      Size = 4
    end
    object cadastroNFE_CONC: TSmallintField
      FieldName = 'NFE_CONC'
      Origin = '"NFE_CAB"."NFE_CONC"'
    end
    object cadastroNFE_CLFO: TIBStringField
      FieldName = 'NFE_CLFO'
      Origin = '"NFE_CAB"."NFE_CLFO"'
      FixedChar = True
      Size = 1
    end
    object cadastroNFE_ESTO: TIBStringField
      FieldName = 'NFE_ESTO'
      Origin = '"NFE_CAB"."NFE_ESTO"'
      FixedChar = True
      Size = 1
    end
  end
  inherited DTSCadastro: TDataSource
    Left = 848
    Top = 48
  end
  inherited IBTra: TIBTransaction
    Left = 744
    Top = 40
  end
  inherited ibSP: TIBStoredProc
    Left = 784
  end
  inherited ILMenuPrincipal: TImageList
    Left = 104
    Top = 432
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
      000000000000000000000000000000000000000000000000000000000000B894
      7C00B6937600B7937600B7937600B7937600B7937600B7937600B7937600B793
      7600B7937600B7937600B8957A00D1BAA600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFC00FAF4EB00F5E7
      D400F1DEC900E5C6A200D69D5D00E3BE8E00FDFCF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A67A5700874D
      2200A87D5C00A67A5900A6795800A6795800A6795800A6795800A6795800A679
      5800A67A5A00A87C5B008E57290074300000B9957600F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFC
      F800FBF7F100F9F0E800F1DEC500E8C89F00E1B88C00D9A77200D08F4300C779
      1600C16C0100BF660100BF630200DBAB7200FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4785200B997
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BD9C7D00874C1B0084470F00BC9B7E00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFDFB00F9F2E800F6EAD900F2E0CD00E8CCA600DDB2
      7600D69D6000D08E4C00C87E2700C26F0500BF640000BF630000C1680000C36D
      0000C4710000C36E0000C0680100DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B794
      7500FFFFFF00F8F5F200DCCABB00DAC7B700F6F1ED00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B48E7000AB806000D6C2B10084461400C5A78D00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EED9BE00DEB48000D59A5000CC883600C77A2700C3701100C169
      0000BF630000BF630000C1690000C46E0000C6730000C6740000C6740000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00E4D7CA008F5827008A4F1C00E0D0C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B18A6B0099653F00F0E9E300B89576007B390100CCB3
      9E00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8D3C00C1670200C1680000C0670000C1680000C36B0000C570
      0000C7740000C7750000C6740000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00FBF9F600E9DFD400E8DCD000F3EDE800F8F4F100F8F4F100F8F4
      EF00FDFCFB00FFFFFF00C0A187007E3E14008F572900935D2D007C3A04009764
      3800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8D3900C46B0000C5720000C7740000C7750000C6740000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00E8DCD1009F704F009968430099663D0097643A0096633A009159
      3700CBB19A00FFFFFF00F4EFEA00DBC9B900D8C5B400DBCABA00B38C6C009966
      3E00E0D1C200C9AE9600C9AE9700E2D4C700F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1934200C5700000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFEFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00F4EEEA00CBB1A100C7AC9800CAAF9A00CAAF9A00C9AF9900C6AA
      9A00E7DCD200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9AD98009B6A
      4600C9AF9600925C2C0081420900A2734900F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAE7600FCF8F400F8EDE000F6EAD800F6EB
      DB00F6EBDB00F6EBDB00F6EBDB00F6EBDB00F6EBDB00F6EBDB00F5E9D800F9F3
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00F5F0EC00CFB7A700CCB39F00CEB5A000CEB5A000CDB5A000CEB6
      A000C9AE9800C3A58B00C09F8C00E2D3C900FFFFFF00FFFFFF00C4A68E00945F
      3800F4EEE700F8F4F100B79474009B693D00F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C6730000C5710000C5700000C5710000C6730000C6730000C6730000C673
      0000C6740000C4700000C1690100E1B68300F3E2CD00D1904C00CC843500CF8C
      3B00CF8B3B00CF8B3B00CF8B3B00CF8B3B00CF8B3B00CF8B3B00CD873700D090
      4A00EFDEC8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00E6DACF0098643F00935B32009661350096613500966135009661
      350095603400956034008E553000C9AF9A00FFFFFF00FFFFFF00C4A68F00945E
      3700F8F5EF00FFFFFF00BD9D80009D6B3F00F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C26B0000C0680000C16A0000BF670000C16B0000C6720000C6730000C673
      0000C6740000C4700000C1690100E2B98900EFDABA00C36D1000BE600000C269
      0000C2680000C2680000C2680000C2680000C2680000C2680000C1680000BE62
      0000D8A564000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00FFFFFF00FDFCFA00F6F2ED00F7F2EE00F9F6F200FDFDFB00FAF7
      F500FDFCFA00F8F4F000F6F2EC00FCFAF900FFFFFF00FFFFFF00C4A68F00945E
      3700F7F3ED00FFFFFF00BC9B7D009F6F4300F5F0EC00E8DCD300E9DDD400F8F4
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6710000C16A
      0000C67A1C00D7A25F00DEB27700D6A15E00C6791D00C1690000C5710000C673
      0000C6740000C4700000C1690100E1B98800F0DCBE00C7781600C26B0000C675
      0000C6740000C6740000C6740000C6740000C6740000C6740000C6730000C46F
      0000D79D51000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B692
      7300FFFFFF00EFE7DF00EBE0D700FFFFFF00FFFFFF00FCFCFA00E3D6C900F2EC
      E600E5D8CC00FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4A68F00945E
      3700F7F3ED00FFFFFF00BD9D7F00A4784E00C4A68D00874B160083440F00B996
      7800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C5730000C1690000CA84
      2B00EBD3B300000000000000000000000000EBD4B500CB842D00BF680000C572
      0000C7730000C5700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B793
      7400FFFFFF00BB997A009F6F4400FFFFFF00FFFFFF00B6927500884D1C00C1A3
      8800935D2E00EEE6DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4A68F00945E
      3700F7F3ED00FFFFFF00BC9B7D009F704400EFE7E000DDCCBC00A67A5400A376
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6740000C36E0000C4720F00E9D1
      AF0000000000F3E5D400E5C29C00F2E2CF0000000000EACFAD00C4721500C26B
      0000C7740000C4700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B793
      7400FFFFFF00B99575009B693B00FFFFFF00D7C4B200793700008B521E00BE9E
      8100925C2C00F3EDE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4A68F00945E
      3700F7F3ED00FFFFFF00BC9B7D009D6B3F00FFFFFF00FFFFFF00BA997B00A578
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C2680000D3984E00FBF9
      F300F6EADB00CD8A3D00BD600C00CA843500F2E2CC00FDFBF800D4995400C168
      0000C5720000C5710000C1690100E1B98800F0DCBE00C7771700C1690000C572
      0000C5720000C6730000C6730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B793
      7400FFFFFF00BB987900A5774D00F2ECE50091592E009D6C40009B693B00BF9F
      8200925C2B00CFB7A300DCCABB00D9C5B600EDE3DC00FFFFFF00C4A68F00945E
      3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6710000C1680000E0B988000000
      0000E3BF9400BF640000C0650000BE610000DFB4800000000000E1BB8F00C069
      0800C46E0000C5710000C1690100E1B98800F0DBBB00C4701100BD600000C069
      0000C26A0000C46F0000C5730000C6730000C6730000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B793
      7400FFFFFF00BD9B7C00A5784D00AC83640097633D00DFCFC00099653600C2A3
      8900894F19008A4E19008C531F0085461A00C0A08600FFFFFF00C4A69000945E
      3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C5700000C26B0000E6C69C000000
      0000DBAD7800C1670000C6710000C0660000DAA6690000000000E7C9A400C26D
      0E00C46D0000C5710000C1690100E1B88600EED8BE00CD883D00DFB48700E8CB
      AA00D2944B00C1690300C26A0000C5710000C6740000C6730000C6720000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B793
      7400FFFFFF00C3A4880080420F0083461100E3D5C900ECE3D900945F2E00BD9D
      7F00935E2D00DDCCBC00EDE4DB00EADFD600F6F2EE00FFFFFF00C4A68F00945E
      3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C5710000C26B0000E6C59C000000
      0000DCAD7800C1670000C5700000C1660000DAA66A0000000000E7CAA500C26D
      0E00C46D0000C5710000C1690200DDAF7700F9F3EC00F7EDE300FFFFFE000000
      0000FBF6F000E0B68500C5771E00BF660000C46D0000C6730000C6730000C46F
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B793
      7400FFFFFF00C1A185006F270000B7927200FFFFFF00E5D8CC00915A2700BA98
      7900915B2900E1D2C500F0EAE500EEE6DF00F9F5F200FFFFFF00C4A68F00945E
      3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6720000C1680000E0B58300FFFF
      FE00E2BE9200BF640000C0660000BE610000DEB27D0000000000E3C09600C06A
      0900C46F0000C5710000C1690200DCAB72000000000000000000EFDABF00EAD1
      B000FEFBF80000000000ECD7BB00D1934A00C0680500C1680000C5710000C470
      0100D7A158000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B793
      7400FFFFFF00C0A08400915A2B00F5F0EC00FFFFFF00E6D9CD0097643500C7AB
      9200894F1D008A5026008E562D00864A2900C1A28800FFFFFF00C4A69000945E
      3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C2680000D3944800FAF7
      F000F4E9D700CB853500BB5D0400C77B2900EFDCC400FEFDFB00D8A26300C167
      0000C5720000C5710000C1690200DEB07900FCF9F400E5C29900C6782000C26D
      0F00DBAA7000F7ECDF0000000000FAF4EB00DEB38000C5771E00BF640000C16B
      0000D8A259000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5785300B693
      7400FFFFFF00F2EBE500EEE5DC00FFFFFF00FFFFFF00FBF9F700E9DDD400F6F2
      EF00DFCFC300D5C1B000D6C1AF00D4BEAE00ECE3DB00FFFFFF00C5A79000945E
      3700F7F3ED00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6740000C46E0000C4710E00E9CF
      AD0000000000F1E0CB00DEB68700EDD7BD0000000000EEDBBF00C7791F00C26A
      0000C7740000C5700000C1690100E1B88700F0DFC600C4731900BD600000C26B
      0000BF650000CE8A3C00EAD0AE00FEFEFC0000000000ECD5B700D0904600BD63
      0000D5984B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3775100B996
      7800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6A99300925D
      3600F7F2EC00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C1690000CA83
      2B00ECD5B600000000000000000000000000F2E2CD00CF8E4000C0680000C570
      0000C7730000C4700000C1690100E1B98900EFD9B900C5731200C26B0000C776
      0000C46F0000BE640000C4721500DBAB7300F6EDE10000000000F8EFE300DCAF
      7C00D8A260000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A77A5500874C
      1700A6795100A4774E00A5774E00A4774E00A4774E00A4774E00A4774E00A477
      4E00A4774E00A4774E00A4774E00A4774E00A4774E00A67950008C521F00935D
      3100F7F3EE00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6710000C168
      0000C87B1E00DAA86A00E2BB8A00DCAF7400CB842C00C1690000C5700000C673
      0000C6740000C4700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6740000C5720000C36A0000C0660000CE8C3D00ECD0AF0000000000FFFE
      FE00F5E7D8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAC7B700AF88
      6500AF886400B0896500B6927100B48F6D00B0896400B0896400B0896400B089
      6400B0896400B0896400B0896400B0896400B0896400AF886400AE866200CDB4
      9D00FDFCFB00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C672
      0000C26B0000C1690000C36C0400C16A0000C1690000C5710000C6740000C673
      0000C6740000C4700000C1690100E1B98800F0DCBE00C7771700C26A0000C674
      0000C6730000C6740000C7740000C46F0000C0660000C6731500DDAF7800F8F0
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000CEB7A200E4D7CB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BC9B7D009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C5730000C5700000C56E0000C46F0000C5720000C6730000C6730000C673
      0000C6740000C4700000C1690100E1B98900F0DBBC00C4721100C0650000C36E
      0000C36D0000C36D0000C36D0000C36E0000C36D0000C0650000BE630000CD88
      3D00EDD8C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000945F2D00C0A08400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BE9E80009D6C4000FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1924100C56F0000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C4700000C1690100E1B88700F0DCBF00C7772400C1691000C572
      1100C5721100C5721100C5721100C5721100C5721100C5731100C26C0D00C06A
      1200E5C8A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F00097633200B9967800F6F2EE00F3EDE600F3EDE600F3ED
      E600F3EDE600F3EDE600F3EDE600F3EDE600F3EDE600F3EDE600F3EDE600F3ED
      E600F3EDE600F7F3EE00B6916F009B6A3D00FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1934200C5700000C6730000C6730000C6730000C6730000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DEB07900FAF4EA00EDD6BC00EBCFB000ECD3
      B300ECD3B300ECD3B300ECD3B300ECD3B300ECD3B300ECD3B300ECD1B000EED8
      BD00FCF9F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F0009F6F440082441700935D2E00925B2B00986535009560
      3000915B2B00915B2B00915B2B00915B2B00915B2B00915B2B00915B2B00915B
      2B00915B2B00935E2E0081431600A3754D00FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8E3900C36B0000C5720000C7740000C7750000C6740000C673
      0000C6730000C6730000C6730000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7300FEFEFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000E3D4C700CCB29A00CBB29900CCB29A00B0886500C0A0
      8200CCB29B00CCB29A00CCB29A00CCB29A00CCB29A00CCB29A00CCB29A00CCB2
      9A00CCB29A00CBB29900CCB29B00E4D6CA00FFFFFF00FFFFFF00B6927300A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE8D3C00C1670000C0680000C0660000C1680000C36C0000C570
      0000C7740000C7750000C6740000C6730000C6730000C6730000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0009B6A4A00CEB6
      A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7947500A578
      5300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDD5B800DCB07700D49A4E00CC873600C6772400C36F0E00C069
      0000BF630000BF640000C16A0000C36E0000C6730000C6740000C6730000C673
      0000C6740000C5700000C1690200DCAC7400FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000905A3200C5A7
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA977800A478
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCF800F9F2E700F6E9D900EFDDC700E7C7A100DEB0
      7500D59C5E00CF8B4600C87C2300C26F0400BF630000BF640000C2690000C36D
      0000C4710000C46F0000C1680100DCAC7300FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F7F2EE00935C33008D55
      2F00A97F5F00A77C5B00A77C5B00A77C5B00A77C5B00A77C5B00A77C5B00A77C
      5B00A77C5B00A77C5B00A77C5B00A77C5B00A87C5B00A9805F00884D2400A67A
      5700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFB
      F800FBF7F000F9EFE500F1DCC100E8C89F00E1B68800D8A36C00CF8E4200C679
      1500C16B0100C0670100BF640300DBAB7200FEFDFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000D2BCAB00B48F
      7600B4907300B4907300B4907400B4907400B4907400B4907400B4907400B490
      7400B4907400B4907400B4907400B4907400B4907300B4907300B5917800DECF
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFB00F9F4EC00F4E7
      D400F0DCC700E4C19C00D59D5C00E2BC8F00FDFBF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFAE0000EFAE0000EFAB0000EFAC
      0000EFAE0000F0AB0000EFB21E00F7E5B300F8EBC600F8E9C100F8E9C100F8E9
      C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9
      C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9C100F8E9
      C100F8E9C000F8ECC900F4DC9800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C3002C2C2B001C1C1B00121110000A0A08000A0A08000A090800030202000B0A
      0900090807000B0B0A00131212001E1E1E0049494900EBEBEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00FEFFFF0000000000F0EA
      D900F6F6EE00FDFFFF00FFFEFF00FDFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFCFC00FCFDF900FDFF
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0100EFAF0000EDA30000EFB42300EFB3
      1C00EDA70000F0AC0000EFB32800FCF6E500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EDC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8E800DBDBDB009C9C9C002F2B29004946460070717100302B
      2A00524F4F00D4D4D400DCDDDD00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAF400E9D7
      AF00E6D8B100FCF9F30000000000FFFFFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFFFF0000000000F6E0CF00ECC1A400FAF3
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0100EDA40000F6D48B00F9F1D600FAF2
      D700F5D27C00EEA50000EFB32400FBF3DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000969796001513130097969600000000002928
      2800323232000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFBFA00F0E7D400E4D2A800E8D0
      A200E5CC9C00E9DBB800FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFFFF00FEFEFF00F7E8E200F3D0A700DD915900F2CE
      B900FEFFFF00FEFFFF00FFFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AC0000EFB42100F9EBC600EB9A0000ECA1
      0000F9EABF00EEAA0100EFB32300FBF3DF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC00F4F4F400EDEDED00E4E4E400CECECE00A5A5A5008888
      880088888800888888008B8B8B0097979700BABABA00D7D7D700E3E3E300EBEB
      EB00F4F4F400FDFFFF00F9EBC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E8E9E900E8E8E900E9E9
      E900E9E9E900E8E8E800E9E9E90047484700000000005B5B5B00808080001B1B
      1B0000000000BBBCBC00EAEAEA00E9E9E900E8E8E800E8E8E800E7E7E700EAEA
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBF800E4D4AD00EACC9C00E8D1
      A500E9D2A300E4CD9B00F0EAD800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFCFC00F4DDCE00F2C9A200FCD7A300E4A76E00DE8C
      5B00F6DCCA00FEFFFF00FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EEAB0300F9EFD500EEAB0000F1BB
      3C00F7E7B800EDA70000F0B32300FBF3DF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00F9F9F900F4F4F400FAFAFA00ABABAB007D7D7D009A9A
      9A009C9C9C0003030300BCBCBC008585850079797900D0D0D000F3F3F300F2F2
      F200F7F7F700FEFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F6
      F700FDFDFD00000000000000000000000000CCCCCC001B181700191414001A17
      16001A1716001B1818001D1B1D00120F13000F0D11001413180040434700100E
      1300100D130017161B001E1C21001E1C2200242328002221260026272B002A2A
      2A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFFFF000000000000000000F6F2E300E6CFA200E9D0
      9E00E6D0A600E7D2A500E7D2A600FAF6F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFEF700FFE0AB00FFDD9400FFDF9B00FFE0A600E7A9
      7000E0946300F7E9DD00FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0100EEAA0000EDAD1500F0BE3D00F2C1
      4A00EDAC1400EEAA0000F0B32500FBF3DF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F5F5F500EBEBEB00EAEA
      EA00BABABA002F2F2F00E8E8E800E8E8E800F1F1F100FAFBFB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B3B2
      B20066636500908E8F00C4C3C400F6F6F600C6C5C4002E2B2A00838181008482
      8200858282007E7B7500716C59006E674C006B6446006D674A007B785D006D67
      4E006D674F0069624B006761490067604800676149006660470067614A001F1D
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFFFF00000000000000000000000000F7F6EA00EEDA
      B800E9D1A900E8D2A900E5CEA000FAF6EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFF00DBDDFF00BDB0D700B497B100B8A0B400D5BBAD00F0DE
      A800E6A25D00F1BE9800FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0000EEA40000F7E3B100F8EED100F9EF
      D900F7DE9E00EEA60000EFB32400FBF3DF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F9F9F900636363000F0F0F00050505000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001719
      1B0036373B00A9ABB100FFF4CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900F3F3
      F300DADADA00A3A1A20077757600716E6F005451520056545400000000000000
      00000000000000000000FFFFFE00FBF8E600EBE7C800DBD4A600CBC08600C5BA
      7600C0B46C00C0B46C00C2B67000C4B97500C5BA7700C9BD7900C4B978002725
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFFFF000000000000000000E2EAF3008EC9D70078C1CE008ACCDA00D3D2
      B800F2D6A400EED4A900E4D2A200EFE8D4000000000000000000FEFFFF00FFFF
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F1
      FF00B6AEFD00756EEF008580F400B4B6FB00CCC2EC00B5A0C6008377C9007871
      D800A1799D00E2A98B00FFFFF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AC0000EFB52400F9ECC400E98D0000EB97
      0000F9E9BE00EEA90100EFB32300FCF4DF00FEFFFF00F9F9F900FAFAFA00FEFE
      FE00E7E7E7005F5F5F009A9A9A00ACACAC00ADADAD00AFAFB000B1B1B100B2B1
      B000B3B2AE00B3B0AB00B4AFA200B6B2A100B5AE9A00B2A68E00AB9E7F00CAB6
      9500B1A48800ACAEB400FFF4CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400FCFC
      FB00000000000000000000000000F4F4F4008A888700504F5300000000000000
      0000000000000000000000000000000000000000000000000000FEFDFD00F3F1
      E700E5E1C900D4CEA800C6BE8A00BCB27400B6AA6800BCB17000BAAF74002725
      2200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFD00FFFCFE00B4C0B00038806A00337D61005D806B0072827A008D82
      6900BAA58000DDC69D00ECD5AC00E6CEA600EEE5D100F9FBF400FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDBFF00516C
      CD002E528500667F6B007E8A710097949000C2B7B400EBD19F00FFE6A000F1D8
      A8009E87B5007348A200CDBDD700FFFFF4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EEA80000F9ECCA00F5D89900F6DD
      A400F8E7B600EDA60000F0B32300FDF5E000F0F2F600FDFDFD00F0F0F000FCFC
      FC00EBEBEB007F7F7F00F6F9FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCF2DD00FFEFCC00FFE9C000FFE4B500FFDE
      A800D4B98C00A8ABB200FFF4CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9FAFA00E7E7
      E70047444500DEDEDE0000000000E5E5E500B6B8BE004C3E2300F8DD9700FEFE
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F5ED00E8E5D100C6BC8400B8AD6F002825
      2200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096B395002D7D5900ADCAB900E7EEE100D1E3D4009AB086006783
      5300666C4B0092806700C6B18F00E8D1A600EAD2A200E6D5B100ECE2CA00EFE4
      CD00F4EDDE00FEFFFE00FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDFF003A68B4005997
      84008ED8A5005BC2A9005CB49C00448466004A5F4B00A1826300D2AA8000FCD9
      9F00FFEEA200D1A283007E52A000C39FAD00FFDCBB00F5DFD300FDF5F200FEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0000EEAC0000EDA70700F2C75900F2C9
      5D00EEAB1800EEAA0000F0B32500FFF7E300DFE0E400C4C4C400FFFFFF00E3E3
      E300BBBBBB007E828800EAD3BA00FDFDF700FEFFFF00FEFFFF00FFFFFF00FFFF
      FF00F4E6D300E8BF8300F7F5F100EDE2D100F2D9B100EFD3A800EECE9C00EFCC
      9200D0B18300AAACB200FFF4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000BCBA
      BB001B171900FDFDFD0082808100130E1000696C7700553D0500EDB11800FEFE
      FA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5BB8200B8AD6F002926
      2300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7D9C400457858007EC0CC0000000000F8F0E600F7E7CF00F7DAB000E3D4
      A1009EB37F00627C4F007C715200B19C7E00E7D1A400EBD5AB00E8D1A300E9CF
      9E00E6CCA100F3ECDB00FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBE9FF004C71BB005A826700BAEB
      DF0093E0EF00CEF6FD00EEFDFE00DBD8BC0092BB88005A865C008C7B5B00BF99
      7700F0CE9C00FFE8A200ECCE9E008D6EB600D09F8C00E7A56800E9B59400FCFA
      F700FEFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EEAC0600F8ECC700F9F6E400F6DB
      9600F6DE9E00EEA90000F0B32400FFFAE600CBCDD10010101000FFFFFF000000
      0000000000007D8E9F00C3510000FBF1D800FFFFFF00FAF2E400F5E1C300F3E0
      C300D37D0700E4B26D00DEA14E00ECE0CA00F0D4A900EFCE9D00ECC99200EFC6
      8700CFAF7F00A8ABB100FFF4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F90000000000807D
      7F00555253008E8C8D0003000000252023008D8F9A0052380000F7D26D000000
      0000000000000000000000000000000000000000000000000000FAF2DB00F4DE
      A900F7E8C300FFFFFD000000000000000000EFEEDF00BBAF6D00BAAF72002A26
      2300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000087A27F00638E8F00B0E4EC0000000000EFDBBC00E7C99800E8CFA400EED0
      A600F7DBAE00CACC96006F895B00706B5100A7967900E2CDA000ECD4A600E7D0
      A300EAD3A600E4D1AF00FBF9F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A6F400457F6B009FB6AA0083CD
      D900C0C8C50000000000FFE4CA00FEC79400FFDEA400C5D49F00669D6E008782
      5B00BA916900EECB9700FFEAA800DDC5AC00978DCC00F6D59200E0894D00F5D2
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0100EFAB0000EEAD1F00F6D58700F4DA
      9600EEAD0B00EDAA0000F0B32500FFFAE500D2D4D7002E2E2E008F8F8F005353
      53000E0E0D007C8C9E00D0781300E5B06500E9BE8B00ECD0A500E0A85900EBC9
      9800D8871300ECCA8F00DC9B5200E8D7BA00EFCF9D00ECC99200EAC48700EDC1
      7D00CDAD7B00A8AAB000FFF4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600000000005451
      52001F1A1B00252122006864660046424300B4B7C2004C330300F0BB3500F4DC
      9F00FBF4E100F6E6B600E4AC2400EBC56300FAF3DD00F3DEA500DE9C0600DC96
      0000DE9A0000E4AF3200F9F0D60000000000E1DCC100B8AC6800BAAF73002C27
      2400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3FA
      F300758D72007CA3AC00BDECF00000000000EFDFC100E6CDA000E8D0A400E6D1
      A400E8D0A400F5DAB100E1D5A7007A9362006D6B4E00A8947700E4D0A300EAD4
      A400E8D2A500E6CEA000F4ECDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFF00EEEEFF00EEEE
      FF00EEEEFF00EEEEFF00F5F5FF00D1CDFF0095A9E7006B90700087B1BE0089AF
      B600DED6DF00F1F1FF00ECD5B700F0D09D00F2D0A100FAD7A600DEDAAF006AA3
      7E0086816400B18E7600E7C89F00F8DCA000AE9AB800BFAEC200E6B17300DB98
      7300EFEBF000EEF0FF00EDEDFF00F5F5FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EEB00C00F5DDA100F8E5B100FAF8
      EE00FCFAF100EDA60000F0B32300FFFAE500D6D7DB001616160022222200E0E0
      E000000000007D8CA000CD731000EBC48400EFD3AA00FBF6EF00FDFBF900FDFF
      FF00DC9A3B00D1780700E3B37500EBDBBF00ECC68C00EAC38500E7BE7D00ECBB
      7200CCAC7A00A7A9AF00FFF4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900EDECEC001B17
      190008040500C5C4C5007A777800635F6100A7A9B30048340900EDB52E00DE9C
      0300E9BC4600F9EDC800E7B64300E0A10C00F0D38700E1A21100E0A01100F8EE
      CD00FAEFD300E09F0E00E3AC1F00FFFFFC00D3CCA600B8AC6900BAB074002D28
      2500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFE0000000000E7F2
      E7007689720085ACB200B9EAEF0000000000EDE0C400E7CE9E00E9D2A400EAD3
      A600ECD4A700E7D3A700EFD8AD00E3D8A90078926200756D4F00B2A07E00E8D3
      A700E9D2A500ECD3A300EDE0C200FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00A3A3FF009090FF00A6A6
      FF00ABABFF00ABABFF00AAAAFF00A09EFF008C9DE600506A9A005B76C600707F
      C600A19DEF00AEB0FF00AB9FCB00A690B000A28EAF008C78A0009275A3009A8D
      AE006384A70060608E0083679B00A995B600AD9EBA009F93C100A89ABC009C61
      8100A497D700A9ACFF00A7A7FF008484FF00DDDDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0000EFA90000F0B82A00EFBA3500EFAF
      1900EEB42300EEA80000F0B32500FFFAE500D7D9DC000000000045454500FDFD
      FD000000000077869700CE721100E7BF7F00EAC59300F9F2E600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E6CDA600E9BE7B00E7BC7800E8B87200EAB6
      6800CEAC7B00A7A8AF00FFF4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F6F6F600F5F5F500B0AF
      AF00C2C2C20000000000413E3F009F9C9E0069686C004B422D00FEFFFF00F5F4
      F100F1E9D500F7FAFF00FBFFFF00FCFBF700EFCF7900DC920000E2A61600F3D9
      9B00FAF1DB00F7E9C100F6E6BA00FCFDFA00C4BB8700BBAF6D00BAB074002D28
      2500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFE0000000000E9F2
      E900788B73008DAAB2009FE5EF00FFFDFA00EAD5AE00EAD3A500EBD4A700EFD6
      A600E1CA9B00D8C29600E1CA9B00F7DBAB00DDD4A300708757007E715700C4AF
      8D00EDD6A700E9D2A400E7D1A500F9F6F000FDFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF00AEAEFF00DBDBFF00FCFC
      FF00D5D5FF00D6D6FF00E6E6FF00FAFAFF00E2F2E40062867B007EA4A80097AA
      AF00EDE8E400D5D3FB00D8C7BE00EDD6B500B6AED000B1AFD200B4AFAF00785E
      7700817976006D9F6E00A8965C00BD9C8100CAC0AA00D7C5A900F2DBAC00E8A4
      6600F2BE8800DEE0FF00F6F6FF00A4A4FF00D2D2FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EEAD0B00F7DDA200F8EBC300F2C4
      5900F8E5B200EDA70000F0B32300FFF8E300DFE1E4008D8D8D00DADADA00FAFA
      FA0092929200797F8600E2C79D00EEC38E00E8BA7F00FAF1E400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00E4C89D00E6B97100E8B87100E7B66D00EAB4
      6400CBAC7A00A4A7AC00FFF4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00F5F5F500000000000000
      00000000000000000000E6E5E600F4F4F4007A7B83004E3C1900F2C96900F5E1
      B200FCF9F000F8F8F900F7F7F800F7FAFF00E8C15E00DD960000E3B13800E1A8
      2000E0A00A00E4AC2E00F1D18400F4F5EF00BBB17300BCB17100BBB074002D28
      2600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5FB
      F6007D957B009CA3A900C3DBC800F1DAB800E4CDA300E8D2A500E1CA9D00D3C6
      A700D1C9B800C9C4B800BCB19E00B5A48500F2D6AF00C4C8980063795000917F
      6400DCC69B00ECD6AA00E5CE9F00F1EAD900FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF00B3B3FF00F0F0FF00D7D7
      FF007D7DFF008282FF00A7A7FF00807EFF00767BEF00305885004A6BB200455A
      D300A9A2D9008576D200867DDA00ABAEFF007B7DFF00C7C9FF00B6BBFF00777A
      FE009489C0003F54BD003F57A60077589E006356CA008C7DC900B5A6C000785C
      B7007549A500ADB2FF0000000000B0B0FF00D4D4FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AC0000EFB52500F9EAC900F3CA6400F5D0
      7400F7E2A900EDAB0200F0B32300FFF7E200E2E3E700EDEDED00ECECEC00EEEE
      EE00EEEEEE0075757500EDF1F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E5C38E00E8AE5900E8AF5C00E5AD5900E7AC
      5000CDAA7500A4A7AD00FFF4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F600F8F8F800FDFDFD000000
      000000000000000000000000000000000000BFC1C80052432900EEB93900DF9A
      0500EECE7E00FEFFFF000000000000000000EED08100DB8E0000F1E1B600FAFF
      FF00EBCD8000D98A0000EDC05300E8E9DE00B7AB6900BCB17200BAB074002E28
      2600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008DA88E0091979200E3C9A200EAD09E00E7D1A500E4CC9F00E3DBC600F8FA
      FA00000000000000000000000000D6D7D600A69B8700EFD7AD009BAE79006B6F
      5000B09C7D00E9D4A800E8CD9C00F2E9D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF00B3B3FF00F0F0FF00AAAA
      FF008888FF00CBCBFF00B7B7FF005C59FF006569F00050829E001A27DD001D2A
      E0005B53C700918AC100CECCE2009B9CFF003435FB009D94DB009B91D900BDBF
      FF00000000005853E2000D15BA005A6299006E5CB8009C8FAF008982D1007257
      B9004124C000BEC4FF0000000000ADADFF00D4D4FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0000EEA30000F5D38200EEAE0900FAEE
      CE00F3CD7300EDA50000F0B32400FFF7E200E0E1E500E0E0E000E0E0E000D9D9
      D900DBDBDB006E6E6E00BFBFBF00D5D5D500D3D3D300D3D3D300D3D3D300D3D3
      D300D2D2D200D5D5D400E2E3E400D9C8AA00DDC29700DEC29700DBC19300E1C4
      9500B1A17900A09EA000FFF5CD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F300FBFBFB00FDFDFD000000
      00000000000000000000FDFDFD0000000000B6B5B40058565B0000000000FCF7
      E800FAF3E300FDFDFD000000000000000000FBF5E400E2A61E00E2A41400EECA
      6E00E1A41200DF9D0900FCF3D900D9D6BA00B6AA6700BDB27300B9AF73002F29
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFE00FEFFFF000000
      0000A7C2A100717C6500C0AF8B00ECD6A700E8CEA100E8D9BA00FEFFFF00FCFD
      FE00E9E0C800EEDFBE00F8F3E90000000000DBDDDA00C7B69300E7D8A700728A
      5A0083775B00D2BD9500ECD2A400EBDBBD00FCFBF800FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF00B2B2FF00EEEEFF00CBCB
      FF006D6DFF00787BFF00ECF0FF008081FF00B4B7FA0096B6D700313CAA004E4F
      A6009A83AB007A6FD8008786F300ACAEFF003A35C6009B86A400BDA0BF00CBBE
      D200FFFFF000BCB7F000756DD40078A989002C2FB5005C49BA00D2B9B100BFAA
      B6006945B000F3D4B90000000000ADADFF00D4D4FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EFAE0800F4D07500F7DB9800F4D2
      7F00F2BF5000ECA80000F0B32400FFF7E200E2E4E700E3E3E300EBEBEB00E1E1
      E100F1F1F100AFAFAF008A8A8A008A8A8A008B8B8B008C8C8C008C8C8C008B8B
      8B0089898A0092929200BBBABA00C2C6CB00C5CCD500B9BEC900A9AFBA00A2A9
      B300A0A3AC00D6D8DF00FEEFC500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F3F3F300FDFDFD00FEFEFE000000
      00000000000000000000FCFCFC0000000000B6B5B50058555600000000000000
      0000FDFFFF00FDFDFD00000000000000000000000000FBF5E200EBC35E00E4AC
      2600E8BA5100F8EDC90000000000C8C08E00B8AC6B00BDB17200BBB07400312B
      2A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F4ED00F0DC
      BE00C6C594006A764A00A4907300E5D1A500E7CE9F00F4EBDA0000000000D2CD
      C400C4AD7F00DFC39100D7C6A000DBD0B100E0CBA900DFCDA200F6D8AC00ACB7
      840068724E00AC987800E5D5A700E8CD9D00EFE1C700FDFFFF00FFFFFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF00B2B2FF00E5E5FE000000
      0000DBDEFF00D7CCE600F8E1CE00EAE0E800FBFAFD00BFCFB90074855900B68F
      7200FFE0A100DBC0AC00DFDDF300FEFFFF008982A3007E636000CBA87900C6A6
      7800CBB07C00C4A77A00C6A78000C0BE87005D838200A6827B00F1CD8A00F7DE
      AE00DFAA8100E6925800FFF1D900AFB3FF00D4D4FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE000000000000F0B62D00F0B53300F1B5
      2C00F9E8BA00EDAA0000F0B32300FFF7E200E3E5E800D5D5D500E6E6E600EAEA
      EA00ECECEC00EDEDED00EEEEEE00F8F8F800FBFBFB00F1F1F100EBEBEB00FBFB
      FB00F7F7F700EDEDED00EAEAEA00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00F5F5F50000000000000000000000
      00000000000000000000FBFBFB0000000000B6B4B5005A575800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFD00C6BC7B00C2B67200C6BB7700C3B87800312B
      2A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAF8F400EDDDC000EFE0C400FAF9F40000000000E7D8B700ECCB
      9900EBD7A7007D95640084755F00CCBB9100E8D3A300F6F0E40000000000E0DD
      DA00CBC7BC00CFCCC400CFCCC100CDC8BA00CEC6B900B7AF9A00E6CDA300E6D5
      A6006E8A5B00897C6000D9C39800EAD5A800E5D0A900F2E7D400FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF00AEAEFF00DBDDFF00F5F6
      F500FAE1C500F7D09D00E7AE7C00E99F6A00F8D0A800E0DDA8007EA67500A187
      5B00E3C09000FDE29D00FBF4E100F7F7FF00E3E1DE00CDC5BA00D5CBC800D1C9
      C800CFC5C500D2C8C300D4C9C200A18D80007DA16500908D5900CEA77D00F6DA
      9E00F9E4AC00DE9B6200F0AD6900A6A6EA00D3D5FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EFAD0300F3C55500F2C75E00F3CB
      6900FAEDCC00EDA80000F0B32300FFF7E200DDDEE200D8D8D800E8E8E800E2E2
      E200E4E4E400E5E5E500EBEBEB00DEDEDE00E3E3E300EBEBEB00E4E4E400D9D9
      D900E0E0E000CCCCCC00D1D1D100E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600F8F8F800EDEDED00F5F5F5000000
      000000000000FEFEFE00FEFEFE0000000000B6B4B50039353600B8B7B700B5B4
      B400B3B2B200B7B5B600B8B6B700B8B7B800B9B7B900BCBABB00BCBABC00B9B7
      BA00B7B5B700B8B6B800ACA89F00857B4E00857C5100877D5200857C53001D16
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFC
      F900ECDFC300E8D9BA00E5CEA000E6CE9A00E9D8B200F1EBD900E8D5AE00E8CF
      A000F1D8AC00B5B98C0064714D00A7947300E7CFA200F8F1E10000000000FAFA
      FA00F9FAF400FFFFF700FEFDF5000000000000000000CFCEC400D5C19700F8DE
      B2009FAF7F0070705100C0AB8900ECD8AA00E9D3AD00E2CEA000F5EFE1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00B8B9FF00A4A4FE00B2A1
      D100AB8BAB00B194B400B79FB9009D76A4009C79A800C2A6C0006F88AB005C65
      90008A6F9900B79AB400B2A5D900B3B5FF00B9BAFF00BBBCFF00C0C2FF00BBC0
      FF00BBBEFF00BBBEFF00BEC1FF009F99DB00484E8F004C65A2007D648C00AD93
      B500B5A1C300B29DBF00A36F8400906AAC00E6E7FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EFAD0500F3D07500F3D58500F5D6
      8800EFB82B00EDA70000F0B32500FFF7E200E1E2E600D3D3D300E2E2E200E8E8
      E800F3F3F300EFEFEF00EFEFEF00EEEEEE00F2F2F200E2E2E200DDDDDD00E7E7
      E700E5E5E500E2E2E200E4E4E400ECECEC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400FDFDFD00EBEAEA00E9E8E800F8F8
      F800FAFAFA00FBFBFB00EFEFEF00F9F8F800DDDCDD007A757700747072007571
      7300757073007671740078737600797477007A757900746F73006E6A6D007C77
      7A0078737500767174007571750077727A0075707800726E7600736F77007470
      7400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECDF
      C100E5CD9900E8D1A200EAD7A900E7D7AA00EBD0A200E9CC9F00E9D2A700E9D2
      A500E7D4A900EADAAD007C9665007F765C00C8B38B00F4E9D20000000000E9E8
      E600B09D8300EFD4A600E8CF9D00F1E8D50000000000D5D0C300DBC49800EED6
      AA00CDC69900677A5100A5947800EAD5AA00EAD4A700E9D1A300EBD9B4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDF1E600FDD6
      9F00FDD89E00FFDAA400FFDBA100F3D8A500B7A6BD00FDD9A200E5E0A800719A
      6D00AB8D6700DDBB8A00FFE2B100FEFAF60000000000D3D1CD00B6A38C00FFE9
      C500FEE2BB00F9E8CA0000000000F2F1F40072629900759A7800948C6200D9B5
      8900FFE0AA00FDE2AF00F2C89300E3995F00FEF4EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EEAC0200F6DC9A00F7E4B600F6E4
      B300F8E6B800EDA70000F0B32300FFF7E200DEDFE300CECECE00DCDCDC00DFDF
      DF00E9E9E900E5E5E500E4E4E400EBEBEB00EDEDED00EEEEEE00DDDDDD00E6E6
      E600EAEAEA00EEEEEE00E7E7E700EAEAEA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300FCFCFC00EBEBEB00EEEEEE00EFEF
      EF00F4F4F400F5F5F500E1E0E000DEDDDD00F2F1F100EDEDED00000000000000
      00000000000000000000000000000000000000000000E1E1E100E4E4E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7D6
      B100EBD2A600E0C89E00D1BC9100CDB98E00E2CB9B00EED5A700E8D0A300EAD3
      A600E5CF9E00E0C39800A3A778005D6A44009A866900DDCDA100FEFDF6000000
      0000C7C0BA00AD9F7D00CCBFA000F6F4EE0000000000D4C9B300E6CE9E00ECD3
      A800E6D4A600758A5B008D836800E0CCA400EBD6AB00ECD4A500EAD5AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00FEFEFE00FDEFDF00FDD3
      9D00FBD19A00FCD39D00FFD6A000FFD89500D8B8A700BFA7B600FFE5A300A4C3
      91007E896200BE997400F4D09800FEEBCD0000000000EAEAE9007E6D5800C9A0
      6C00FED89900FFDDA700FFFFFE00B3B6FC008F759000A1B4770084946F00B593
      7000FFDBA800FCDDAC00F7CC9500E29E6F00F9ECE50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0000EEAD0000EEA90000EDAB0400EDA9
      0000F8E4B000EDA80000F0B32300FEF6E200E2E4E700F8F8F800F9F9F900F9F9
      F900F9F9F900F9F9F900FEFEFE00E0E0E000D1D1D100E3E3E300E6E6E600D3D3
      D300D3D3D300E1E1E100E4E4E400E9E9E900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFB00F7F7F700F5F6F600D1D0D000DDDDDD00DEDE
      DE00F0EFEF00F6F6F600F9F9F900F8F8F800F2F2F200EAEAEA00ECECEC00D9D8
      D800F4F4F400FCFCFC00FEFEFE000000000000000000CACACA00F0EFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4EB
      D700DEC39900D7CFBE00DEDCD700D0CCC800B0A49200C8B38B00F0D8A900E4CC
      9E00D7CAB200DDDAD400D9D7D2008F9C8B0064574500A6946D00ECDDBC00FEFE
      F90000000000EBEFF300F3F4FB0000000000F1EEEA00DAC69F00EAD2A400EBD2
      A700F1DAAE0086996A007B775B00DBC29D00EBD5A800E7CEA000EBDAB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00A6A7A800EEEAE400FFDE
      AD00E1C6A5009D876B00E5C39400E3CBAB00A58B6400AF98A600C0A9B600F4E3
      A20080AB76009F886700CEA87E00FED9A100FBF1E30000000000DBDAD9008778
      6300BB9D6A00F1D7AE00B9BBFF00ABADFA00B1A08900D0C1920072956B00A78A
      6700F5D2A300FFE1AD00F4C99100E7B69200FDF8F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EFAF0700F1B92D00EDA60000EDA6
      0000F6D47C00EEA90000F0B32300FEF6E200E1E3E600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E9E9E900E3E3E300D6D6D600CACACA00CECE
      CE00D2D2D200D1D1D100CBCBCB00E9E9E900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800FBFBFB00EDEDED00CCCBCB00DBDADA00F6F6
      F600F5F5F500F3F3F300F3F3F300F3F3F300F4F4F400F6F6F600F6F6F600F8F8
      F800F4F4F400F4F4F400F4F4F400F7F7F700FCFCFC00C6C5C600FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F7
      F000EBE7D900FEFFFF00F2EBDD00FCF9EB00F9FBFF00AFA9A000CFB98E00E8D9
      BB00FEFFFF00F3F1EB00F9F1E10000000000BBBBBC006A5A4D00B8A57C00EADA
      B400F3EADA00FAF7EC00FAF6EB00F0EAD800E1D1AF00E9D0A100E9D1A400E8D2
      A400F5DBB10092A5730073725200D5BC8B00ECDCBC00F5F1E400F7F8F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD0097979800CBC9C700FFF6
      E600FEFFFF00A8A19A00B99F7A00FEFFFC0099918700CDAD7800C5ADBA00BE9E
      BE00BBC4A20081A16300B3916700E3BB8400FFE0AA00FFF7E60000000000F9F9
      F100BDBAC2009B9BE900B5B6FF00EFF1F900B3A18600F9D6A0006E9F7100A388
      6800D9B88900D0B08900E3C9B300FAEFE5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AD0000EFB01500F9E6B900F0B62700F1BC
      3200F2BC2E00EEA90000F0B32500FEF6E200E2E3E700F6F6F600F3F3F300F3F3
      F300F4F4F400F4F4F400F8F8F800DDDDDD00C5C5C500EFEFEF008E8E8E009090
      9000A0A0A000A0A0A000BBBBBB00F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600FDFDFD00F6F6F600E9E9E900F1F1F100F5F6
      F500F4F4F400F3F3F300F3F3F300F4F4F400F4F4F400F4F4F400F3F3F300F3F3
      F300F4F4F400F4F4F400F5F5F500FAFAFA00EDEDED00CCCBCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFE
      FE0000000000DEE0DC00DAC7A500E4CD9B00F4EBD700EBE6D900CDBB9400F8F4
      E500EAEAE700D0B99400E9CD9D00EDE0C200FCFAF2007D886A00756D5100BEA5
      8300E9D1A200E9D1A400E5CFA200E4CD9F00E8D1A400E9D2A800E8D0A300E5CE
      9D00F2D7AB0096A775006E715600BFC5AF00FEFDF90000000000FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A1A100BABABA000000
      000000000000CDCBC800A0866200FFFCEA00BDBAB900AA8D6300FFE19A00CEB2
      A700B79CC3005F7EAA006F767900AB887600E2BF9300EED1AE00D1CCE300A8AC
      FF00A9AEFF00CCCDFF0000000000E9E1D500DAB58800FFDEA60089B787009580
      5F0090927B009C9C9200DDD9D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AD0000EEAE0E00FBF2DE00F8E6B900F8E9
      BF00F8E2A700EDA80000EFB32400FFF7E200E0E2E500E3E3E300EEEEEE00E6E6
      E600E8E8E800E3E3E300E5E5E500EFEFEF00F6F6F600F0F0F000F1F1F100F0F0
      F000F3F3F300D7D7D700E0E0E000ECECEC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400FDFDFD00A19F9F00AAA9A900E1E1E100EEEE
      EE00FBFAFA000000000000000000FAFAFA00F5F5F500F3F3F300F3F3F300F3F3
      F300F4F4F400F3F3F300F3F3F300FBFBFB00DCDBDB00DADADA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000CFD2D100ECE0C600E7CD9E00E6CEA100E7D1A400E8D0A400FFFB
      EE00D4D1CD00D1B98F00EBD5A600E6CFA000ECD3A700C3C79400687E50007A70
      5700BBA68100E8D2A200EBD4A800E8D2A300EACFA500E6D19F00E3CFA000EDE3
      C800FBF2E60099AF8B005A87810099DDE4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B9B900ABABAB00F6F6
      F600E5E5E600E1E2E2008D725200FEEDD200E2E3E60099877400B8A38700BCAA
      8200A98E7200CCACA1007495AB004F588D007F609E009F86B100BCA4B800CFB8
      B300ECDCCA00FFF1CB00F6DFBD00EEC99800EFBF9500FEDFCB009EC7A4008789
      77008AB4BC00A0BCC000DDD7D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EFB11300F4CC6500EA930000EEA7
      1100F0BD4300EFAA0000EFB32400FEF6E100E8E9ED00D4D4D400C3C3C300CFCF
      CF00BFBFBF00EDEDED00CACACA00C2C2C200BBBBBB00DCDCDC00E7E7E700E5E5
      E500EDEDED00E5E5E500E7E7E700EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300FEFEFE00D4D4D400B6B5B500A7A6A6009D9B
      9C00B4B3B300B9B8B800C3C2C200E1E0E100F7F7F700F8F8F800F6F6F600F4F4
      F400F3F3F300F3F3F300F3F3F300FEFEFE00CCCBCB00ECEBEC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000CBCDCF00E2D4BA00EBD0A200E9D1A300E7CD9D00E8CEA200FDF8
      EC00D9D9D800C5B18D00F0D7A700E9D2A500EACFA000F4D8A900C7C795006784
      5300746E5300AA967800D8C49600E1D9B500DCD7B200F9E0C000FFF8EB000000
      0000000000006A906E0044999E00DFF6F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D400BABABA00DADA
      DA00BBBBBB00F2F2F30091796000EAD2B20000000000E7E5E300F6F1EB00F8F4
      EF00C8BCA900E5BD8400F2E4AB0075A877008A855B00C39A7100E1C19100C789
      5500E3BA9900FFE9C400FAD6AB00F4D5BB00F8E6DD00FFFEFF00A0D0B4008690
      840098CCD30098B6B900E4DCDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AF0000EEAA0000F0BB3500F6DD9B00F9F1
      D500F5D99500EDA70000F0B32400FDF5E000F9FBFE0086868600646464007F7F
      7F008B8B8B00AFAFAF00717171009999990071717100C9C9C900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F4F4F400FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700F8F8F8000000000000000000FCFCFC00F6F6
      F600E3E2E200BCBBBB00A5A3A300ACAAAA0093929200D1D1D100000000000000
      0000FDFDFD00FAFAFA00F9F9F900FDFDFD00C6C5C500FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDDDE00B2A58700F0D5A200E4D0A400CABFA500BDAC8600F0E5
      D000F5F7FA00A79D8500E4CE9F00EED5A500D1C7A700BCAF9300E8CEA400D8D0
      9E007B976400636C4B0095846F00B7B9B80085D1D900A2E2E900C9F1F900D4EF
      F80091B59B002B7A6800B8DCE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F3F3F300C6C6
      C600CBCBCB0000000000A3948500CFB58D00FEFDF8009F948800DBBB9000FFDF
      AE00FFD9AA00FFDCA900FFD89F00E3D8A30071A576007E815C00B48E6B00AA76
      4E00AC7A5C00E2DBD800FFFAF700FFFDFD00000000000000000083BA99008E90
      8A0097D1D40091ACAE00F9F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0AE0000EEAD0900FCF5E400F6E3B500F3D3
      8700EFB22D00EFA90000EFB32500FDF5E000F0F1F500E5E5E500E9E9E900E9E9
      E900EFEFEF00E0E0E000E3E3E300F0F0F000EAEAEA00E9E9E900EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00E7E7E700F2F2F200FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00FAFAFA00F9F9F900FAFA
      FA00FEFEFE000000000000000000F9F9F900E8E8E800F8F8F800000000000000
      0000000000000000000000000000F0F0F000CAC9CA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00C0BEB200AFA28300DAD0BA00FCFEFF00CEC9B900E4D0
      AA00FFFDF800D5D6D700ABA08800CFC1A700F8FCFA00D3D2C500D7C28F00F1D4
      A500EAD4A600A2B27C00718D680071847400828E8600729A99005B9497002C84
      6C004F876200CFD2D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400AAAA
      AA00F8F8F80000000000B8B1AA00A7876D00FFFCF600B5B1AD009A866C00B7A3
      8400AA957700AB8C6E00F3D1AA00FFDEAC00EBD9A70079AD7F006C845A009A80
      5E007D675500A4A09D00CFCCCC00F6F5F50000000000F4FEF800588D62009AAF
      AA007FC9D000B8BCBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFAF0100EFAC0000EB9F0000F3CA6900FBF6
      EA00F7E5B300EDA60000F0B32400FBF3DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EAC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00FAFAFA00F8F8F800F9F9F900FDFDFD00FCFCFC00FDFDFD000000
      0000000000000000000000000000DBDBDB00D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFD0000000000F1F3F300FAFAFD00F6F3F600F9F8F700EBDB
      BA00E9D5AD00FFFBF100F6F9F900F7F8FA00F9F9FA00EBE8E000F1E7CE00EEE8
      D500EDDBB700F3DAB700EEF5E800BDD7BF0093B3940087A17F0088A48200ACC1
      A600EDEFEB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F000CBCB
      CB000000000000000000DEDEDE00C0BCBB0000000000FCF8F200F3ECDD00F5ED
      E100E4DDD300AD8B7500EADDD500FEF9F300FFEADC00FBF2E3009BC9A200587C
      4B004A6E5B004F757A007E8C950094919B00ADA8AB006AAA7D00468169007DCF
      DD00A7D1D400FBF1F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEAF0100F0AF0000EFAE0000EEA70000EDA3
      0000F1BD3A00EEAB0000EFB32700FCF6E500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9EDC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FAFAFA00F8F8F800F8F8
      F800F8F8F800FAFAFA00FCFCFC00DAD9D900EEEDED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FCFDFE00F9F8F000E5D8
      B700E8D5AA00E4CB9900F4ECDD0000000000FBFBFB0000000000000000000000
      0000F6F6EB00EEE8D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      000000000000FEFEFE000000000000000000FDFEFE00F9ECDE00FAE3CA00FCE2
      C000F7CE9E00EDB99800FBF2EE0000000000FEFFFF0000000000FFFAF300D7E6
      CF008EC3A30063A382002A7D5F00226C4A003483500053B08C008EDADE00C4F4
      FA00FFFAF9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0AE0000EFAE0000EFAE0000EFAE
      0000EEAB0000EEAB0000EFB11D00F6E5B200F7EBC500F7E9BF00F7E9BF00F7E9
      BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9
      BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9BF00F7E9
      BF00F7E9BF00F8ECC700F4DD9600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FBFBFB00F9F9F900FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFF00FAF9F700FCFC
      FA00FAFFFE00F1E7D200F3E9D900000000000000000000000000FEFFFF00FEFF
      FE0000000000FDFCFE00FEFEFC00FEFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFE00FCFCFB00FDFBFD00FCF9
      F500F8E9D900F9EDE600FDFFFF000000000000000000FEFFFF00FFFEFF000000
      000000000000EBFBEF00D6EAD800D0ECD800DCF5E600F6FFFF00000000000000
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
      00000000000000000000000000000000FFFFE000000FFFFFFFFFFF807FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFFFE0007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFFC00007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF80000000FFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF807000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF808800007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF810400007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF810400007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF810401007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF80040C407FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000207FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF808800087FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF807000047FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000027FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF80000000FFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFFC00007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFFFE0007FFFFFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFFFFF807FFFFFF0
      00000000000000000000000000000000FFFF00000001FFFFFFFFFFE0003FFFFF
      FFFFFF20FFFFFFFFFFFFFF8FFFFFFF00FFFE00000001FFFFFFFFFFF800FFFFFF
      FFFFFFC2FFFFFFFFFFFFFE8FFFFFFF00FFFE00000001FFFFFFFFFFFE27FFFFFF
      FFFFFF01FFFFFFFFFFFFFC01FFFFFF00FFFE00000001FFFFFFFFFF00000FFFFF
      FFFFFF01FFFFFFFFFFFFFC01FFFFFF00FFFE00000001FFFFFFFFE700000FFFFF
      FFFFFD80FFFFFFFFFFFFFC01FFFFFF00FFFE00000001FFFFFFFFE000000FFFFF
      FFFFFDC0FFFFFFFFFFFFF801FFFFFF00FFFE00000001FFFFFFFFC03C000FFFFF
      FFFFF600CFFFFFFFFFFFE001FFFFFF00FFFE00000001FFFFFFFFCE3FC00FFFFF
      FFFFF0001FFFFFFFFFFFC000FFFFFF00FFFE00000001FFFFFFFFC20FFE0FFFFF
      FFFFF80001FFFFFFFFFF80000FFFFF00FFFE00000001FFFFFFFFA00FFF8FFFFF
      FFFFF10001FFFFFFFFFF000007FFFF00FFFE00000001FFFFFFFFA01FC30FFFFF
      FFFFF10001FFFFFFFFFF04000FFFFF00FFFE00000001FFFFFFFFA000010FFFFF
      FFFFE10001FFFFFFFF80000000FFFF00FFFE00000001FFFFFFFF8000000FFFFF
      FFFFA10000FFFFFFFF000000007FFF00FFFE00000001FFFFFFFF0400000FFFFF
      FFFFA000007FFFFFFF000000007FFF00FFFE00000001FFFFFFFF3C00000FFFFF
      FFFFE000007FFFFFFF000000027FFF00FFFE00000001FFFFFFFF1F03000FFFFF
      FFFFF00E00FFFFFFFF000008027FFF00FFFE00000001FFFFFFFF1D23000FFFFF
      FFFF9001003FFFFFFF000000027FFF00FFFE00000001FFFFFFFE1D33820FFFFF
      FFFFC020001FFFFFFF100000007FFF00FFFE80000001FFFFFFFE7D3FFC0FFFFF
      FFF84020001FFFFFFF000000007FFF00FFFE00000001FFFFFFFE1900000FFFFF
      FFE00021801FFFFFFF000000007FFF00FFFE00000001FFFFFFFE0000000FFFFF
      FFE00020801FFFFFFFC00082007FFF00FFFE00000001FFFFFFFE003F9FFFFFFF
      FFE00010801FFFFFFF000080007FFF00FFFE00000001FFFFFFFC00019FFFFFFF
      FFE00009001FFFFFFF000040007FFF00FFFE00000001FFFFFFFC00001FFFFFFF
      FFE00100001FFFFFFF00002000FFFF00FFFE00000001FFFFFFFC00003FFFFFFF
      FFE80000005FFFFFFF98000201FFFF00FFFE00000001FFFFFFFC06003FFFFFFF
      FFE8000000FFFFFFFF80000001FFFF00FFFE00000001FFFFFFFC00003FFFFFFF
      FFE8000018FFFFFFFF80800001FFFF00FFFE00000001FFFFFFFCC0303FFFFFFF
      FFF8000001FFFFFFFF840000C1FFFF00FFFE00000001FFFFFFFE063E7FFFFFFF
      FFF8000003FFFFFFFFC4000083FFFF00FFFE00000001FFFFFFFFE01E7FFFFFFF
      FFFA000007FFFFFFFFCC800003FFFF00FFFE00000001FFFFFFFFFF007FFFFFFF
      FFFF0173FFFFFFFFFFDB014007FFFF00FFFF00000001FFFFFFFFFFF0FFFFFFFF
      FFFF81C8FFFFFFFFFFFF01983FFFFF00FFFFF001D00FFFFFFFFFFFFFF80FFFFF
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
  inherited ILMenuEdicao: TImageList
    Left = 136
    Top = 432
  end
  object nfe_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_ITE_004'
      'WHERE NFE_CCAB = :ID')
    Left = 816
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object nfe_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_iteNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_ITE"."NFE_CCAB"'
    end
    object nfe_iteNFE_CDNF: TIntegerField
      FieldName = 'NFE_CDNF'
      Origin = '"NFE_ITE"."NFE_CDNF"'
    end
    object nfe_iteNFE_INDTOT: TIntegerField
      FieldName = 'NFE_INDTOT'
      Origin = '"NFE_ITE"."NFE_INDTOT"'
    end
    object nfe_iteNFE_CFOP: TIBStringField
      DisplayLabel = 'C.F.O.P.'
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_ITE"."NFE_CFOP"'
      Size = 4
    end
    object nfe_iteNFE_CART: TIBStringField
      FieldName = 'NFE_CART'
      Origin = '"NFE_ITE"."NFE_CART"'
    end
    object nfe_iteNFE_CPROD: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NFE_CPROD'
      Origin = '"NFE_ITE"."NFE_CPROD"'
    end
    object nfe_iteNFE_CEAN: TIBStringField
      FieldName = 'NFE_CEAN'
      Origin = '"NFE_ITE"."NFE_CEAN"'
      Size = 14
    end
    object nfe_iteNFE_NCM: TIBStringField
      DisplayLabel = 'NCM'
      FieldName = 'NFE_NCM'
      Origin = '"NFE_ITE"."NFE_NCM"'
      Size = 8
    end
    object nfe_iteNFE_EXTIPI: TIBStringField
      FieldName = 'NFE_EXTIPI'
      Origin = '"NFE_ITE"."NFE_EXTIPI"'
      Size = 3
    end
    object nfe_iteNFE_DCOR: TIBStringField
      FieldName = 'NFE_DCOR'
      Origin = '"NFE_ITE"."NFE_DCOR"'
      Size = 30
    end
    object nfe_iteNFE_XPROD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NFE_XPROD'
      Origin = '"NFE_ITE"."NFE_XPROD"'
      Size = 120
    end
    object nfe_iteNFE_INFADPROD: TMemoField
      FieldName = 'NFE_INFADPROD'
      Origin = '"NFE_ITE"."NFE_INFADPROD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object nfe_iteNFE_UCOM: TIBStringField
      DisplayLabel = 'UN'
      FieldName = 'NFE_UCOM'
      Origin = '"NFE_ITE"."NFE_UCOM"'
      Size = 6
    end
    object nfe_iteNFE_QCOM: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'NFE_QCOM'
      Origin = '"NFE_ITE"."NFE_QCOM"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object nfe_iteNFE_RCOM: TIntegerField
      FieldName = 'NFE_RCOM'
      Origin = '"NFE_ITE"."NFE_RCOM"'
    end
    object nfe_iteNFE_VPROD: TIBBCDField
      DisplayLabel = 'Total Produto'
      FieldName = 'NFE_VPROD'
      Origin = '"NFE_ITE"."NFE_VPROD"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VFRETE: TIBBCDField
      FieldName = 'NFE_VFRETE'
      Origin = '"NFE_ITE"."NFE_VFRETE"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VSEG: TIBBCDField
      FieldName = 'NFE_VSEG'
      Origin = '"NFE_ITE"."NFE_VSEG"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VDESC: TIBBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'NFE_VDESC'
      Origin = '"NFE_ITE"."NFE_VDESC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VOUTRO: TIBBCDField
      FieldName = 'NFE_VOUTRO'
      Origin = '"NFE_ITE"."NFE_VOUTRO"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_XLOCEMBARQ: TIBStringField
      FieldName = 'NFE_XLOCEMBARQ'
      Origin = '"NFE_ITE"."NFE_XLOCEMBARQ"'
      Size = 60
    end
    object nfe_iteNFE_UFEMBARQ: TIBStringField
      FieldName = 'NFE_UFEMBARQ'
      Origin = '"NFE_ITE"."NFE_UFEMBARQ"'
      Size = 2
    end
    object nfe_iteNFE_NDI: TIBStringField
      FieldName = 'NFE_NDI'
      Origin = '"NFE_ITE"."NFE_NDI"'
      Size = 10
    end
    object nfe_iteNFE_DDI: TDateField
      FieldName = 'NFE_DDI'
      Origin = '"NFE_ITE"."NFE_DDI"'
    end
    object nfe_iteNFE_XLOCDESEMB: TIBStringField
      FieldName = 'NFE_XLOCDESEMB'
      Origin = '"NFE_ITE"."NFE_XLOCDESEMB"'
      Size = 60
    end
    object nfe_iteNFE_UFDESEMB: TIBStringField
      FieldName = 'NFE_UFDESEMB'
      Origin = '"NFE_ITE"."NFE_UFDESEMB"'
      Size = 2
    end
    object nfe_iteNFE_DDESEMB: TDateField
      FieldName = 'NFE_DDESEMB'
      Origin = '"NFE_ITE"."NFE_DDESEMB"'
    end
    object nfe_iteNFE_CEXPORTADOR: TIBStringField
      FieldName = 'NFE_CEXPORTADOR'
      Origin = '"NFE_ITE"."NFE_CEXPORTADOR"'
      Size = 60
    end
    object nfe_iteNFE_NADICAO: TSmallintField
      FieldName = 'NFE_NADICAO'
      Origin = '"NFE_ITE"."NFE_NADICAO"'
    end
    object nfe_iteNFE_NSEQADIC: TSmallintField
      FieldName = 'NFE_NSEQADIC'
      Origin = '"NFE_ITE"."NFE_NSEQADIC"'
    end
    object nfe_iteNFE_CFABRICANTE: TIBStringField
      FieldName = 'NFE_CFABRICANTE'
      Origin = '"NFE_ITE"."NFE_CFABRICANTE"'
      Size = 60
    end
    object nfe_iteNFE_VDESCDI: TIBBCDField
      FieldName = 'NFE_VDESCDI'
      Origin = '"NFE_ITE"."NFE_VDESCDI"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_XPED: TIBStringField
      FieldName = 'NFE_XPED'
      Origin = '"NFE_ITE"."NFE_XPED"'
      Size = 15
    end
    object nfe_iteNFE_ITEMPED: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'NFE_ITEMPED'
      Origin = '"NFE_ITE"."NFE_ITEMPED"'
      Size = 6
    end
    object nfe_iteNFE_ORIG: TIBStringField
      FieldName = 'NFE_ORIG'
      Origin = '"NFE_ITE"."NFE_ORIG"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_CST: TIBStringField
      FieldName = 'NFE_CST'
      Origin = '"NFE_ITE"."NFE_CST"'
      Size = 3
    end
    object nfe_iteNFE_MODBC: TIBStringField
      FieldName = 'NFE_MODBC'
      Origin = '"NFE_ITE"."NFE_MODBC"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_PREDBC: TIBBCDField
      FieldName = 'NFE_PREDBC'
      Origin = '"NFE_ITE"."NFE_PREDBC"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VBC: TIBBCDField
      FieldName = 'NFE_VBC'
      Origin = '"NFE_ITE"."NFE_VBC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PICMS: TIBBCDField
      FieldName = 'NFE_PICMS'
      Origin = '"NFE_ITE"."NFE_PICMS"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VICMS: TIBBCDField
      DisplayLabel = 'Valor I.C.M.S.'
      FieldName = 'NFE_VICMS'
      Origin = '"NFE_ITE"."NFE_VICMS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_MODBCST: TIBStringField
      FieldName = 'NFE_MODBCST'
      Origin = '"NFE_ITE"."NFE_MODBCST"'
      FixedChar = True
      Size = 1
    end
    object nfe_iteNFE_MVAST: TIBBCDField
      FieldName = 'NFE_MVAST'
      Origin = '"NFE_ITE"."NFE_MVAST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_PREDBCST: TIBBCDField
      FieldName = 'NFE_PREDBCST'
      Origin = '"NFE_ITE"."NFE_PREDBCST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VBCST: TIBBCDField
      FieldName = 'NFE_VBCST'
      Origin = '"NFE_ITE"."NFE_VBCST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCSTRET: TIBBCDField
      FieldName = 'NFE_VBCSTRET'
      Origin = '"NFE_ITE"."NFE_VBCSTRET"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VICMSSTRET: TIBBCDField
      FieldName = 'NFE_VICMSSTRET'
      Origin = '"NFE_ITE"."NFE_VICMSSTRET"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PICMSST: TIBBCDField
      FieldName = 'NFE_PICMSST'
      Origin = '"NFE_ITE"."NFE_PICMSST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VICMSST: TIBBCDField
      FieldName = 'NFE_VICMSST'
      Origin = '"NFE_ITE"."NFE_VICMSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCREDSN: TIBBCDField
      FieldName = 'NFE_PCREDSN'
      Origin = '"NFE_ITE"."NFE_PCREDSN"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCREDICMSSN: TIBBCDField
      FieldName = 'NFE_VCREDICMSSN'
      Origin = '"NFE_ITE"."NFE_VCREDICMSSN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTIPI: TIBStringField
      FieldName = 'NFE_CSTIPI'
      Origin = '"NFE_ITE"."NFE_CSTIPI"'
      Size = 3
    end
    object nfe_iteNFE_VBCIPI: TIBBCDField
      FieldName = 'NFE_VBCIPI'
      Origin = '"NFE_ITE"."NFE_VBCIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PIPI: TIBBCDField
      DisplayLabel = '% Ipi'
      FieldName = 'NFE_PIPI'
      Origin = '"NFE_ITE"."NFE_PIPI"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VIPI: TIBBCDField
      DisplayLabel = 'Valor Ipi'
      FieldName = 'NFE_VIPI'
      Origin = '"NFE_ITE"."NFE_VIPI"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCIMP: TIBBCDField
      FieldName = 'NFE_VBCIMP'
      Origin = '"NFE_ITE"."NFE_VBCIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VDESPADU: TIBBCDField
      FieldName = 'NFE_VDESPADU'
      Origin = '"NFE_ITE"."NFE_VDESPADU"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VIIIMP: TIBBCDField
      FieldName = 'NFE_VIIIMP'
      Origin = '"NFE_ITE"."NFE_VIIIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VIOFIMP: TIBBCDField
      FieldName = 'NFE_VIOFIMP'
      Origin = '"NFE_ITE"."NFE_VIOFIMP"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTPIS: TIBStringField
      FieldName = 'NFE_CSTPIS'
      Origin = '"NFE_ITE"."NFE_CSTPIS"'
      Size = 3
    end
    object nfe_iteNFE_VBCPIS: TIBBCDField
      FieldName = 'NFE_VBCPIS'
      Origin = '"NFE_ITE"."NFE_VBCPIS"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PPIS: TIBBCDField
      FieldName = 'NFE_PPIS'
      Origin = '"NFE_ITE"."NFE_PPIS"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VPIS: TIBBCDField
      DisplayLabel = 'Valor Pis'
      FieldName = 'NFE_VPIS'
      Origin = '"NFE_ITE"."NFE_VPIS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCPISST: TIBBCDField
      FieldName = 'NFE_VBCPISST'
      Origin = '"NFE_ITE"."NFE_VBCPISST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PPISST: TIBBCDField
      FieldName = 'NFE_PPISST'
      Origin = '"NFE_ITE"."NFE_PPISST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VPISST: TIBBCDField
      FieldName = 'NFE_VPISST'
      Origin = '"NFE_ITE"."NFE_VPISST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CSTCOFINS: TIBStringField
      FieldName = 'NFE_CSTCOFINS'
      Origin = '"NFE_ITE"."NFE_CSTCOFINS"'
      Size = 3
    end
    object nfe_iteNFE_VBCOFINS: TIBBCDField
      FieldName = 'NFE_VBCOFINS'
      Origin = '"NFE_ITE"."NFE_VBCOFINS"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCOFINS: TIBBCDField
      FieldName = 'NFE_PCOFINS'
      Origin = '"NFE_ITE"."NFE_PCOFINS"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCOFINS: TIBBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'NFE_VCOFINS'
      Origin = '"NFE_ITE"."NFE_VCOFINS"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCOFINSST: TIBBCDField
      FieldName = 'NFE_VBCOFINSST'
      Origin = '"NFE_ITE"."NFE_VBCOFINSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_PCOFINSST: TIBBCDField
      FieldName = 'NFE_PCOFINSST'
      Origin = '"NFE_ITE"."NFE_PCOFINSST"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VCOFINSST: TIBBCDField
      FieldName = 'NFE_VCOFINSST'
      Origin = '"NFE_ITE"."NFE_VCOFINSST"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VBCISSQN: TIBBCDField
      FieldName = 'NFE_VBCISSQN'
      Origin = '"NFE_ITE"."NFE_VBCISSQN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VALIQISSQN: TIBBCDField
      FieldName = 'NFE_VALIQISSQN'
      Origin = '"NFE_ITE"."NFE_VALIQISSQN"'
      Precision = 9
      Size = 2
    end
    object nfe_iteNFE_VISSQN: TIBBCDField
      FieldName = 'NFE_VISSQN'
      Origin = '"NFE_ITE"."NFE_VISSQN"'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_CMUNFGISSQN: TIBStringField
      FieldName = 'NFE_CMUNFGISSQN'
      Origin = '"NFE_ITE"."NFE_CMUNFGISSQN"'
      Size = 7
    end
    object nfe_iteNFE_CLISTSERV: TIntegerField
      FieldName = 'NFE_CLISTSERV'
      Origin = '"NFE_ITE"."NFE_CLISTSERV"'
    end
    object nfe_iteNFE_VNF: TIBBCDField
      DisplayLabel = 'Total NF'
      FieldName = 'NFE_VNF'
      Origin = '"NFE_ITE"."NFE_VNF"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object nfe_iteNFE_VUNCOM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'NFE_VUNCOM'
      Origin = '"NFE_ITE_004"."NFE_VUNCOM"'
      DisplayFormat = '#,0.00#######'
    end
  end
  object dtsnfe_ite: TDataSource
    DataSet = nfe_ite
    Left = 848
    Top = 80
  end
  object aux: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 880
    Top = 80
  end
  object fin_rec_bai: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    DeleteSQL.Strings = (
      'delete from FIN_REC_BAI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_REC_BAI'
      
        '  (FIN_AGEN, FIN_ATRA, FIN_BANC, FIN_CCAB, FIN_CCLI, FIN_CCUS, F' +
        'IN_CDBA, '
      
        '   FIN_CDBX, FIN_CDCO, FIN_CDCX, FIN_CDRD, FIN_COBR, FIN_CONC, F' +
        'IN_CONT, '
      
        '   FIN_CPF, FIN_CPPL, FIN_CREP, FIN_CTNR, FIN_CVEN, FIN_DATR, FI' +
        'N_DBAI, '
      
        '   FIN_DBAN, FIN_DCAD, FIN_DCLI, FIN_DEBA, FIN_DERD, FIN_DFIN, F' +
        'IN_DMED, '
      
        '   FIN_DOCT, FIN_DPAG, FIN_DREP, FIN_DTST, FIN_DVEN, FIN_MCHQ, F' +
        'IN_NCHQ, '
      
        '   FIN_OBSE, FIN_PDES, FIN_PJUR, FIN_PMUL, FIN_PRAZ, FIN_RCLI, F' +
        'IN_RREP, '
      
        '   FIN_STA, FIN_STCO, FIN_STDO, FIN_STFI, FIN_TIPO, FIN_VALO, FI' +
        'N_VCHQ, '
      
        '   FIN_VDES, FIN_VENC, FIN_VEND, FIN_VJUR, FIN_VMUL, FIN_VPAG, F' +
        'IN_VPEN, '
      '   ID)'
      'values'
      
        '  (:FIN_AGEN, :FIN_ATRA, :FIN_BANC, :FIN_CCAB, :FIN_CCLI, :FIN_C' +
        'CUS, :FIN_CDBA, '
      
        '   :FIN_CDBX, :FIN_CDCO, :FIN_CDCX, :FIN_CDRD, :FIN_COBR, :FIN_C' +
        'ONC, :FIN_CONT, '
      
        '   :FIN_CPF, :FIN_CPPL, :FIN_CREP, :FIN_CTNR, :FIN_CVEN, :FIN_DA' +
        'TR, :FIN_DBAI, '
      
        '   :FIN_DBAN, :FIN_DCAD, :FIN_DCLI, :FIN_DEBA, :FIN_DERD, :FIN_D' +
        'FIN, :FIN_DMED, '
      
        '   :FIN_DOCT, :FIN_DPAG, :FIN_DREP, :FIN_DTST, :FIN_DVEN, :FIN_M' +
        'CHQ, :FIN_NCHQ, '
      
        '   :FIN_OBSE, :FIN_PDES, :FIN_PJUR, :FIN_PMUL, :FIN_PRAZ, :FIN_R' +
        'CLI, :FIN_RREP, '
      
        '   :FIN_STA, :FIN_STCO, :FIN_STDO, :FIN_STFI, :FIN_TIPO, :FIN_VA' +
        'LO, :FIN_VCHQ, '
      
        '   :FIN_VDES, :FIN_VENC, :FIN_VEND, :FIN_VJUR, :FIN_VMUL, :FIN_V' +
        'PAG, :FIN_VPEN, '
      '   :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_CCAB,'
      '  FIN_CDBX,'
      '  FIN_CDCX,'
      '  FIN_CDRD,'
      '  FIN_CCLI,'
      '  FIN_DFIN,'
      '  FIN_DCLI,'
      '  FIN_RCLI,'
      '  FIN_CVEN,'
      '  FIN_VEND,'
      '  FIN_CREP,'
      '  FIN_DREP,'
      '  FIN_RREP,'
      '  FIN_PRAZ,'
      '  FIN_ATRA,'
      '  FIN_CONC,'
      '  FIN_DCAD,'
      '  FIN_DVEN,'
      '  FIN_DPAG,'
      '  FIN_DMED,'
      '  FIN_DATR,'
      '  FIN_DBAI,'
      '  FIN_CPPL,'
      '  FIN_CCUS,'
      '  FIN_CDCO,'
      '  FIN_CDBA,'
      '  FIN_DEBA,'
      '  FIN_STDO,'
      '  FIN_DOCT,'
      '  FIN_BANC,'
      '  FIN_DBAN,'
      '  FIN_AGEN,'
      '  FIN_CONT,'
      '  FIN_NCHQ,'
      '  FIN_MCHQ,'
      '  FIN_TIPO,'
      '  FIN_STFI,'
      '  FIN_STCO,'
      '  FIN_VALO,'
      '  FIN_VPAG,'
      '  FIN_VPEN,'
      '  FIN_VENC,'
      '  FIN_CTNR,'
      '  FIN_VMUL,'
      '  FIN_PMUL,'
      '  FIN_VJUR,'
      '  FIN_PJUR,'
      '  FIN_VDES,'
      '  FIN_PDES,'
      '  FIN_VCHQ,'
      '  FIN_CPF,'
      '  FIN_STA,'
      '  FIN_COBR,'
      '  FIN_DERD,'
      '  FIN_OBSE,'
      '  FIN_DTST'
      'from FIN_REC_BAI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_REC_BAI')
    ModifySQL.Strings = (
      'update FIN_REC_BAI'
      'set'
      '  FIN_AGEN = :FIN_AGEN,'
      '  FIN_ATRA = :FIN_ATRA,'
      '  FIN_BANC = :FIN_BANC,'
      '  FIN_CCAB = :FIN_CCAB,'
      '  FIN_CCLI = :FIN_CCLI,'
      '  FIN_CCUS = :FIN_CCUS,'
      '  FIN_CDBA = :FIN_CDBA,'
      '  FIN_CDBX = :FIN_CDBX,'
      '  FIN_CDCO = :FIN_CDCO,'
      '  FIN_CDCX = :FIN_CDCX,'
      '  FIN_CDRD = :FIN_CDRD,'
      '  FIN_COBR = :FIN_COBR,'
      '  FIN_CONC = :FIN_CONC,'
      '  FIN_CONT = :FIN_CONT,'
      '  FIN_CPF = :FIN_CPF,'
      '  FIN_CPPL = :FIN_CPPL,'
      '  FIN_CREP = :FIN_CREP,'
      '  FIN_CTNR = :FIN_CTNR,'
      '  FIN_CVEN = :FIN_CVEN,'
      '  FIN_DATR = :FIN_DATR,'
      '  FIN_DBAI = :FIN_DBAI,'
      '  FIN_DBAN = :FIN_DBAN,'
      '  FIN_DCAD = :FIN_DCAD,'
      '  FIN_DCLI = :FIN_DCLI,'
      '  FIN_DEBA = :FIN_DEBA,'
      '  FIN_DERD = :FIN_DERD,'
      '  FIN_DFIN = :FIN_DFIN,'
      '  FIN_DMED = :FIN_DMED,'
      '  FIN_DOCT = :FIN_DOCT,'
      '  FIN_DPAG = :FIN_DPAG,'
      '  FIN_DREP = :FIN_DREP,'
      '  FIN_DTST = :FIN_DTST,'
      '  FIN_DVEN = :FIN_DVEN,'
      '  FIN_MCHQ = :FIN_MCHQ,'
      '  FIN_NCHQ = :FIN_NCHQ,'
      '  FIN_OBSE = :FIN_OBSE,'
      '  FIN_PDES = :FIN_PDES,'
      '  FIN_PJUR = :FIN_PJUR,'
      '  FIN_PMUL = :FIN_PMUL,'
      '  FIN_PRAZ = :FIN_PRAZ,'
      '  FIN_RCLI = :FIN_RCLI,'
      '  FIN_RREP = :FIN_RREP,'
      '  FIN_STA = :FIN_STA,'
      '  FIN_STCO = :FIN_STCO,'
      '  FIN_STDO = :FIN_STDO,'
      '  FIN_STFI = :FIN_STFI,'
      '  FIN_TIPO = :FIN_TIPO,'
      '  FIN_VALO = :FIN_VALO,'
      '  FIN_VCHQ = :FIN_VCHQ,'
      '  FIN_VDES = :FIN_VDES,'
      '  FIN_VENC = :FIN_VENC,'
      '  FIN_VEND = :FIN_VEND,'
      '  FIN_VJUR = :FIN_VJUR,'
      '  FIN_VMUL = :FIN_VMUL,'
      '  FIN_VPAG = :FIN_VPAG,'
      '  FIN_VPEN = :FIN_VPEN,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 616
    Top = 152
    object fin_rec_baiID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAI_001"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_rec_baiFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAI"."FIN_DOCT"'
    end
    object fin_rec_baiFIN_DVEN: TDateField
      DisplayLabel = 'Dt Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAI_001"."FIN_DVEN"'
    end
    object fin_rec_baiFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAI_001"."FIN_TIPO"'
    end
    object fin_rec_baiFIN_BANC: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAI_001"."FIN_BANC"'
      Size = 4
    end
    object fin_rec_baiFIN_AGEN: TIBStringField
      DisplayLabel = 'Agencia'
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAI_001"."FIN_AGEN"'
      Size = 10
    end
    object fin_rec_baiFIN_CONT: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAI_001"."FIN_CONT"'
      Size = 15
    end
    object fin_rec_baiFIN_NCHQ: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAI_001"."FIN_NCHQ"'
      Size = 10
    end
    object fin_rec_baiFIN_OBSE: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_BAI_001"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object fin_rec_baiFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_BAI_001"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object fin_rec_baiFIN_PRAZ: TSmallintField
      DisplayLabel = 'Prazo (Dias)'
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_BAI_001"."FIN_PRAZ"'
    end
    object fin_rec_baiFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAI"."FIN_DPAG"'
    end
    object fin_rec_baiFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAI"."FIN_DBAN"'
      Size = 50
    end
    object fin_rec_baiFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAI"."FIN_STFI"'
    end
    object fin_rec_baiFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAI"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_BAI"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_BAI"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_COBR: TIBStringField
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC_BAI"."FIN_COBR"'
      FixedChar = True
      Size = 1
    end
    object fin_rec_baiFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAI"."FIN_STDO"'
      Size = 3
    end
    object fin_rec_baiFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_BAI"."FIN_CCAB"'
    end
    object fin_rec_baiFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_BAI"."FIN_CDBX"'
    end
    object fin_rec_baiFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_BAI"."FIN_CDCX"'
    end
    object fin_rec_baiFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_BAI"."FIN_CCLI"'
    end
    object fin_rec_baiFIN_DCLI: TIBStringField
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC_BAI"."FIN_DCLI"'
      Size = 40
    end
    object fin_rec_baiFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_BAI"."FIN_CVEN"'
    end
    object fin_rec_baiFIN_VEND: TIBStringField
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC_BAI"."FIN_VEND"'
      Size = 40
    end
    object fin_rec_baiFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_BAI"."FIN_CREP"'
    end
    object fin_rec_baiFIN_DREP: TIBStringField
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC_BAI"."FIN_DREP"'
      Size = 40
    end
    object fin_rec_baiFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_BAI"."FIN_ATRA"'
    end
    object fin_rec_baiFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_BAI"."FIN_CONC"'
    end
    object fin_rec_baiFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_BAI"."FIN_DCAD"'
    end
    object fin_rec_baiFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_BAI"."FIN_DMED"'
    end
    object fin_rec_baiFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_BAI"."FIN_DATR"'
    end
    object fin_rec_baiFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAI"."FIN_MCHQ"'
    end
    object fin_rec_baiFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAI"."FIN_STCO"'
    end
    object fin_rec_baiFIN_RCLI: TIBStringField
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC_BAI"."FIN_RCLI"'
      Size = 60
    end
    object fin_rec_baiFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC_BAI"."FIN_RREP"'
      Size = 60
    end
    object fin_rec_baiFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_BAI"."FIN_DBAI"'
    end
    object fin_rec_baiFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_BAI"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_BAI"."FIN_CDRD"'
    end
    object fin_rec_baiFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_BAI"."FIN_DFIN"'
      Size = 60
    end
    object fin_rec_baiFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_BAI"."FIN_CPPL"'
    end
    object fin_rec_baiFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_BAI"."FIN_CCUS"'
    end
    object fin_rec_baiFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_BAI"."FIN_CDCO"'
    end
    object fin_rec_baiFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_BAI"."FIN_CDBA"'
      Size = 4
    end
    object fin_rec_baiFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_BAI"."FIN_DEBA"'
      Size = 50
    end
    object fin_rec_baiFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_BAI"."FIN_CTNR"'
    end
    object fin_rec_baiFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_BAI"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_BAI"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object fin_rec_baiFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_BAI"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_BAI"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object fin_rec_baiFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_BAI"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_BAI"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object fin_rec_baiFIN_VCHQ: TIBBCDField
      FieldName = 'FIN_VCHQ'
      Origin = '"FIN_REC_BAI"."FIN_VCHQ"'
      Precision = 18
      Size = 2
    end
    object fin_rec_baiFIN_CPF: TIBStringField
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC_BAI"."FIN_CPF"'
      Size = 14
    end
    object fin_rec_baiFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC_BAI"."FIN_DERD"'
      Size = 30
    end
    object fin_rec_baiFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC_BAI"."FIN_DTST"'
    end
  end
  object tSHEILD: TIBTransaction
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
  object aux2: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 872
    Top = 176
  end
  object nfe_tra: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT * FROM NFE_TRA')
    Left = 816
    Top = 112
    object nfe_traID: TIntegerField
      FieldName = 'ID'
      Origin = '"NFE_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfe_traNFE_CCAB: TIntegerField
      FieldName = 'NFE_CCAB'
      Origin = '"NFE_TRA"."NFE_CCAB"'
    end
    object nfe_traNFE_CTRA: TIntegerField
      FieldName = 'NFE_CTRA'
      Origin = '"NFE_TRA"."NFE_CTRA"'
    end
    object nfe_traNFE_MODFRETE: TIBStringField
      FieldName = 'NFE_MODFRETE'
      Origin = '"NFE_TRA"."NFE_MODFRETE"'
      FixedChar = True
      Size = 1
    end
    object nfe_traNFE_RETTRANSP: TIBStringField
      FieldName = 'NFE_RETTRANSP'
      Origin = '"NFE_TRA"."NFE_RETTRANSP"'
      FixedChar = True
      Size = 1
    end
    object nfe_traNFE_VSERV: TIBBCDField
      FieldName = 'NFE_VSERV'
      Origin = '"NFE_TRA"."NFE_VSERV"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_VBCRET: TIBBCDField
      FieldName = 'NFE_VBCRET'
      Origin = '"NFE_TRA"."NFE_VBCRET"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_PICMSRET: TIBBCDField
      FieldName = 'NFE_PICMSRET'
      Origin = '"NFE_TRA"."NFE_PICMSRET"'
      Precision = 9
      Size = 2
    end
    object nfe_traNFE_VICMSRET: TIBBCDField
      FieldName = 'NFE_VICMSRET'
      Origin = '"NFE_TRA"."NFE_VICMSRET"'
      Precision = 18
      Size = 2
    end
    object nfe_traNFE_CFOP: TIBStringField
      FieldName = 'NFE_CFOP'
      Origin = '"NFE_TRA"."NFE_CFOP"'
      Size = 4
    end
    object nfe_traNFE_CMUNFG: TIBStringField
      FieldName = 'NFE_CMUNFG'
      Origin = '"NFE_TRA"."NFE_CMUNFG"'
      Size = 7
    end
    object nfe_traNFE_PLACA: TIBStringField
      FieldName = 'NFE_PLACA'
      Origin = '"NFE_TRA"."NFE_PLACA"'
      Size = 8
    end
    object nfe_traNFE_UF: TIBStringField
      FieldName = 'NFE_UF'
      Origin = '"NFE_TRA"."NFE_UF"'
      Size = 2
    end
    object nfe_traNFE_RNTC: TIBStringField
      FieldName = 'NFE_RNTC'
      Origin = '"NFE_TRA"."NFE_RNTC"'
    end
    object nfe_traNFE_QVOL: TSmallintField
      FieldName = 'NFE_QVOL'
      Origin = '"NFE_TRA"."NFE_QVOL"'
    end
    object nfe_traNFE_ESP: TIBStringField
      FieldName = 'NFE_ESP'
      Origin = '"NFE_TRA"."NFE_ESP"'
      Size = 60
    end
    object nfe_traNFE_MARCA: TIBStringField
      FieldName = 'NFE_MARCA'
      Origin = '"NFE_TRA"."NFE_MARCA"'
      Size = 60
    end
    object nfe_traNFE_NVOL: TIBStringField
      FieldName = 'NFE_NVOL'
      Origin = '"NFE_TRA"."NFE_NVOL"'
      Size = 60
    end
    object nfe_traNFE_PSLQ: TIBBCDField
      FieldName = 'NFE_PSLQ'
      Origin = '"NFE_TRA"."NFE_PSLQ"'
      Precision = 18
      Size = 3
    end
    object nfe_traNFE_PSBR: TIBBCDField
      FieldName = 'NFE_PSBR'
      Origin = '"NFE_TRA"."NFE_PSBR"'
      Precision = 18
      Size = 3
    end
    object nfe_traNFE_NLACRE: TIBStringField
      FieldName = 'NFE_NLACRE'
      Origin = '"NFE_TRA"."NFE_NLACRE"'
      Size = 60
    end
  end
  object Consulta_S: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 280
    Top = 240
  end
end
