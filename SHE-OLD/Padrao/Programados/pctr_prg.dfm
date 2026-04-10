inherited frmctr_prg: Tfrmctr_prg
  Left = -13
  Top = 0
  ActiveControl = DSConsulta
  AlphaBlendValue = 0
  Caption = 'Controle de Programa'#231#245'es de Vendas'
  ClientHeight = 993
  ClientWidth = 1917
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlbot: TPanel [0]
    Top = 556
    Width = 1917
    Height = 411
    Visible = True
    object GBFKCadastro: TGroupBox
      Left = 0
      Top = 0
      Width = 1597
      Height = 411
      Align = alClient
      Caption = '  Itens  '
      Color = 15329769
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object DBGFKCadastro: TdxDBGrid
        Left = 2
        Top = 19
        Width = 1593
        Height = 368
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Color = clHighlightText
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        AutoSearchColor = 9395
        AutoSearchTextColor = clWhite
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -13
        BandFont.Name = 'Segoe UI'
        BandFont.Style = [fsItalic]
        DataSource = DTSFKCadastro
        Filter.Active = True
        Filter.Criteria = {00000000}
        GridLineColor = clSilver
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsItalic]
        HideFocusRect = True
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoExtMultiSelect, edgoImmediateEditor, edgoMouseScroll, edgoMultiSelect, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoPreview, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -13
        PreviewFont.Name = 'Segoe UI Semibold'
        PreviewFont.Style = [fsBold, fsItalic]
        ShowGrid = False
        OnCustomDrawCell = DBGFKCadastroCustomDrawCell
        object DBGFKCadastroITEM: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
          DisableFilter = True
        end
        object DBGFKCadastroSKU: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKU'
          DisableFilter = True
        end
        object DBGFKCadastroDECP: TdxDBGridMaskColumn
          Width = 250
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DECP'
          DisableFilter = True
        end
        object DBGFKCadastroDGCP: TdxDBGridMaskColumn
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DGCP'
        end
        object DBGFKCadastroUCOM: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UCOM'
          DisableFilter = True
        end
        object DBGFKCadastroQTDE: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'QTDE'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKCadastroQTRL: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTRL'
          SummaryFooterType = cstSum
          SummaryFooterField = 'QTRL'
          SummaryFooterFormat = '0'
          DisableFilter = True
        end
        object DBGFKCadastroVPRC_COM: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VPRC_COM'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'VPRC_COM'
          SummaryFooterFormat = '#,0.00###'
          DisableFilter = True
        end
        object DBGFKCadastroVPRC_PAD_INI: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VPRC_PAD_INI'
          DisableFilter = True
        end
        object DBGFKCadastroVPRC_PAD_FIM: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VPRC_PAD_FIM'
          DisableFilter = True
        end
        object DBGFKCadastroVDSC: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VDSC'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'VDSC'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKCadastroTCDE: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TCDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'TCDE'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKCadastroSTFI: TdxDBGridMaskColumn
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STFI'
        end
        object DBGFKCadastroSKU_DEEP: TdxDBGridMaskColumn
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKU_DEEP'
        end
      end
      object PNLTAB_PRC: TPanel
        Left = 2
        Top = 387
        Width = 1593
        Height = 22
        Align = alBottom
        Alignment = taRightJustify
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object LALTAB_PRC_ABAIXO: TLabel
          Left = 30
          Top = 6
          Width = 118
          Height = 15
          Caption = 'Pre'#231'o abaixo da tabela'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LALTAB_PRC_ACIMA_MIN: TLabel
          Left = 214
          Top = 6
          Width = 163
          Height = 15
          Caption = 'Pre'#231'o acima da tabela m'#237'nima:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LALTAB_PRC_ACIMA_MAX: TLabel
          Left = 502
          Top = 6
          Width = 210
          Height = 15
          Caption = 'Pre'#231'o igual ou acima da tabela m'#225'xima:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LATAB_PRC_ACIMA_MIN: TLabel
          Left = 387
          Top = 4
          Width = 43
          Height = 17
          Caption = 'R$ 0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object LATAB_PRC_ACIMA_MAX: TLabel
          Left = 724
          Top = 4
          Width = 43
          Height = 17
          Caption = 'R$ 0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object PNLTAB_PRC_ABAIXO: TPanel
          Left = 9
          Top = 4
          Width = 18
          Height = 17
          BevelInner = bvRaised
          Color = 9395
          TabOrder = 0
        end
        object PNLTAB_PRC_ACIMA_MIN: TPanel
          Left = 193
          Top = 4
          Width = 18
          Height = 17
          BevelInner = bvRaised
          Color = 12910532
          TabOrder = 1
        end
        object PNLTAB_PRC_ACIMA_MAX: TPanel
          Left = 481
          Top = 4
          Width = 18
          Height = 17
          BevelInner = bvRaised
          Color = 14789952
          TabOrder = 2
        end
      end
    end
    object PNLIMG_PAD: TPanel
      Left = 1597
      Top = 0
      Width = 320
      Height = 411
      Align = alRight
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object GBIMG_PAD: TGroupBox
        Left = 1
        Top = 1
        Width = 318
        Height = 347
        Align = alClient
        Caption = '  Imagem do Produto  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object IMG_PAD: TImage
          Left = 2
          Top = 19
          Width = 314
          Height = 326
          Cursor = crHandPoint
          Hint = 'Amostragem do Produto'#13#10'Click para visualizar tela inteira'
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          Stretch = True
        end
      end
      object GBIMG_ILA: TGroupBox
        Left = 1
        Top = 348
        Width = 318
        Height = 62
        Align = alBottom
        Caption = '  Instru'#231#245'es de Lavagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object BVILA_BMP1: TBevel
          Left = 10
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP2: TBevel
          Left = 47
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP3: TBevel
          Left = 84
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP4: TBevel
          Left = 121
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP5: TBevel
          Left = 158
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP6: TBevel
          Left = 195
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP7: TBevel
          Left = 232
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP8: TBevel
          Left = 269
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object DBILA_BMP1: TDBImage
          Left = 13
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP1'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 0
        end
        object DBILA_BMP2: TDBImage
          Left = 50
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP2'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 1
        end
        object DBILA_BMP3: TDBImage
          Left = 87
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP3'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 2
        end
        object DBILA_BMP4: TDBImage
          Left = 124
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP4'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 3
        end
        object DBILA_BMP5: TDBImage
          Left = 161
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP5'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 4
        end
        object DBILA_BMP6: TDBImage
          Left = 198
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP6'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 5
        end
        object DBILA_BMP7: TDBImage
          Left = 235
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP7'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 6
        end
        object DBILA_BMP8: TDBImage
          Left = 272
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP8'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 7
        end
      end
    end
  end
  inherited pnldbg: TPanel [1]
    Width = 1917
    Height = 491
    inherited DSConsulta: TdxDockSite
      Width = 1917
      Height = 491
      DockType = 0
      OriginalWidth = 768
      OriginalHeight = 448
      inherited LDSConsulta: TdxLayoutDockSite
        Width = 1917
        Height = 491
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 430
      end
      inherited DPConsulta: TdxDockPanel
        Width = 1917
        Height = 491
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 430
        inherited gbDET: TGroupBox
          Width = 1913
          Height = 487
          Caption = '  Programa'#231#245'es  '
          object PNLINFADCAD: TPanel [0]
            Left = 2
            Top = 485
            Width = 1909
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais da programa'#231#227'o ...'
            Align = alBottom
            Alignment = taLeftJustify
            BevelInner = bvLowered
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Locked = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object DBINFADCAD: TdxDBMemo
              Left = 2
              Top = 2
              Width = 1905
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es adicionais da programa'#231#227'o ...'
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
              ReadOnly = True
              ScrollBars = ssBoth
              Height = 96
              StoredValues = 64
            end
          end
          inherited DBGConsulta: TdxDBGrid
            Width = 1909
            Height = 466
            KeyField = 'ID'
            ShowSummaryFooter = True
            Color = clHighlightText
            Filter.Active = True
            Filter.Criteria = {00000000}
            HideFocusRect = False
            HideSelectionColor = 14264386
            HighlightColor = 14264386
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
            PreviewFieldName = 'C_DEST'
            PreviewFont.Color = 9395
            PreviewLines = 1
            ShowRowFooter = True
            object DBGConsultaIDPK: TdxDBGridColumn
              Visible = False
              Width = 47
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDPK'
            end
            object DBGConsultaDEPK: TdxDBGridMaskColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 82
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPK'
            end
            object DBGConsultaDTPK: TdxDBGridColumn
              Alignment = taCenter
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTPK'
            end
            object DBGConsultaHTPK: TdxDBGridColumn
              Alignment = taCenter
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HTPK'
            end
            object DBGConsultaAPI_B2B_DEPK: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'API_B2B_DEPK'
            end
            object DBGConsultaAPI_B2B_DTPK: TdxDBGridDateColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'API_B2B_DTPK'
            end
            object DBGConsultaAPI_B2B_HTPK: TdxDBGridColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'API_B2B_HTPK'
            end
            object DBGConsultaSTA_NO_ABREV: TdxDBGridMaskColumn
              Color = 16316664
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 82
              BandIndex = 0
              RowIndex = 0
              FieldName = 'STA_NO_ABREV'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = ',##,0'
            end
            object DBGConsultaDEST: TdxDBGridMaskColumn
              Color = 16053492
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEST'
            end
            object DBGConsultaTPD_NO: TdxDBGridMaskColumn
              Width = 71
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TPD_NO'
            end
            object DBGConsultaTCO_NO_PRZ: TdxDBGridColumn
              Width = 204
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCO_NO_PRZ'
            end
            object DBGConsultaCD_NO: TdxDBGridMaskColumn
              Width = 250
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_NO'
            end
            object DBGConsultaCR_NO: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 231
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CR_NO'
            end
            object DBGConsultaCV_NO: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CV_NO'
            end
            object DBGConsultaTSDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TSDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TSDE'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaVDSC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VDSC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VDSC'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaTCDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TCDE'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaQTRL: TdxDBGridColumn
              HeaderAlignment = taRightJustify
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTRL'
              SummaryFooterFormat = ',##,0'
              DisableFilter = True
            end
            object DBGConsultaCT_NO: TdxDBGridMaskColumn
              Width = 230
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CT_NO'
            end
            object DBGConsultaFRT_NO: TdxDBGridMaskColumn
              Width = 175
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_NO'
            end
            object DBGConsultaFRT_VFRT: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_VFRT'
              SummaryFooterType = cstSum
              SummaryFooterField = 'FRT_VFRT'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaFRT_PSBR: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_PSBR'
              SummaryFooterType = cstSum
              SummaryFooterField = 'FRT_PSBR'
              SummaryFooterFormat = ',##,0.000'
              DisableFilter = True
            end
            object DBGConsultaFRT_PSLQ: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_PSLQ'
              SummaryFooterType = cstSum
              SummaryFooterField = 'FRT_PSLQ'
              SummaryFooterFormat = ',##,0.000'
              DisableFilter = True
            end
          end
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel [2]
    Top = 967
    Width = 1917
    inherited PNLSyncEvent: TPanel
      inherited PNLSyncAnimate: TPanel
        inherited GFASyncEvent: TRxGIFAnimator
          Image.Data = {
            0B3A00004749463839611A001A00F70000000000010001020002030203040204
            0807080A080A0B090B1D1B1D1C1C1C1D1C1D1D1D1D2020202323232C2C2C2F2D
            2F2E2E2E2F2E2F302E30302F303130313131313332333432343433343938393F
            3F3F4142414343434444444545454646464746474847484949494A4B4A4C4C4C
            4E4E4E5152515252525656565959595B5A5B5C5B5C5E5E5E5E5F5E6262626565
            656666666768676B6B6B6C6B6C6C6C6C71717172727272737273727378777879
            79797A797A7A7A7A7A7B7A7F7E7F7F807F807F80808080818081828282858585
            878787888888898989898A898A8A8A8B8B8B8C8B8C8D8D8D8E8D8E8E8E8E8E8F
            8E8F8E8F8F8F8F9595959695969A999A9A9A9A9C9C9C9D9D9D9D9E9D9E9E9E9F
            9F9FA0A0A0A0A1A0A1A1A1A2A2A2A3A2A3A3A3A3A4A4A4A5A5A5A6A6A6A7A7A7
            A8A8A8A9AAA9AAAAAAACACACADADADAEAEAEAFAEAFAFAFAFB0B0B0B1B1B1B2B1
            B2B2B2B2B3B2B3B3B3B3B5B5B5B6B6B6B7B7B7B7B8B7B8B8B8BCBCBCBDBDBDBE
            BEBEBEBFBEBFBFBFC0C0C0C1C1C1C2C1C2C2C2C2C3C2C3C4C3C4C4C4C4C4C5C4
            C6C6C6C7C6C7C8C8C8CACACACBCACBCCCBCCCECECECFCFCFD0D1D0D1D1D1D3D3
            D3D3D4D3D4D3D4D4D4D4D4D5D4D6D6D6D8D8D8D9D9D9DADADADBDBDBDCDCDCDC
            DDDCDDDCDDDDDDDDDDDEDDDEDDDEDEDEDEDEDFDEDFDFDFDFE0DFE0E0E0E0E1E0
            E1E1E1E1E2E1E2E2E2E2E3E2E3E2E3E3E3E3E3E4E3E4E4E4E4E5E4E5E5E5E5E6
            E5E6E6E6E6E7E6E7E7E7E8E8E8E8E9E8E9E9E9EAEAEAEBEAEBEBEBEBECEBECEC
            ECECEDECEDEDEDEDEEEEEEEEEFEEEFEEEFEFEFEFF0EFF0F0F0F0F0F1F0F1F1F1
            F1F2F1F2F2F2F2F3F2F3F3F3F4F4F4F5F5F5F6F6F6F7F6F7F7F7F7F7F8F7F8F8
            F8F8F9F8F9F9F9FAF9FAFAFAFAFBFBFBFCFBFCFCFCFCFCFDFCFDFCFDFDFDFDFE
            FEFEFFFFFF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000021FF0B4E45545343415045322E3003
            0100000021F90408060000002C000000001A001A000008FF00B7091C4870DB23
            0D14F4145CB8D08F175702BD30484044A0322F526E311C682944841CCAB66999
            0844A01603009E6C1468A943840C74444E14B2EDD304000454AEDCF684428416
            BC4626A0A90300000AA5163E9394745B2913112878112A0411020006B40C54F6
            4C601A132DC268248321020A32111878C161B484B16DCA5C7DD2C87343870E32
            F0B8A24121C62D3A698C11299040CFB35B9F1297EA6A49C788BB239248B2238A
            20AF347E78954AFCA9D45B81C6DABCE8B0A184A595723F8DBAD5B5E02D2D2F92
            7C6668ACD4AD90033FDD69C3BBCD9DD91B83F11ACECBD8331C2B56A458EEC2D0
            4E639C39979AB1BC7A0B3FCFA32B9674868C7732748033BB244E1CB7C0678BAA
            78E1B592972B5EAD0B7ED29203070E451B9F6DEE0C3CB40FFB383C6189670519
            630C629CB9D29A2100FED0862B6D3C918632A544628C2B862052DC7E9F406490
            0E3A78F189414F24A1452969908188257DF821C936CF6836D7799658D295315E
            24918421AE74A7472E86F821085DCF985790214B9878A08FCF7CE2871F8BC4C7
            502E5524F1C423DBDCC2A432883CE9E146AE4891C4845932E9D4934DAD04891F
            74694906763096228A943B9DE7471A23EE14100021F90408060000002C000000
            001A001A00870000000100010200020E0C0E0E0D0E1615161B191B1C1C1C1D1D
            1D1E1E1E2020202120212525252626262726272826282A282A2E2E2E31313132
            31323434343637363738373C3C3C3F3D3F414141424342434343444244444444
            4545454646464747474748474848484B4B4B4C4D4C4E4E4E5150515352535757
            57595759585858595959595A595B5B5B5C5B5C5E5E5E605F6062626263636365
            65656767676D6C6D6E6E6E717071717171717271727272737273737373757675
            7676767777777979797B7A7B7C7C7C8180818383838585858786878888888A89
            8A8A8A8A8B8B8B8E8E8E8F8F8F90909092919295949595959596969697969797
            97979897989898989B9B9B9C9C9C9D9D9DA1A2A1A3A2A3A4A4A4A5A5A5A6A5A6
            A6A6A6A7A7A7A8A7A8A8A8A8A8A9A8A9A9A9AAAAAAABAAABABABABACABACADAE
            ADAEAEAEAFAFAFB0AFB0B1B1B1B1B2B1B2B3B2B3B3B3B3B4B3B4B4B4B6B6B6B7
            B7B7BBBBBBBCBCBCBDBDBDBEBDBEBEBEBEBFBEBFBFBFBFC0BFC0C0C0C0C0C1C0
            C1C2C1C2C2C2C2C3C2C3C2C3C3C3C3C4C5C4C7C7C7C8C7C8C8C8C8C9C9C9C9CA
            C9CECDCECFCECFD0CFD0D0D1D0D1D2D1D2D2D2D4D4D4D5D5D5D6D6D6D7D6D7D8
            D8D8D8D9D8D9D9D9DADADADBDADBDBDBDBDCDBDCDCDCDCDCDDDCDDDCDDDDDDDD
            DDDEDDDEDDDEDEDEDEDEDFDEDFDFDFDFE0DFE0E0E0E1E1E1E1E2E1E2E2E2E3E2
            E3E3E3E3E3E4E3E4E3E4E4E4E4E4E5E4E5E5E5E6E7E6E7E7E7E8E8E8E8E9E8E9
            E9E9E9EAE9EAEAEAEAEBEAEBEBEBECECECECEDECEDECEDEDEDEDEDEEEDEEEEEE
            EFEFEFF0EFF0F0F0F0F0F1F0F1F0F1F1F1F1F1F2F1F2F2F2F3F2F3F3F3F3F4F3
            F4F4F4F4F4F5F4F5F5F5F6F6F6F6F7F6F7F6F7F7F7F7F7F8F7F8F8F8F8F9F8F9
            F8F9F9F9F9FAFAFAFBFBFBFBFCFBFCFCFCFCFDFCFDFDFDFEFEFEFFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000008FF00B9091C48909B24121A04155CB89090195702CD4888B044
            60B3345974311CF869858622CDB875998824A2030556360AECE881041E9124B9
            A512714001169502AD78F060E3D7C80825912838200262C169958CA692B1D3CC
            4F248C281C706046602C4146E7CCB89146631A111E66A4B940A10B9103076434
            6B66E6028113B1B85941B1C2851041B18278F0110B8F9B63511C501074280501
            00001E54E2F609C98B152B6058A9842715C163730E4531801880032CD30422A3
            E303B28C4F1B9B71405CC086A485B1CCF888724C65140827F08416984A109EDF
            7804D55689D4D5B15FBA8E4D2B72A379F32089701E1BF5A97AF554449C37F771
            48BA75EBA92ACDBB71E3068E1BE138B9E95ACF3EE4C06992CEFC55A9CB95AEDD
            0553AD598204C96B86D3A472DD7016E111457F4864914A2CEE0DD40C34B17CE7
            CA6E8B2018055E0E09324D2CA93473CC271D1E2360754655E284136EA8C25818
            5DCC110B21785412E127714DA38B80717113E027A1353347175D30A28B208230
            226275C34DD360418C003987874432622389F831748C1B5D8091897A51EA3822
            810CE99246171A7259A4401F7EA2114E9F24F20B9A44FEA7DE7DE91D25092146
            A914100021F90408060000002C000000001A001A008701000103010303020304
            02040504050B0A0B1919191B1B1B1D1D1D1E1E1E1E1F1E2624262929292A292A
            2F2D2F2E2E2E2F2E2F302E303231323331333434343635363637363937394040
            4040414043434345454546464646474647474748464849494950505054555455
            55555756575858585959595A5A5A5B5C5B5C5C5C5D5D5D5F605F616161656665
            6A6A6A6C6C6C6C6D6C6D6C6D706F707170717171717272727373737473747574
            757575757675767775777676767776777878787979797C7B7C7D7D7D7E7E7E7F
            7F7F868586868686878787888888898989898A898A8A8A8A8B8A8B8B8B8D8D8D
            8F8F8F909090919291929192939293939393949394969596979697979797999A
            999A9A9A9C9B9C9C9C9C9E9D9EA1A2A1A2A2A2A2A3A2A3A3A3A4A4A4A4A5A4A5
            A5A5A5A6A5A6A7A6A7A7A7A9A9A9AAA9AAAAAAAAABABABADADADAEAEAEAFAEAF
            AFAFAFAFB0AFB0B0B0B3B2B3B4B3B4B4B4B4B4B5B4B5B5B5B5B6B5B7B7B7B8B7
            B8B8B9B8BABABABCBBBCBCBCBCBFBFBFBFC0BFC0C0C0C1C0C1C1C1C1C2C2C2C2
            C3C2C3C2C3C4C4C4C5C5C5C6C6C6C7C7C7C8C7C8C9C8C9C9C9C9CAC9CACBCBCB
            CCCCCCCDCCCDCDCECDCECECECFD0CFD2D3D2D3D3D3D4D4D4D6D6D6D7D7D7DADB
            DADBDBDBDCDCDCDCDDDCDDDCDDDDDDDDDDDEDDDEDDDEDEDEDEDEDFDEDFDFDFDF
            E0DFE0DFE0E0E0E0E0E1E0E1E1E1E2E2E2E2E3E2E3E3E3E4E4E4E5E5E5E6E6E6
            E6E7E6E7E6E7E7E7E7E7E8E7E8E7E8E8E8E8E8E9E8E9E9E9EAE9EAEAEAEAEBEB
            EBEBECEBECECECEDEDEDEEEDEEEEEEEEEEEFEEEFEFEFEFF0EFF0EFF0F0F0F0F1
            F1F1F1F2F1F2F2F2F3F3F3F3F4F3F4F4F4F5F4F5F5F5F5F5F6F5F6F6F6F6F7F6
            F7F7F7F7F8F7F8F7F8F8F8F8F9F9F9F9FAF9FAFAFAFAFBFAFBFBFBFBFCFBFCFB
            FCFCFCFCFCFDFCFDFCFDFDFDFDFEFDFEFEFEFEFFFFFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000008FF00BF091C48F01BA6
            152316155CB8D0519D5902E374D09045A0B33A6976311C782AC68929CEBEB999
            5845A09B0B12BC6C14D8F1040B4322497E7B352242CA9502C39C38216498440D
            25A7488070E2D5C269A220CECC7122859C91402B758840E18DC05C8962090C04
            84881E60DFF4A838E1A34E0810719C408010C3D9C5110D5A684C23A3C60D278E
            662939416497A13DCEB850E860C8518C06080C6818F5ED54961C356AE40833CA
            90D181C3FA38F2420181670D69063A33A424B28F531BA79D30804082104C0B77
            D5511226E4462F1D5C281C38CBD1A2DF856D6FDC354588122544A648D272BCF9
            944A38B51400401DC00008559A1F774209279501D5A92FB23815A87CF945C219
            12CFC13E879040054FF53194BEE0B057C336CE0A94264C1851A99D228A28A7E4
            279A236EF817861EB3EC324D41CE3C33CB8003BEF2A0410ABAE1C82E950442C9
            34CE38380C81CE0CB30A85979D92461A864024CB79C30838CB84497D33CD2E32
            F266A18D8E94278A33153A23A028064E83CC350C911788232056F80D8D3BAEE4
            CC22E51905A428464D33A4811B0D6388870F5E79D988A26884D384C758E4A440
            BB38881343B214F866400021F90408060000002C000000001A001A0087000000
            0100010200020402040503050907091D1D1D1D1E1D1F1F1F201F202020202221
            222323232727272C2A2C2D2C2D2F2E2F302E30302F303030303332333B393B3C
            3A3C3D3C3D3F3F3F414141434343444444444544454445464646464746474747
            4A494A4A4A4A4B4B4B4D4C4D4E4F4E4F4E4F5352535858585859585958595959
            595A5A5A5B5B5B5C5B5C5D5D5D6361636464646766676767676968696A6A6A71
            7071717171717271727172727272737273737373747474757575757675787778
            7878787E7D7E7E7E7E7F7E7F8181818282828484848687868787878888888889
            888989898A8A8A8C8B8C8C8C8C8C8D8C8D8D8D8E8E8E8F908F91929192929293
            92939696969796979798979898989899989A999A9B9A9B9B9B9B9D9D9D9E9E9E
            9F9F9FA1A1A1A2A2A2A2A3A2A3A2A3A5A5A5A6A6A6A7A7A7A8A8A8A9A8A9AAAA
            AAABABABADACADADADADAEAEAEAFAFAFB1B1B1B2B2B2B2B3B2B5B6B5B7B6B7B7
            B7B7B8B8B8B9B8B9B9B9B9BABABABBBBBBBFBFBFBFC0BFC0C0C0C0C1C0C1C0C1
            C1C1C1C2C2C2C2C3C2C3C3C3C4C3C4C4C4C4C6C5C6C6C7C6C7C7C7CACACACCCC
            CCCDCDCDCECECECFCFCFD0CFD0D0D0D0D1D1D1D2D2D2D4D3D4D4D4D4D4D5D4D5
            D5D5D5D6D5D6D6D6D7D7D7D8D8D8DCDCDCDCDDDCDDDCDDDDDDDDDDDEDDDEDDDE
            DEDEDEDEDFDEDFDFDFDFE0DFE0E0E0E1E0E1E1E1E1E2E2E2E3E3E3E3E4E3E4E4
            E4E5E5E5E6E6E6E6E7E6E7E6E7E7E7E7E7E8E7E8E8E8E8E9E8E9E9E9E9EAE9EA
            EAEAEBEBEBECECECEDECEDEDEDEDEDEEEDEEEDEEEEEEEEEFEFEFF0F0F0F0F1F0
            F1F0F1F1F1F1F1F2F1F2F1F2F2F2F2F3F3F3F3F4F3F4F4F4F4F5F4F5F4F5F5F5
            F5F6F6F6F6F7F6F7F7F7F8F8F8F9F9F9FAF9FAFAFAFAFBFBFBFCFCFCFDFDFDFD
            FEFDFEFDFEFEFEFEFFFFFF000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000008FF00
            B3091C4830DBA81D3420155CB8B0521F5C02F1B468614660323E718A311CB8CA
            C88E31D2B2E171D1628C403B2140C0D928B0E38E208B444E34B94A0608952C05
            C6D9B1C34A318925B385B949C3D64269AB2066B3A564470F3E76666A6A012204
            1E81B81619CDB6C84A97431A09F5D8F1A44F8C1778BA68C84024D9333C302CEC
            808847891227632AE1EAB2030B2E458492A109D16211242015244020516AE99A
            27769FD859A59560B14290D674504C81C44A8B8EC2D89DB26AA334190E206450
            326A61314261EC2463B9E6448F98037169AAC4BB52A6D92C8B8579D2050B9630
            95E29859BE7C4D63DA0D161C98BE4025F3E6AD598E913E7D3A065B901689C087
            5409F8C65B5690284182E489A282E0CB9B468281C8F382BF2A11DABF75E1A805
            000C2041174A6523CD2887EC47C822C524131241C9E0224301000050400887B4
            A4E021A32463CB28B16413A134C58C528A2D615030408524CC66CB218754A251
            89262643CA26B67C388A51A51091C000323C888B52D29432CA28B82473E42AC9
            1839CA3102410247690BE1726429D228394A69B72C9993814E6AA46569451EA9
            114BCF90B2A5455E664363811B1583CB83630EF4CB9C5F2E644B2967B2141000
            21F90408060000002C000000001A001A00870000000100010200020604060605
            060E0C0E0F0E0F1715171B1B1B1D1D1D1E1E1E20202021212125252527262729
            27292F2F2F3130313131313433343837383A3A3A3C3C3C3D3C3D404140414341
            4244424344434345434445444848484B4B4B4D4E4D4E4E4E4E4F4E5354535454
            545556555657565857585858585959595B5B5B5C5B5C5E5E5E5F5F5F60606060
            61606161616464646C6B6C6C6C6C6D6C6D6F6E6F717071717171717271737373
            7473747575757576757878787979797A7A7A7B7B7B7F7E7F8080808180818283
            82848584868686878687898989898A898A8A8A8B8A8B8B8B8B8B8C8B8C8C8C8D
            8E8D8E8D8E8E8E8E8F8F8F909090929192929292959495959595959695979697
            9797979B9A9B9D9D9D9E9D9E9F9E9FA1A0A1A4A4A4A4A5A4A5A4A5A5A5A5A5A6
            A5A6A6A6A6A7A6A7A7A7A7A8A7A8A8A8A9A9A9AAA9AAAAAAAAABABABACACACAF
            AFAFB0AFB0B1B0B1B1B2B1B2B2B2B2B3B2B3B3B3B5B4B5B5B5B5B5B6B5B8B8B8
            B9B9B9BBBBBBBEBDBEBEBEBEBFBEBFBFBFBFC0C0C0C0C1C0C1C0C1C1C1C1C2C1
            C2C2C2C2C3C2C3C3C3C3C3C4C3C4C3C4C5C5C5C7C6C7C7C7C7C9C9C9CAC9CACA
            CACACBCACBCBCCCBCDCDCDCDCECDCECECED1D0D1D1D1D1D1D2D1D2D2D2D2D3D2
            D3D3D3D5D6D5D6D6D6D6D7D6D7D7D7D8D8D8D9D9D9DADADADCDCDCDCDDDCDDDD
            DDDDDEDDDEDEDEDEDFDEDFDFDFDFE0DFE0E0E0E0E1E0E1E0E1E1E1E1E2E1E2E2
            E2E2E3E2E3E3E3E3E3E4E3E4E4E4E4E5E4E5E5E5E6E6E6E6E7E6E7E7E7E7E8E7
            E8E7E8E8E8E8E9E8E9E9E9E9E9EAE9EAE9EAEAEAEAEBEBEBEBECEBECECECECED
            ECEDECEDEDEDEDEDEEEDEEEDEEEEEFEEEFEFEFEFF0EFF0F0F0F0F1F0F1F0F1F1
            F1F1F1F2F1F2F1F2F2F2F2F3F3F3F4F4F4F4F5F4F5F4F5F5F5F5F6F6F6F6F7F6
            F7F7F7F8F7F8F8F8F8F9F8F9F9F9F9FAFAFAFBFBFBFCFCFCFDFCFDFDFDFDFEFE
            FEFFFEFFFFFFFF00000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000008FF00CD091C48D09CAC23413615
            5CB8D054A3630215E9B82147203843799E311C084C0B1339E0CC19BA71E38DC0
            3E3050D8D928B02313290A0D4D84630ED80F142A599E64C204CC35993768B6C1
            F903D84270C0349A3BC6E565A391144DCD40D1C290C0639A8409FCD4468EA66B
            E6244961F2A5D18F1D88C0E06C02EEE28D104334360243378FA9676F98B479A6
            29D235392D6A68DA742404070C30682DED83866E1B45C036411C78ADD1273925
            3A70E80023CF40709FEC389E7C7407060E23B4BC5A784D931D452137CA893144
            13C167B45EE9D61D7BE333305ABE70E102E6D35343C8911B65F9864284E7CF4B
            284A9E5C31CB36132068D71EE298A9EFDF69F5C066786C8B142AE8B5482A881B
            D87882E0B4949062BDE0B55CE0952EA46501C1020F60E807CE31A98027CB35D7
            8CF793590D249040032DAC67CE33E0A5720C52A62876CD855418F0401E6F78B0
            400208C0001685A60073E277AF5CF34A8A320000C009D7D02245050BFC101B82
            16BD68CA31D77C074C1F070060401B026D92C772057967CA2BE00499213835C8
            68417D0C81E3A346522AB649030010A0854E5A66285097024941000047E834E1
            85677EA78B40CF4831842C6E2E04CC2BFA6D14100021F90408060000002C0000
            00001A001A00870000000907090A080A0D0B0D1A191A1B1A1B1C1B1C1D1C1D1E
            1D1E1E1E1E1F1E1F201E202222222322232B292B2A2A2A2C2C2C2E2F2E2F2F2F
            3131313232323332333535353635364141414342434444444546454646464848
            484948494A494A4A4A4A4C4C4C4F4F4F52525254545456565658585858595859
            5959595A595A5A5A6060606160616262626362636766676868686A6A6A6B6B6B
            6E6E6E7171717271727272727373737473747675767676767777777877787979
            798181818281828383838585858989898A898A8B8B8B8C8B8C8C8C8C8D8C8D8D
            8E8D8F8E8F9090909191919392939495949594959797979A999A9B9A9B9B9B9B
            9C9B9C9C9C9C9D9C9D9E9D9E9E9E9EA0A0A0A0A1A0A1A2A1A2A2A2A4A4A4A5A4
            A5A5A5A5A6A6A6A6A7A6A7A7A7A8A8A8A9A9A9AAAAAAADACADADADADAFAFAFAF
            B0AFB0B0B0B1B1B1B2B3B2B4B4B4B6B6B6B7B7B7B9B9B9BABBBABBBBBBBBBCBB
            BCBCBCBCBDBCBDBDBDBDBEBDBEBDBEBEBEBEBFBEBFBFBFBFBFC0BFC0BFC0C0C0
            C0C0C1C0C1C0C1C1C1C1C2C2C2C3C3C3C4C3C4C4C4C4C5C4C5C7C8C7C9C8C9C9
            C9C9CAC9CACACACACBCBCBCBCCCBCCCBCCCCCCCCCCCDCCCDCCCDCDCDCDCDCECD
            CFCFCFD1D1D1D2D2D2D3D3D3D4D5D4D6D6D6D7D7D7D8D8D8D8D9D8D9D9D9D9DA
            D9DADADADBDBDBDBDCDBDCDCDCDCDDDCDDDDDDDDDEDDDEDEDEDEDFDEDFDFDFDF
            E0DFE0E0E0E1E1E1E1E2E1E2E2E2E3E3E3E3E4E3E4E4E4E4E5E4E5E5E5E6E7E6
            E7E7E7E7E8E7E8E7E8E8E8E8E8E9E8E9E8E9E9E9E9E9EAE9EBEBEBECECECEDEC
            EDEDEDEDEDEEEDEEEDEEEEEEEEEEEFEEEFEFEFF0EFF0F0F0F0F1F1F1F1F2F1F2
            F1F2F2F2F2F2F3F2F3F2F3F3F3F3F4F4F4F4F5F4F5F5F5F5F6F5F6F6F6F7F7F7
            F8F7F8F8F8F8F9F9F9FAF9FAFAFAFAFBFBFBFBFCFBFCFCFCFDFDFDFEFEFEFEFF
            FEFFFEFFFFFFFF00000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000008FF00BF091C48F09BAD294E4E155CB8F055266302231121A2
            4720B548859E311C280CCD9742D4BE49242247E0211D37FE6C1428ECCC97310A
            2315A1F84D58911B3854AE14F9E5CB9B8B134BB2B971C3883086C6347E33C6A6
            67A6917A5201B9A1E3904063998E7E7B55E850AA909D7AB2B1B4C448243544AF
            50A36608480B23103BF1F9F32792AD677ABEE879D62913353D3A8074EAB4A4C5
            8913376A2DB544976ED65410073EB374EA8D8CC388757EA3F6AAD11F3D7F222F
            A416A4C40919585E2D7C76EA90A6901BDFE8589289203563C288E116067BA331
            3558C6083F732AD5A9E3C899ED6423828373E72F8C233F2E9AA19A0E1C3464E7
            D0E299B0EFE0B3EDCA14F645CA152952B0582A68EC95ADDE05A95D69E144F56A
            5AC8AB137CD501C284126788968D30A820E7CA33CFC0F7CC219100710104105C
            20C37A4B21870A6FB69C420B356708868503190CA2C6091340384348C61C7757
            85A7BCC2480100B4D0830107C8400D2D4E74300110B021689174C6E81100001D
            BC31C1010EB02150277AECC29030C7A5F28D1E0210690C100B1C50822D3B5103
            E4945576F00C28191CD000165D1A671F95442A7745030738B1D352BC09F4C700
            0088A09131522C61DF9C03D932420157CC19100021F90408060000002C000000
            001A001A00870000000100010402040907090A080A1817181B1B1B1D1B1D1D1C
            1D1D1D1D2221222624262625262928292B2A2B2D2E2D2E2E2E2F2E2F2F2F2F30
            2F303030303332333333333536353837383A393A3B3A3B424242444444464646
            4747474A4A4A4C4B4C4F4F4F504F505050505958595959595B5A5B5B5B5B5D5D
            5D5D5E5D5E5E5E5F5F5F6160616465646767676A696A6F6F6F70707070717071
            7171727172727272757475767576777777787878797979797A797C7C7C7D7D7D
            7F7E7F8080808383838787878989898A898A8A8A8A8B8A8B8B8B8B8D8D8D8E8E
            8E8F8E8F8F8F8F9090909292929594959796979797979898989999999D9D9D9F
            9E9FA09FA0A0A0A0A1A1A1A1A2A1A2A2A2A3A3A3A3A4A3A4A5A4A5A4A5A5A5A5
            A6A6A6A6A7A6A7A7A7A8A8A8A9A9A9AAAAAAAAABAAABABABACACACADADADADAE
            ADAEAFAEAFAFAFB2B1B2B2B2B2B4B3B4B5B5B5B8B8B8BABABABBBBBBBFBEBFBF
            C0BFC0BFC0C0C0C0C1C1C1C2C2C2C3C3C3C4C4C4C5C5C5C6C6C6C7C7C7C8C7C8
            C8C8C8C8C9C8CACACACBCACBCBCBCBCCCCCCCDCCCDCDCDCDCECDCECECECECFCE
            CFD0D0D0D1D1D1D2D2D2D2D3D2D3D3D3D4D4D4D5D6D5D6D6D6D8D8D8D9D8D9D9
            D9D9DADADADCDCDCDCDDDCDDDCDDDDDDDDDDDEDDDEDEDEDEDFDEDFDFDFDFE0DF
            E0E0E0E1E1E1E1E2E1E2E2E2E2E3E2E3E3E3E4E3E4E4E4E4E4E5E4E6E5E6E6E6
            E6E6E7E6E7E8E7E8E8E8E8E9E8E9E8E9E9E9E9E9EAE9EAE9EAEAEAEAEBEBEBEB
            ECEBECECECEDECEDEDEDEDEDEEEDEEEDEEEEEEEEEFEFEFEFF0EFF0EFF0F0F0F0
            F1F1F1F2F2F2F3F2F3F3F3F3F3F4F3F4F4F4F5F4F5F5F5F5F6F6F6F7F7F7F8F7
            F8F8F8F8F8F9F8FAFAFAFAFBFAFBFBFBFBFCFBFCFCFCFCFDFCFDFDFDFEFEFEFE
            FFFEFFFFFF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000008FF00A9091C48905A2E36684A155CB830D7A763022579F18248
            E0324888203214D8AB8F1D48112756A4A6480991401B39F2B16327163589140D
            52217232A5C04D2C112D8359D10ECD2ABD181E5B26F0582096A4789672424489
            228E9B8252EBB5E9532EA2A5726E22E345921C9A68962D53E464871488B136A9
            2DD56BAC1D45C73E6D5AD6478993AA5576CC9811C4E5B2526AD5C63A3698E0CE
            4F7C7EECE58B72602FB96A89325CE604C60C1F68542D5CE6D0654A3E44AA6C32
            DC2B572E5EB9A4A63C16070D9BD7713E410E1CD5A61C162472E7BE313BB06A86
            7152E8CE3DE398E9E3B99CD9EC85C60B57E7920AF62A154BF2663233AA782E78
            4C55608D0B63A5BAD8D0C1851BD5CE72750A5CEA536C82C71095FCD0A1C3871D
            20A706EE942B16090222C41207139B78A1C10881C4F1427D1BF84014559B1426
            C500013410070607DC00C4030FDCB04C2C5590D00113921DA3D127150420800F
            7C3070400A736CF0800671DCC4472E0CF9204000137C12080308A4D00B11153C
            C0C2760C41A240000344414D8B411EB349080F5440864D811410000838429902
            445A1429854DCB5471C353D404D280012E40D44B155120699340B9B870C19536
            05040021F90408060000002C000000001A001A00870000000100010200020301
            030C0A0C0F0D0F1110111716171A181A1B1B1B1D1D1D1E1E1E20202025252526
            26262D2C2D2D2D2D2E2D2E2E2E2E323332353435353535363536363636393939
            3B3C3B4243424444444544454545454645464745474748474848484948494A4A
            4A4D4E4D4F4F4F5151515555555756575757575958595959595A595A5B5B5B5C
            5C5C5F5F5F6161616262626464646A6A6A6B6B6B6C6C6C6D6E6D6F6F6F707070
            7171717172717273727372737373737473747574757575757877787978797A7B
            7A7F7F7F8181818585858686868787878888888989898A8A8A8B8B8B8C8C8C8D
            8D8D8E8F8E9090909190919394939696969897989A9A9A9C9C9C9D9E9DA1A1A1
            A3A3A3A4A3A4A5A5A5A6A6A6A7A6A7A7A7A7A8A8A8A9A8A9A9A9A9ABABABABAC
            ABACACACACADACADACADADADADAFAFAFB0AFB0B0B0B0B1B0B1B1B2B1B2B1B2B2
            B2B2B2B3B2B3B2B3B3B3B3B4B4B4B6B6B6B6B7B6B8B7B8B9B8B9BAB9BABBBBBB
            BCBCBCBDBCBDBDBDBDBEBDBEBFBEBFBFBFBFC0C0C0C1C0C1C1C1C1C2C2C2C3C3
            C3C3C4C3C4C4C4C5C4C5C6C6C6C7C7C7C8C8C8C9C8C9C9C9C9CACACACBCACBCB
            CBCBCCCCCCCDCECDCECECECFCECFCFCFCFD0CED0D0D0D0D1D1D1D2D2D2D5D5D5
            D6D7D6D7D8D7D8D8D8DADADADBDADBDBDBDBDCDCDCDCDDDCDDDCDDDDDDDDDDDE
            DDDEDEDEDEDFDEDFDEDFDFDFDFE0E0E0E0E1E0E1E1E1E1E2E1E2E2E2E2E3E2E3
            E2E3E3E3E3E4E4E4E4E5E4E5E4E5E5E5E5E6E6E6E7E6E7E7E7E7E8E8E8E9E9E9
            EAE9EAEAEAEAEBEBEBEBECEBECECECEDEDEDEDEEEDEEEDEEEEEEEEEFEEEFEFEF
            EFEFF0EFF0EFF0F0F0F0F1F0F1F1F1F1F2F2F2F3F2F3F3F3F3F4F4F4F4F5F4F5
            F5F5F6F6F6F7F7F7F8F8F8F9F9F9FAFAFAFAFBFAFBFAFBFBFBFBFCFCFCFCFDFC
            FDFCFDFDFDFDFDFEFDFEFEFEFEFFFEFFFFFF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000008FF00BD091C48D09BB145
            8782155CB8105AB0690261050A546A60294F10190A9CA6AA94AE88133D092C25
            660B268D1B3B9632E64D622091C6E86CD92212A5B760A54AC16A19D29BA59975
            A031849691634E6212FF940A56668B988ADEA0A96269B094AA8755ADEA3A1408
            16A49981A64DF3B4254A1AA1BA72EA34360D96CE69BA744DC324A60C2C586BA2
            28516245615BB51EA7B125C85117A4297BF95A22684C65A98C0BA78939A2448A
            1F8505A70553F51125242B6B541136162C58B1605451422384C78FEBAE8ED5A6
            66B828C88EDB3B7C38899D73F6C2434070DF3EE2B0746958BE0B1AC3B386CE9A
            E650051ADBF24145F4CC6B8A94E115D98F0902030660C5D1C8AB060A1542FC08
            15A8CBC781F00328F839B47320344B9AACBC50A1E285929A54C087001090D4D0
            800CC1F851852A6B940003248108D1820A28280191180614804220DE88D1C002
            1F04F201044444A1C107476856460D2F580111347EE0C1122C232CC080138B50
            00C10C87A0F041091C7AA3CA22C430E404030B8CE0958E331833C5071FEC8099
            469E64B040035B7893E38E1CC1F001086BD864C90408C0C0D296330855C6081F
            6489D234651C5113241840B0C38B6360D1994D0405B3C30761DA14100021F904
            08060000002C000000001A001A00870100010301030402040806080C0B0C1C1A
            1C1D1C1D1E1D1E1F1E1F201F20211F212524252727272C2B2C2C2C2C2D2D2D2E
            2E2E2F2F2F313131333133353435353535353635363636414341424242424342
            424442434443494A49494B494A4A4A4A4B4A4C4C4C4C4D4C5252525656565758
            575858585859585958595959595A5A5A5D5C5D5D5D5D605F6062626263626367
            66676868686969696D6D6D6E6D6E707070717171717271727272737373747374
            747474767576767676767776777677797A797A7A7A7B7B7B7C7B7C7F7F7F8181
            818383838584858686868787878888888A8A8A8B8B8B8D8C8D8D8D8D8E8E8E8F
            8E8F9090909190919293929393939696969797979B9A9B9B9B9B9C9C9C9D9C9D
            9F9E9F9FA09FA2A2A2A3A3A3A4A4A4A4A5A4A5A5A5A8A8A8A9AAA9AAAAAAABAB
            ABACACACADADADAEAFAEB0B1B0B1B1B1B2B1B2B3B2B3B3B3B3B5B5B5B6B5B6B6
            B6B6B8B8B8BABBBABBBBBBBDBCBDBDBDBDBEBFBEC0C0C0C1C0C1C1C1C1C2C2C2
            C2C3C2C3C2C3C3C3C3C4C4C4C4C5C4C5C5C5C7C7C7C8C8C8C9C8C9CAC9CACACA
            CACBCBCBCCCBCCCCCCCCCDCDCDCDCECDCECECECFD0CFD0D0D0D2D2D2D3D3D3D3
            D4D3D4D4D4D7D7D7DADADADBDBDBDCDCDCDCDDDCDDDCDDDDDDDDDDDEDDDEDEDE
            DEDFDEDFDFDFDFE0DFE0E0E0E1E0E1E1E1E1E1E2E1E2E2E2E2E3E2E3E3E3E4E4
            E4E5E4E5E5E5E5E6E5E6E6E6E6E7E7E7E8E8E8E9E9E9EAE9EAEAEAEAEBEBEBEB
            ECEBECECECEDECEDEDEDEDEEEEEEEEEFEEEFEFEFEFF0EFF0F0F0F0F1F0F1F0F1
            F1F1F1F2F1F2F2F2F2F3F3F3F4F4F4F4F5F4F5F4F5F5F5F5F6F6F6F7F7F7F8F8
            F8F9F8F9F9F9F9FAFAFAFAFBFAFBFBFBFCFBFCFCFCFCFCFDFCFDFDFDFDFEFDFE
            FEFEFFFFFF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000008FF00A3091C48301A32509D88155CB890
            182D6402716DDA446BE0AA5210190A3CB8C955C48915A395DAB30794C68DA026
            E28A269162346287489A3C198DD6C4522C4146DB443291C2861939526C490B57
            20921E5FBAFA2911D4C39C9B40B5C45589E42381A0E288D903D1D5C44DA57021
            2B051699AF95A0F604A2052B90983061D6AC1CFBB5A3D98C1B5DE1A274066EDC
            4D0471A59C8877219D2E61CE245AB91057A9A41A29BDD90339DA212949946816
            C35823B244810C894EE46A810000A801100843F35113CDB0B714488D7AC0169A
            895EC3567285CE901FC07F34C1799258203A24651224B6A6058D990CE9488913
            92E0B24030162050704623AD24357434BC09F4B366920908B687E863A832B248
            9BC4FCA851E3C795996114A4A790E4D10F0A35D0124818A5C4F1C20F9118D204
            7D356C01D11B0F34208321D1AC41C10323046242064D6C6182095220434B1C45
            FC20C6464729548A090F4C5045221F641044223298F00285223DD21941554CF0
            0009AE3CF2C1064110D3C58745DC42D3261F3C4041778C0C19C4583598C0421C
            344592C10334AC1425910ABDC182096BD084CC1A52502210242164400444C4BC
            714675340D844B1125604953400021F90408060000002C000000001A001A0087
            0000000100010301030402040806080A080A0F0D0F1311131D1D1D1D1E1D1F1F
            1F2020202422242424242A2A2A2C2B2C2E2D2E2E2E2E2F2E2F2F2F2F30303031
            30313634363636363837383B3A3B3D3C3D3F3F3F414141414241434343444444
            4646464847484A4A4A4A4B4A5555555858585859585A5A5A5D5D5D5E5E5E5F5E
            5F5F5F5F616161646464666566676767696A696B6A6B6B6B6B6C6B6C71707171
            71717172717271727272727575757777777878787979797A797A7A7A7A7C7C7C
            7F7E7F7F7F7F828182858585868786878787878887888888898889898989898A
            898A8A8A8B8B8B8B8C8B8C8C8C8D8D8D8E8D8E8E8E8E8F8F8F908F9093939394
            94949696969898989A999A9B9A9B9C9B9C9E9E9EA0A0A0A0A1A0A1A1A1A2A1A2
            A2A3A2A5A5A5A6A5A6A6A6A6A7A7A7A8A9A8ABAAABABABABACACACADADADAFAF
            AFB0B0B0B1B1B1B2B2B2B2B3B2B6B5B6B6B6B6B7B7B7B9B9B9BABABABBBBBBBC
            BCBCC0BFC0C0C0C0C1C0C1C1C1C1C3C3C3C3C4C3C4C3C4C4C4C4C5C5C5C5C6C5
            C7C6C7C8C8C8C9C8C9C9C9C9CAC9CACACACACBCACBCBCBCBCCCBCCCDCCCDCDCD
            CDCECECECFCFCFCFD0CFD0CFD0D0D0D0D1D1D1D2D2D2D3D3D3D4D4D4D5D5D5D5
            D6D5D6D6D6D7D6D7D7D8D7D8D8D8D8D9D8D9D9D9D9DAD9DADADADADBDADBDCDB
            DCDCDCDCDDDCDDDCDDDDDDDDDDDEDDDEDEDEDFDEDFDFDFDFDFE0DFE0DFE0E0E0
            E0E1E1E1E1E2E1E2E2E2E2E3E2E3E3E3E3E4E3E4E4E4E5E4E5E5E5E5E6E5E6E6
            E6E6E6E7E6E7E7E7E8E8E8E9E8E9E9E9E9EAEAEAEBEBEBECECECECEDECEDECED
            EDEDEDEEEEEEEFEFEFEFF0EFF0F0F0F0F1F0F1F1F1F1F2F1F2F1F2F2F2F2F3F2
            F3F3F3F3F4F4F4F4F5F4F5F5F5F5F6F5F6F5F6F6F6F6F7F7F7F7F8F7F8F8F8F9
            F8F9F9F9F9FAF9FAFAFAFAFAFBFAFBFBFBFCFBFCFCFCFCFDFDFDFDFEFDFEFEFE
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            08FF00C1091C48101CB657A89C155CB8D099306C02918D1A256C2032640C091E
            1C952BE2C48AE0248EC298D1E0AB89184556DC38B2A44061136B85FC080EE628
            58100B3AEB5349204B612A9D9D6C6970584E29071808793573D42B91C86CCA04
            97CB119F4A105D000030C0C21761B846D5C2E60C23CC57652BF1C9936790C244
            21086C2D902297B39C039D39ABD5876DDBA935AB3CD86A6050C94875F2F419A5
            B060AA1D0FEA96AC85A812498191B654A992A5CA968E25B16D8A54A9F426611B
            1620588DC0011B97A3CE8C993D3B8E05D6AB1B9C71B989366D367D9A102162C4
            4816D0199D454AB49C397270CEE2C4D80178E1A0317D2E131C7403C3030AAF19
            22B9CB72E4C89748D3060A93C2E1C1F71383123DC7E6948E94F252D44C3D43C1
            FD0729981021C20FC80CA25F1E3B1CB149255F9477841A10D1B141063A34020E
            1D2270E04222339C90C51937DCF00536C8EC411E1D3E0DE21655318000C27929
            9C7044253FDCB0432402E5B24963057DE1A20BB95412E311CEAC112215DA2DF4
            4A0A208810073842CA884D2E44DCA0431FBC91C00181500E09511E3ADC50874B
            D8D0A1C528026DC2C2095240E44C1E7424E9524853C490C79C01010021F90408
            060000002C000000001A001A0087000000010001030103040204050305070507
            0D0B0D1C1A1C1C1C1C1D1C1D1E1D1E1F1D1F201F202220222423242625262B29
            2B2B2A2B2D2C2D2E2D2E2E2F2E2F2E2F2F2F2F30303031303131313135353539
            39393A383A3E3D3E424442434443434543444344454545454645464546464646
            4A4A4A4B4D4B4D4E4D4E4D4E5051505455545757575858585958595959595B5B
            5B5D5D5D5E5E5E605E60605F606869686A6B6A706F7070707071707171717171
            7271727172727272757575767676787778797979797A797C7A7C7F807F808180
            828182848484868686888888898989898A898A8A8A8A8B8A8C8C8C8D8C8D8D8D
            8D8F908F9090909190919191919291929292929493949494949595959899989A
            9A9A9B9A9B9B9B9B9C9C9C9C9D9C9D9C9D9D9E9D9E9D9E9F9E9F9F9F9FA09FA0
            A2A2A2A3A4A3A4A4A4A5A5A5A6A5A6A6A6A6A6A7A6A7A7A7A8A8A8A9A8A9ABAB
            ABACACACADADADB0B0B0B1B1B1B2B2B2B3B3B3B6B6B6B7B7B7B9B9B9BABABABB
            BBBBBDBDBDBEBEBEBEBFBEC0C0C0C0C1C0C1C0C1C1C1C1C1C2C1C2C1C2C2C2C2
            C3C2C3C4C5C4C8C8C8C9C9C9CAC9CACACACACBCBCBCBCCCBCCCCCCCDCDCDCECD
            CECECECECFCFCFD0D0D0D1D1D1D2D2D2D3D3D3D4D4D4D4D5D4D5D4D5D5D6D5D8
            D8D8D9D9D9DADADADBDBDBDCDBDCDCDCDCDCDDDCDDDCDDDDDDDDDDDEDDDEDEDE
            DEDFDEDFDFDFDFE0DFE0E0E0E1E0E1E1E1E1E1E2E1E2E1E2E2E2E2E2E3E2E3E3
            E3E4E4E4E5E5E5E5E6E5E6E6E6E6E7E6E7E6E7E7E7E7E8E8E8E8E9E8E9E9E9EB
            EBEBECEBECECECECECEDECEDECEDEDEDEDEEEEEEEFEFEFEFF0EFF0F0F0F0F1F0
            F1F0F1F1F1F1F1F2F1F2F2F2F3F2F3F3F3F3F4F3F4F4F4F4F4F5F4F5F5F5F6F6
            F6F7F6F7F7F7F7F7F8F7F8F8F8F9F9F9FAF9FAFAFAFAFBFBFBFCFCFCFCFDFCFD
            FCFDFDFDFDFEFEFEFFFFFF000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000008FF00BD091C48D01B3656A8A0155C58109B
            9D27A7042E3B750AD8C065CB181294B440808B8CC3285AF436F1D4308D02271D
            1060408DB790150DB2A2981125361E020470A055D222308AACB02D84D6C89340
            4F10041040F2B322B499A76A7A8326D4DB97091DAAD0F256A58000099E6836DD
            4A92D6A95D02811C58D020859C53260884D8052DE34F56D0A0EDA2782AA8B749
            311C2C58F0808724354609E65D06B5AF5460674434580061124AB314775525C8
            AA89081E231932A64B50939A2F5FCC7C51139A21365AAC62B3E299E2826DDB1C
            F0A0F446AB90EFDF92444C183E5C839DDDBD7FFB5EB4284B95E755CCA0B5C997
            AF54837D842021CB50D39E490A174EC32272C283883D1AA1D951A3068FA7CDC0
            B4ACF040DF86244DAD0FD25AF486FD9B3ED3D921027D2B68F1C915333CB1CC24
            7BEC2249155FCC84077B67142250212AA4808426DE1432830B3F6852040F6FEC
            D14413766003CD24EB2D2210369248A2103043B8E0421C9EFCC083169E64D144
            14890183174370C0E082103FE9A805347D9CA846781AD172830B31F4E1CD274A
            62135F134F48B2DB2936ACD0844239EE28D4224F34E1A24D85A8C18A40A708C1
            C3174261B3C821D7ED2610345F14B1264A01010021F90408060000002C000000
            001A001A0087000000040204070507100F101715171C1C1C1D1D1D1E1E1E1F1F
            1F2121212323232625262828282C2C2C2E2E2E2F2F2F31303132323235353536
            36363737373838383A3A3A3D3D3D434343444344444444454645464646494849
            4949494C4C4C4D4E4D5151515353535454545858585958595959595A5A5A5B5A
            5B5B5B5B5F605F606060616061626262646464686868696A696A6A6A6C6C6C6E
            6E6E7070707171717373737474747676767776777C7C7C7D7D7D7E7E7E828282
            838383858485888888888988898889898989898A898C8C8C8D8D8D8D8E8D8E8D
            8E8E8E8E8F8E8F90909091919192929293929393939394949496969697969799
            99999A9A9A9B9A9B9B9B9B9B9C9B9C9B9C9C9C9C9E9E9E9F9F9FA1A1A1A3A3A3
            A4A4A4A5A5A5A5A6A5A6A6A6A7A7A7A8A8A8A9AAA9AAAAAAAAABAAABABABACAB
            ACACACACADADADADAEADAEAEAEAFAFAFB0AFB0B0B0B0B1B1B1B2B2B2B2B3B2B3
            B3B3B4B4B4B5B4B5B7B7B7B8B8B8B9B9B9BABBBABCBCBCBFBEBFBFBFBFC0BFC0
            C0C0C0C1C0C1C1C1C1C2C2C2C2C3C2C3C2C3C4C5C4C6C5C6C6C6C6C7C7C7C8C8
            C8C9C8C9C9C9C9CACACACBCBCBCCCCCCCDCDCDCFCFCFD0CFD0D2D2D2D2D3D2D3
            D3D3D4D4D4D4D5D4D5D5D5D6D6D6D7D7D7D7D8D7D9D9D9D9DAD9DADADADBDBDB
            DCDCDCDCDDDCDDDCDDDDDDDDDDDEDDDEDDDEDEDEDEDFDFDFE0DFE0E0E0E0E1E0
            E1E1E1E1E2E1E2E2E2E2E3E2E3E3E3E3E3E4E3E4E3E4E5E5E5E5E6E5E6E6E6E7
            E7E7E8E8E8E8E9E8E9E9E9EAEAEAEBECEBECEBECECECECECEDECEDECEDEDEDED
            EEEEEEEFEEEFEFEFEFEFF0EFF0EFF0F0F0F0F0F1F0F1F1F1F1F2F1F2F2F2F3F2
            F3F3F3F3F4F4F4F4F5F4F5F5F5F5F6F5F6F6F6F6F7F6F7F6F7F7F7F7F7F8F7F8
            F8F8F8F9F8F9F9F9F9FAF9FAFAFAFBFAFBFBFBFBFBFCFBFCFCFCFCFDFCFDFCFD
            FDFDFDFDFEFDFEFEFEFEFFFEFFFFFF0000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000008FF00C5091C48509CA30504E8145C58309B9E29AD044A0900E0
            C6C061C31812BC5401818C68E29850942170D8A85119358ABB44010103382147
            8ACBD6EA644A953D102008014C240092C04EBECAB6301AA4510247614090608A
            4F19346D0E8C46549C970B1FA6D412B72501820E5B060860127494AC92B2466D
            15D7A341830829E8B4529120852C355C80996C152D5AAD93A35A11BD1483825B
            0A3A26C1414AB0EFB09A275BDD1C5666448406162EA94C3BCA54ADAA04653109
            A10398CAC7B5400ED4A4A68C6B2F6E4CAB1407AC76ED61D9546CD8BDFB839ED9
            2601474EC13B43860E78800B8FEC68CB94E758D4C8D6980D582EDBC0540BCC56
            488894B50C5B39C51AA57DA3921629520CA2AE48CF2047B2400FF312237D0A1D
            9734DD14A7AD16304D830438C82429E9615F0C5EB4C2C50D5B44A34921FF9541
            472DB53812A01E9308A4880B2D30A189388ADC6083109A4821041D8A78E14521
            338DA2C8201FCE74C924D2D0A6840D36E0D18A1242A0D18A1A5E94119138C3E4
            021A4177E05804303B0A5146368EA88847790BCDF2830D37B0D8241AD90C0387
            8A316AD48A0E345C0152934F8AA3898A9AA9948D22709C258E2B4C08A10651D9
            CC48E56CE24403871419CE1610003B}
        end
      end
    end
    inherited PNLMainEvent: TPanel
      Width = 1917
      inherited SBRodape: TdxStatusBar
        Width = 1917
        Panels = <
          item
            PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
            MinWidth = 100
            Text = 'Consulta'
            Width = 150
          end
          item
            PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
            MinWidth = 0
            Width = 1600
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
    end
  end
  inherited SpeedBar2: TSpeedBar [3]
    Width = 1917
    inherited siPSQ: TSpeedItem [4]
    end
    inherited siREF: TSpeedItem [5]
      Hint = 'Atualiza Programa'#231#245'es'
    end
    object SINovo: TSpeedItem [6]
      BtnCaption = 'Novo'
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Pedido'
      ImageIndex = 2
      Spacing = 0
      Left = 165
      Top = 5
      Visible = True
      OnClick = SINovoClick
      SectionName = 'Movimento'
    end
    object siARO: TSpeedItem [7]
      BtnCaption = 'Alterar'
      Cursor = crHandPoint
      Hint = 'Altera Programa'#231#227'o'
      ImageIndex = 3
      Spacing = 0
      Left = 245
      Top = 5
      Visible = True
      OnClick = siAROClick
      SectionName = 'Movimento'
    end
    object siCRO: TSpeedItem [8]
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancela Programa'#231#227'o'
      ImageIndex = 4
      Spacing = 0
      Left = 325
      Top = 5
      Visible = True
      OnClick = siCROClick
      SectionName = 'Movimento'
    end
    object SIClientes: TSpeedItem [9]
      BtnCaption = 'Clientes'
      Cursor = crHandPoint
      Hint = 'Cadastro de Clientes'
      ImageIndex = 5
      Spacing = 0
      Left = 405
      Top = 5
      Visible = True
      OnClick = SIClientesClick
      SectionName = 'Movimento'
    end
    object SIPED: TSpeedItem [10]
      BtnCaption = 'Pedidos'
      Cursor = crHandPoint
      Hint = 'Gera Pedidos para Faturamento'
      ImageIndex = 6
      Spacing = 0
      Left = 485
      Top = 5
      Visible = True
      OnClick = SIPEDClick
      SectionName = 'Movimento'
    end
    object SIFIM: TSpeedItem [11]
      BtnCaption = 'Finalizar'
      Cursor = crHandPoint
      Hint = 'Finaliza Programa'#231#227'o de Venda'
      ImageIndex = 7
      Spacing = 0
      Left = 565
      Top = 5
      Visible = True
      OnClick = SIFIMClick
      SectionName = 'Movimento'
    end
    inherited siREL: TSpeedItem
      Hint = 'Imprime e Visualiza Relat'#243'rios'
      ImageIndex = 8
      Left = 645
    end
    inherited siSAIR: TSpeedItem
      ImageIndex = 9
      Left = 725
    end
  end
  inherited imageOPC: TImageList
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
      00000000000000000000000000000000000000000000F1F1F100EFEFEF00DCDC
      DC00CFCFCF00D0D0D000D1D1D100D3D3D300D4D4D400D6D6D600D7D7D700D7D7
      D700D9D9D900DADADA00DADADA00DADADA00DADADA00D9D9D900D8D8D800D7D7
      D700D6D6D600D4D4D400D3D3D300D1D1D100CFCFCF00D0D0D000DFDFDF000000
      0000F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033591200355418003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003354190037571B00455E20005E68
      2C006A6E35000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFFAFAFAFFDADADAFF1A1A1AFF9F9F9FFFFEFE
      FEFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      000000000000000000000000000000000000000000000000000000000000E5E5
      E500E1E1E100E0E0E000E2E2E200E4E4E400E6E6E600E8E8E800EAEAEA00EBEB
      EB00EDEDED00EEEEEE00EFEFEF00EFEFEF00EEEEEE00EDEDED00ECECEC00EAEA
      EA00E8E8E800E6E6E600E5E5E500E2E2E200E0E0E000E0E0E000E4E4E400EEEE
      EE00F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000766B300000540000005100000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      000000530000005300000053000000530000005300000053000000520000004F
      0000005600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF6F6F6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFF8F8
      F8FFEFEFEFFFF0F0F0FFF4F4F4FFF9F9F9FF3E3E3EFF000000FFB8B8B8FFFFFF
      FFFFFFFFFFFFFAFAFAFFF3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000000000000000000000000000F1F1F100E9E9
      E900E3E3E300E1E1E100E3E3E300E6E6E600E8E8E800EAEAEA00EDEDED00EFEF
      EF00F1F1F100F2F2F200F3F3F300F3F3F300F2F2F200F1F1F100EFEFEF00EDED
      ED00EBEBEB00E9E9E900E7E7E700E3E3E300E2E2E200E3E3E300E9E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B633800025D0700469C4F0053A455004BA156004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA1550053A55C00308A
      3A00005600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F2F2FFFCFCFCFFE1E1E1FFA6A6
      A6FF9A9A9AFF7C7C7CFF696969FF636363FF6C6C6CFF828282FF9D9D9DFFCCCC
      CCFFF5F5F5FFF1F1F1FFFFFFFFFF797979FF000000FF000000FF757575FFA8A8
      A8FFA1A1A1FFC8C8C8FFF3F3F3FFFFFFFFFFF1F1F1FFF0F0F0FFF0F0F0FF0000
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
      000000000000000000000000000000000000F2F2F200F3F3F300F5F5F500EBEB
      EB00DEDEDE00DADADA00DDDDDD00E0E0E000E3E3E300E6E6E600E9E9E900EBEB
      EB00EDEDED00EEEEEE00EFEFEF00EEEEEE00EEEEEE00EEEEEE00ECECEC00EAEA
      EA00E7E7E700E4E4E400E1E1E100DDDDDD00DBDBDB00DEDEDE00EBEBEB00F5F5
      F500F3F3F300F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007660330010781C0045954B002A7D2E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028802E00348B3F0070BB
      8A00005900000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F3FFF5F5F5FFCECECEFF282828FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF8181
      81FFFFFFFFFFFEFEFEFFB9B9B9FF070707FF000000FF000000FF000000FF0000
      00FF000000FF0A0A0AFF383838FFA3A3A3FFF7F7F7FFF2F2F2FFF0F0F0FF0000
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
      0000000000000000000000000000F7F7F700F8F8F800F4F4F400F4F5F5000000
      0000D8D8D800CACACA00CCCCCC00CFCFCF00D3D3D300D6D6D600D7D7D700DADA
      DA00DCDCDC00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DBDBDB00D9D9
      D900D6D6D600D3D3D300CFCFCF00CDCDCD00CACACA00D4D4D400EDEDED00F5F6
      F600F4F5F500F8F8F800F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000776135001082140017701600004D000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000500000005C00004FB1
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F1FFF5F5F5FFA7A7A7FF818781FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9E9E
      9EFFFFFFFFFFE8E8E8FF212121FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA2A2A2FFFFFFFFFFEFEFEFFF0000
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
      0000000000000000000000000000EBEBEC00C5C5C500A7A7A600A2A2A200A5A4
      A400A7A7A700ACADAD00AEAEAE00AFAFAF00B2B2B200B5B5B500B6B6B600B8B8
      B800BABABA00BBBBBB00BBBBBB00BBBBBB00BBBBBB00B9B9B900B8B8B800B7B7
      B700B5B5B500B3B3B300B1B1B100AFAFAF00ACACAC00A8A8A800A4A5A500A3A4
      A400A7A7A700C2C2C200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D751D000054000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000058
      0000005900000059000000590000005900000059000000570000066308004DB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFEFEFEFFFFFFFFFFF9FA09FFF323032FF917691FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF010101FFBABA
      BAFFFEFEFEFF565656FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF252525FFEBEBEBFFF6F6F6FF0000
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
      0000000000000000000000000000C1C0C0007F7D7C006B6866005E5C5A00403F
      3F0054545400797A7A00808080008080800082828200878787008A8A8A008E8E
      8E009191910092929200939393009393930092929200909090008E8E8E008B8B
      8B00878787008484840080808000808080007B7B7B00595959003E3D3D005857
      55006B6967007B787700B0AFAF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D751D000054000000560000005400000054
      0000005400000054000000550000005800000059000000590000005900000059
      00000059000000590000005900000059000000590000005A0000005700000050
      0000005800000059000000590000005900000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFFBFBFBFFDDDDDDFF161716FF060106FF992899FF090B09FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0A0A0AFFE1E1
      E1FF9D9D9DFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF838383FFFFFFFFFF0000
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
      0000000000000000000000000000A6A5A30073706D00767270005C5957001715
      150016161600363535003A3A3A00393939003B3B3B003E3E3D00404040004443
      4300464545004746460047474700474747004746460046454500444343004141
      40003F3E3E003C3C3C00393938003A3A3A0037363600191919000F0E0D004D4A
      480077747100716C69008D8B8900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D751D0000520000096307000D6B10000C69
      0E000C690E000C6A100009670B00015B00000058000000590000005900000059
      0000005900000059000000590000005900000059000000550000146B18005BAD
      70000E6612000055000000590000005900000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF3F3F3FFFCFCFCFF505050FF000000FF000000FF8E7F8EFF414A41FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF101010FFEDED
      EDFFC0C0C0FF080808FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF151515FFE9E9E9FF0000
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
      0000000000000000000000000000A8A6A500817F7C008683810062605F001917
      1700090808001212110012111100111110001111100012111000111010001111
      1000111110001111100011111000111110001111100011111000111110001111
      100012111000111110001111100012111100131211000A0A0A00111010004F4D
      4C0087848100817E7B00908E8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004C000078BB8800D2F6EE00C0F2
      E600C0F2E600C7F3EC00A0E0B6000E6A05000054000000590000005900000059
      00000059000000590000005900000059000000590000004F0000367E3B00E2FF
      FF0021782A0000510000004F0000004F0000004E000000520000066409004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFFFFFFFFF8E8E8EFF000000FF000000FF000000FF3E373EFF995799FF0001
      00FF000000FF000000FF000000FF000000FF000000FF000000FF151515FFE2E2
      E2FFFFFFFFFF848484FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF787878FF0000
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
      0000000000000000000000000000AEACAB00868482008A888500626160001F1E
      1E00100F0F001716150016151400161514001615140015141400151414001514
      1400151414001514140015141400151414001514140015141400151414001514
      1400151514001615140016151400161514001716150012111000181717004F4D
      4D0086838100827F7D0099979600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007DC6A000E9FFFF00D9FF
      FF00D9FFFF00E1FFFF00BEEED000146B09000053000000590000005900000059
      0000005900000059000000590000005900000059000000500000307D3900D5FF
      FF001F712400025F0600349154003F986000479961001C742600035E04004EB1
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFFC8C8C8FF0D0D0DFF000000FF000000FF000000FF000000FF9C6F9CFF3434
      34FF000000FF000000FF000000FF000000FF000000FF000000FF262626FFECEC
      ECFFF8F8F8FFF8F8F8FF404040FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
      0000000000000000000000000000B2B0AF008B898800908E8B00666362001E1D
      1C00100E0E001918180018171700181617001816170018161700181617001816
      1700181617001816170018161700181617001816170018161700181617001816
      1700181617001816170018161600181616001918180012101000151514005351
      500098959300959291009E9C9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA00156A09000054000000590000005900000059
      0000005900000059000000590000005900000059000000500000307E3C00D8FF
      FF00116315000B6F0D00CAFCEA00EAFFFF00F8FFFF0062A66E00005200004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF333333FF000000FF000000FF000000FF000000FF000000FF362D36FFD8AF
      D8FFBCC0BCFFBBBBBBFFBDBDBDFFC0C0C0FFB8B8B8FFB7B7B7FFC5C5C5FFF0F0
      F0FFF0F0F0FFFAFAFAFFD4D4D4FF111111FF000000FF000000FF020202FF0F0F
      0FFF1F1F1FFF393939FF434343FF464646FF434343FF272727FF050505FF0000
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
      0000000000000000000000000000B6B5B400918E8C0094918F00696765001E1E
      1D00101010001919190018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001919190012121200151514005755
      5300ABA9A700ABA9A800A3A19F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA00156A09000054000000590000005900000059
      000000590000005900000059000000590000005900000051000026782D00DCFF
      FD0069B17F00157E1E00ABE2C3005CAD68004FA252001E751F00035C04004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      99FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA2A3
      A2FFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF7F7F7FFFFFFFFFFFBFBFBFFF0F0
      F0FFF0F0F0FFF0F0F0FFFFFFFFFF969696FF000000FF010101FFAFAFAFFFDFDF
      DFFFE8E8E8FF989898FF818181FF838383FF818181FF7B7B7BFFA4A4A4FF0000
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
      0000000000000000000000000000C0BFBE00A29F9D00A6A4A200777675002B2A
      2A001D1D1D0028282800282829002A2A2A002C2C2B002D2D2C002E2E2E002F2F
      2F00303030003130300031303000323131003130300030303000303030002F2F
      2F002E2E2D002E2D2D002D2C2C002B2B2B002A2A2A0021212200252425006665
      6400AEABAA00A9A7A600B2B1AF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA00156A09000053000000550000005800000058
      000000580000005800000058000000580000005800000056000002580000469B
      5600D9FFFE00BAE6CB009CDCC20000630F00004C000000540000066409004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7CFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2020
      20FFECECECFFF0F0F0FF8A8A8AFF5E5E5EFFECECECFFF2F2F2FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF2F2F2FFFFFFFFFF4E4E4EFF000000FFD5D5D5FFFFFF
      FFFFDBDBDBFF080808FF000000FF000000FF000000FF000000FF141414FF0000
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
      0000000000000000000000000000D3D2D100BBB9B800C1C0BE0092918F003C3C
      3C002C2C2C003A3A3A003B3A3B003E3D3D0040403F0041414100444443004544
      4500464646004747470048484800484747004746460046464700454545004444
      45004242410040403F003E3F3D003C3C3C003A3A3A002F2E2F00343435007E7D
      7C00C3C0BF00B8B6B600C8C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA00156A080000530000086F1000005400000053
      0000005300000053000000530000005300000055000000530000005000000048
      00006AC18700EEFFFF00B4EFE4000A6817000053000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009393
      93FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF424242FF2C2C2CFF000000FFAAAAAAFFFDFDFDFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF9F9F9FFDEDEDEFF1F1F1FFFC5C5C5FFFFFF
      FFFF717171FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
      0000000000000000000000000000D7D5D500B5B4B300B7B5B400939290003F3F
      3E0028282800333232003230300031303000303030002F2F2F002E2E2E002E2D
      2D002D2D2D002D2C2C002C2C2C002C2B2B002B2A2A002A2A2A00292929002929
      290028282800272727002726250027262600262626001C1C1C00282727007B7A
      7900BAB9B700B3B2B000CBCAC900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA000C640200297F3900A3D8B20071BA6A0070BA
      6A0070BA6A0070BA6A0071BA6B0075BA6C002B8835005BAF620072B969005BA8
      58007DC49200E5FFFF00A9E5D200035E08000056000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C7FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF525252FFFEFEFEFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFFFFFFFFFA8A8A8FFD2D2D2FFE6E6
      E6FF131313FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
      0000000000000000000000000000D9D8D800ADABA900AAA8A600979694005151
      500039393800403F3F003F3F3E003E3E3C003D3D3C003C3C3B003B3A3A003A39
      3900393838003837370037363600353534003434330033333200323232003232
      310031313000302F2F002F2E2E002F2D2E002E2E2D0024242300343332008180
      7E00AEACAB00AAA9A700CAC9C800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA000B6302002A872E00ACEECE0096DFCB0096DE
      C80096DEC80096DEC80096DEC9009CDECC003E9B610077CDB200B0ECDF00E2FF
      FF00DCFFFF00E6FFFF006CB37700004900000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F1FF292929FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0B0B0BFFD2D2D2FFFBFBFBFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF5F5F5FFFFFFFFFF8585
      85FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
      0000000000000000000000000000DFDFDF00B1AFAD00AAA8A600A1A09E006665
      64004B4B4B00504F4F0050504F004F4E4E004E4D4D004D4C4C004B4B4B004A4A
      4A00494948004848470047474700474646004545450044444400434343004242
      420041404000404040003F4040003F3F3E003E3E3D0034343400484848009290
      8F00AEACAB00AEAEAC00D3D3D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA0015680800005D00001D8C280002691B000368
      19000369190003691900036919000469190001610600005D120033954E00D4FF
      F900D4FFFB00C8F5EC002D8833000C6A0A00005A000000560000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFF9B9B9BFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF747474FFFFFFFFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7F7F7FFE3E3E3FF1C1C
      1CFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
      0000000000000000000000000000E6E6E500BAB8B700AEACAB00ABAAA8007A7A
      79005F5E5E006161600062616100615F60005F5F5E005E5D5D005D5C5C005C5B
      5B005A5A5A005A59590058585800585757005656560055545500545454005353
      530052515200505150005051510050504F004E4E4D00464646005E5E5E00A2A0
      9F00B1AFAE00B4B2B100DEDDDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA00156A09000051000000540000005400000054
      00000054000000540000005400000054000000560000004C00002B832F00D7FF
      FF00E4FFFF0078B98E000E670F00A7EAC60016711A0000510000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AFAF
      AFFF494949FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1E1E1EFFE5E5E5FFF7F7F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFF9B9B9BFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
      0000000000000000000000000000ECECEB00C4C3C200B0AEAE00B1B0AE008E8D
      8C00757574007676750077777600757474007474730073727200727171007170
      70006F6F6E006E6D6D006D6C6C006B6B6A006A69690069676700676766006666
      6500656464006463630063616100616161005F5E5E005A59590074727200ACAA
      A900B4B2B000BBB9B700E6E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39B00E2FFFF00D3FF
      FE00D3FFFE00DBFFFF00BAEACA00156A090000530000005A0000005900000059
      00000059000000590000005900000059000000590000004E000024802900BBF1
      DB00D6FFFE0097D9C30088CFB5008AD3B600095C0B0000540000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF989898FFFFFFFFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F4FFE5E5E5FF8282
      82FF101010FF000000FF000000FF000000FF000000FF000000FF3C3C3CFF0000
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
      0000000000000000000000000000F3F3F300CCCCCA00B4B2B100B5B3B2009D9C
      9B00878787008686860087878700858686008586860085858500848484008383
      83008282810080808000807F7F007E7E7E007D7D7D007C7B7C007A7A7A007979
      780078787800777777007675750075757500727272006E6D6D0087868600B4B2
      B000B5B3B100C5C3C300EBEBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E00007AC39C00E3FFFF00D4FF
      FF00D4FFFF00DCFFFF00BBEBCB00156A09000054000000590000005900000059
      00000059000000590000005900000059000000570000025A02006AB57900A3E0
      B200BCE9CF00DCFDF800C7F7EB00207A23000050000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C3
      C3FF8A8A8AFF696969FF444444FF161616FF090909FF000000FF000000FF3232
      32FFF5F5F5FFF3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF5F5F5FFFFFF
      FFFFD3D3D3FF585858FF000000FF000000FF000000FF000000FFBFBFBFFF0000
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
      0000000000000000000000000000F4F4F400D8D8D600BAB8B600B6B4B300A5A4
      A30094939300919191009091900090908F008F8F8F008E8D8D008C8C8C008B8B
      8A008A8A8A008988880088888800878786008685850086858500858585008484
      830083848300838383008282820082828100808080007E7F7F0095949400B6B4
      B300B7B4B400CFCDCD00F2F3F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D741C00004E000081C89F00EEFFFF00DEFF
      FF00DEFFFF00E6FFFF00C2F1D100166B09000054000000590000005900000059
      0000005900000059000000590000005900000055000001610700B6F1E600E7FF
      FF002C833100116511000C670F00005500000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFFFFFFFFFFFFFFFFFF5F5F5FFE5E5E5FFD0D0D0FF9C9C9CFF7F7F7FFFBFBF
      BFFFFAFAFAFFF0F0F0FFFDFDFDFFFDFDFDFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF6F6F6FFFAFAFAFFFDFDFDFFFEFE
      FEFFFFFFFFFFFEFEFEFFB0B0B0FF343434FF000000FF525252FFFEFEFEFF0000
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
      0000000000000000000000000000F2F2F200EAE9E900CCCCCA00C0BFBE00AFAE
      AD00959594009190910095959500959594009594940095949400949493009494
      9300949494009493930093939300929292009191900091909000908F90008E8E
      8E008D8D8D008C8C8C008B8B8B008B8B8A008484840086858500A4A3A200C0BF
      BE00C7C5C400E1E1E100F3F4F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D751D00004F0000479646007FBF8B0074B8
      820074B8820078BC880061AC6300076202000056000000590000005900000059
      000000590000005900000059000000590000005700000159020081C28E00AADF
      B7000B650D00004F000000540000005800000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF3F3F3FFF5F5F5FFF9F9F9FFFFFFFFFFFFFFFFFFF9F9
      F9FFFAFAFAFFFFFFFFFFA7A7A7FF949494FFFDFDFDFFF0F0F0FFF1F1F1FFFCFC
      FCFFFDFDFDFFFBFBFBFFFBFBFBFFF4F4F4FFE1E1E1FFCECECEFFBCBCBCFFB8B8
      B8FFC4C4C4FFF8F8F8FFFFFFFFFFEDEDEDFF858585FFD1D1D1FFF9F9F9FF0000
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
      0000000000000000000000000000F1F1F100F2F2F200E9E9E900E8E8E700D1D0
      CF009A99980097969600ACACAD00ADADAD00B0B0B000B4B4B400B7B8B800BBBB
      BC00C0BFC000C2C2C100C3C3C300C3C3C300C1C1C100BFBFBF00BBBABB00B7B7
      B700B3B3B300AFAFAF00ABABAB00A9AAAA0096959600918F8E00C4C4C200E8E8
      E800E7E7E60000000000F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D751D000055000000560000005200000052
      0000005200000052000000520000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000550000036001000869
      0100005800000059000000590000005900000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF6F6F6FFFFFF
      FFFFD3D3D3FF5E5E5EFF000000FF000000FFBFBFBFFFFFFFFFFFDEDEDEFF7F7F
      7FFF595959FF464646FF3A3A3AFF343434FF202020FF0D0D0DFF000000FF0000
      00FF191919FFE7E7E7FFF5F5F5FFF4F4F4FFFFFFFFFFF4F4F4FFEFEFEFFF0000
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
      000000000000000000000000000000000000F1F1F100F3F3F300FBFBFB00E5E4
      E300AAA9A800B0B0AF00CDCDCD00CECECE00D3D3D300D8D8D800DDDDDE00E2E2
      E200E7E7E700E9E9EA00EBEBEB00ECECEC00EAEAEA00E7E8E800E3E3E300DEDE
      DE00D9D9D900D4D4D400CFD0D000CECECE00B3B3B400A5A3A100D7D7D500FCFC
      FC00F4F4F400F1F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D751D000054000000590000005800000058
      0000005800000058000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000005A0000005600000055
      0000005900000059000000590000005900000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF2F2F2FFFFFFFFFFEAEAEAFF7B7B
      7BFF0D0D0DFF000000FF000000FF000000FF272727FFE9E9E9FFF6F6F6FFA8A8
      A8FF313131FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF939393FFFFFFFFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000000000000000000000000000F4F4F400E2E2
      E200B9B8B700C8C9C800E2E3E300E2E2E200E6E6E600EAEAEA00EDEDED00F1F1
      F100F3F3F300F5F5F500F6F6F600F6F6F600F5F5F500F3F3F300F2F2F200EEEE
      EE00EAEAEA00E7E7E700E3E3E300E3E2E200C9C9C900B3B2B100D7D6D500F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077613500108114001D751D000054000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F3FFEBEBEBFF989898FF272727FF0000
      00FF000000FF000000FF000000FF000000FF000000FF616161FFFFFFFFFFFFFF
      FFFFFEFEFEFF8E8E8EFF050505FF000000FF000000FF000000FF000000FF0000
      00FF000000FF2C2C2CFFF2F2F2FFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000000000000000000000000000F3F3F300E8E8
      E800D0CFCE00DAD9D800E9E9E900EAEAEA00EDEDED0000000000F3F3F300F6F6
      F600F8F8F800FAFAFA00FBFBFB00FBFBFB00FAFAFA00F8F8F800F7F7F700F4F4
      F400F1F1F100EEEEEE00EBEBEB00E9E9E900D8D8D800CACACA00E0E0E000F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000078623600108114001D751D000054000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000570000066308004EB2
      6400005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7F7F7FFDDDDDDFF0E0E0EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF9E9E9EFFFFFF
      FFFFFFFFFFFF939393FF010101FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFA3A3A3FFFFFFFFFFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00EBEBEB00E6E5E600E5E5E500EAEAEA00EEEEEE0000000000F3F3F300F6F6
      F600F8F8F800F9F9F900FBFBFB00FBFBFB00F9F9F900F8F8F800F6F6F600F4F4
      F400F1F1F100EEEEEE00EBEBEB00E6E6E600E5E5E500EAEAEA00EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000776135000F8114001D751D000054000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000570000066308004CB3
      6300005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFF888888FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF151515FFD5D8
      D5FFF3F3F3FF212121FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF373737FFF6F6F6FFF2F2F2FFF0F0F0FFF0F0F0FF0000
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
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F1F1F100E8E8E800E3E3E300E7E7E700EBEBEB00EEEEEE00F1F1F100F3F3
      F300F5F5F500F6F6F600F8F8F800F8F8F800F6F6F600F5F5F500F4F4F400F2F2
      F200EFEFEF00ECECEC00E8E8E800E4E4E400E9E9E900F1F1F100F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F653800128215001A6E1500004B000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000500000005B000055AC
      6800005C01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F4FFF4F4F4FF333333FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF6961
      69FF9A979AFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFB3B3B3FFFEFEFEFFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00E5E5E500E2E2E200E5E5E500E8E8E800EBEBEB00EEEEEE00EFEF
      EF00F1F1F100F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F1F1F100EFEF
      EF00ECECEC00E9E9E900E5E5E500E2E2E200E5E5E500EEEEEE00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F7141000F771B00439C5C002D873C002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002D893E003D96520083BA
      8A00005601000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFFDFDFDFFC2C2C2FF0909
      09FF000000FF000000FF000000FF000000FF000000FF000000FF020602FF9C36
      9CFF271A27FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0B0B0BFF000000FF464646FFFDFDFDFFF2F2F2FFF0F0F0FF0000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00E3E3E300DFDFDF00E4E4E400E6E6E600E8E8E800EBEBEB00EDED
      ED00EEEEEE00EFEFEF00000000000000000000000000EFEFEF00EEEEEE00EBEB
      EB00E8E8E800E6E6E600E4E4E400E1E1E100E3E3E300ECECEC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0885700005A0500308D3F003D983F003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003B963F003F9948002E7E
      2B00005600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFF8585
      85FF000000FF000000FF000000FF000000FF000000FF000000FF5B2A5BFF8731
      87FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF232323FFD6D6D6FF757575FF0B0B0BFFB6B6B6FFFBFBFBFFF0F0F0FF0000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEDED00E5E5E500E3E3E300E6E6E600E7E7E700E9E9E900EBEBEB00EDED
      ED00EEEEEE0000000000000000000000000000000000EEEEEE00EDEDED00ECEC
      EC00E9E9E900E7E7E700E6E6E600E3E3E300E5E5E500ECECEC00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B8C5600004E0000005000000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005000000050
      0000005700000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F3FFFCFC
      FCFF626262FF000000FF000000FF000000FF000000FF201720FFB446B4FF1917
      19FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0101
      01FFA5A5A5FFFFFFFFFFFFFFFFFFBABABAFFA0A0A0FFF5F5F5FFF0F0F0FF0000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE00EAEAEA00E8E8E800E9E9E900EAEAEA00EBEBEB00EBEBEB00ECEC
      EC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00ECECEC00EBEB
      EB00EBEBEB00EAEAEA00E9E9E900E8E8E800E9E9E900EDEDED00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7AE980076673C00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766D
      3E00766D3E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF5F5
      F5FFFFFFFFFF636363FF000000FF000000FF191519FFB356B3FF391A39FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7878
      78FFFFFFFFFFF1F1F1FFF0F0F0FFFBFBFBFFF6F6F6FFEFEFEFFFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F0FFF6F6F1FFFCFCF2FFFFFF
      F3FFF7F8F1FFF2F3EFFFF3F4EFFFF2F3EFFFF7F8F1FFFFFFF3FFFCFCF2FFF6F6
      F1FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF2F3F2FFF6F6F6FFF8F8F8FFFAF9FAFFFEFDFEFFFCFAFCFFF8F5
      F7FFF7F6F7FFFAFAFAFFF8F8F8FFF9F9F9FFFEFDFEFFFAFAFAFFF6F6F6FFF1F1
      F1FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFFFB00B2D8F10064A9
      E800A8D8E70089CAE8003A98E3009BCEE700DFFAF300E6F7F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1F1F1FFFBFBFBFFA5A59FFFA09F99FFCBCAC7FFDDDDDAFFECECEBFFF4F5
      F5FFF7F7F7FFF6F6F7FFF3F3F3FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F0FFFBFAF2FFFAFBF2FFDFE1EEFFA7ABE2FF7D7E
      DBFF5C5FDCFF4B50DBFF4D51DBFF4B50DBFF5C5FDCFF7B7DDCFFA7ABE3FFE2E3
      F0FFFCFCF4FFFBFBF3FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F4FFF8F8
      F8FFFEFBFEFFF8F3F8FFEBE6EAFFC8C0C7FF979297FF7C7B7CFF707670FF565A
      56FF4F4F4EFF606060FFDCDBDCFFC5C6C5FF6F756EFFA4A3A5FFE7E3E7FFFDFB
      FDFFF5F5F5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1FBF8003296E6000064
      DE000A5FCC000F6FD9000070E3000647C30088ABD400D3F8F000D3F0F0000000
      0000000000000000000000000000C4F4F900C5E5F000A8F0F50087D5EC00ABCA
      E500DBF7F200DEF5F300EFFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFEFEFEFFC7C8C7FF6D6E68FF79796FFF78776FFF6E6E66FF85857EFFA7A6
      A0FFC0BFBBFFD5D4D2FFE9E9E7FFF2F2F2FFF4F4F5FFF7F7F7FFF3F3F4FFF2F2
      F2FFF0F0F0FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEFEFF0FFF7F6F2FFFFFFF9FFCACCEAFF6B6EDBFF2429D9FF0205DCFF0000
      DEFF0000E0FF0000E1FF0000E1FF0000E0FF0000DFFF0000DDFF0204DCFF2327
      D8FF6F72DFFFCDCFEDFFFFFFF5FFF6F6F1FFEFEFF0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F2F2FFFDFBFDFFF2ECF1FFD5D1
      D5FFA0A7A0FF657867FF3E5B41FF2D4F2FFF17461BFF0D4312FF094510FF023A
      09FF002500FF000700FF464B48FF3F453FFF001000FF162815FF404C3FFF8182
      81FFECEAECFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9F5FD00239BEB000083
      E500005ACD00006BD800008DEB00003FC2006579CA00F7FFFC00E2F6F4000000
      00000000000000000000C2F6F80046F2FA001C96E0003FD1F20018C7ED000431
      B4007BACD800CCF5ED00C8ECEC00E9F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF5F4F4FFF1F1F1FFFCFC
      FCFFC4C4C3FF282927FF4F4F4AFF8A8981FF818079FF6A6A63FF5C5C55FF5756
      51FF60605AFF6E6E67FF919089FFA6A59FFFBABAB5FFD7D7D3FFE8E7E5FFF2F2
      F2FFF7F8F8FFF9FAFAFFF5F5F5FFF2F2F3FFF1F1F1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFBFBF2FFECEEF3FF7A7FDFFF0C12D9FF0000E1FF0000E6FF0000E4FF0000
      E3FF0000E2FF0000E2FF0000E2FF0000E2FF0000E1FF0000E2FF0000E4FF0000
      E4FF0000E0FF0F12DAFF747ADFFFEEF0F6FFFDFCF3FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF9F8F8FFF8F7F8FF9CA29DFF446646FF2C6C
      32FF176C20FF177220FF1A7925FF1E7F2AFF26872FFF2A8A33FF288632FF217A
      2BFF196D22FF0A3D10FF010703FF012505FF07390DFF052F09FF0A400CFF084A
      0BFF859485FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCF6FD0027A3EC00008A
      E8000065CF00007ADD000093ED000057CF006F8FD80000000000000000000000
      0000000000000000000092F6FE005CFDFF0013AFF10044E0FB0033E6FC000027
      CA006481DD00FBFFFC00E7F8F600E7F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F4F4FFEBEFF0FFFFFFFFFFECEC
      ECFF2F302EFF000100FF61615BFF8B8983FF87857FFF8E8D84FF8B8B83FF8786
      7FFF7E7D77FF72716AFF818079FF807F78FF96968DFF807F78FF888781FFA3A2
      9DFFC0C0BBFFD5D5D2FFE3E3E1FFF1F1F0FFF1F2F2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCFC
      F2FFCFD1EAFF3C41D9FF0000E1FF0000E9FF0000E5FF0000E4FF0000E4FF0000
      E5FF0000E5FF0000E7FF0000E7FF0000E6FF0000E5FF0000E4FF0000E4FF0000
      E4FF0000E4FF0000E7FF0000E0FF3B40DCFFCFD1ECFFFDFDF2FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F1F1FFF8F8F8FFDEDBDDFFBFBEBEFF235928FF14751DFF2D94
      38FF3BA646FF3CAF49FF39B748FF38B646FF37B243FF3BB246FF38B046FF32A0
      3BFF2C9735FF207B28FF0B2C0CFF25922FFF249430FF176220FF105118FF0D6A
      16FF689369FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBF4FD0025A7EF000091
      EB000069D2000082DF00009AED000066D8006F9DE00000000000000000000000
      0000000000000000000091F8FF0058FBFF0019C1F8001EBCEE001AB7EB001792
      EE0058A7F000F7FDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCFCFDFFD6D6D6FF777D7DFFB1B3B2FF5151
      50FF070805FF0F0F0EFF232320FF73786EFF84897DFF83837DFF8D8C85FF9796
      8EFF9B9891FFA19E97FF9D9A93FF92908AFFA1A099FF86857FFF767570FF7372
      6CFF74716BFF7C7974FF8F8E88FFAEADA8FFBBBBB7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0EFFFFEFEF3FFC3C6
      E8FF252ADBFF0000E8FF0000E9FF0000E6FF0000E7FF0000E8FF0000EBFF0000
      EBFF0000E9FF0004EAFF0004EAFF0003EAFF0000E9FF0000EBFF0000E8FF0000
      E7FF0000E6FF0000E5FF0000E8FF0000E7FF282EE0FFC9CCEDFFFCFBF1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF3F4F5FFF6F7F8FFFAFD
      FFFFF9FDFFFFF6FCFFFFE6EBEFFF515152FF292B29FF216727FF2A9634FF37AB
      42FF40BB4DFF42C050FF45C353FF4BC657FF4AC456FF44C554FF41C551FF38B8
      45FF31AB3CFF32AE3DFF37A442FF59E26AFF4CD15CFF2B9236FF196A20FF1072
      19FF729C74FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9F4FD0023ACF1000097
      ED00006DD4000089E300009FEF000078E20074AFEB0000000000000000000000
      000000000000000000008FF4FE0037F2FE0010BAF7000042BF000575D3002EEB
      FF0040E6FD0066E9FC009BF0FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFFBFBFBFFE0E0DFFF6D6C68FF363431FF141412FF0505
      03FF0C0D0CFF131313FF1B1C1BFF414840FF3F4740FF494744FF62665DFF4D51
      4CFF666E6BFF7D7F7AFF93938DFFA0A098FFA3A19BFFACA9A4FFABA9A3FFA6A4
      9FFF9D9B94FF8E8D86FF908F89FFA5A49EFFA4A39DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFEFF0F0FFFCFCF4FFDADAF1FF252D
      DDFF0000EBFF0000EAFF0001E9FF0001EAFF0003EDFF0002EDFF0312E8FF3743
      E7FF7379E8FF8792E6FF8893E8FF8892E6FF6F75E6FF2833E8FF0009EEFF0002
      EAFF0001E9FF0001E9FF0000E8FF0000E9FF0000EAFF2A30E3FFD6D8EFFFFBFA
      F1FFEFEFF0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFEFEFEFFFF8F8F9FFF6F9FCFFE8EBF0FFD3CFD2FFB8AC
      A8FFA3948FFF9F8479FF7A614DFF07290CFF000E00FF1F7526FF3CBD48FF4CD2
      5BFF66E776FF73E981FF76E984FF7AEA88FF79EC8AFF74ED87FF6DED80FF5BE3
      6DFF49D458FF47D357FF5BE96EFF72EE87FF62DB75FF40BE4FFF269230FF1285
      1CFF88AF8BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7F3FD0021B0F200009F
      EF000077D8000092E70000A3F0000088EB0077BEF30000000000000000000000
      000000000000000000008EECFC001EE6FD0008ADF400002FB7000076D60004BD
      FB0016C5F70025D5FA003BE1FB006FE8FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFEFEFEFFFF8F8F8FFDEDEDDFF6B6B66FF4D4D46FF21201FFF000000FF0403
      01FF131410FF565F55FF6D7367FF4C4E4DFF434B46FF373732FF171715FF1417
      17FF1E2626FF242928FF393F3CFF4A4E4AFF565954FF7A837AFF929790FFA4A2
      9DFFB3B0A7FFBAB6A9FFB9B5ABFFAEADA7FFA9A8A3FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF5F4F0FFF1F2F2FF4552E2FF0000
      ECFF0003ECFF0004EBFF0003EBFF0008F0FF000EECFF4A57E8FFBABDECFFECED
      EFFFFEFEF3FFFFFEF1FFFEFDF1FFFFFEF1FFFFFFF3FFCAC9EFFF0C1EEAFF0004
      EEFF0003EBFF0004EBFF0003EBFF0002EAFF0001EAFF0000EAFF454BE4FFF8F8
      F6FFF4F4F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F1FFFEFEFEFFD6D6DBFF9F8878FF9D6D33FF975718FF934B
      00FF985000FFAA5A00FF914B00FF144911FF1B7628FF309F3BFF4FD460FF64E6
      76FF82F491FF8DF79BFF90F59CFF92F59FFF8DF6A0FF93F9A5FF95FBA3FF82F4
      93FF6DE87FFF59E06AFF57E069FF5EE26FFF59DB6BFF40C94EFF2BAA37FF148D
      1EFFA2BCA3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5F3FD001EB3F40000A4
      F100007DDD00009AEB0000A8F200008FEF007AC6F70000000000000000000000
      0000000000000000000090E8FC000DD9FB0002A4F2000034B900017BD60000BD
      FA0000A6F30001B0F4000EC2F6004ADCFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFEFEF
      EFFFF6F6F6FFEEEEEEFF706F6BFF4E4C47FF5C5B56FF242321FF020200FF1010
      0EFF5A6161FF586255FF45483BFF53554FFF636E5EFF373E36FF222C2AFF2A32
      2CFF2F342EFF2C2F28FF121212FF121313FF101412FF161F1BFF263027FF2A2D
      27FF4C5B77FF6A7697FF7C8795FF9B9A95FFACAAA4FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFFEFDF2FF8E93E9FF0008EAFF0006
      EFFF0006EDFF0005EEFF000DF2FF061BEBFF8D93ECFFF9F9F5FFFFFFF2FFF4F4
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F0FFFCFAF2FF838DEFFF0318F0FF0006
      F0FF0007EFFF0007EEFF0006EEFF0006EDFF0005EBFF0003EEFF0000E9FF8C92
      ECFFFFFFF4FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F6F6FFE0E8ECFF89685EFF8C4100FFC17800FFC68400FFC88B
      00FFC88C01FFC98C02FFB77600FF27470BFF1E932FFF38B344FF57D767FF6BE8
      7BFF82F392FF8EF9A0FF92F59FFF91F59EFF92F8A1FF97F9A9FF9DFAAAFF97FB
      A5FF8CF39AFF79EC86FF60DF71FF5DDA6CFF54D463FF3FC74BFF26B232FF1589
      1CFFC2CCC2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2F2FC001AB4F50000A8
      F3000085E00000A1EE0000AEF3000090EF007CC6F70000000000000000000000
      0000000000000000000092E2FB0001CDFA00009EF1000030B8000C86D90038E8
      FF0024CCF70006B0F500009DF3003DC7F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFEFEFEFFFF4F4
      F4FFFAFAFAFFA0A09CFF514F4AFF605E58FF605E58FF1D1D1BFF040504FF7881
      8CFF99A8BCFF293243FF344975FF3D4550FF5D605EFF53595EFF202625FF2931
      30FF303934FF212422FF1F2520FF232C25FF223129FF1B241FFF0E1117FF0711
      1EFF02142FFF021437FF00041AFF7A7978FFECEBE9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F6F0FFDEDEF0FF2438E8FF0006F2FF0007
      EFFF0006F0FF0010F3FF0724EEFF9EA2F0FFFFFFF7FFF4F4F0FFEFEFF0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF4F4EFFFFBF9F2FF8894F2FF0529F3FF000FF4FF0007
      F1FF0009F1FF0009F0FF0008F0FF0007EFFF0007EFFF0006EDFF0001F0FF1D2B
      EAFFDDDFF4FFF7F7F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0A9A7FF2D282EFF793E0CFFC37A00FFD29F03FFD7A802FFDAAE
      02FFDDB302FFDCAF02FFDAA201FF373401FF0E6C20FF3CBF49FF5CD86DFF70E6
      7FFF84F293FF92F79FFF94F8A2FF95F8A3FF95F9A6FF9BFAAAFF9AF9ABFF99FA
      A9FF96F9A5FF90F89FFF80EF8FFF77E585FF63DF72FF42D150FF13A11DFF2A7B
      2EFFE7E6E8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4F3FD0019B4F50000A8
      F300008BE30000A6F10000B0F5000091EF007FC7F70000000000000000000000
      0000000000000000000093DFFB0000C2F7000096ED000061D30009A3EA0032E1
      FE004BE5FB004DE7FC002FCCF9003DCFF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF3F3F3FFFBFB
      FBFFA8A7A4FF585752FF615F5AFF63625CFF60605AFF3F3E3AFF2C2C29FF3E42
      49FF20252CFF283956FF425984FF636B78FF9FB4D0FF6C7A8CFF2B3855FF4E5A
      70FF606868FF656E6EFF232824FF2A312CFF202620FF1C2223FF112347FF0825
      5DFF001A45FF060806FF686661FFEBEBEBFFF9F9F9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEF2FF8D95EDFF0013EFFF0008F2FF0007
      F1FF000DF3FF0022F3FF808DEEFFFFFFF4FFF3F3F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF4F4F0FFFFFEF7FF8998F3FF0230F5FF0013F6FF000AF4FF000C
      F3FF000CF3FF000AF3FF0007F2FF0007F1FF0008F1FF0008F0FF0007F1FF0004
      EFFF8D93F1FFFFFEF4FFF0F0EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AC9490FF2D0000FF824700FFD59B02FFEED005FFF6DF06FFF5DC
      05FFF4DC06FFF3DA03FFFDE405FF6B5500FF023613FF38C149FF55D465FF74E6
      82FF84EC90FF92F59FFF97F7A6FF9EF8ACFFA3FAAEFFA2F9B3FFA2F7B3FFA3FA
      B5FFA3FAB1FF9BFAA7FF93F8A3FF85EF93FF66EA75FF38CE47FF06780EFF6A8A
      6CFFFBF7FBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBEBFA0010B0F40000A9
      F40000A1EF0000ACF40000AFF5000091F10080C8F70000000000000000000000
      000000000000000000008DDCFA0000B9F6000093ED0000A0F2000EB8F5000798
      EE0003ADF60012C0F7002ED6FB003DE0FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F1FFF5F5F5FFAAAA
      A7FF5E5D57FF63625CFF66645FFF64625EFF696962FF83837AFF7F7E77FF7370
      6BFF63615BFF585853FF4B4841FF444647FF313A45FF1E2229FF2B3854FF3E45
      4AFF5B675CFF51655DFF4C654EFF596159FF847F88FF46434CFF3A3743FF3032
      40FF222730FF9F9F9EFFF8F8F7FFF6F6F6FFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F1EFFF3F55ECFF000FF4FF000AF3FF0009
      F3FF001CF7FF3759F0FFEDEBF2FFF6F6EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF4F3EFFFFFFBF4FF8A9BF7FF0038F6FF0019F9FF000CF6FF000FF6FF000E
      F5FF000CF5FF0011F6FF0019F6FF0018F6FF000EF3FF0009F2FF0009F1FF0004
      F2FF3F51F0FFEEEEF2FFF4F4F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBAEB1FF853200FFAF6200FFD3A203FFEED103FFF7DF03FFFAE3
      03FFF9E104FFF5DD03FFFFEC04FFA48C01FF031706FF2DAC3DFF4CD15BFF6ADF
      78FF86ED93FF93F49EFFA3F9ADFFA4FAAEFF90FA9FFF95F9A5FFA9FBBBFFB2FE
      C3FFA9FBB5FF9EFCA7FF96F8A3FF7CEF8CFF57E967FF1FB62DFF18681EFFB4BA
      B6FFFAF8FAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBF3FC0040A6EC0000A6F20000AF
      F60000B0F60000AFF50000AEF5000093F10085CAF70000000000000000000000
      000000000000000000008CDAF90000B1F4000091EE0000A2F20005BAF800037C
      E2001269D2001DB4F00033C5F80088DEF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFCCCCCBFF6362
      5CFF686761FF6A6A63FF6A6962FF696762FF7E7D76FF8E8F85FF94928BFF9B9A
      93FF9F9E97FFA09F96FF9E9D95FF95948CFF8D8B81FF84817AFF6D6B63FF5757
      51FF3D3E39FF222320FF252A24FF262626FF312D32FF312C33FF524B56FF2724
      25FFB4B2AFFFFFFFFFFFF3F3F3FFEFEFEFFFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D7EFFF0E34EFFF0012F6FF000BF5FF0011
      F7FF0130F6FF9BA8F2FFFFFEF1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4
      EFFFFAF5F2FF899BF5FF0045F8FF0023FAFF0010F8FF0013F8FF0013F8FF000D
      F7FF0018F9FF0032F8FF4968F6FF415DF4FF0025F7FF000FF5FF000BF4FF000C
      F5FF0F29F2FFCCCEF4FFF8F8F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3D2D7FF7A350EFFB15E00FFD09C03FFE5C003FFECCD03FFF2D6
      03FFF4D903FFF2D803FFF6DB02FFEDCE02FF665800FF157226FF43D655FF48C7
      55FF67E176FF6BF07FFF60F876FF44F95CFF50F96CFF6DFA85FF7BFB91FF9FFC
      AEFF99F7A4FF88F596FF95F4A2FF68EB79FF3EDB4FFF007F0AFF6E8A6FFFFBF5
      FBFFF3F2F3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004FC5F700009EF20000ACF40000AF
      F50000AEF50000AEF50000AFF5000088EA0084C2F10000000000000000000000
      000000000000000000008CD8F90000ABF40000A4F10000A4F20019CCFB0038D9
      F400083FBD006AB3E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDCDBFF7B7A75FF6B69
      64FF6E6D68FF6E6D68FF5C5B56FF454341FF41403DFF494843FF65635DFF7A7A
      72FF83837BFF8D8C84FF96948EFFA0A09AFFA8A6A0FFAEADA7FFB5B4AEFFB6B5
      AFFFB3B2ABFFAAA8A2FF94928EFF7B7A74FF61615CFF494946FF242422FF2728
      25FFD9D9D7FFF9F9F9FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADB6EEFF0028F5FF0012F8FF000CF7FF001D
      F9FF1A52F5FFDBDAF4FFF7F7F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F3EFFFFBF6
      F2FF889EF7FF0352FAFF0030FAFF001BF9FF001EF9FF001DF9FF0018F9FF0025
      FAFF0035F8FF6E84F4FFFAF7F4FFDEDEF4FF1947F5FF0018F9FF000BF6FF000C
      F6FF011EF5FF9DA9F2FFFDFBF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDF1F4FF644342FF8E3D00FFC68803FFDBAE03FFE3BD03FFECCE
      03FFF2D603FFF2D703FFF1D303FFFADC03FFDABA01FF225005FF2CB241FF38CE
      46FF20BE2EFF3CED51FF5AF76EFF96FCA6FFB4FEC6FF80FE99FF69FD83FF74FA
      8BFF72FA89FF51F469FF56E767FF42DD52FF11A71EFF2B5E2EFFE0DCE0FFF9F8
      F9FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008EDAFA0000A6F30000AAF30002ADF40000AE
      F50000AEF50000AFF60000B1F500006FDB0097B7E80000000000000000000000
      0000000000000000000094DDFB0000A7F40000AEF50000AAF40013BCF60050FA
      FF000989E4006297E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000777671FF6A6A64FF7270
      6AFF74726CFF676560FF3D3C38FF32312EFF3D3C39FF5D5C58FF71706AFF8B8B
      84FF898881FF87877FFF898881FF8E8D87FF95958DFF9B9A94FFA2A19BFFACAB
      A5FFB4B3ADFFBCB9B4FFC3C1BBFFC7C6C0FFC3C1BCFFB7B6B0FFACABA5FFA4A2
      9CFFE0DFDEFFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F9FECFF0027F7FF0012F8FF0012F8FF002E
      FAFF4676F7FFEEECF2FFF4F3F0FFF0F0F0FFF0F0F0FFF4F4F0FFFFFAF6FF899F
      F8FF025EFBFF0040FCFF002BFAFF002EFAFF002DFAFF0027F9FF0036FBFF0043
      FAFF6F86F6FFF4F1F2FFFBF9EFFFF3F1F1FF4C6FF7FF0020F9FF000FF7FF000E
      F7FF001BF7FF8390F1FFFFFDF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFDFEFF76727DFF713100FFBE7501FFD5A403FFE1BB03FFE9C8
      03FFE4B403FFE9BE03FFEFCE03FFECCF03FFF6CE03FF6C7800FF0B6C23FF2FC7
      41FF0CAB17FF70F77FFFBBFFCAFFBDFFC8FFB0FFBAFF77FE8CFF4AFC63FF72FA
      84FF71FD89FF4BFC66FF33E947FF12B51FFF005804FF9A9999FFFFFFFFFFEFEF
      EFFFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDF5FD001DB7F50009A6F10053C0F00011B2F50000AB
      F40000AEF50000B0F60000B2F6000058CB005B9ADD0073DAFD0044B3F500358E
      E3004896EA008AB6ED007ACEF50005AEF60000AAF50000ABF50003AEF50027DF
      FB0005AEF500399EF000F5FCFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696A60FF71716AFF7573
      6DFF6C6B64FF454440FF373633FF4B4A46FF6C6A65FF7E7D77FF999891FFBAB9
      B2FFB6B5B0FFB4B4ADFFB4B2ACFFB3B2AAFFB1B0A9FFAFAEA7FFADACA5FFADAC
      A6FFAEADA7FFB1AFA9FFB5B3AEFFBBBAB4FFB8B6B1FFAAA9A3FFB1B0A9FFDCDA
      D5FFF3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008795ECFF002FF8FF001AF8FF001DF9FF003B
      FAFF6A89F8FFFAF7F3FFF1F1EFFFF0F0F0FFF4F3EFFFFFF8F4FF8AA2FAFF0066
      FBFF0050FEFF003BFCFF003FFCFF003FFCFF003AFCFF004AFDFF004FFBFF6E87
      F8FFF7F3F3FFF6F6EFFFF1F0F0FFFBF8F2FF6883F8FF002DFAFF0016F8FF0013
      F8FF001EF8FF7786F6FFFDFCF2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FFD3D9E0FF6B553CFFAE6900FFB46B03FFC37F03FFCE8A
      03FFD19505FFDEB004FFDDAB03FFE3B703FFEABC03FFC99E02FF374703FF0A5E
      17FF0A8F13FF329D39FF2CA331FF0D9D12FF089F0CFF0DB115FF0DB316FF19AA
      22FF1CAB26FF1CAD28FF1A9E24FF134D16FF818581FFF4F2F4FFF5F4F5FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9E5FA0000BFF9001693E10083BAE50012BEF80000AA
      F40000ADF50000B1F60000AEF4000052C400008BE20000AEF9000082EE00004D
      CF000062DB000048CA001275D40003B4F80007AFF30001ACF40000A3F30001BA
      F40000ACF400259BF200E3F5FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006F6D63FF74756DFF6A69
      63FF464541FF343330FF53524DFF76746EFF898880FFA09F98FFCDCCC5FFD8D7
      D1FFDBD7D0FFDBD8CFFFDBD7D0FFDAD8D3FFDAD8D2FFD9D8D1FFD7D6D0FFD6D4
      D0FFD6D4CFFFD0CECAFFC8C7C3FFC7C4BFFFBAB8B1FFBAB8B0FFE7E6E3FFF7F7
      F6FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008897EEFF003AFAFF0026FAFF002CFBFF0049
      FBFF6E8EF8FFFBF7F3FFF0F0EFFFF4F4EFFFFAF3F2FF89A3F8FF0070FCFF005F
      FEFF0048FDFF004DFDFF004DFDFF0049FDFF0059FEFF0060FCFF6E8AF9FFFCF7
      F5FFF6F6F0FFEFF0F0FFF0F0EFFFFEFBF2FF718CF9FF003BFBFF0022FAFF001D
      F9FF0025F9FF6B81F8FFFBF9F2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFFEFFFFFFC0C4C8FF785015FF7C1800FF9A4603FFDDAA
      06FFE7B808FFE7B205FFDA9202FFDCA103FFD89F03FFCE7702FF853200FF230D
      0BFF28552DFF004700FF002100FF001500FF002200FF063E09FF0C4110FF0124
      05FF002E00FF004400FF344C34FFC2BAC2FFFFFCFFFFF5F5F5FFEFEFEFFFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEF0FC000DD1FB0004A6E9001F65C90008C5F80000BB
      F60000AEF30000AEF60000A6F000006ED30000AFF500009DF3001790EE0067CC
      F30027E7FC000073D2000052C80011BBF50076D9E40037C2EE00009CF000009D
      EF0000A2F4001F96F000D5EEFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000736F66FF6E6C65FF4543
      3FFF3A3835FF4D4C47FF73726CFF7F7E77FF9C9B92FFC3C2BAFFA4A59EFF9090
      8BFFA8AFB1FFB9C0C4FFC8CBCBFFD4D3D2FFDCDAD5FFE1E0DBFFE4E2E0FFE9E8
      E3FFEBE8E4FFE9E7E6FFE9E8E6FFE7E5E4FFE1E1DDFFF2F2F0FFF7F8F8FFEFEF
      EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000889DEFFF0048FBFF0036FCFF003CFCFF0056
      FDFF5E8DFBFFF5F1F2FFF6F5EEFFFBF3F2FF88A5F9FF037BFDFF006AFFFF0055
      FFFF005AFFFF005AFFFF0056FFFF0068FFFF006DFDFF6E8FFAFFF5F0F3FFF6F5
      EEFFEFEFF0FFF0F0F0FFF2F2F0FFF7F3F1FF5E85FBFF0046FDFF0032FBFF002A
      FAFF0033FBFF7E90F6FFFFFCF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF1F1F1FFFEFFFFFF8A8C8BFF4B0B00FF641000FFB040
      02FFCB4202FFB83B02FFB35502FFC26E03FFD66703FF922900FF301A0DFF9193
      92FFEAD2EBFF7B877DFF032207FF146319FF2D9428FF2E932EFF3DAB4DFF22A5
      33FF004101FF555354FFEEE3EEFFFFFFFFFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000055DBFA0004D0F8000186DD0009C2F50009CF
      F90003C1F70000B2F50000A5F2000093E80000B1F600008EF0005AB4F4000000
      00007EEEFF0000A7EC000070D80020B9F100AFE9EB0065D0F2000098EC000099
      EB0000A5F6001693EF00C6E8FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000656259FF423F3AFF3332
      2FFF4D4C48FF696762FF83837DFF898982FFAAABA3FFB5ADACFF7E7075FF6263
      60FF647B98FF6B88ACFF7B95B3FF939698FF9D9B93FFA5A49DFFC4C1C1FFCCC9
      DDFFD9DBE3FFE2E4E6FFE9E7E6FFE8E7E5FFF3F3F3FFF3F3F3FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099AEF2FF0058FDFF0049FDFF0048FCFF0062
      FFFF3081FCFFF0EAF4FFFFFCF6FF89A6FAFF0284FDFF0077FFFF0061FFFF0065
      FFFF0066FFFF0063FFFF0077FFFF0079FEFF6F92FAFFF3EEF3FFF7F5EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF5F4F0FFEBE7F3FF3378FCFF0054FEFF0040FCFF003C
      FCFF0047FCFF89A0F5FFFFFBEFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF6F6F5FFE5E9EBFF7D7774FF482528FF530D
      04FF5E2602FF692E02FF6C3A02FF562801FF5E1901FF5D3129FF9996A2FFFBB0
      FEFFFDC8FBFF6DA170FF1B861EFF29A12BFF31A930FF28972CFF24872EFF1B8B
      24FF15991BFF3D9D43FFCDCACDFFFFFAFFFFEFF0EFFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4EAFC0021DBFA0029E3FD0021D8F9001BD7
      FA0012D2F9000BCBF80006BDF70002BAF60000AFF400008EF0008ECEF8000000
      0000CFF0FC0006ADF3000091E8001BB1F300D2F4F7006ED2F7000092E9000095
      E70000A8F7001092F100BCE4FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A7A3FF797671FF4A4C
      49FF595B56FF7B7B76FF878680FF989791FFC5C5BDFFB5A4A9FF98878CFF7F89
      8EFF6E88ABFF6C8AAFFF8393A4FF85837CFF83827BFF9D9994FFADAEAAFF8C98
      96FF90ACA2FFA9ADB9FFDDCFD7FFECEDEBFFF5F4F5FFF0F1F1FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C1C6F4FF0365FCFF005BFEFF0054FEFF0068
      FFFF087DFCFFA3AEFCFF8BA9FCFF008DFDFF0080FFFF006BFFFF0071FFFF0072
      FFFF006FFFFF0083FFFF0085FEFF6E93FCFFF7F0F3FFF6F5EFFFEFF0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFFBF9EEFFC9CCF7FF0A6CFEFF005EFEFF004CFDFF004C
      FDFF0655FDFFB2BEF7FFFBF9EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFEFEFEFFFF7F6F6FFFFFFFFFFA9ADB1FF5E42
      12FF7F5200FF7E4B03FF733C03FF6C3001FF552402FF848A79FFFFA2FFFFFF71
      FFFF84B084FF21AA24FF2AB931FF2ABB32FF32C33BFF35C741FF30C03BFF2BB1
      33FF37AE3BFF37BC3AFF489B4FFFDDD9DDFFF7F5F6FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFF005CDBFA003BF1FE0053F5FF0045EF
      FD0038EAFD002DE6FD0025E5FD0018E9FF0000A3EF000878E400C9EBFD000000
      0000D2F2FC000FAEF300009EEF0011ACF300C5F0FB005ACBF800009EEF0000A4
      EF00009DF1000F8AEB00BAE2FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFBFFFDFDFCFFACAC
      A9FF6B6A65FFA2A19CFF84837DFFB9B8B1FFD2CFC8FFCFCCC6FFCFCFC7FFCCCC
      C8FFBFC3C4FFBBC2C6FFC2C0BDFFAEACA5FFACAAA2FFBDBEBDFF95A2A8FF9A9D
      64FF919E63FF9EA3A7FFE7E2E6FFF7F7F6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E1F2FF2074FAFF006DFFFF0061FFFF0067
      FFFF0086FFFF038AFEFF0093FEFF008CFFFF0075FFFF007CFFFF007DFFFF007B
      FFFF0090FFFF0096FFFF6E9AFCFFFCF3F5FFF6F6EFFFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF1F1EFFFFFF9F3FF6697FAFF0075FFFF005FFFFF0057FEFF005C
      FFFF1F69FDFFDFDDF8FFF7F6EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0EFFFF9FAFCFFC1C3C3FF79592DFF8541
      00FF803902FF873F03FF823D03FF7B3803FF975F00FF89620CFFC1BAC5FFDEE4
      E1FF35A13AFF1DB424FF1FB628FF32C53BFF5CD967FF68DB75FF51D25FFF32C0
      3DFF2FBE3AFF47CE52FF2EC039FF80AD82FFFFF7FFFFF1F1F1FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDF1FD003BD2F60037DAF6003AE5
      FA002FDDF90029DAF9001DD1F500079CE3000048CA004B8BDF00000000000000
      0000D7F3FC0014B0F40000AAF30005AEF40099E1FB004CBEF600009FF20001BB
      F800009BEA001170DC00BFE0F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFFAFAFBFFCDCD
      CAFF9A9993FFA1A09AFF8C8C86FFD6D4CFFFDEDDD8FFD4D3CDFFD4D3CDFFD7D5
      CFFFDEDAD5FFDFDBD3FFC4C2BAFFE1E0DCFFF1EFEDFFE5E4E4FFD4D3D4FFCFC1
      B6FFC6B6A6FFD1CCC5FFF6F8F7FFF3F3F3FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF4F1FF5F92FAFF007CFEFF006EFFFF0073
      FFFF0078FFFF008AFFFF0088FFFF0080FFFF0085FFFF0089FFFF0087FFFF009C
      FFFF00AFFFFF6EA9FDFFF5EDF3FFF6F5EEFFEFEFF0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEFEFEFFFFFFAF0FFC7CEFBFF0A84FFFF007FFFFF0068FFFF0064FFFF0068
      FEFF6190FDFFF8F5F4FFF2F1EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF2F2F2FFF4F7F8FF8E795BFF723400FF7F31
      02FF904803FFA86D03FFA66703FF8A3F03FF945102FFAC7A00FF9E7D69FFA7C9
      B5FF259E2CFF25B72CFF26BE2EFF3DCB49FF7DE48BFF96EAA4FF70DF84FF41C7
      50FF2BB535FF31BD3BFF3ACC42FF57A45BFFE8DFE8FFF5F4F5FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCE7F9005698DC002A70
      CA002871CB001B69C800306DC9004D6AC8007794DA00E2EFFA00000000000000
      0000E1F6FD001CC4F60000C5F7000ACEF9009CEDFC006DDDFB0014CAFA0029EB
      FF00007FDB00144CC700D2E6F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F2FFECECECFFB3B2
      ADFFA8A6A0FF9E9D96FFA8A7A1FFC6C4BFFF8D8E8CFFD9D8D3FFE1DFDBFFD5D4
      CCFFD8D9CDFFD6D5D1FF9B9A94FFBCBBB8FFD3D2D1FFE3E1DFFFF0EEEBFFF4F5
      F6FFEEEEEFFFEEEDEBFFF2F2F2FFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDF9F0FFB3BDF8FF0583FEFF0087FFFF007C
      FFFF0084FFFF0086FFFF008AFFFF0090FFFF0093FFFF0093FFFF00A8FFFF00BA
      FFFF6FB3FDFFF3ECF3FFF7F5EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEF
      F0FFFDF9F1FFEAE7FBFF3B99FEFF0098FFFF007BFFFF0073FFFF0079FFFF0277
      FEFFB5C2FBFFFCF9F1FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF6F7F8FFE0DFDBFF834A19FF883C00FF7A2C
      03FFAD6F03FFD9B303FFDCB903FFA76803FF8C4403FF9D5E01FF7F4713FF3266
      40FF29B733FF23AF2AFF1BAF26FF44CD53FF97EDA4FFABFAC1FF90F0A9FF5DD6
      6FFF3BC347FF32B93BFF2ABE31FF319537FFB5B8B5FFF9F7F9FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2EFF8009AC0
      EC00428ADD000A63CE002F64C800AABCE6000000000000000000000000000000
      0000F8FCFE0061DCFA0008D6F80029DBF7008CD8F10066D0EE0022CCEE001792
      D9000726B1005E7ED10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F3FFE8E7E6FFADAB
      A6FFACABA5FF9E9D98FF7B7B77FF9C9B96FF939490FFD5D4D2FFE7E6E2FFEBEA
      E4FFEBECDDFFC9C9C3FFB0AFABFF9A938FFF4C4946FFB3B3B2FFF0EEECFFCCCA
      C7FFEEEDEBFFF7F7F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F2EFFFF5EDF4FF4D95FDFF009DFFFF008A
      FFFF0090FFFF0095FFFF0099FFFF009DFFFF009FFFFF00ADFFFF03C2FFFF6FB7
      FEFFF7EDF3FFF6F4EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1EFFFFFF7
      EEFFE8E6FAFF4CADFFFF00ACFFFF0090FFFF0084FFFF0080FFFF0089FFFF4791
      FEFFF6F1F6FFF3F2EFFFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF8FAFBFFC6BEC2FF79420BFF7D3700FF6C17
      03FFC28A03FFF3DD02FFEDD403FFBC8503FFA36303FF9A5603FF622100FF0533
      03FF29B833FF119B1AFF19B125FF46D35DFF82EFA2FF82F8A4FF7CEB99FF67D9
      7AFF45CB52FF38C243FF27BC2EFF248028FFB0B3B0FFF9F8F9FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009BD8F7000C84
      E6000074E1000078E2000062D5001354C700B1CBED0000000000000000000000
      000000000000E5F7FD0081DAF60063B3E6003C8DD600448BD4006B8ED500848F
      D400A2AEDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F2FFECEBEBFFAEAD
      A8FFB0AEA8FF989792FF0D0C0BFF171111FF2C2727FF363131FF514F4DFF716F
      6EFF989897FFBAB9B7FFC8C6C4FF8D8580FF514E4CFFE0DEDEFFE9E5E5FFB6B4
      B0FFF5F4F3FFF5F5F5FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFFDF9F1FFC5CBFCFF0C97FEFF00AF
      FFFF009AFFFF00A1FFFF00A6FFFF00A9FFFF00AAFFFF00C8FFFF35B6FFFFFFED
      FAFFFFF9EEFFF5F2EFFFF5F2EFFFF5F2EFFFF7F3EFFFFEF5F0FFFBF2F5FFB7CF
      F9FF32B1FFFF00BBFFFF00A8FFFF0095FFFF0091FFFF009BFFFF0C92FFFFCDD8
      FFFFFDFAF2FFEFEFF0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF8FAFAFFD1CCD0FF6C310FFF601200FF7524
      03FFD2A603FFE9CD03FFD6AA03FFB87D03FFA46703FF9D5901FF67270EFF2F4F
      32FF19A723FF0A9B15FF26BB37FF67E180FF6FE994FF55E47BFF61DD7CFF64DB
      74FF45CD4FFF3BC544FF24BB2CFF358039FFD2CED2FFF7F6F7FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5F9FE002FAAF0000089
      E8000089E700007CE200007CE200006AD8004B99E00000000000000000000000
      00000000000000000000000000008EDCF7003AB4EF0043B6EF0092E8FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F1FFF2F2F2FFCBCB
      C7FFB7B5B0FF87847FFF08130DFF042818FF041F13FF02150BFF020C05FF0000
      00FF3A3A38FFC6C5C0FFE1DFDCFFCFCDCBFFC2C0BEFFEDE7E7FFEAE6E5FFE6E6
      E4FFF7F7F6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF1F0EFFFFFF8F4FF8CB3FFFF00B0
      FFFF00BCFFFF00ABFFFF00B1FFFF00B5FFFF00B6FFFF01CBFFFF28D1FFFF97C8
      FEFFD5E1F8FFE2E4F3FFE3E5F4FFE3E4F3FFD7E2F7FFA7D4FCFF5DC4FFFF08C0
      FFFF00C8FFFF00B3FFFF00A7FFFF00A1FFFF00A9FFFF00A4FFFF8EBDFDFFFFFB
      F4FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF4F5F5FFEBEDEEFF5E403DFF490000FFC28E
      05FFFFF206FFBD8202FF9D5603FFB07703FFA16303FF894800FF71504BFFB5B9
      BBFF19891FFF16BA26FF89ED98FFE3FFEAFF7EE897FF1BBE35FF45D158FF5AE0
      66FF3BC141FF3AC241FF1A9E20FF6E896FFFFBF5FAFFF3F3F3FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEF1FC0015ACF200009D
      EF000097EB00008AE600007BE200007FE30029A9EB00E5F6FC00000000000000
      0000000000000000000078D1F40000A8ED000088E4000064DA00008AE200569E
      DB00EFECF6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF3F3F3FFF6F6
      F5FFC8C6C1FF64625FFF000804FF052C19FF053F21FF064525FF063F23FF0412
      0CFF959291FFE4E3DDFFE3E1DDFFD4D3D0FFBBB8B5FFEFE8E9FFECE8E8FFF2F2
      F1FFF4F4F5FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF4F3EFFFFAF1F5FF6BAC
      FDFF00C0FFFF00CBFFFF00BAFFFF00C0FFFF00C4FFFF00C5FFFF0EDCFFFF21D8
      FFFF48C7FFFF57CFFFFF53D5FFFF4CD0FFFF38CAFFFF0DD4FFFF00D4FFFF00CE
      FFFF00BDFFFF00B7FFFF00B2FFFF00BCFFFF00B4FFFF71B9FEFFF5F0F2FFF3F1
      EEFFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0EFEFFFFCFCFCFFB6BCC1FF432C27FFD0A3
      00FFBD9A05FF4D1501FF894903FFA36C03FF894D00FF503106FFB0B2B7FFFFFF
      FFFF587558FF25B637FFE0FFEEFFE9FFF1FF3DB949FF079F10FF3ED348FF42D5
      4BFF34B53BFF38BF40FF226025FFD3CFD3FFFBFAFBFFEFEFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F8FE0029B7F60000A4
      F20000A4F0000099EC00008CE6000085E7003ABEF400F0FCFE00000000000000
      000000000000C4E3F80020BAF10014BEF30008A1EA00007BE0000688E5000068
      C900989BD7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFFDFD
      FDFFD6D5D0FF5B5B56FF22211FFF201C1DFF131111FF0A0A0AFF000602FF0F12
      10FFC2C1BDFFE2E1DBFFDFDDD9FFC8C7C1FFC8C3BEFFE5DEDCFFE8E6E4FFF6F7
      F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFEFF0F0FFF6F4EFFFF1EA
      F1FF76B7FDFF0BCBFFFF07DCFFFF00CEFFFF00CEFFFF00D2FFFF00D2FFFF01DB
      FFFF0CE0FFFF0BE8FFFF08EAFFFF06E7FFFF05DEFFFF00D8FFFF00CFFFFF00CA
      FFFF00C6FFFF00C5FFFF00D0FFFF00C6FFFF75C2FEFFF4EFF2FFF6F3EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFFEFFFFFFA0A5A8FF603A
      0FFF571200FF572200FF9C6700FF965F00FF582D00FF6F6B6DFFF6F9F9FFFDFD
      FDFFC0BABFFF206E29FF81E497FF6CE57EFF008706FF22B12AFF46DC4DFF3DD6
      45FF28A22EFF15691AFF79837AFFFDFAFDFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007AD4F90000A1
      F30000A9F30000A3F0000093EC000398EC009CDFFA0000000000000000000000
      00000000000092CAF2005BCFF50074E6FD0018B6F1000092E6000FA4ED000267
      CE006A80D1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF1F1F1FFE9E9
      E9FFD5D4D2FFB2B1ADFF757570FF726E65FF605B53FF4F4D4AFF4F4C4AFF7371
      6DFFC9C8BFFFCCCAC3FFCDCCC5FFBFBDB7FFC7C6BFFFD6D5CFFFE9E9E5FFF3F3
      F4FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFEFF0F0FFF6F3
      EFFFFDF4F5FF9ECEFFFF37CBFFFF28E6FFFF1AE6FFFF00E0FFFF00E0FFFF00E1
      FFFF00E0FFFF00E0FFFF00DFFFFF00E0FFFF00DEFFFF00DCFFFF00DBFFFF00DA
      FFFF00DEFFFF00DEFFFF1CCCFFFF9CD5FFFFFEF6F7FFF5F2EEFFEFF0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFFAFCFBFFB9BA
      C3FF8A7772FF94744DFF896E49FF908272FFB2ADAAFFEFF0F3FFF4F4F4FFF0F0
      F0FFFCFAFCFFB3B2B3FF417544FF13881CFF27A734FF34BB3FFF30BA3AFF32AC
      38FF467F49FF8A8E89FFF1EFF1FFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000059C9
      F8000DA8F3000AA5F30021AEF2009FDFF9000000000000000000000000000000
      00000000000098C6F0005ABEF000CCFFFF0040D4F80009ADEC0015B4F000005B
      D10086ACE4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F5FFE1E1E1FF3A39
      39FF1A1919FF252424FF10110FFF191814FF181712FF272624FFC6C4C0FFECEA
      E6FFD2D0CCFFCBC9C4FFC8C5BFFFBBBAB3FFB8B7B0FFDDDBD6FFF4F4F4FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF3F2EFFFFFF7F4FFCFE1FAFF7BCFFEFF5CDEFFFF55ECFFFF44F3FFFF25F4
      FFFF19F0FFFF0EF0FFFF0CF0FFFF0BEFFFFF12EEFFFF14F0FFFF17F0FFFF18EA
      FFFF1EDFFFFF63D7FFFFD1E5F9FFFFF8F4FFF3F1F0FFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFFCFD
      FDFFF8FCFEFFE8ECF2FFE7EAF1FFF6F9FEFFFCFDFEFFF3F3F3FFEFEFEFFFF0F0
      F0FFF0F1F0FFFCFAFCFFF0E7EFFFC5C3C4FF99AC9AFF83A785FF87A38AFFAFB5
      AFFFEAE4EAFFFEFCFEFFF4F4F4FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C4F0FC00B5ECFD0000000000000000000000000000000000000000000000
      000000000000E1ECFA00489EE7004DBEF1002BCBF6000DB1F0000088EC001881
      E400D4EAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F6FFDEDEDDFF201F
      1EFF080902FF11110AFF050503FF040503FF000000FF1E1D1BFFDAD9D9FFFFFF
      FFFFF7F7F7FFF3F2F2FFF0F0EFFFEEEEECFFEAE9E7FFF2F2F1FFF2F2F2FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0EFFFF9F4EFFFF4F0F1FFC6E2F7FFA1DDFEFF8EE3FFFF83E1
      FFFF85F3FFFF83FAFFFF78FAFFFF6AFAFFFF63F2FFFF5DE3FFFF61E5FFFF8DE1
      FEFFC9E7F8FFF8F1F3FFFAF3F0FFF0EFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1F1F1FFF3F3F3FFF3F3F3FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF3F3F3FFFCFAFCFFFCF5FCFFF7EDF6FFFBF2FAFFFEFA
      FEFFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7E5F80066AFEC001F9BEC000691EF00389DF100B9E2
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FFDCDCDCFF1B1B
      1AFF020300FF090905FF000000FF000000FF000000FF4D4B49FFF1F0F0FFF3F3
      F3FFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F3FFF0F0F1FFF0F0EFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1F0FFF8F2EFFFF9F3F1FFE7EBF1FFD8E9
      F5FFCAEBF7FFC5E9F7FFC5EAF7FFC2EAF7FFC9ECF7FFDAEBF5FFECECF1FFFDF3
      F1FFFAF2EFFFF2F0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F2F1FFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2EBFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F3FFE8E8E8FF7979
      77FF595957FF5F5F5DFF5F5E5AFF595955FF474743FF9C9C99FFFBFBFBFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
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
      00000000000000000000F4F4F4FFF3F3F3FFDFDFDFFFC6C6C6FFB5B5B5FFAFAF
      AFFFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAEAEAEFFAFAFAFFFBCBCBCFFCECECEFFDCDCDCFFEDEDEDFFF5F5
      F5FFF3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3D3
      D3FF777777FF656463FFA6A6A5FFD1D2CEFFDBD8D1FFD9D5CEFFD6D3CFFFD4D2
      CFFFD1D0D0FFCFCECFFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCDCD
      CDFFCFCFCFFFD4D4D4FFD7D7D7FFDEDEDEFFEBEBEBFFF5F5F5FFF3F3F3FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
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
      00000000000000000000F3F3F3FFD8D8D8FFC4C4C4FFCECECEFFDADADAFFDBDB
      DBFFDBDBDBFFDBDBDBFFDCDCDCFFDDDDDDFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
      DCFFDCDCDCFFDCDCDCFFDEDEDEFFDCDCDCFFC9C9C9FFB7B7B7FFC5C5C5FFE2E2
      E2FFF4F4F4FFF3F3F3FFF0F0F0FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BEFF272622FF070606FF385479FF79A5E2FFACCBEFFFD3E0E5FFEAEAE4FFF3ED
      E6FFEFEAE9FFE9E6E7FFE5E5E5FFE5E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E7E7FFE5E5E5FFD1D1D1FFC0C0C0FFCCCCCCFFE6E6E6FFF4F4F4FFF1F1
      F1FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
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
      00000000000000000000E0E0E0FFC3C3C3FFD2D2D2FFE6E6E6FFEAEAEAFFEAEA
      EAFFE9E9E9FFEAEAEAFFEBEBEBFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEFEFEFFFEEEEEEFFDDDDDDFFBABABAFFAFAFAFFFC1C1
      C1FFE3E3E3FFF5F5F5FFF3F3F3FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCA
      C9FF52504EFF0C2839FF0357AAFF1778FAFF2F83FEFF5597F5FF84B6F2FFB3D3
      F2FFE1EAF0FFF9F4F3FFF5F3F4FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF2F2F2FFF2F2F2FFE3E3E3FFC8C8C8FFBEBEBEFFCCCCCCFFE4E4E4FFF3F3
      F3FFF1F1F1FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
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
      00000000000000000000CBCBCBFFCECECEFFE7E7E7FFEAEAEAFFE8E8E8FFE9E9
      E9FFE9E9E9FFE9E9E9FFEBEBEBFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFF0F0F0FFEEEEEEFFD1D1D1FFBCBCBCFFB8B8
      B8FFC6C6C6FFE7E7E7FFF4F4F4FFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDDA
      D8FFB4BAB9FF65A1C3FF1E97EEFF0283FCFF006EFAFF0263F9FF1365FCFF2A7C
      E2FF73B5BAFFD3E7D2FFFBF5F5FFF5F2F4FFEEEFEEFFEFEFEFFFEFEFEFFFEFEF
      EFFFF0F0F0FFF2F2F2FFEFEFEFFFDCDCDCFFCBCBCBFFC9C9C9FFCCCCCCFFE9E9
      E9FFF3F3F3FFF1F1F1FFF0F0F0FF000000000000000000000000000000000000
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
      00000000000000000000BFBFBFFFDDDDDDFFECECECFFE7E7E7FFE8E8E8FFEAEA
      EAFFEAEAEAFFEBEBEBFFECECECFFECECECFFECECECFFECECECFFECECECFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFF1F1F1FFDCDCDCFFCFCFCFFFD1D1
      D1FFC1C1C1FFCFCFCFFFEDEDEDFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFDC
      DBFFE0E8E7FFB3EBFFFF5CC8FFFF1FA1F8FF0A8AF6FF0274FAFF005EFFFF0069
      D7FF239A81FF73C28AFFD3E4D9FFFDF5FAFFF5F2F3FFEEEFEFFFF0F0F0FFF0F0
      F0FFEFEFEFFFF0F0F0FFF1F1F1FFE5E5E5FFD7D7D7FFDDDDDDFFCECECEFFD4D4
      D4FFEEEEEEFFF3F3F3FFF0F0F0FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCBCBCFFE3E3E3FFECECECFFE8E8E8FFEAEAEAFFECEC
      ECFFECECECFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFDFDFDFFFD0D0D0FFE1E1
      E1FFDADADAFFC9C9C9FFDFDFDFFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDA
      DAFFE0E3E0FFD3F6F6FF9CE2FEFF4DBBF9FF21A2F9FF1191FFFF148BF4FF2DA0
      BDFF35B479FF2AA65BFF68B289FFD5E2DBFFFFF9FFFFF7F4F6FFEFF0F0FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFE6E6E6FFD6D6D6FFE8E8E8FFE5E5E5FFD3D3
      D3FFE0E0E0FFF1F1F1FFF1F1F1FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBDFFE3E3E3FFEEEEEEFFEDEDEDFFF1F1F1FFF1F1
      F1FFF2F2F2FFF1F1F1FFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFE7E7E7FFD4D4D4FFD7D7
      D7FFDEDEDEFFD4D4D4FFDBDBDBFFEFEFEFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBD9
      DAFFDCDEDBFFDDF4EDFFC6EFFBFF85D4FDFF42B6FFFF2AA9F2FF2BAAB3FF37B0
      79FF47BD78FF2BAC66FF178D4CFF66AA84FFDCE7E1FFFFFCFFFFF6F4F5FFF0F1
      F1FFF1F1F1FFF1F1F1FFF3F3F3FFEBEBEBFFDADADAFFDEDEDEFFE5E5E5FFDDDD
      DDFFDEDEDEFFEDEDEDFFF2F2F2FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C0FFE4E4E4FFEEEEEEFFEAEAEAFFE8E8E8FFE7E7
      E7FFE7E7E7FFE9E9E9FFEDEDEDFFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFE5E5E5FFD9D9
      D9FFCFCFCFFFCDCDCDFFD9D9D9FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBD9
      DAFFDDDEDCFFE1F4EDFFCEF0FBFFB1E6FFFF71D0FFFF41B9BFFF26A265FF1991
      42FF299D5CFF36AF6FFF17964FFF0F7B3AFF6CA482FFDEE8E5FFFFFDFFFFF5F4
      F4FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFEAEAEAFFE0E0E0FFD9D9D9FFD6D6
      D6FFDDDDDDFFF0F0F0FFF4F4F4FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3C3C3FFE7E7E7FFF0F0F0FFDCDCDCFFC9C9C9FFC8C8
      C8FFC9C9C9FFCDCDCDFFE2E2E2FFF0F0F0FFEFEFEFFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0F0FFEBEB
      EBFFDBDBDBFFC7C7C7FFCACACAFFEAEAEAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBD9
      DAFFDFDFDDFFE8F6EEFFC4EBF3FF94D9DFFF69CCC2FF4ABF8CFF239B50FF0C82
      3CFF0D8140FF219454FF28A05DFF0B8039FF0E692CFF6EA081FFE0E9E7FFFFFD
      FFFFF5F3F4FFF0F0F0FFF1F1F1FFF1F1F1FFF3F3F3FFF0F0F0FFE4E4E4FFD3D3
      D3FFD0D0D0FFEAEAEAFFFAFAFAFF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4C4C4FFE7E7E7FFF1F1F1FFDDDDDDFFCACACAFFCACA
      CAFFCACACAFFCECECEFFE2E2E2FFEFEFEFFFEEEEEEFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEFEFEFFFF1F1
      F1FFF0F0F0FFDEDEDEFFC5C5C5FFCACACAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDFDFDEFFF1F9F1FFD0EDECFF6CC3A3FF28A160FF36AE67FF37AD6BFF198E
      4DFF087937FF0B7837FF1A8949FF1B8F4CFF026B25FF115E24FF769F85FFE5EC
      EAFFFFFEFFFFF4F3F4FFF1F1F1FFF1F1F1FFF2F2F2FFF4F4F4FFF3F3F3FFE7E7
      E7FFD0D0D0FFD5D5D5FFEEEEEEFF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C5C5C5FFE8E8E8FFF1F1F1FFEBEBEBFFE7E7E7FFE8E8
      E8FFE8E8E8FFE8E8E8FFECECECFFEFEFEFFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEFEF
      EFFFF3F3F3FFF3F3F3FFD9D9D9FFB0B0B0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDDDFDDFFF3F9F0FFF1F6F2FFA3D4B7FF2D9757FF0C853EFF2EA463FF2EA3
      62FF128240FF056E2DFF066D2CFF107A3AFF107C39FF005A17FF165423FF7D9F
      8AFFE7EEECFFFFFEFFFFF5F4F5FFF1F2F2FFF2F2F2FFF1F1F1FFF3F3F3FFF5F5
      F5FFE6E6E6FFCCCCCCFFD6D6D6FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C7C7FFE8E8E8FFF1F1F1FFF2F2F2FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1F1F1FFF0F0F0FFEFEF
      EFFFEFEFEFFFF5F5F5FFE9E9E9FFB5B5B5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDCDFDDFFEEF8EFFFFCF9F6FFF1F4F1FF9ACAAFFF23854CFF087834FF2699
      57FF229653FF0A7533FF005E1EFF02591CFF0A6A2DFF076C2CFF00470CFF1A4E
      25FF93AD9FFFF9F8F8FFFEFCFDFFF4F4F4FFF3F3F3FFF3F3F3FFF1F1F1FFF5F5
      F5FFF2F2F2FFD7D7D7FFD0D0D0FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C7C7FFE8E8E8FFF1F1F1FFF1F1F1FFF4F4F4FFF5F5
      F5FFF5F5F5FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFF2F2F2FFF1F1F1FFF1F1
      F1FFF0F0F0FFF3F3F3FFECECECFFC1C1C1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDDDFDDFFEEF8EEFFF5F8F4FFFEFAFEFFF5F7F6FF91C1A6FF1C753CFF0667
      26FF1D8848FF158442FF036022FF004C12FF024D17FF055B24FF005216FF0948
      1AFF5F7A69FFCAC7C8FFF7F5F5FFFAFAFAFFF5F5F5FFF4F4F4FFF3F3F3FFF5F5
      F5FFF1F1F1FFDEDEDEFFD6D6D6FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C8C8C8FFE9E9E9FFF2F2F2FFE4E4E4FFD7D7D7FFD7D7
      D7FFD9D9D9FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDADADAFFD7D7D7FFDCDCDCFFEBEBEBFFF3F3F3FFF2F2
      F2FFF1F1F1FFF5F5F5FFEDEDEDFFC5C5C5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDDDFDDFFEFF7EFFFEEF2EEFFE8E6E7FFF4ECF0FFDFE6E4FF73A587FF1052
      1EFF025016FF13773AFF0D7132FF025219FF00400FFF003709FF034A18FF4680
      5FFF87928DFF989295FFCFCECEFFFAF9F7FFFDFCFBFFF5F5F5FFF4F4F4FFF6F6
      F6FFF2F2F2FFDFDFDFFFD7D7D7FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CACACAFFEAEAEAFFF1F1F1FFDBDBDBFFC0C0C0FFBFBF
      BFFFC3C3C3FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2
      C2FFC2C2C2FFC2C2C2FFC1C1C1FFBDBDBDFFC7C7C7FFE4E4E4FFF4F4F4FFF2F2
      F2FFF1F1F1FFF5F5F5FFEDEDEDFFC5C5C5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFF0F7F0FFE8EBE8FFD0D0D0FFCECCCDFFDCD5DAFFC2CAC7FF648A
      70FF0F4416FF014411FF0C6930FF076228FF003A09FF002A01FF356645FFA8C1
      B5FFBFBEC0FF939092FFA7A6A6FFD7D7D5FFFBFBFAFFFDFDFBFFF5F5F5FFF6F6
      F6FFF4F4F4FFE1E1E1FFD7D7D7FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBCBFFE9E9E9FFF1F1F1FFE7E7E7FFDBDBDBFFDBDB
      DBFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDCDCDCFFDBDBDBFFDFDFDFFFECECECFFF2F2F2FFF1F1
      F1FFF1F1F1FFF5F5F5FFEDEDEDFFC6C6C6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDDDFDDFFEFF8EFFFEEF1EEFFE1E0E1FFDCDDDCFFE2E0E1FFEFE9EDFFD5E0
      DCFF6C9279FF0F3914FF00380CFF01561FFF024511FF255431FF8EA395FFCBC8
      C8FFB9B5B6FFACACAAFF9C9C9BFF898D9AFFB0B6CFFFF3F5F8FFFAFAF8FFF6F6
      F6FFF3F3F3FFE1E1E1FFD7D7D7FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBCBFFEAEAEAFFF3F3F3FFF4F4F4FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
      F5FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF5F5F5FFF2F2F2FFF1F1F1FFF1F1
      F1FFF1F1F1FFF5F5F5FFEDEDEDFFC8C8C8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDCDFDCFFEEF8EEFFF6F9F6FFF9F7F9FFF9F9F9FFF8F8F8FFFDFBFCFFFFFF
      FFFFDAE9E3FF678773FF0B2D0EFF01350EFF35734DFF89A695FFB7B6B7FFB1AC
      ADFFABABAAFFB4B3AEFFA0A1A1FF545A81FF394084FFA8ADCCFFF7F8F7FFFBFB
      F8FFF3F3F3FFE1E1E1FFD9D9D9FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDCDCDFFEBEBEBFFF3F3F3FFF5F5F5FFFAFAFAFFFAFA
      FAFFF9F9F9FFF9F9F9FFF9F9F9FFFAFAFAFFFAFAFAFFF7F7F7FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF1F1
      F1FFF1F1F1FFF4F4F4FFEDEDEDFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDDDFDDFFEFF8EFFFF7FAF7FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFFCFA
      FBFFFFFFFFFFD5E2DCFF6C8174FF384F44FF8A9D97FFD3D5D4FFB7B2B4FFA5A4
      A6FFA7A6A5FFA4A29BFF989BA8FF3C4282FF010254FF50548EFFE6E7ECFFFFFF
      FCFFF5F5F4FFE2E2E2FFDBDBDBFF000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFCFCFFFECECECFFF3F3F3FFEDEDEDFFEAEAEAFFE9E9
      E9FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFEDEDEDFFF0F0F0FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF4F4F4FFEDEDEDFFCACACAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFF0F8F0FFF5F7F5FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2F2FFF3F3
      F3FFF8F7F7FFFFFFFEFFDEE1E1FF9D9FAAFF9D9AA9FFC3C0C5FFC2C3C1FFACAB
      A9FF9A978FFF909191FF626999FF11146AFF000047FF3F4280FFE1E2EAFFFFFF
      FDFFF5F5F4FFE2E2E2FFDBDBDBFF000000000000000000000000000000000000
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
      00000000000000000000D1D1D1FFEEEEEEFFF5F5F5FFDFDFDFFFC7C7C7FFC5C5
      C5FFC7C7C7FFC7C7C7FFC7C7C7FFC5C5C5FFC4C4C4FFD9D9D9FFF0F0F0FFF2F2
      F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF4F4F4FFEDEDEDFFCCCCCCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFF2F8F2FFEEF0EEFFDDDDDDFFD9D9D9FFDADADAFFDBDBDBFFDBDB
      DBFFDADADAFFDEDDDDFFEBE9EBFFDEDAE2FFA4A2B1FF9595A1FFBEBFBDFFC1C0
      B6FF999A9AFF5C658FFF1A227BFF000056FF0F125BFF8185AEFFF3F3F5FFFDFD
      FBFFF3F3F4FFE2E2E2FFDBDBDBFF000000000000000000000000000000000000
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
      00000000000000000000D1D1D1FFEDEDEDFFF4F4F4FFE3E3E3FFCECECEFFCDCD
      CDFFCFCFCFFFCFCFCFFFCFCFCFFFCDCDCDFFCCCCCCFFDEDEDEFFF3F3F3FFF5F5
      F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF3F3F3FFF1F1
      F1FFF1F1F1FFF4F4F4FFEDEDEDFFCCCCCCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFF1F8F1FFECEEECFFD4D4D4FFCFCFCFFFD1D1D1FFD2D2D2FFD2D2
      D2FFD0D1D1FFCECECEFFDADAD9FFF3F3F2FFDADBE0FFA2A2AFFF9697A5FF98A0
      B3FF6374AAFF18258BFF00006BFF040560FF5B5F97FFDBDEE8FFFEFDFBFFF7F7
      F7FFF3F3F3FFE3E3E3FFDCDCDCFF000000000000000000000000000000000000
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
      00000000000000000000D3D3D3FFECECECFFF3F3F3FFF2F2F2FFF3F3F3FFF3F3
      F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF2F2F2FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF3F3F3FFF1F1
      F1FFF1F1F1FFF4F4F4FFEDEDEDFFCCCCCCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDDDFDDFFF0F8F0FFF6F8F6FFF3F2F3FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF1F1F1FFF2F2F1FFFBFBFAFFFFFFFFFFDFDFE4FF878DAFFF3444
      93FF111F91FF000582FF080C73FF505596FFC9CCDFFFFFFFFFFFF8F8F7FFF5F5
      F5FFF4F4F4FFE4E4E4FFDDDDDDFF000000000000000000000000000000000000
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
      00000000000000000000D4D4D4FFEEEEEEFFF3F3F3FFE9E9E9FFE2E2E2FFE2E2
      E2FFE3E3E3FFE3E3E3FFE4E4E4FFE5E5E5FFE5E5E5FFE2E2E2FFDFDFDFFFDFDF
      DFFFDFDFDFFFDEDEDEFFDEDEDEFFDEDEDEFFDDDDDDFFDEDEDEFFE8E8E8FFF0F0
      F0FFF2F2F2FFF3F3F3FFEDEDEDFFCECECEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFF0F8F0FFF5F7F5FFF3F2F3FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF2F2F3FFF0EFF0FFF4F4F3FFF7F8F6FFB1B7D2FF3645
      95FF000976FF111777FF555B97FFBEC2D4FFFCFCF9FFFAFAF8FFF4F4F4FFF6F6
      F6FFF4F4F4FFE4E4E4FFDDDDDDFF000000000000000000000000000000000000
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
      00000000000000000000D5D5D5FFF0F0F0FFF4F4F4FFDDDDDDFFC7C7C7FFC6C6
      C6FFC9C9C9FFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFFC8C8C8FFC9C9C9FFDEDEDEFFF1F1
      F1FFF4F4F4FFF4F4F4FFEDEDEDFFCFCFCFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFF1F7F1FFEAEBEAFFD5D5D5FFD2D2D2FFD4D4D4FFD5D5D5FFD6D6
      D6FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D6FFDEDEDCFFD6D8DAFF9BA1
      BAFF5F6795FF74789BFFB6B8C2FFE0E0DDFFEBEBE8FFF3F3F2FFF4F4F4FFF6F6
      F6FFF4F4F4FFE4E4E4FFDDDDDDFF000000000000000000000000000000000000
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
      00000000000000000000D5D5D5FFEEEEEEFFF4F4F4FFE9E9E9FFE0E0E0FFDFDF
      DFFFE0E0E0FFE1E1E1FFE0E0E0FFE0E0E0FFE0E0E0FFE1E1E1FFE0E0E0FFE0E0
      E0FFE1E1E1FFE0E0E0FFE1E1E1FFE0E0E0FFDEDEDEFFDFDFDFFFE9E9E9FFF5F5
      F5FFF4F4F4FFF4F4F4FFEEEEEEFFD0D0D0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFF1F7F1FFEDEFEDFFDDDDDDFFDCDCDCFFDDDDDDFFDDDDDDFFDEDE
      DEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDFDFDEFFE7E6E3FFE8E7
      E3FFDEDDDBFFE2E1DFFFE9E9E4FFE2E2E0FFE8E8E8FFF5F5F5FFF6F6F6FFF6F6
      F6FFF4F4F4FFE4E4E4FFDEDEDEFF000000000000000000000000000000000000
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
      00000000000000000000D5D5D5FFEDEDEDFFF3F3F3FFF1F1F1FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF2F2F2FFF2F2
      F2FFF3F3F3FFF2F2F2FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFEFEF
      EFFFEFEFEFFFF4F4F4FFEEEEEEFFD2D2D2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDEDFDEFFEFF8EFFFF5F8F5FFF6F5F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F5FFFBFB
      F8FFFFFFFDFFFFFFFCFFF7F6F6FFF4F4F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6
      F6FFF3F3F3FFE6E6E6FFE1E1E1FF000000000000000000000000000000000000
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
      00000000000000000000D7D7D7FFF0F0F0FFF3F3F3FFE5E5E5FFDBDBDBFFDCDC
      DCFFDCDCDCFFDCDCDCFFDEDEDEFFDEDEDEFFDEDEDEFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDEDEDEFFDEDEDEFFDDDDDDFFDDDDDDFFDCDCDCFFDBDBDBFFD6D6
      D6FFE0E0E0FFF2F2F2FFF0F0F0FFD3D3D3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAD9
      DAFFDDDFDDFFF0F8F0FFF2F4F2FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE7E7E7FFEBEBEBFFF5F5
      F5FFF4F4F4FFE8E8E8FFE1E1E1FF000000000000000000000000000000000000
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
      00000000000000000000DADADAFFEFEFEFFFF3F3F3FFE2E2E2FFD4D4D4FFD5D5
      D5FFD6D6D6FFD7D7D7FFD8D8D8FFD9D9D9FFD9D9D9FFDADADAFFDADADAFFDADA
      DAFFDADADAFFD9D9D9FFD8D8D8FFD7D7D7FFD7D7D7FFD6D6D6FFD5D5D5FFD0D0
      D0FFDDDDDDFFF3F3F3FFF0F0F0FFD0D0D0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D9FFDDDFDDFFF1F8F1FFECEDECFFDCDCDCFFD9D9D9FFDCDCDCFFDCDCDCFFDDDD
      DDFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFFDEDEDEFFDDDDDDFFDCDCDCFFDCDCDCFFDBDBDBFFD7D7D7FFDFDFDFFFF4F4
      F4FFF7F7F7FFE7E7E7FFE1E1E1FF000000000000000000000000000000000000
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
      00000000000000000000DEDEDEFFE9E9E9FFF3F3F3FFEFEFEFFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFEDEDEDFFECECECFFECECECFFEDEDEDFFEDED
      EDFFECECECFFECECECFFEDEDEDFFECECECFFECECECFFECECECFFECECECFFEBEB
      EBFFEFEFEFFFF5F5F5FFE7E7E7FFCFCFCFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D9FFE1E0E1FFF3F7F3FFF2F2F2FFE8E8E8FFE6E6E6FFE8E8E8FFE8E8E8FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE7E7E7FFE5E5E5FFE9E9E9FFF5F5
      F5FFF3F3F3FFE1E1E1FFE5E5E5FF000000000000000000000000000000000000
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
      00000000000000000000E5E5E5FFE2E2E2FFEEEEEEFFF5F5F5FFF7F7F7FFF6F6
      F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF8F8
      F8FFF6F6F6FFEAEAEAFFD7D7D7FFDBDBDBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      E3FFE7E3E7FFF3F3F3FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF5F5
      F5FFE7E7E7FFDCDCDCFFEEEEEEFF000000000000000000000000000000000000
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
      00000000000000000000EFEFEFFFE5E5E5FFE3E3E3FFECECECFFF0F0F0FFF0F0
      F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0
      F0FFE8E8E8FFD8D8D8FFD7D7D7FFEBEBEBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F3FFE8E8E8FFEBEBEBFFF3F3F3FFF5F5F5FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6F6FFF4F4F4FFE8E8
      E8FFDADADAFFE4E4E4FFF5F5F5FF000000000000000000000000000000000000
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
      00000000000000000000F1F1F1FFF0F0F0FFE4E4E4FFDADADAFFDADADAFFDEDE
      DEFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFD6D6
      D6FFCFCFCFFFD7D7D7FFE9E9E9FFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F3FFEEEEEEFFE7E7E7FFE9E9E9FFEEEEEEFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFE6E6E6FFDCDC
      DCFFE1E1E1FFEFEFEFFFF2F2F2FF000000000000000000000000000000000000
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
      00000000000000000000000000000000FFFF80000017FFFFFFFC00000007FFFF
      FFE00000001FFFFFFFC00000007FFF00FFFFE0000007FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000001FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFF00000003FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE10000001FFFFFFF800000007FFFF
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
      FFE00000001FFFFFFF800000007FFF00FFFE00000005FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFF00000003FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC000000FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFC040000FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFE040001FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFE000001FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFF000001FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFF003803FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFF007801FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFF000001FFFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF803FFFFFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF801E01FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF801C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C03FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C01FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF007C00FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF007C03FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFE007C03FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFC000001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFC000001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFC000001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFE001001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFE001001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFE001001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF003001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF803001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFFC0F003FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFFC07807FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF807E1FFFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF803C07FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF803807FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFFC07807FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFFE0F807FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFFF3F807FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFFFFFC0FFFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFFFFFFBFFFFFFFFF800000007FFF00FFFFF001D00FFFFFFFFFFFFFF80FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFFE0000003FFFFFFFFFFFFE00FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFFE0000003FFFFFFFFFFFFC00FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFF80000003FFFFFFFFFFFF800FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFFFFF0007FFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFFFFE000FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFFC1C001FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFF800003FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000003FFFFFFFFE000007FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000003FFFFFFFFE00000FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFC00000FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF800001FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF0000001FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF0000000FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000000FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFC0000001FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFC0000003FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000003FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000007FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF000000FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFE000007FFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFF80001FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFF00000007FFFFFFFFF80003FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFF00000007FFFFFFFFFC0007FFFFFF
      FFFC000000FFFFFFFFE0000001FFFF00FFFF8000000FFFFFFFFFFE003FFFFFFF
      FFFC000000FFFFFFFFE0000001FFFF0000000000000000000000000000000000
      000000000000}
  end
  inherited Cadastro: TIBQuery
    AfterScroll = CadastroAfterScroll
    BufferChunks = 4500
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT   PK.ID  ,PK.EP_ID,PK.IDEV,'
      
        '         PK.IDPK,PK.DEPK ,PK.DTPK,PK.HTPK,PK.API_B2B_IDPK,PK.API' +
        '_B2B_DEPK,PK.API_B2B_DTPK,PK.API_B2B_HTPK,PK.DTCA,'
      '         PK.CTNR,PK.CDCX ,'
      ''
      '         PK.CD_ID,PK.CD_NO,PK.CD_NO_RZ,PK.CD_CNPJ,'
      '         PK.CR_ID,PK.CR_NO,'
      '         PK.CV_ID,PK.CV_NO,'
      ''
      '         PK.QTDE,PK.QTRL,'
      '         PK.TSDE,PK.TCDE,'
      '         PK.TDSC,PK.VDSC,PK.PDSC,'
      ''
      '         PK.CT_ID,PK.CT_NO,'
      
        '         PK.FRT_MODELO,PK.FRT_NO,PK.FRT_VFRT,PK.FRT_PSBR,PK.FRT_' +
        'PSLQ,'
      ''
      '         PK.TPD_ID,PK.TPD_NO,'
      '         PK.TCO_ID,PK.TCO_NO,PK.TCO_NO_PRZ,PK.PRZ_ID,'
      '         PK.CDST,PK.REST,PK.DEST,PK.STA_NO_ABREV,'
      '         PK.BXD_IDPK,PK.BXD_DTPK,'
      ''
      '         PK.INFADCAD'
      ''
      'FROM     VW_PSQ_PED_PDP_ADM AS PK'
      ''
      'WHERE (PK.CDST = 116'
      
        'OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))))'
      ''
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      ')')
    Top = 224
    object CadastroID: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."ID"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."EP_ID"'
    end
    object CadastroIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"VW_PSQ_PED_PDP_ADM"."IDEV"'
    end
    object CadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."IDPK"'
    end
    object CadastroDEPK: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."DEPK"'
      Size = 30
    end
    object CadastroDTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."DTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroHTPK: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."HTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroAPI_B2B_IDPK: TLargeintField
      FieldName = 'API_B2B_IDPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_IDPK"'
    end
    object CadastroAPI_B2B_DEPK: TIBStringField
      DisplayLabel = 'B2B'
      FieldName = 'API_B2B_DEPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_DEPK"'
      Size = 30
    end
    object CadastroAPI_B2B_DTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'API_B2B_DTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_DTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroAPI_B2B_HTPK: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'API_B2B_HTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_HTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CTNR"'
    end
    object CadastroCDCX: TLargeintField
      FieldName = 'CDCX'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CDCX"'
    end
    object CadastroCD_ID: TIntegerField
      FieldName = 'CD_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_ID"'
    end
    object CadastroCD_NO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CD_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_NO"'
      Size = 60
    end
    object CadastroCD_NO_RZ: TIBStringField
      FieldName = 'CD_NO_RZ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_NO_RZ"'
      Size = 60
    end
    object CadastroCD_CNPJ: TIBStringField
      FieldName = 'CD_CNPJ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_CNPJ"'
      Size = 14
    end
    object CadastroCR_ID: TSmallintField
      FieldName = 'CR_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CR_ID"'
    end
    object CadastroCR_NO: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'CR_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CR_NO"'
      Size = 60
    end
    object CadastroCV_ID: TSmallintField
      FieldName = 'CV_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CV_ID"'
    end
    object CadastroCV_NO: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'CV_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CV_NO"'
      Size = 30
    end
    object CadastroQTDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      Origin = '"VW_PSQ_PED_PDP_ADM"."QTDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object CadastroQTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkInternalCalc
      FieldName = 'QTRL'
      Origin = '"VW_PSQ_PED_PDP_ADM"."QTRL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroTSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldKind = fkInternalCalc
      FieldName = 'TSDE'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TSDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldKind = fkInternalCalc
      FieldName = 'TCDE'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTDSC: TIBStringField
      FieldName = 'TDSC'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VDSC'
      Origin = '"VW_PSQ_PED_PDP_ADM"."VDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"VW_PSQ_PED_PDP_ADM"."PDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroCT_ID: TSmallintField
      FieldName = 'CT_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CT_ID"'
    end
    object CadastroCT_NO: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'CT_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CT_NO"'
      Size = 60
    end
    object CadastroFRT_MODELO: TSmallintField
      FieldName = 'FRT_MODELO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_MODELO"'
    end
    object CadastroFRT_NO: TIBStringField
      DisplayLabel = 'Frete'
      FieldName = 'FRT_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_NO"'
      Size = 60
    end
    object CadastroFRT_VFRT: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'FRT_VFRT'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_VFRT"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFRT_PSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'FRT_PSBR'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_PSBR"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object CadastroFRT_PSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'FRT_PSLQ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_PSLQ"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object CadastroTPD_ID: TSmallintField
      FieldName = 'TPD_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TPD_ID"'
    end
    object CadastroTPD_NO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TPD_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TPD_NO"'
      Size = 60
    end
    object CadastroTCO_ID: TSmallintField
      FieldName = 'TCO_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCO_ID"'
    end
    object CadastroTCO_NO: TIBStringField
      FieldName = 'TCO_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCO_NO"'
      Size = 60
    end
    object CadastroTCO_NO_PRZ: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldKind = fkInternalCalc
      FieldName = 'TCO_NO_PRZ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCO_NO_PRZ"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object CadastroPRZ_ID: TSmallintField
      FieldName = 'PRZ_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."PRZ_ID"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PSQ_PED_PDP_ADM"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_PSQ_PED_PDP_ADM"."DEST"'
      Size = 30
    end
    object CadastroSTA_NO_ABREV: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'STA_NO_ABREV'
      Origin = '"VW_PSQ_PED_PDP_ADM"."STA_NO_ABREV"'
      Size = 30
    end
    object CadastroBXD_IDPK: TLargeintField
      FieldName = 'BXD_IDPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."BXD_IDPK"'
    end
    object CadastroBXD_DTPK: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'BXD_DTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."BXD_DTPK"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PSQ_PED_PDP_ADM"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 768
    end
  end
  inherited TEdicao: TIBTransaction
    Left = 200
  end
  inherited SQLEdicao: TIBSQL
    Left = 232
  end
  inherited SPEdicao: TIBStoredProc
    Left = 264
  end
  inherited TEvent: TIBTransaction
    Left = 296
  end
  inherited DMMain: TdxDockingManager
    Left = 1184
    Top = 176
  end
  inherited BMMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 1216
    Top = 176
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object FKCadastro: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AutoCalcFields = False
    AfterOpen = FKCadastroAfterOpen
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT    PK.ID    ,PK.IDEP,'
      '          PK.IDPK  ,PK.ITEM,PK.CTNR,'
      '          PK.IDCP  ,CP.IDEP AS SKU_IDEP,EP.FANTASIA AS SKU_DEEP,'
      '          CP.ARTIGO,CP.SKU ,CP.CEAN,'
      '          PK.DECP  ,PK.DGCP,'
      '          PK.UCOM  ,PK.UCON,PK.QTDE,PK.QTRL,'
      
        '          PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,PK.VPRC_PAD,PK.PDSC,PK' +
        '.VDSC,PK.VPRC_COM,'
      '          PK.NCM ,PK.PIPI,PK.VIPI,'
      '          PK.TSDE,PK.TCDE,'
      '          PK.PSBR,PK.PSLQ,'
      '          PK.STFI,'
      
        '          CAST(IIF(SKU.IMG_PAD IS NULL,ART.ID,SKU.ID) AS BIGINT)' +
        ' AS IMG_ID,IIF(SKU.IMG_PAD IS NULL,ART.IMG_PAD,SKU.IMG_PAD) AS I' +
        'MG_PAD'
      'FROM      ped_prg_ite AS PK'
      'JOIN      CAD_PRO     AS CP ON (CP.ID = PK.IDCP)'
      'JOIN      TAB_PAR_SIS AS EP ON (EP.ID = CP.IDEP)'
      'LEFT JOIN CAD_PRO_IMG_ART AS ART ON (ART.ID = CP.IDAK)'
      'LEFT JOIN CAD_PRO_IMG_SKU AS SKU ON (SKU.ID = CP.ID  )'
      'WHERE     PK.IDPK = :ID'
      'ORDER BY  PK.ITEM')
    Left = 104
    Top = 256
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'ID'
        ParamType = ptUnknown
        Size = 8
      end>
    object FKCadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_PRG_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FKCadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"PED_PRG_ITE"."IDEP"'
    end
    object FKCadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"PED_PRG_ITE"."IDPK"'
    end
    object FKCadastroITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"PED_PRG_ITE"."ITEM"'
      DisplayFormat = '0'
    end
    object FKCadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"PED_PRG_ITE"."CTNR"'
    end
    object FKCadastroIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"PED_PRG_ITE"."IDCP"'
    end
    object FKCadastroSKU_IDEP: TSmallintField
      FieldName = 'SKU_IDEP'
      Origin = '"CAD_PRO"."IDEP"'
    end
    object FKCadastroSKU_DEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'SKU_DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object FKCadastroARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object FKCadastroSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object FKCadastroCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"CAD_PRO"."CEAN"'
    end
    object FKCadastroDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"PED_PRG_ITE"."DECP"'
      Size = 120
    end
    object FKCadastroDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"PED_PRG_ITE"."DGCP"'
      Size = 60
    end
    object FKCadastroUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"PED_PRG_ITE"."UCOM"'
      Size = 10
    end
    object FKCadastroUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'UCON'
      Origin = '"PED_PRG_ITE"."UCON"'
      Size = 40
    end
    object FKCadastroQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"PED_PRG_ITE"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"PED_PRG_ITE"."QTRL"'
      DisplayFormat = '0'
    end
    object FKCadastroVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"PED_PRG_ITE"."VPRC_PAD_INI"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"PED_PRG_ITE"."VPRC_PAD_FIM"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"PED_PRG_ITE"."VPRC_PAD"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroPDSC: TIBBCDField
      DisplayLabel = 'Desc %'
      FieldName = 'PDSC'
      Origin = '"PED_PRG_ITE"."PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKCadastroVDSC: TFloatField
      DisplayLabel = 'Desc R$'
      FieldName = 'VDSC'
      Origin = '"PED_PRG_ITE"."VDSC"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroVPRC_COM: TFloatField
      DisplayLabel = 'Vl. Unit'#225'rio'
      FieldName = 'VPRC_COM'
      Origin = '"PED_PRG_ITE"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PED_PRG_ITE"."NCM"'
      FixedChar = True
      Size = 8
    end
    object FKCadastroPIPI: TIBBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'PIPI'
      Origin = '"PED_PRG_ITE"."PIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKCadastroVIPI: TFloatField
      DisplayLabel = 'IPI R$'
      FieldName = 'VIPI'
      Origin = '"PED_PRG_ITE"."VIPI"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroTSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldName = 'TSDE'
      Origin = '"PED_PRG_ITE"."TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroTCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TCDE'
      Origin = '"PED_PRG_ITE"."TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroPSBR: TIBBCDField
      DisplayLabel = 'Peso BR'
      FieldName = 'PSBR'
      Origin = '"PED_PRG_ITE"."PSBR"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object FKCadastroPSLQ: TIBBCDField
      DisplayLabel = 'Peso LQ'
      FieldName = 'PSLQ'
      Origin = '"PED_PRG_ITE"."PSLQ"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object FKCadastroSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'STFI'
      Origin = '"PED_PRG_ITE"."STFI"'
      Size = 60
    end
    object FKCadastroIMG_ID: TLargeintField
      FieldName = 'IMG_ID'
      ProviderFlags = []
    end
    object FKCadastroIMG_PAD: TBlobField
      FieldName = 'IMG_PAD'
      ProviderFlags = []
      Size = 8
    end
  end
  object DTSFKCadastro: TDataSource
    DataSet = FKCadastro
    OnDataChange = DTSFKCadastroDataChange
    Left = 136
    Top = 256
  end
  object cli_sta: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI_003'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI_004'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI_005'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI_003'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI_004'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI_005'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI')
    Left = 104
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end>
    object cli_staFIN_TITU: TIBStringField
      FieldName = 'FIN_TITU'
      Origin = '"FIN_REC_BAN_BAI"."FIN_TITU"'
      Size = 30
    end
    object cli_staFIN_DVEN: TDateField
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DVEN"'
    end
    object cli_staFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
  end
  object cad_cli_crd: TIBDataSet
    Database = FBird.DBERP
    Transaction = TEdicao
    DeleteSQL.Strings = (
      'delete from CAD_CLI_CRD'
      'where'
      '  ID = :OLD_ID')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  IDCA,'
      '  DTCA,'
      '  IDED,'
      '  DTED,'
      '  IDST,'
      '  DTST,'
      '  CDST,'
      '  REST,'
      '  DEST,'
      '  IDCD,'
      '  NAFA,'
      '  VCRD,'
      '  SCRD,'
      '  PDSC,'
      '  VDSC,'
      '  INFADCAD_L1,'
      '  INFADCAD_L2,'
      '  PDSC_001,'
      '  VDSC_INI_001,'
      '  VDSC_FIM_001,'
      '  INFADCAD_L1_001,'
      '  INFADCAD_L2_001,'
      '  PDSC_002,'
      '  VDSC_INI_002,'
      '  VDSC_FIM_002,'
      '  INFADCAD_L1_002,'
      '  INFADCAD_L2_002,'
      '  PDSC_003,'
      '  VDSC_INI_003,'
      '  VDSC_FIM_003,'
      '  INFADCAD_L1_003,'
      '  INFADCAD_L2_003,'
      '  FLAG,'
      '  VDUP,'
      '  VCAR,'
      '  VPED,'
      '  PED_TCDE,'
      '  PED_VTFA,'
      '  PED_QTDE,'
      '  PED_QTRL,'
      '  PED_DTIN,'
      '  PED_DTFN,'
      '  PED_PEN_TCDE,'
      '  PED_PEN_QTDE,'
      '  PED_PEN_QTRL,'
      '  PED_PEN_PERC,'
      '  PED_TKT_TCDE,'
      '  PED_TKT_VTFA,'
      '  BAN_VDUP,'
      '  BAN_QTDE,'
      '  BAN_PERC,'
      '  BAN_PEN_VDUP,'
      '  BAN_PEN_QTDE,'
      '  BAN_PEN_PERC,'
      '  BAN_PAG_VDUP,'
      '  BAN_PAG_QTDE,'
      '  BAN_PAG_PERC,'
      '  BAN_AVC_VDUP,'
      '  BAN_AVC_QTDE,'
      '  BAN_AVC_PERC,'
      '  BAN_NVC_VDUP,'
      '  BAN_NVC_QTDE,'
      '  BAN_NVC_PERC,'
      '  BAN_DVC_VDUP,'
      '  BAN_DVC_QTDE,'
      '  BAN_DVC_PERC,'
      '  CAR_VDUP,'
      '  CAR_QTDE,'
      '  CAR_PERC,'
      '  CAR_PEN_VDUP,'
      '  CAR_PEN_QTDE,'
      '  CAR_PEN_PERC,'
      '  CAR_PAG_VDUP,'
      '  CAR_PAG_QTDE,'
      '  CAR_PAG_PERC,'
      '  CAR_AVC_VDUP,'
      '  CAR_AVC_QTDE,'
      '  CAR_AVC_PERC,'
      '  CAR_NVC_VDUP,'
      '  CAR_NVC_QTDE,'
      '  CAR_NVC_PERC,'
      '  CAR_DVC_VDUP,'
      '  CAR_DVC_QTDE,'
      '  CAR_DVC_PERC'
      'from CAD_CLI_CRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_CRD')
    ModifySQL.Strings = (
      'update CAD_CLI_CRD'
      'set'
      '  BAN_AVC_PERC = :BAN_AVC_PERC,'
      '  BAN_AVC_QTDE = :BAN_AVC_QTDE,'
      '  BAN_AVC_VDUP = :BAN_AVC_VDUP,'
      '  BAN_DVC_PERC = :BAN_DVC_PERC,'
      '  BAN_DVC_QTDE = :BAN_DVC_QTDE,'
      '  BAN_DVC_VDUP = :BAN_DVC_VDUP,'
      '  BAN_NVC_PERC = :BAN_NVC_PERC,'
      '  BAN_NVC_QTDE = :BAN_NVC_QTDE,'
      '  BAN_NVC_VDUP = :BAN_NVC_VDUP,'
      '  BAN_PAG_PERC = :BAN_PAG_PERC,'
      '  BAN_PAG_QTDE = :BAN_PAG_QTDE,'
      '  BAN_PAG_VDUP = :BAN_PAG_VDUP,'
      '  BAN_PEN_PERC = :BAN_PEN_PERC,'
      '  BAN_PEN_QTDE = :BAN_PEN_QTDE,'
      '  BAN_PEN_VDUP = :BAN_PEN_VDUP,'
      '  BAN_PERC = :BAN_PERC,'
      '  BAN_QTDE = :BAN_QTDE,'
      '  BAN_VDUP = :BAN_VDUP,'
      '  CAR_AVC_PERC = :CAR_AVC_PERC,'
      '  CAR_AVC_QTDE = :CAR_AVC_QTDE,'
      '  CAR_AVC_VDUP = :CAR_AVC_VDUP,'
      '  CAR_DVC_PERC = :CAR_DVC_PERC,'
      '  CAR_DVC_QTDE = :CAR_DVC_QTDE,'
      '  CAR_DVC_VDUP = :CAR_DVC_VDUP,'
      '  CAR_NVC_PERC = :CAR_NVC_PERC,'
      '  CAR_NVC_QTDE = :CAR_NVC_QTDE,'
      '  CAR_NVC_VDUP = :CAR_NVC_VDUP,'
      '  CAR_PAG_PERC = :CAR_PAG_PERC,'
      '  CAR_PAG_QTDE = :CAR_PAG_QTDE,'
      '  CAR_PAG_VDUP = :CAR_PAG_VDUP,'
      '  CAR_PEN_PERC = :CAR_PEN_PERC,'
      '  CAR_PEN_QTDE = :CAR_PEN_QTDE,'
      '  CAR_PEN_VDUP = :CAR_PEN_VDUP,'
      '  CAR_PERC = :CAR_PERC,'
      '  CAR_QTDE = :CAR_QTDE,'
      '  CAR_VDUP = :CAR_VDUP,'
      '  CDST = :CDST,'
      '  DEST = :DEST,'
      '  DTCA = :DTCA,'
      '  DTED = :DTED,'
      '  DTST = :DTST,'
      '  FLAG = :FLAG,'
      '  ID = :ID,'
      '  IDCA = :IDCA,'
      '  IDCD = :IDCD,'
      '  IDED = :IDED,'
      '  IDEP = :IDEP,'
      '  IDST = :IDST,'
      '  INFADCAD_L1 = :INFADCAD_L1,'
      '  INFADCAD_L1_001 = :INFADCAD_L1_001,'
      '  INFADCAD_L1_002 = :INFADCAD_L1_002,'
      '  INFADCAD_L1_003 = :INFADCAD_L1_003,'
      '  INFADCAD_L2 = :INFADCAD_L2,'
      '  INFADCAD_L2_001 = :INFADCAD_L2_001,'
      '  INFADCAD_L2_002 = :INFADCAD_L2_002,'
      '  INFADCAD_L2_003 = :INFADCAD_L2_003,'
      '  NAFA = :NAFA,'
      '  PDSC = :PDSC,'
      '  PDSC_001 = :PDSC_001,'
      '  PDSC_002 = :PDSC_002,'
      '  PDSC_003 = :PDSC_003,'
      '  PED_DTFN = :PED_DTFN,'
      '  PED_DTIN = :PED_DTIN,'
      '  PED_PEN_PERC = :PED_PEN_PERC,'
      '  PED_PEN_QTDE = :PED_PEN_QTDE,'
      '  PED_PEN_QTRL = :PED_PEN_QTRL,'
      '  PED_PEN_TCDE = :PED_PEN_TCDE,'
      '  PED_QTDE = :PED_QTDE,'
      '  PED_QTRL = :PED_QTRL,'
      '  PED_TCDE = :PED_TCDE,'
      '  PED_TKT_TCDE = :PED_TKT_TCDE,'
      '  PED_TKT_VTFA = :PED_TKT_VTFA,'
      '  PED_VTFA = :PED_VTFA,'
      '  REST = :REST,'
      '  SCRD = :SCRD,'
      '  VCAR = :VCAR,'
      '  VCRD = :VCRD,'
      '  VDSC = :VDSC,'
      '  VDSC_FIM_001 = :VDSC_FIM_001,'
      '  VDSC_FIM_002 = :VDSC_FIM_002,'
      '  VDSC_FIM_003 = :VDSC_FIM_003,'
      '  VDSC_INI_001 = :VDSC_INI_001,'
      '  VDSC_INI_002 = :VDSC_INI_002,'
      '  VDSC_INI_003 = :VDSC_INI_003,'
      '  VDUP = :VDUP,'
      '  VPED = :VPED'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 224
    object cad_cli_crdID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_CRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_crdIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_CLI_CRD"."IDEP"'
    end
    object cad_cli_crdIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_CLI_CRD"."IDCA"'
    end
    object cad_cli_crdDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"CAD_CLI_CRD"."DTCA"'
    end
    object cad_cli_crdIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"CAD_CLI_CRD"."IDED"'
    end
    object cad_cli_crdDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"CAD_CLI_CRD"."DTED"'
    end
    object cad_cli_crdIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"CAD_CLI_CRD"."IDST"'
    end
    object cad_cli_crdDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"CAD_CLI_CRD"."DTST"'
    end
    object cad_cli_crdCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"CAD_CLI_CRD"."CDST"'
    end
    object cad_cli_crdREST: TIBStringField
      FieldName = 'REST'
      Origin = '"CAD_CLI_CRD"."REST"'
      Size = 10
    end
    object cad_cli_crdDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"CAD_CLI_CRD"."DEST"'
      Size = 60
    end
    object cad_cli_crdIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"CAD_CLI_CRD"."IDCD"'
    end
    object cad_cli_crdNAFA: TSmallintField
      FieldName = 'NAFA'
      Origin = '"CAD_CLI_CRD"."NAFA"'
    end
    object cad_cli_crdVCRD: TIBBCDField
      FieldName = 'VCRD'
      Origin = '"CAD_CLI_CRD"."VCRD"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdSCRD: TIBBCDField
      FieldName = 'SCRD'
      Origin = '"CAD_CLI_CRD"."SCRD"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"CAD_CLI_CRD"."PDSC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC: TIBBCDField
      FieldName = 'VDSC'
      Origin = '"CAD_CLI_CRD"."VDSC"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1: TIBStringField
      FieldName = 'INFADCAD_L1'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2: TIBStringField
      FieldName = 'INFADCAD_L2'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2"'
      Size = 60
    end
    object cad_cli_crdPDSC_001: TIBBCDField
      FieldName = 'PDSC_001'
      Origin = '"CAD_CLI_CRD"."PDSC_001"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC_INI_001: TIBBCDField
      FieldName = 'VDSC_INI_001'
      Origin = '"CAD_CLI_CRD"."VDSC_INI_001"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVDSC_FIM_001: TIBBCDField
      FieldName = 'VDSC_FIM_001'
      Origin = '"CAD_CLI_CRD"."VDSC_FIM_001"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1_001: TIBStringField
      FieldName = 'INFADCAD_L1_001'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1_001"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2_001: TIBStringField
      FieldName = 'INFADCAD_L2_001'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2_001"'
      Size = 60
    end
    object cad_cli_crdPDSC_002: TIBBCDField
      FieldName = 'PDSC_002'
      Origin = '"CAD_CLI_CRD"."PDSC_002"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC_INI_002: TIBBCDField
      FieldName = 'VDSC_INI_002'
      Origin = '"CAD_CLI_CRD"."VDSC_INI_002"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVDSC_FIM_002: TIBBCDField
      FieldName = 'VDSC_FIM_002'
      Origin = '"CAD_CLI_CRD"."VDSC_FIM_002"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1_002: TIBStringField
      FieldName = 'INFADCAD_L1_002'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1_002"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2_002: TIBStringField
      FieldName = 'INFADCAD_L2_002'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2_002"'
      Size = 60
    end
    object cad_cli_crdPDSC_003: TIBBCDField
      FieldName = 'PDSC_003'
      Origin = '"CAD_CLI_CRD"."PDSC_003"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC_INI_003: TIBBCDField
      FieldName = 'VDSC_INI_003'
      Origin = '"CAD_CLI_CRD"."VDSC_INI_003"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVDSC_FIM_003: TIBBCDField
      FieldName = 'VDSC_FIM_003'
      Origin = '"CAD_CLI_CRD"."VDSC_FIM_003"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1_003: TIBStringField
      FieldName = 'INFADCAD_L1_003'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1_003"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2_003: TIBStringField
      FieldName = 'INFADCAD_L2_003'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2_003"'
      Size = 60
    end
    object cad_cli_crdFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"CAD_CLI_CRD"."FLAG"'
    end
    object cad_cli_crdVDUP: TIBBCDField
      FieldName = 'VDUP'
      Origin = '"CAD_CLI_CRD"."VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVCAR: TIBBCDField
      FieldName = 'VCAR'
      Origin = '"CAD_CLI_CRD"."VCAR"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVPED: TIBBCDField
      FieldName = 'VPED'
      Origin = '"CAD_CLI_CRD"."VPED"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_TCDE: TIBBCDField
      FieldName = 'PED_TCDE'
      Origin = '"CAD_CLI_CRD"."PED_TCDE"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_VTFA: TIBBCDField
      FieldName = 'PED_VTFA'
      Origin = '"CAD_CLI_CRD"."PED_VTFA"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_QTDE: TIntegerField
      FieldName = 'PED_QTDE'
      Origin = '"CAD_CLI_CRD"."PED_QTDE"'
    end
    object cad_cli_crdPED_QTRL: TLargeintField
      FieldName = 'PED_QTRL'
      Origin = '"CAD_CLI_CRD"."PED_QTRL"'
    end
    object cad_cli_crdPED_DTIN: TDateField
      FieldName = 'PED_DTIN'
      Origin = '"CAD_CLI_CRD"."PED_DTIN"'
    end
    object cad_cli_crdPED_DTFN: TDateField
      FieldName = 'PED_DTFN'
      Origin = '"CAD_CLI_CRD"."PED_DTFN"'
    end
    object cad_cli_crdPED_PEN_TCDE: TIBBCDField
      FieldName = 'PED_PEN_TCDE'
      Origin = '"CAD_CLI_CRD"."PED_PEN_TCDE"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_PEN_QTDE: TIntegerField
      FieldName = 'PED_PEN_QTDE'
      Origin = '"CAD_CLI_CRD"."PED_PEN_QTDE"'
    end
    object cad_cli_crdPED_PEN_QTRL: TLargeintField
      FieldName = 'PED_PEN_QTRL'
      Origin = '"CAD_CLI_CRD"."PED_PEN_QTRL"'
    end
    object cad_cli_crdPED_PEN_PERC: TIBBCDField
      FieldName = 'PED_PEN_PERC'
      Origin = '"CAD_CLI_CRD"."PED_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdPED_TKT_TCDE: TIBBCDField
      FieldName = 'PED_TKT_TCDE'
      Origin = '"CAD_CLI_CRD"."PED_TKT_TCDE"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_TKT_VTFA: TIBBCDField
      FieldName = 'PED_TKT_VTFA'
      Origin = '"CAD_CLI_CRD"."PED_TKT_VTFA"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_VDUP: TIBBCDField
      FieldName = 'BAN_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_QTDE: TIntegerField
      FieldName = 'BAN_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_QTDE"'
    end
    object cad_cli_crdBAN_PERC: TIBBCDField
      FieldName = 'BAN_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_PEN_VDUP: TIBBCDField
      FieldName = 'BAN_PEN_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_PEN_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_PEN_QTDE: TIntegerField
      FieldName = 'BAN_PEN_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_PEN_QTDE"'
    end
    object cad_cli_crdBAN_PEN_PERC: TIBBCDField
      FieldName = 'BAN_PEN_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_PAG_VDUP: TIBBCDField
      FieldName = 'BAN_PAG_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_PAG_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_PAG_QTDE: TIntegerField
      FieldName = 'BAN_PAG_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_PAG_QTDE"'
    end
    object cad_cli_crdBAN_PAG_PERC: TIBBCDField
      FieldName = 'BAN_PAG_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_PAG_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_AVC_VDUP: TIBBCDField
      FieldName = 'BAN_AVC_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_AVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_AVC_QTDE: TIntegerField
      FieldName = 'BAN_AVC_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_AVC_QTDE"'
    end
    object cad_cli_crdBAN_AVC_PERC: TIBBCDField
      FieldName = 'BAN_AVC_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_AVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_NVC_VDUP: TIBBCDField
      FieldName = 'BAN_NVC_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_NVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_NVC_QTDE: TIntegerField
      FieldName = 'BAN_NVC_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_NVC_QTDE"'
    end
    object cad_cli_crdBAN_NVC_PERC: TIBBCDField
      FieldName = 'BAN_NVC_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_NVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_DVC_VDUP: TIBBCDField
      FieldName = 'BAN_DVC_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_DVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_DVC_QTDE: TIntegerField
      FieldName = 'BAN_DVC_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_DVC_QTDE"'
    end
    object cad_cli_crdBAN_DVC_PERC: TIBBCDField
      FieldName = 'BAN_DVC_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_DVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_VDUP: TIBBCDField
      FieldName = 'CAR_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_QTDE: TIntegerField
      FieldName = 'CAR_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_QTDE"'
    end
    object cad_cli_crdCAR_PERC: TIBBCDField
      FieldName = 'CAR_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_PEN_VDUP: TIBBCDField
      FieldName = 'CAR_PEN_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_PEN_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_PEN_QTDE: TIntegerField
      FieldName = 'CAR_PEN_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_PEN_QTDE"'
    end
    object cad_cli_crdCAR_PEN_PERC: TIBBCDField
      FieldName = 'CAR_PEN_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_PAG_VDUP: TIBBCDField
      FieldName = 'CAR_PAG_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_PAG_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_PAG_QTDE: TIntegerField
      FieldName = 'CAR_PAG_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_PAG_QTDE"'
    end
    object cad_cli_crdCAR_PAG_PERC: TIBBCDField
      FieldName = 'CAR_PAG_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_PAG_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_AVC_VDUP: TIBBCDField
      FieldName = 'CAR_AVC_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_AVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_AVC_QTDE: TIntegerField
      FieldName = 'CAR_AVC_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_AVC_QTDE"'
    end
    object cad_cli_crdCAR_AVC_PERC: TIBBCDField
      FieldName = 'CAR_AVC_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_AVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_NVC_VDUP: TIBBCDField
      FieldName = 'CAR_NVC_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_NVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_NVC_QTDE: TIntegerField
      FieldName = 'CAR_NVC_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_NVC_QTDE"'
    end
    object cad_cli_crdCAR_NVC_PERC: TIBBCDField
      FieldName = 'CAR_NVC_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_NVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_DVC_VDUP: TIBBCDField
      FieldName = 'CAR_DVC_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_DVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_DVC_QTDE: TIntegerField
      FieldName = 'CAR_DVC_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_DVC_QTDE"'
    end
    object cad_cli_crdCAR_DVC_PERC: TIBBCDField
      FieldName = 'CAR_DVC_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_DVC_PERC"'
      Precision = 9
      Size = 2
    end
  end
  object SQLFKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 168
    Top = 192
  end
  object CAD_PRO_IMG: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    DataSource = DTSFKCadastro
    SQL.Strings = (
      'SELECT CDN.IMG_ID  ,CDN.IMG_NO  ,CDN.IMG_PAD,'
      
        '       CDN.ILA_BMP1,CDN.ILA_INS1,CDN.D_ILA_INS1,CDN.ILA_BMP2,CDN' +
        '.ILA_INS2,CDN.D_ILA_INS2,CDN.ILA_BMP3,CDN.ILA_INS3,CDN.D_ILA_INS' +
        '3,'
      
        '       CDN.ILA_BMP4,CDN.ILA_INS4,CDN.D_ILA_INS4,CDN.ILA_BMP5,CDN' +
        '.ILA_INS5,CDN.D_ILA_INS5,CDN.ILA_BMP6,CDN.ILA_INS6,CDN.D_ILA_INS' +
        '6,'
      
        '       CDN.ILA_BMP7,CDN.ILA_INS7,CDN.D_ILA_INS7,CDN.ILA_BMP8,CDN' +
        '.ILA_INS8,CDN.D_ILA_INS8'
      'FROM   VW_PSQ_CAD_PRO_IMG AS CDN'
      'WHERE  CDN.CP_ID = :IDCP')
    Left = 104
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDCP'
        ParamType = ptUnknown
        Size = 4
      end>
    object CAD_PRO_IMGIMG_ID: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'IMG_ID'
      Origin = '"VW_CAD_PRO_IMG_CDN"."IMG_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CAD_PRO_IMGIMG_NO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'IMG_NO'
      Origin = '"VW_CAD_PRO_IMG_CDN"."IMG_NO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CAD_PRO_IMGIMG_PAD: TBlobField
      Tag = 1
      FieldKind = fkInternalCalc
      FieldName = 'IMG_PAD'
      Origin = '"VW_CAD_PRO_IMG_CDN"."IMG_PAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object CAD_PRO_IMGILA_BMP1: TBlobField
      FieldName = 'ILA_BMP1'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS1: TIBStringField
      FieldName = 'ILA_INS1'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS1"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS1'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS1"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP2: TBlobField
      FieldName = 'ILA_BMP2'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS2: TIBStringField
      FieldName = 'ILA_INS2'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS2"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS2'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS2"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP3: TBlobField
      FieldName = 'ILA_BMP3'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS3: TIBStringField
      FieldName = 'ILA_INS3'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS3"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS3: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS3'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS3"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP4: TBlobField
      FieldName = 'ILA_BMP4'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS4: TIBStringField
      FieldName = 'ILA_INS4'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS4"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS4: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS4'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS4"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP5: TBlobField
      FieldName = 'ILA_BMP5'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS5: TIBStringField
      FieldName = 'ILA_INS5'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS5"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS5: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS5'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS5"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP6: TBlobField
      FieldName = 'ILA_BMP6'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS6: TIBStringField
      FieldName = 'ILA_INS6'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS6"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS6: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS6'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS6"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP7: TBlobField
      FieldName = 'ILA_BMP7'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS7: TIBStringField
      FieldName = 'ILA_INS7'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS7"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS7: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS7'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS7"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP8: TBlobField
      FieldName = 'ILA_BMP8'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS8: TIBStringField
      FieldName = 'ILA_INS8'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS8"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS8: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS8'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS8"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
  end
  object DTSCAD_PRO_IMG: TDataSource
    AutoEdit = False
    DataSet = CAD_PRO_IMG
    OnDataChange = DTSCAD_PRO_IMGDataChange
    Left = 136
    Top = 288
  end
end
