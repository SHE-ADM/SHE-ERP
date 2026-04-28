inherited frmctr_ped: Tfrmctr_ped
  Left = -7
  Top = 107
  HelpType = htKeyword
  HelpKeyword = '0'
  AlphaBlendValue = 0
  Caption = 'Controle de pedidos pronta entrega'
  ClientHeight = 991
  ClientWidth = 1918
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    Width = 1918
    inherited SpeedbarSection5: TSpeedbarSection
      Caption = 'IM'
    end
    inherited siREF: TSpeedItem
      Hint = 'Atualiza e Restaura Visualiza'#231#227'o'
      SectionName = 'IM'
    end
    inherited siPSQ: TSpeedItem
      SectionName = 'IM'
    end
    object SINovo: TSpeedItem [6]
      Action = ACTMPAppend
      BtnCaption = 'Incluir'
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Registros'
      ImageIndex = 2
      Spacing = 0
      Left = 165
      Top = 5
      Visible = True
      OnClick = ACTMPAppendExecute
      SectionName = 'IM'
    end
    object SIAltera: TSpeedItem [7]
      Action = ACTMPEdit
      BtnCaption = 'Alterar'
      Cursor = crHandPoint
      Hint = 'Edi'#231#227'o de Registros'
      ImageIndex = 3
      Spacing = 0
      Left = 245
      Top = 5
      Visible = True
      OnClick = ACTMPEditExecute
      SectionName = 'IM'
    end
    object SICancela: TSpeedItem [8]
      Action = ACTMPDelete
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelamento de Pedido'
      ImageIndex = 4
      Spacing = 0
      Left = 325
      Top = 5
      Visible = True
      OnClick = ACTMPDeleteExecute
      SectionName = 'IM'
    end
    object SIDevolucao: TSpeedItem [9]
      Action = ACTMPDevolucao
      BtnCaption = 'Devolu'#231#245'es'
      Cursor = crHandPoint
      Hint = 'Devolu'#231#245'es de Produtos'
      ImageIndex = 5
      Spacing = 0
      Left = 405
      Top = 5
      Visible = True
      OnClick = ACTMPDevolucaoExecute
      SectionName = 'IM'
    end
    object SIAbatimento: TSpeedItem [10]
      Action = ACTMPAbatimento
      BtnCaption = 'Abatimentos'
      Cursor = crHandPoint
      Hint = 'Abatimentos de Pedidos'
      ImageIndex = 6
      Spacing = 0
      Left = 485
      Top = 5
      Visible = True
      OnClick = ACTMPAbatimentoExecute
      SectionName = 'IM'
    end
    object SICAD_CLI_EDI: TSpeedItem [11]
      Action = ACTMPCAD_CLI_EDI
      BtnCaption = 'Clientes'
      Cursor = crHandPoint
      Hint = 'Informa'#231#245'es Cadastrais'
      ImageIndex = 7
      Spacing = 0
      Left = 565
      Top = 5
      Visible = True
      OnClick = ACTMPCAD_CLI_EDIExecute
      SectionName = 'IM'
    end
    object SICAD_CLI_CRD: TSpeedItem [12]
      Action = ACTMPCAD_CLI_CRD
      BtnCaption = 'Comercial'
      Cursor = crHandPoint
      Hint = 'Informa'#231#245'es Comerciais'
      ImageIndex = 8
      Spacing = 0
      Left = 645
      Top = 5
      Visible = True
      OnClick = ACTMPCAD_CLI_CRDExecute
      SectionName = 'IM'
    end
    object SIRomaneio: TSpeedItem [13]
      Action = ACTMPRomaneio
      BtnCaption = 'Romaneios'
      Cursor = crHandPoint
      Hint = 'Romaneios de Vendas'
      ImageIndex = 9
      Spacing = 0
      Left = 725
      Top = 5
      Visible = True
      OnClick = ACTMPRomaneioExecute
      SectionName = 'IM'
    end
    object SIFinaliza: TSpeedItem [14]
      Action = ACTMPFinanceiroAppend
      BtnCaption = 'Finalizar'
      Cursor = crHandPoint
      Hint = 'Finaliza o pedido e gera contas a receber'
      ImageIndex = 10
      Spacing = 0
      Left = 805
      Top = 5
      Visible = True
      OnClick = ACTMPFinanceiroAppendExecute
      SectionName = 'IM'
    end
    object SIEstorno: TSpeedItem [15]
      Action = ACTMPFinanceiroDelete
      BtnCaption = 'Re-Abrir'
      Cursor = crHandPoint
      Hint = 'Baixa contas a receber e re-abre pedido'
      ImageIndex = 11
      Spacing = 0
      Left = 885
      Top = 5
      Visible = True
      OnClick = ACTMPFinanceiroDeleteExecute
      SectionName = 'IM'
    end
    inherited siREL: TSpeedItem
      Hint = 'Imprime e Visualiza Relat'#243'rios'
      ImageIndex = 12
      Left = 965
      SectionName = 'IM'
    end
    inherited siSAIR: TSpeedItem
      ImageIndex = 13
      Left = 1045
      SectionName = 'IM'
    end
  end
  inherited pnlbot: TPanel
    Top = 585
    Width = 1918
    Height = 380
    Color = clHighlightText
    Visible = True
    object GBFKPedidos: TGroupBox
      Left = 0
      Top = 0
      Width = 1618
      Height = 380
      Align = alClient
      Caption = '  Itens  '
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object PCFKPedidos: TdxPageControl
        Left = 2
        Top = 19
        Width = 1614
        Height = 359
        ActivePage = TSFKPedidos
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsItalic]
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        ParentFont = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpBottom
        TabWidth = 0
        object TSFKPedidos: TdxTabSheet
          Caption = '  Pedido  '
          object DBGITPED: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1614
            Height = 310
            Bands = <
              item
                Caption = 'Produtos'
                Fixed = bfLeft
                Width = 370
              end
              item
                Caption = 'Descontos'
                Visible = False
                Width = 197
              end
              item
                Caption = 'Separados'
                Visible = False
              end
              item
                Caption = 'Classifica'#231#227'o Fiscal'
                MinWidth = 130
                Width = 130
              end
              item
                Caption = 'Comiss'#227'o'
                Visible = False
              end
              item
                Caption = 'Peso'
              end
              item
                Alignment = taLeftJustify
                Caption = 'Empresa'
                Width = 102
              end>
            DefaultLayout = False
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
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandColor = clGrayText
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clHighlightText
            BandFont.Height = -13
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            DataSource = DTSFKCadastro
            Filter.Active = True
            Filter.Criteria = {00000000}
            FixedBandLineWidth = 1
            GridLineColor = clSilver
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -13
            HeaderFont.Name = 'Segoe UI'
            HeaderFont.Style = [fsItalic]
            HideFocusRect = True
            HideSelectionColor = 14789952
            HighlightColor = 14789952
            IndentDesc = 500
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCellMultiSelect, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = ANSI_CHARSET
            PreviewFont.Color = 12290078
            PreviewFont.Height = -12
            PreviewFont.Name = 'Segoe UI Semibold'
            PreviewFont.Style = [fsBold, fsItalic]
            ShowBands = True
            ShowGrid = False
            OnCustomDrawCell = DBGITPEDCustomDrawCell
            object DBGITPEDC_ID: TdxDBGridColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'C_ID'
            end
            object DBGITPEDITEM: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ITEM'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGITPEDARTIGO: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ARTIGO'
            end
            object DBGITPEDSKU: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 80
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SKU'
            end
            object DBGITPEDDGCP: TdxDBGridColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 100
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DGCP'
            end
            object DBGITPEDDECP: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 200
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DECP'
            end
            object DBGITPEDUCOM: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UCOM'
            end
            object DBGITPEDQTDE: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTDE'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDQTRL: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTRL'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGITPEDVPRC_PAD_INI: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 87
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VPRC_PAD_INI'
              DisableFilter = True
            end
            object DBGITPEDVPRC_PAD_FIM: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 91
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VPRC_PAD_FIM'
              DisableFilter = True
            end
            object DBGITPEDVPRC_COM: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VPRC_COM'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'VPRC_COM'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDTCDE: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TCDE'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDPDSC: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 1
              RowIndex = 0
              FieldName = 'PDSC'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'PDSC'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDVDSC: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 65
              BandIndex = 1
              RowIndex = 0
              FieldName = 'VDSC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VDSC'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDQTSP: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 2
              RowIndex = 0
              FieldName = 'QTSP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTSP'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDRLSP: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 2
              RowIndex = 0
              FieldName = 'RLSP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'RLSP'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGITPEDVTSP: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 2
              RowIndex = 0
              FieldName = 'VTSP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VTSP'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDDESP: TdxDBGridColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 80
              BandIndex = 2
              RowIndex = 0
              FieldName = 'DESP'
            end
            object DBGITPEDDTSP: TdxDBGridDateColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 75
              BandIndex = 2
              RowIndex = 0
              FieldName = 'DTSP'
            end
            object DBGITPEDCP_DEEP: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 100
              Width = 120
              BandIndex = 6
              RowIndex = 0
              FieldName = 'CP_DEEP'
            end
            object DBGITPEDNCM: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 75
              BandIndex = 3
              RowIndex = 0
              FieldName = 'NCM'
            end
            object DBGITPEDPIPI: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 3
              RowIndex = 0
              FieldName = 'PIPI'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'PIPI'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDVIPI: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 70
              BandIndex = 3
              RowIndex = 0
              FieldName = 'VIPI'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VIPI'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDPCOM: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 4
              RowIndex = 0
              FieldName = 'PCOM'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'PCOM'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDVCOM: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 4
              RowIndex = 0
              FieldName = 'VCOM'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VCOM'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITPEDPSBR: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 5
              RowIndex = 0
              FieldName = 'PSBR'
              SummaryFooterType = cstSum
              SummaryFooterField = 'PSBR'
              SummaryFooterFormat = ',##,0.000'
              DisableFilter = True
            end
            object DBGITPEDPSLQ: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 5
              RowIndex = 0
              FieldName = 'PSLQ'
              SummaryFooterType = cstSum
              SummaryFooterField = 'PSLQ'
              SummaryFooterFormat = ',##,0.000'
              DisableFilter = True
            end
          end
          object PNLTAB_PRC: TPanel
            Left = 0
            Top = 310
            Width = 1614
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
        object TSFKExpedicao: TdxTabSheet
          Caption = '  Expedi'#231#227'o  '
          TabVisible = False
          object DBGITSEP: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1607
            Height = 332
            Bands = <
              item
                Caption = 'Pedido de Venda'
                Width = 370
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clBlack
            BandFont.Height = -13
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            DataSource = DTSFKSeparados
            Filter.Active = True
            Filter.Criteria = {00000000}
            FixedBandLineWidth = 1
            GridLineColor = clSilver
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -13
            HeaderFont.Name = 'Segoe UI'
            HeaderFont.Style = [fsItalic]
            HideSelectionColor = 14789952
            HighlightColor = 14789952
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlack
            PreviewFont.Height = -12
            PreviewFont.Name = 'Segoe UI Semibold'
            PreviewFont.Style = [fsBold, fsItalic]
            ShowGrid = False
            object DBGITSEPITEM: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ITEM'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ITEM'
              SummaryFooterFormat = '0'
            end
            object DBGITSEPSKU: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 100
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SKU'
            end
            object DBGITSEPDGCP: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 100
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DGCP'
            end
            object DBGITSEPCDET: TdxDBGridMaskColumn
              Alignment = taRightJustify
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CDET'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGITSEPDESP: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 95
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DESP'
            end
            object DBGITSEPDTCA: TdxDBGridDateColumn
              Width = 94
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTCA'
              DisableFilter = True
            end
            object DBGITSEPQTDE: TdxDBGridMaskColumn
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
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITSEPQTRL: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTRL'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGITSEPVPRC_PAD_INI: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VPRC_PAD_INI'
            end
            object DBGITSEPVPRC_PAD_FIM: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VPRC_PAD_FIM'
            end
            object DBGITSEPVPRC_COM: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VPRC_COM'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'VPRC_COM'
              SummaryFooterFormat = ',##,0.00###'
              DisableFilter = True
            end
            object DBGITSEPTCDE: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TCDE'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
          end
        end
        object TSFKRomaneios: TdxTabSheet
          Caption = '  Romaneio  '
          TabVisible = False
          object DBGITROM: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1292
            Height = 250
            Bands = <
              item
                Caption = 'Pedido de Venda'
                Width = 370
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clBlack
            BandFont.Height = -13
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            DataSource = DTSFKRomaneios
            Filter.Active = True
            Filter.Criteria = {00000000}
            FixedBandLineWidth = 1
            GridLineColor = clSilver
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -13
            HeaderFont.Name = 'Segoe UI'
            HeaderFont.Style = [fsItalic]
            HideSelectionColor = 14789952
            HighlightColor = 14789952
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlack
            PreviewFont.Height = -12
            PreviewFont.Name = 'Segoe UI Semibold'
            PreviewFont.Style = [fsBold, fsItalic]
            ShowGrid = False
            object DBGITROMPRO_CPRO: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 100
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PRO_CPRO'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGITROMDGCP: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 100
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DGCP'
            end
            object DBGITROMROM_CDET: TdxDBGridMaskColumn
              Alignment = taRightJustify
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_CDET'
              DisableFilter = True
            end
            object DBGITROMSEPARADOR: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SEPARADOR'
            end
            object DBGITROMROM_QTDE: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTDE'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGITROMROM_QTRL: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_QTRL'
              SummaryFooterFormat = '0'
              DisableFilter = True
            end
            object DBGITROMROM_UNIT: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_UNIT'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'ROM_UNIT'
              SummaryFooterFormat = ',##,0.00###'
              DisableFilter = True
            end
            object DBGITROMROM_TOTA: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_TOTA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_TOTA'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
          end
        end
      end
    end
    object PNLIMG_PAD: TPanel
      Left = 1618
      Top = 0
      Width = 300
      Height = 380
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
        Width = 298
        Height = 316
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
          Width = 294
          Height = 295
          Cursor = crHandPoint
          Hint = 'Amostragem do Produto'#13#10'Click para visualizar tela inteira'
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          OnClick = IMG_PADClick
        end
      end
      object GBIMG_ILA: TGroupBox
        Left = 1
        Top = 317
        Width = 298
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
          Left = 4
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP2: TBevel
          Left = 40
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP3: TBevel
          Left = 76
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP4: TBevel
          Left = 112
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP5: TBevel
          Left = 148
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP6: TBevel
          Left = 184
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP7: TBevel
          Left = 220
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP8: TBevel
          Left = 256
          Top = 20
          Width = 34
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object DBILA_BMP1: TDBImage
          Left = 7
          Top = 23
          Width = 29
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
          Left = 43
          Top = 23
          Width = 29
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
          Left = 79
          Top = 23
          Width = 29
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
          Left = 115
          Top = 23
          Width = 29
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
          Left = 151
          Top = 23
          Width = 29
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
          Left = 187
          Top = 23
          Width = 29
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
          Left = 223
          Top = 23
          Width = 29
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
          Left = 259
          Top = 23
          Width = 29
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
  inherited pnldbg: TPanel
    Width = 1918
    Height = 520
    inherited DSConsulta: TdxDockSite
      Width = 1893
      Height = 520
      Cursor = crHandPoint
      ManagerColor = False
      DockType = 0
      OriginalWidth = 768
      OriginalHeight = 448
      inherited LDSConsulta: TdxLayoutDockSite
        Width = 1893
        Height = 520
        DockType = 1
        OriginalWidth = 1698
        OriginalHeight = 200
      end
      inherited DPConsulta: TdxDockPanel
        Width = 1893
        Height = 520
        Cursor = crHandPoint
        DockType = 1
        OriginalWidth = 1698
        OriginalHeight = 140
        inherited gbDET: TGroupBox
          Width = 1889
          Height = 516
          Caption = '  Venda  '
          inherited DBGConsulta: TdxDBGrid
            Width = 1885
            Height = 495
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'Pedidos'
                Fixed = bfLeft
                Width = 611
              end
              item
                Caption = 'Destinat'#225'rios'
              end
              item
                Caption = 'Vendedores'
                Width = 202
              end
              item
                Caption = 'Entradas'
              end
              item
                Caption = 'Descontos'
                Visible = False
              end
              item
                Caption = 'Expedi'#231#227'o'
              end
              item
                Caption = 'Faturamento'
                Width = 361
              end
              item
                Caption = 'Nota Fiscal'
                Visible = False
              end
              item
                Caption = 'Transportadoras'
              end
              item
                Caption = 'Frete'
              end>
            KeyField = 'IDPK'
            ShowSummaryFooter = True
            Color = clHighlightText
            ParentShowHint = False
            ShowHint = True
            BandColor = clGrayText
            BandFont.Color = clHighlightText
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            Filter.Active = True
            Filter.Criteria = {00000000}
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
            ShowBands = True
            ShowGrid = False
            ShowRowFooter = True
            inherited DBGConsultaC_ID: TdxDBGridColumn
              Width = 99
            end
            object DBGConsultaC_IDPK: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'C_IDPK'
            end
            object DBGConsultaLOG_PRN_CDEV: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LOG_PRN_CDEV'
            end
            object DBGConsultaLOG_PRN_QTEV: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LOG_PRN_QTEV'
            end
            object DBGConsultaDEPK: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 104
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPK'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = ',##,0'
            end
            object DBGConsultaCTNR: TdxDBGridColumn
              Caption = 'Container'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Visible = False
              Width = 73
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CTNR'
            end
            object DBGConsultaDTPK: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTPK'
            end
            object DBGConsultaHTPK: TdxDBGridTimeColumn
              Alignment = taLeftJustify
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HTPK'
            end
            object DBGConsultaCDNF: TdxDBGridColumn
              Alignment = taLeftJustify
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 58
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CDNF'
            end
            object DBGConsultaDTNF: TdxDBGridDateColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTNF'
            end
            object DBGConsultaD_DTSA: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'D_DTSA'
            end
            object DBGConsultaTPCO: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TPCO'
            end
            object DBGConsultaD_DEST: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 0
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'D_DEST'
            end
            object DBGConsultaRECO: TdxDBGridColumn
              Alignment = taLeftJustify
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 40
              Width = 63
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RECO'
            end
            object DBGConsultaD_STCO: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 100
              Width = 142
              BandIndex = 0
              RowIndex = 0
              FieldName = 'D_STCO'
            end
            object DBGConsultaBQPD: TdxDBGridMaskColumn
              Visible = False
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BQPD'
            end
            object DBGConsultaFAPD: TdxDBGridMaskColumn
              Visible = False
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FAPD'
            end
            object DBGConsultaCSCD: TdxDBGridMaskColumn
              Visible = False
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CSCD'
            end
            object DBGConsultaSTPD: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'STPD'
            end
            object DBGConsultaDECD: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 0
              Width = 200
              BandIndex = 1
              RowIndex = 0
              FieldName = 'DECD'
              SummaryFooterType = cstSum
              SummaryFooterField = 'CNCD'
              SummaryFooterFormat = '0 Novos'
            end
            object DBGConsultaCNCD: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 37
              BandIndex = 1
              RowIndex = 0
              FieldName = 'CNCD'
            end
            object DBGConsultaGPCD: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 78
              BandIndex = 1
              RowIndex = 0
              FieldName = 'GPCD'
            end
            object DBGConsultaUFCD: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 40
              BandIndex = 1
              RowIndex = 0
              FieldName = 'UFCD'
            end
            object DBGConsultaDECV: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MinWidth = 80
              Width = 80
              BandIndex = 2
              RowIndex = 0
              FieldName = 'DECV'
            end
            object DBGConsultaDECR: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 129
              BandIndex = 2
              RowIndex = 0
              FieldName = 'DECR'
            end
            object DBGConsultaTCDE: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 110
              BandIndex = 3
              RowIndex = 0
              FieldName = 'TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_TCDE'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaD_TCDE: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 100
              BandIndex = 3
              RowIndex = 0
              FieldName = 'D_TCDE'
              DisableFilter = True
            end
            object DBGConsultaQTRL: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 55
              BandIndex = 3
              RowIndex = 0
              FieldName = 'QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_QTRL'
              SummaryFooterFormat = ',##,0'
              DisableFilter = True
            end
            object DBGConsultaD_QTRL: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 3
              RowIndex = 0
              FieldName = 'D_QTRL'
            end
            object DBGConsultaVDSC: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 75
              BandIndex = 4
              RowIndex = 0
              FieldName = 'VDSC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VDSC'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaPDSC: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 4
              RowIndex = 0
              FieldName = 'PDSC'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'PDSC'
              SummaryFooterFormat = '0%'
            end
            object DBGConsultaIDOS: TdxDBGridCheckColumn
              Alignment = taCenter
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taCenter
              Width = 39
              BandIndex = 5
              RowIndex = 0
              FieldName = 'IDOS'
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBGConsultaDTSP: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              BandIndex = 5
              RowIndex = 0
              FieldName = 'DTSP'
            end
            object DBGConsultaD_VTSP: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 5
              RowIndex = 0
              FieldName = 'D_VTSP'
            end
            object DBGConsultaVTSP: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 100
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VTSP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_VTSP'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaD_RLSP: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 5
              RowIndex = 0
              FieldName = 'D_RLSP'
            end
            object DBGConsultaRLSP: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 55
              BandIndex = 5
              RowIndex = 0
              FieldName = 'RLSP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'D_RLSP'
              SummaryFooterFormat = ',##,0'
              DisableFilter = True
            end
            object DBGConsultaD_PPSP: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 5
              RowIndex = 0
              FieldName = 'D_PPSP'
            end
            object DBGConsultaPPSP: TdxDBGridMaskColumn
              Alignment = taRightJustify
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 5
              RowIndex = 0
              FieldName = 'PPSP'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'D_PPSP'
              SummaryFooterFormat = '0%'
            end
            object DBGConsultaVTFA: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 100
              BandIndex = 6
              RowIndex = 0
              FieldName = 'VTFA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VTFA'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaVTAP: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 100
              BandIndex = 6
              RowIndex = 0
              FieldName = 'VTAP'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VTAP'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaVNF: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 100
              BandIndex = 7
              RowIndex = 0
              FieldName = 'VNF'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VNF'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaVIPI: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 7
              RowIndex = 0
              FieldName = 'VIPI'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VIPI'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaVST: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 7
              RowIndex = 0
              FieldName = 'VST'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VST'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaDECT: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 185
              BandIndex = 8
              RowIndex = 0
              FieldName = 'DECT'
            end
            object DBGConsultaLOC_NO_CT: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 80
              BandIndex = 8
              RowIndex = 0
              FieldName = 'LOC_NO_CT'
            end
            object DBGConsultaUFCT: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 40
              BandIndex = 8
              RowIndex = 0
              FieldName = 'UFCT'
            end
            object DBGConsultaD_MFRT: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 120
              BandIndex = 9
              RowIndex = 0
              FieldName = 'D_MFRT'
            end
            object DBGConsultaVFRT: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 9
              RowIndex = 0
              FieldName = 'VFRT'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VFRT'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaPSBR: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 9
              RowIndex = 0
              FieldName = 'PSBR'
              SummaryFooterType = cstSum
              SummaryFooterField = 'PSBR'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaPSLQ: TdxDBGridColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 9
              RowIndex = 0
              FieldName = 'PSLQ'
              SummaryFooterType = cstSum
              SummaryFooterField = 'PSLQ'
              SummaryFooterFormat = ',##,0.00;-,##,0.00'
              DisableFilter = True
            end
          end
          object PNLINFADCAD: TPanel
            Left = 2
            Top = 514
            Width = 1885
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais do pedido ...'
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
              Width = 1881
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es adicionais do pedido ...'
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
              Height = 46
              StoredValues = 64
            end
          end
        end
        object PNLINFADLOG: TPanel
          Left = 0
          Top = 516
          Width = 1889
          Height = 0
          Cursor = crHandPoint
          Align = alBottom
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Color = clGrayText
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object PNLLOGPRN: TPanel
            Left = 382
            Top = 2
            Width = 1505
            Height = 46
            Cursor = crHandPoint
            Hint = 'Log de Relat'#243'rios'
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Color = clGrayText
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlightText
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            object PNLINFADPRN: TPanel
              Left = 0
              Top = 0
              Width = 1505
              Height = 46
              Cursor = crHandPoint
              Hint = 'Log de Relat'#243'rios'
              Align = alClient
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object DBINFADPRN: TdxDBMemo
                Left = 0
                Top = 0
                Width = 1505
                Cursor = crHandPoint
                Hint = 'Log de Relat'#243'rios'
                Align = alClient
                Color = clGrayText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
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
                Alignment = taRightJustify
                DataField = 'INFADPRN'
                DataSource = DTSCadastro
                ReadOnly = True
                Height = 46
                StoredValues = 65
              end
            end
          end
          object PNLLOGOS: TPanel
            Left = 2
            Top = 2
            Width = 380
            Height = 46
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es Adicionais da Ordem de Separa'#231#227'o'
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Color = clGrayText
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlightText
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            object PNLINFADOS: TPanel
              Left = 0
              Top = 0
              Width = 190
              Height = 46
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es Adicionais da Ordem de Separa'#231#227'o'
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object DBINFADOS: TdxDBMemo
                Left = 0
                Top = 0
                Width = 190
                Cursor = crHandPoint
                Hint = 'Informa'#231#245'es Adicionais da Ordem de Separa'#231#227'o'
                Align = alClient
                Color = clGrayText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
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
                DataField = 'INFADOS'
                DataSource = DTSCadastro
                ReadOnly = True
                Height = 46
                StoredValues = 64
              end
            end
            object PNLINFSTOS: TPanel
              Left = 190
              Top = 0
              Width = 190
              Height = 46
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es Adicionais da Ordem de Separa'#231#227'o'
              Align = alClient
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
              object DBINFSTOS: TdxDBMemo
                Left = 0
                Top = 0
                Width = 190
                Cursor = crHandPoint
                Hint = 'Informa'#231#245'es Adicionais da Ordem de Separa'#231#227'o'
                Align = alClient
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
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
                Alignment = taLeftJustify
                DataField = 'INFSTOS'
                DataSource = DTSCadastro
                ReadOnly = True
                Height = 46
                StoredValues = 65
              end
            end
          end
        end
      end
    end
    object DSResumos: TdxDockSite
      Left = 1893
      Top = 0
      Width = 25
      Height = 520
      Cursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ManagerFont = False
      Align = alRight
      DockType = 0
      OriginalWidth = 25
      OriginalHeight = 520
      object dxLayoutDockSite2: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 0
        Height = 520
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
        object dxLayoutDockSite1: TdxLayoutDockSite
          Left = 0
          Top = 0
          Width = 0
          Height = 520
          Visible = False
          DockType = 1
          OriginalWidth = 590
          OriginalHeight = 200
        end
        object dxTabContainerDockSite1: TdxTabContainerDockSite
          Left = 0
          Top = 0
          Width = 0
          Height = 520
          Visible = False
          ActiveChildIndex = -1
          AllowFloating = True
          AutoHide = False
          DockType = 1
          OriginalWidth = 590
          OriginalHeight = 140
          object DPREL_PED_PDV_DIA: TdxDockPanel
            Left = 0
            Top = 0
            Width = 870
            Height = 520
            Cursor = crHandPoint
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ManagerColor = False
            ManagerFont = False
            Visible = False
            AllowFloating = True
            AutoHide = True
            Caption = 'Resumo Di'#225'rio'
            CaptionButtons = [cbMaximize]
            ImageIndex = 0
            AutoHidePosition = 2
            DockType = 1
            OriginalWidth = 870
            OriginalHeight = 140
            object DBGREL_PED_PDV_DIA: TdxDBGrid
              Left = 0
              Top = 0
              Width = 866
              Height = 494
              Cursor = crHandPoint
              Bands = <
                item
                  Caption = 'Lan'#231'amentos'
                  Fixed = bfLeft
                end
                item
                  Caption = 'Clientes'
                  Width = 99
                end
                item
                  Caption = 'Entradas de Pedidos'
                end
                item
                  Caption = 'Pedidos Separados'
                end
                item
                  Caption = 'Pedidos Faturados'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 13421258
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = clGrayText
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSREL_PED_PDV_DIA
              Filter.Active = True
              Filter.Criteria = {00000000}
              FixedBandLineWidth = 1
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = [fsItalic]
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = ANSI_CHARSET
              PreviewFont.Color = clBlack
              PreviewFont.Height = -11
              PreviewFont.Name = 'Segoe UI Semibold'
              PreviewFont.Style = [fsBold, fsItalic]
              ShowBands = True
              ShowGrid = False
              OnCustomDrawCell = DBGREL_PED_PDV_DIACustomDrawCell
              object DBGREL_PED_PDV_DIAPED_EP_NO: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PED_EP_NO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = ',##,0'
              end
              object DBGREL_PED_PDV_DIAPED_DIA: TdxDBGridDateColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PED_DIA'
              end
              object DBGREL_PED_PDV_DIACLI_ITCD: TdxDBGridMaskColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CLI_ITCD'
                SummaryFooterType = cstSum
                SummaryFooterField = 'CLI_ITCD'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_DIACLI_INCD: TdxDBGridMaskColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 45
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CLI_INCD'
                SummaryFooterType = cstSum
                SummaryFooterField = 'CLI_INCD'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_DIAPED_VLPK: TdxDBGridMaskColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 115
                BandIndex = 2
                RowIndex = 0
                FieldName = 'PED_VLPK'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_VLPK'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_DIAPED_ILPK: TdxDBGridMaskColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 2
                RowIndex = 0
                FieldName = 'PED_ILPK'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_ILPK'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_DIAPED_VLSP: TdxDBGridMaskColumn
                Color = clWindowText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 115
                BandIndex = 3
                RowIndex = 0
                FieldName = 'PED_VLSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_VLSP'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_DIAPED_ILSP: TdxDBGridMaskColumn
                Color = clWindowText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 3
                RowIndex = 0
                FieldName = 'PED_ILSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_ILSP'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_DIAPED_PLSP: TdxDBGridMaskColumn
                Color = clWindowText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 65
                BandIndex = 3
                RowIndex = 0
                FieldName = 'PED_PLSP'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'PED_PLSP'
                SummaryFooterFormat = ',##,0.00 %'
              end
              object DBGREL_PED_PDV_DIAPED_VTLQ: TdxDBGridMaskColumn
                Color = 10485663
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 115
                BandIndex = 4
                RowIndex = 0
                FieldName = 'PED_VTLQ'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_VTLQ'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_DIAPED_ITLQ: TdxDBGridMaskColumn
                Color = 10485663
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 4
                RowIndex = 0
                FieldName = 'PED_ITLQ'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_ITLQ'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
            end
          end
          object DPREL_PED_PDV_MES: TdxDockPanel
            Left = 0
            Top = 0
            Width = 870
            Height = 520
            Cursor = crHandPoint
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ManagerFont = False
            Visible = False
            AllowFloating = True
            AutoHide = True
            Caption = 'Resumo Mensal'
            CaptionButtons = [cbMaximize]
            ImageIndex = 0
            AutoHidePosition = 2
            DockType = 1
            OriginalWidth = 870
            OriginalHeight = 140
            object DBGREL_PED_PDV_MES: TdxDBGrid
              Left = 0
              Top = 0
              Width = 866
              Height = 494
              Cursor = crHandPoint
              Bands = <
                item
                  Alignment = taLeftJustify
                  Caption = 'Lan'#231'amentos'
                  Fixed = bfLeft
                  Width = 99
                end
                item
                  Alignment = taLeftJustify
                  Caption = 'Clientes'
                end
                item
                  Caption = 'Entradas de Pedidos'
                end
                item
                  Caption = 'Pedidos Separados'
                end
                item
                  Caption = 'Pedidos Faturadoss'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 13421258
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = clGrayText
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSREL_PED_PDV_MES
              Filter.Active = True
              Filter.Criteria = {00000000}
              FixedBandLineWidth = 1
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = [fsItalic]
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = ANSI_CHARSET
              PreviewFont.Color = clBlack
              PreviewFont.Height = -11
              PreviewFont.Name = 'Segoe UI Semibold'
              PreviewFont.Style = [fsBold, fsItalic]
              ShowBands = True
              ShowGrid = False
              OnCustomDrawCell = DBGREL_PED_PDV_MESCustomDrawCell
              object DBGREL_PED_PDV_MESPED_EP_NO: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PED_EP_NO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = ',##,0'
              end
              object DBGREL_PED_PDV_MESPED_MES: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PED_MES'
              end
              object DBGREL_PED_PDV_MESCLI_ITCD: TdxDBGridColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CLI_ITCD'
                SummaryFooterType = cstSum
                SummaryFooterField = 'CLI_ITCD'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_MESCLI_INCD: TdxDBGridColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 45
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CLI_INCD'
                SummaryFooterType = cstSum
                SummaryFooterField = 'CLI_INCD'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_MESPED_VLPK: TdxDBGridMaskColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 115
                BandIndex = 2
                RowIndex = 0
                FieldName = 'PED_VLPK'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_VLPK'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_MESPED_ILPK: TdxDBGridColumn
                Color = clHighlightText
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 2
                RowIndex = 0
                FieldName = 'PED_ILPK'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_ILPK'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_MESPED_VLSP: TdxDBGridMaskColumn
                Color = clWindowText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 115
                BandIndex = 3
                RowIndex = 0
                FieldName = 'PED_VLSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_VLSP'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_MESPED_ILSP: TdxDBGridColumn
                Color = clWindowText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 3
                RowIndex = 0
                FieldName = 'PED_ILSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_ILSP'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_MESPED_PLSP: TdxDBGridMaskColumn
                Alignment = taRightJustify
                Color = clWindowText
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlightText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 65
                BandIndex = 3
                RowIndex = 0
                FieldName = 'PED_PLSP'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'PED_PLSP'
                SummaryFooterFormat = ',##,0.00 %'
              end
              object DBGREL_PED_PDV_MESPED_VTLQ: TdxDBGridMaskColumn
                Color = 10485663
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 115
                BandIndex = 4
                RowIndex = 0
                FieldName = 'PED_VTLQ'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_VTLQ'
                SummaryFooterFormat = 'R$ ,##,0.00'
                DisableFilter = True
              end
              object DBGREL_PED_PDV_MESPED_ITLQ: TdxDBGridColumn
                Color = 10485663
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 55
                BandIndex = 4
                RowIndex = 0
                FieldName = 'PED_ITLQ'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PED_ITLQ'
                SummaryFooterFormat = ',##,0'
                DisableFilter = True
              end
            end
          end
        end
      end
      object DPREL_PED_PDV_ANO: TdxDockPanel
        Left = 0
        Top = 0
        Width = 870
        Height = 520
        Visible = False
        AllowFloating = True
        AutoHide = True
        Caption = 'Resumo Anual'
        AutoHidePosition = 2
        DockType = 4
        OriginalWidth = 870
        OriginalHeight = 140
        object DBGREL_PED_PDV_ANO: TdxDBGrid
          Left = 0
          Top = 0
          Width = 866
          Height = 495
          Cursor = crHandPoint
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Lan'#231'amentos'
              Fixed = bfLeft
              Width = 99
            end
            item
              Alignment = taLeftJustify
              Caption = 'Clientes'
            end
            item
              Caption = 'Entradas de Pedidos'
            end
            item
              Caption = 'Pedidos Separados'
            end
            item
              Caption = 'Pedidos Faturadoss'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Color = 13421258
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          AutoSearchColor = 9395
          AutoSearchTextColor = clWhite
          BandColor = clGrayText
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWhite
          BandFont.Height = -13
          BandFont.Name = 'Segoe UI Semibold'
          BandFont.Style = [fsBold, fsItalic]
          DataSource = DTSREL_PED_PDV_ANO
          Filter.Active = True
          Filter.Criteria = {00000000}
          FixedBandLineWidth = 1
          GridLineColor = clSilver
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsItalic]
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlack
          PreviewFont.Height = -11
          PreviewFont.Name = 'Segoe UI Semibold'
          PreviewFont.Style = [fsBold, fsItalic]
          ShowBands = True
          ShowGrid = False
          OnCustomDrawCell = DBGREL_PED_PDV_MESCustomDrawCell
          object DBGREL_PED_PDV_ANOPED_EP_NO: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PED_EP_NO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = ',##,0'
          end
          object DBGREL_PED_PDV_ANOPED_ANO: TdxDBGridMaskColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PED_ANO'
          end
          object DBGREL_PED_PDV_ANOCLI_ITCD: TdxDBGridMaskColumn
            Color = clHighlightText
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 55
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CLI_ITCD'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CLI_ITCD'
            SummaryFooterFormat = ',##,0'
            DisableFilter = True
          end
          object DBGREL_PED_PDV_ANOCLI_INCD: TdxDBGridMaskColumn
            Color = clHighlightText
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 45
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CLI_INCD'
            SummaryFooterType = cstSum
            SummaryFooterField = 'CLI_INCD'
            SummaryFooterFormat = ',##,0'
            DisableFilter = True
          end
          object DBGREL_PED_PDV_ANOPED_VLPK: TdxDBGridMaskColumn
            Color = clHighlightText
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 115
            BandIndex = 2
            RowIndex = 0
            FieldName = 'PED_VLPK'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PED_VLPK'
            SummaryFooterFormat = 'R$ ,##,0.00'
            DisableFilter = True
          end
          object DBGREL_PED_PDV_ANOPED_ILPK: TdxDBGridMaskColumn
            Color = clHighlightText
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 55
            BandIndex = 2
            RowIndex = 0
            FieldName = 'PED_ILPK'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PED_ILPK'
            SummaryFooterFormat = ',##,0'
            DisableFilter = True
          end
          object DBGREL_PED_PDV_ANOPED_VLSP: TdxDBGridMaskColumn
            Color = clWindowText
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlightText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 115
            BandIndex = 3
            RowIndex = 0
            FieldName = 'PED_VLSP'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PED_VLSP'
            SummaryFooterFormat = 'R$ ,##,0.00'
            DisableFilter = True
          end
          object DBGREL_PED_PDV_ANOPED_ILSP: TdxDBGridMaskColumn
            Color = clWindowText
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlightText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 55
            BandIndex = 3
            RowIndex = 0
            FieldName = 'PED_ILSP'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PED_ILSP'
            SummaryFooterFormat = ',##,0'
            DisableFilter = True
          end
          object DBGREL_PED_PDV_ANOPED_PLSP: TdxDBGridMaskColumn
            Color = clWindowText
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlightText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 65
            BandIndex = 3
            RowIndex = 0
            FieldName = 'PED_PLSP'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'PED_PLSP'
            SummaryFooterFormat = '0.00 %'
          end
          object DBGREL_PED_PDV_ANOPED_VTLQ: TdxDBGridMaskColumn
            Color = 10485663
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 115
            BandIndex = 4
            RowIndex = 0
            FieldName = 'PED_VTLQ'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PED_VTLQ'
            SummaryFooterFormat = 'R$ ,##,0.00'
            DisableFilter = True
          end
          object DBGREL_PED_PDV_ANOPED_ITLQ: TdxDBGridMaskColumn
            Color = 10485663
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 55
            BandIndex = 4
            RowIndex = 0
            FieldName = 'PED_ITLQ'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PED_ITLQ'
            SummaryFooterFormat = ',##,0'
            DisableFilter = True
          end
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel
    Top = 965
    Width = 1918
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
      Width = 1918
      inherited SBRodape: TdxStatusBar
        Width = 1918
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
  inherited DTSCadastro: TDataSource
    Left = 152
    Top = 240
  end
  inherited imageOPC: TImageList
    Left = 488
    Top = 168
    Bitmap = {
      494C01010E00130004003E002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000F8000000A00000000100200000000000006C
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F1F1FFF1F3F6FFF3F8FDFFF4F8FEFFF4F8FEFFF3F7FCFFF1F2
      F4FFF0F0F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F1F1FFF3F7
      FBFFF4F9FFFFF3F5F9FFEDE7DEFFE1D0B8FFE1CEB7FFE0CEB7FFE4D4C0FFF0EE
      EAFFF3F6FAFFF4F9FFFFF2F4F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF1F2F4FFF2F4F8FFF0F1F2FFF0F0EFFFF3F7FCFFF3F7FCFFE7D9
      C9FFD5B07FFFC3893EFFBC7920FFAF5F00FFAF5E00FFAE5D00FFB26400FFC081
      2DFFC48D43FFD8BA90FFECE5DCFFF5FAFFFFF2F5F8FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F1F2FFEFEAE3FFECE2D5FFF0EFEEFFF5FBFFFFE6D9C8FFCA9959FFB468
      03FFB06100FFB77013FFC79149FFD1A975FFCFA66FFFCFA771FFD0A771FFC185
      36FFB66E0EFFB05F00FFB97316FFD1A871FFEDE7DEFFF4F9FFFFF0F0F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF4F9FEFFD5B080FFB66B0DFFE3D3BEFFDABB92FFB56A07FFB06000FFC994
      4EFFDFC7A8FFECE7E0FFF2F3F5FFF5FBFFFFF5FBFFFFF5FBFFFFF5FAFFFFF0EF
      EFFFECE5DDFFD9BB93FFC08231FFAF5E00FFB97316FFDEC8AAFFF5FCFFFFF1F2
      F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF4FAFFFFD2AC7AFFB36601FFC08333FFB36803FFC18739FFE1CBAEFFF3F6
      FAFFF4FAFFFFF1F3F6FFF0F1F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F2
      F3FFF2F4F7FFF5FAFFFFF1F1F1FFD8BA91FFB76F0FFFB36601FFD9B88BFFF0F1
      F1FFF1F1F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF4FAFFFFD3AE7DFFB46905FFB56C0AFFBA751BFFDABE99FFF3F7FAFFF1F2
      F4FFF0F0F0FFF0F0F0FFF2F2F2FFF4F5F5FFF4F5F5FFF4F4F5FFF4F4F5FFF1F1
      F1FFF0F0F0FFF0F0F0FFF1F3F5FFF5FAFFFFE9E0D2FFBD7D2AFFAE5C00FFE1CA
      ABFFF3F7FCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF4FBFFFFD0A872FFAE5C00FFB36601FFB16200FFB66D0AFFEADFD1FFF2F4
      F8FFF2F2F3FFFBFCFDFFF2F2F2FFE4E3E2FFE2E1DFFFE5E3E2FFE6E5E3FFF6F7
      F7FFFAFBFCFFF1F1F2FFF0F0EFFFF0F0F0FFF4FAFFFFE7DDD0FFD3AD7CFFEFEB
      E6FFF0F2F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF2F5F7FFE2D1BAFFD4B086FFD5B589FFD4B387FFD8B990FFEEE9E3FFFAFB
      FEFFF1F1F1FFB9B4AFFF80766BFF635649FF685B4FFF685B4FFF66594CFF8B82
      78FFC1BDB8FFF7F7F8FFF5F6F6FFEFEFEFFFF0EFEFFFF2F4F8FFF5FAFFFFF0F1
      F2FFF0F0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0EFEFFFF3F6FAFFF5FCFFFFF5FBFFFFF5FBFFFFF4FAFFFFFAFBFDFFD3D0
      CDFF7C7267FF554739FF584B3DFF5F5144FF554739FF5A4C3EFF5F5245FF5648
      3BFF574A3BFF8A8177FFEBEAEAFFF7F8F9FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFFAFBFCFFD0CDCAFF6254
      47FF57493BFF615447FF5F5144FF5B4D40FF948B83FF776C61FF5A4C3EFF6155
      48FF605346FF534436FF7D7267FFEBEAEAFFF5F6F6FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F4FFE9E9E9FF756A5EFF584A
      3CFF625548FF5F5144FF605245FF716559FFF4F4F4FFADA7A1FF514334FF5D4F
      42FF625548FF625548FF534536FF8A8178FFF7F7F7FFF1F2F1FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFBFCFCFFA39D95FF524536FF6254
      47FF5E5143FF685C50FFD5D3D0FFF8F9F9FFFBFDFEFFF9F9FAFFC4C0BCFF6A5E
      51FF5E5143FF615447FF605346FF57493BFFC1BDB8FFFAFBFCFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F3FFECECEBFF6F6458FF5C4E41FF6154
      47FF5F5245FF635649FFBFBAB6FFB6B1ABFF847A71FFBBB7B2FFFFFFFFFFB2AC
      A6FF55483AFF615447FF615447FF57493AFF8B8279FFF6F7F7FFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7F7F8FFD2CFCDFF605346FF5F5245FF6154
      47FF615447FF605346FF5C4E41FF524335FF443424FF877D73FFFFFFFFFFC4C0
      BCFF534536FF625548FF615447FF5E5144FF66594DFFE6E5E4FFF4F4F5FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFFBFCFDFFB6B1ACFF57493BFF615447FF6154
      47FF615447FF615447FF584A3DFF756A5FFFAEA8A1FFF0EFEFFFFFFFFFFFA69F
      98FF57493BFF615447FF615447FF5E5143FF675B4FFFE5E3E2FFF4F5F5FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFFBFCFDFFB2ADA8FF56483AFF615447FF6154
      47FF615447FF584A3CFF928980FFF0F0F0FFFFFFFFFFF2F1F1FFABA59EFF5E50
      43FF605345FF615447FF615447FF5E5043FF685C4FFFE4E3E1FFF4F4F5FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF8F8F9FFCECAC7FF5F5345FF5F5245FF6154
      47FF5D5043FF685B4FFFE1DFDEFFFEFFFFFFB0AAA4FF6A5D51FF4D3E30FF5C4F
      41FF625548FF615447FF615447FF5F5144FF63564AFFE4E3E2FFF4F4F5FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F4FFEBEAE9FF6B5E53FF5D5042FF6154
      47FF5D5043FF685B50FFE2E1DFFFFBFBFCFF82776DFF625548FF8F877EFF6C60
      54FF5E5143FF615447FF615447FF594A3DFF80766BFFF2F1F2FFF2F2F2FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF8F8F9FF968D85FF554739FF6154
      47FF615447FF584A3CFF9B938AFFF5F5F5FFEEEEEEFFE9E9E8FFFFFFFFFF8A81
      77FF584A3CFF615447FF615447FF554739FFB9B4AFFFFCFCFEFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7F7F8FFDBD9D7FF5F5145FF5B4E
      40FF625548FF615446FF584A3CFF7B7065FFFBFBFCFFDAD7D5FF938981FF695D
      51FF5F5245FF615448FF57493BFF7D7368FFF1F1F2FFF2F2F3FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF9FAFBFFC2BDB9FF5B4E
      40FF5B4E40FF625548FF5F5245FF5B4E40FFC6C2BEFF928980FF4C3E2FFF5F52
      45FF625548FF584A3CFF625548FFD5D2CFFFF9FAFBFFEFEFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFEFFFFFFC1BD
      B9FF5F5244FF554639FF5D4F42FF5F5245FF5A4D3FFF5D5042FF5F5245FF5C4E
      41FF524436FF74695EFFD0CDC9FFFAFCFEFFF2F6FBFFF2F6FAFFF2F6FBFFF2F6
      FAFFF0F0F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0EFFFF0F1F3FFF3F8FEFFF0F1F1FFF0F0F0FFF0F0F0FFF9FA
      FBFFDBD9D7FF978E86FF6C6054FF605245FF56483AFF57493BFF615447FF6F64
      58FFA39D95FFE9E9E8FFFAFDFFFFECE6DFFFE5D4BEFFE6D7C2FFE6D6C1FFE7D7
      C2FFF1EFECFFF0F1F2FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F1F2FFF0EDE9FFDDC5A4FFF2F4F7FFF1F2F4FFF0F0EFFFF0F0
      F0FFF7F7F8FFF8F9FAFFEBEAEAFFCECBC8FFB3ADA8FFB6B1ABFFD4D1CEFFECEC
      ECFFFBFCFCFFF4F4F5FFF4FAFFFFDABF9BFFB26300FFB97417FFB87214FFBA75
      18FFEFE3D5FFF2F5F9FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF5F8FEFFD6B07EFFAD5A00FFD4AF7DFFF5F9FCFFF2F5FAFFF0F0
      F0FFF0F0F0FFF1F1F1FFF3F3F4FFF7F8F9FFFBFCFDFFFBFCFDFFF6F7F8FFF3F3
      F3FFF0F0F0FFF0F0F0FFF2F5F8FFEBE5DBFFD2A76FFFB97316FFB56C0AFFB871
      13FFEEE2D3FFF2F5F9FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF2F3F6FFE8DDCEFFC3893BFFAF5E00FFC99652FFECE4DAFFF5FC
      FFFFF3F6FAFFF0F1F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1F2F3FFF3F7FCFFF4F9FEFFE7DAC7FFC48C42FFB26702FFB87215FFB973
      16FFEEE2D4FFF2F5F9FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0EFFFF3F7FBFFF0EDE8FFCA9958FFB05F00FFB97317FFD5B0
      7FFFE8DDCEFFF2F3F6FFF6FCFFFFF4F9FFFFF3F7FDFFF3F7FDFFF4FAFFFFF5FB
      FFFFF1F1F0FFE7D8C5FFCC9F62FFB36601FFB36702FFD6B485FFCA9A59FFB263
      00FFEEE1D2FFF2F5FAFFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0EFFFF2F5F8FFF3F6FBFFDCC29FFFBD7C26FFAF5F
      00FFB36804FFC68E45FFD3AC77FFD5B386FFE0C8A8FFDFC6A6FFD4B082FFD1A8
      71FFC18333FFB36500FFAF5F00FFC68E44FFE4D3BDFFF6FCFFFFE3D3BDFFD8B8
      90FFEFEBE5FFF1F2F4FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F2FFF4F9FFFFEFECE9FFDCC1
      9DFFC6924CFFBA751AFFAF5F00FFB26400FFB46804FFB46804FFB16200FFB061
      00FFBC7B25FFCC9D5DFFE1CCB2FFF2F3F4FFF4F8FEFFF0F0F0FFF3F6FAFFF4FA
      FFFFF0F1F2FFF0F0EFFFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F3F5FFF4F9
      FFFFF3F7FCFFEBE4DAFFE1D0B9FFE2CFB6FFE0C6A4FFE1CAACFFE2D1BAFFE3D2
      BBFFEEEAE5FFF4F8FEFFF4F9FFFFF0F1F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F1FFF2F4F7FFF4F8FDFFF3F7FDFFF3F8FDFFF3F7FDFFF3F8FDFFF3F7
      FDFFF1F3F5FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000EFEFEFFFF0F0F0FFF2F2F2FFF2F2F2FFF6F6F6FFF9F9F9FFFEFE
      FEFFFEFEFEFFFFFFFFFFFDFDFDFFFDFDFDFFFAFAFAFFF7F7F7FFF6F6F6FFF6F6
      F6FFF7F7F7FFF8F8F8FFFBFBFBFFF6F6F6FFF5F5F5FFF6F6F6FFF5F5F5FFF2F2
      F2FFF1F1F1FFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F1FFF0F0F1FFF0F0
      F1FFF0F0F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F0FFFBFAF2FFFAFBF2FFDFE1EEFFA7ABE2FF7D7E
      DBFF5C5FDCFF4B50DBFF4D51DBFF4B50DBFF5C5FDCFF7B7DDCFFA7ABE3FFE2E3
      F0FFFCFCF4FFFBFBF3FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F3F1FFF8F8F8FFFCFCFCFFF9F9F9FFF4F4F4FFE5E5E5FFD4D4
      D4FFD9D9D9FFCDCDCDFFCDCDCDFFCACACAFFCFD0D0FFDADADAFFE5E5E5FFE8E8
      E8FFEEEEEEFFF1F1F1FFF2F2F2FFF7F7F7FFFAFAFAFFFBFBFBFFFAFAFAFFF8F8
      F8FFF5F5F5FFF1F1F1FFF3F3F3FFF4F4F4FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F3FFF4F4F9FFF4F4F8FFF3F3F5FFF2F2F5FFF2F2
      F5FFF3F3F5FFF4F4F8FFF4F4F9FFF1F1F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEFEFF0FFF7F6F2FFFFFFF9FFCACCEAFF6B6EDBFF2429D9FF0205DCFF0000
      DEFF0000E0FF0000E1FF0000E1FF0000E0FF0000DFFF0000DDFF0204DCFF2327
      D8FF6F72DFFFCDCFEDFFFFFFF5FFF6F6F1FFEFEFF0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAEEFAFFFCFCFCFFF9F9F9FFF3F3F3FFE9E9E9FFC9C9C9FFC1C1
      C1FFC2C2C2FFB1B1B1FF7D7D7DFF989898FFB1B1B1FFB1B1B1FFCFCFCFFFE3E2
      E1FFE9E8E8FFEFEFEEFFF2F1F0FFF4F4F3FFF6F5F4FFF6F6F6FFF8F7F8FFFAFA
      FAFFFAFAFAFFFAFBFBFFFDFDFDFFFEFEFFFFF8F8F8FFEFEFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF3F3F6FFF4F4F8FFEDEDE7FFDEDEC8FFD7D6B6FFCDCCA3FFC8C79AFFC8C7
      9AFFCDCCA3FFD7D6B6FFDEDEC8FFEDEDE7FFF4F4F8FFF3F3F6FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFBFBF2FFECEEF3FF7A7FDFFF0C12D9FF0000E1FF0000E6FF0000E4FF0000
      E3FF0000E2FF0000E2FF0000E2FF0000E2FF0000E1FF0000E2FF0000E4FF0000
      E4FF0000E0FF0F12DAFF747ADFFFEEF0F6FFFDFCF3FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDC6FDFFFBFDFBFFF6F5F5FFF2F0F0FFECE6E7FFD5D1D1FFCBCB
      CBFFCCCCCCFFCCCCCCFF6F6F6FFFB9B9B9FFCDCACAFFBEC1C3FFC5C8C9FFD3D0
      D0FFCBCACBFFC6CCCCFFD0D4D8FFD8DDE1FFDDE0E6FFEAECEBFFF0EEEFFFF3F1
      F0FFF8F2F0FFF0F5F2FFF2F6F5FFF9F7F7FFFEF8F9FFF9F6F6FFF8FBFAFFF6F9
      F9FFEEEEEEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F3FFF4F5
      F9FFE7E6DBFFCFCEA7FFBFBE84FFB7B675FFB7B675FFB8B778FFB9B878FFB9B8
      78FFB8B778FFB7B675FFB7B675FFBFBE84FFCFCFA7FFE7E7DBFFF5F5F9FFF1F1
      F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCFC
      F2FFCFD1EAFF3C41D9FF0000E1FF0000E9FF0000E5FF0000E4FF0000E4FF0000
      E5FF0000E5FF0000E7FF0000E7FF0000E6FF0000E5FF0000E4FF0000E4FF0000
      E4FF0000E4FF0000E7FF0000E0FF3B40DCFFCFD1ECFFFDFDF2FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFFFDFFF7F7F7FFEEEEEEFFE8E8E8FFE8E8E7FFCCCFCFFFC8C8
      C8FFCACACAFFCBCBCBFF747474FFB9B9B9FFCDCACBFFCACBCCFF7C8B97FF4F63
      7BFF4B5B74FF435972FF4C637FFF5B758CFF728B9CFF97A9B0FFC0CBC5FFCACF
      CDFFD2CFD2FFDDD9DCFFE4E7E5FFF0EDEBFFF6F0F0FFF4F3F3FFF6F7F7FFFAFA
      FAFFF7F7F7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F6FFF1F1F0FFD3D2
      AFFFBAB97BFFB7B674FFBAB97CFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFBAB97CFFB7B674FFBAB97AFFD4D2B0FFF1F1
      F0FFF3F3F6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0EFFFFEFEF3FFC3C6
      E8FF252ADBFF0000E8FF0000E9FF0000E6FF0000E7FF0000E8FF0000EBFF0000
      EBFF0000E9FF0004EAFF0004EAFF0003EAFF0000E9FF0000EBFF0000E8FF0000
      E7FF0000E6FF0000E5FF0000E8FF0000E7FF282EE0FFC9CCEDFFFCFBF1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFAFFF0F0F0FFE4E4E4FFD2D4D4FF8A9C9DFFAAB7B6FFCECD
      CDFFCACACAFFC9C9C9FF727272FFB9B9BAFFCBCACBFFCFCECCFF5D748DFF2348
      70FF38537BFF3B5981FF405E85FF4A6B8BFF507A91FF3D5B7AFF414F5FFF4A5A
      67FF6B8B98FF7A93A2FF8699AAFF8E9EAFFF9CA7B2FFE2E4E2FFF2EEECFFF8F5
      F5FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F6FFF1F0E6FFD1CD8EFFBCB8
      6DFFBABA7DFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBBBA7DFFB6B472FFC8C7
      96FFEEEEE9FFF3F3F6FFF0F0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFEFF0F0FFFCFCF4FFDADAF1FF252D
      DDFF0000EBFF0000EAFF0001E9FF0001EAFF0003EDFF0002EDFF0312E8FF3743
      E7FF7379E8FF8792E6FF8893E8FF8892E6FF6F75E6FF2833E8FF0009EEFF0002
      EAFF0001E9FF0001E9FF0000E8FF0000E9FF0000EAFF2A30E3FFD6D8EFFFFBFA
      F1FFEFEFF0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F9FFF3F3F3FFF0EFEEFFD9DFDCFF4E6A80FF9DA7B0FFD3D1
      D0FFCBCBCBFFC6C6C6FF6F6F6FFFBAB9BAFFCBCBCAFFCFCFCDFF697C96FF2E50
      75FF3E567EFF3D5A83FF405E85FF4B6B8CFF547A93FF466888FF192841FF293C
      52FF5A8899FF568397FF526E88FF4A6786FF5B738AFFB3BEC1FFDDDCDAFFF0EF
      F0FFF9F9F9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFEFF0F0FFF6F4F4FFF8F7E6FFBEC194FF879895FF899C
      A5FFBDBA74FFBAB97BFFBCBB80FFBCBB7EFFBDBB7CFFBFBA78FFBFBA78FFBDBB
      7DFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB80FFB6B5
      74FFC3C28CFFEFEEEAFFF3F3F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF5F4F0FFF1F2F2FF4552E2FF0000
      ECFF0003ECFF0004EBFF0003EBFF0008F0FF000EECFF4A57E8FFBABDECFFECED
      EFFFFEFEF3FFFFFEF1FFFEFDF1FFFFFEF1FFFFFFF3FFCAC9EFFF0C1EEAFF0004
      EEFF0003EBFF0004EBFF0003EBFF0002EAFF0001EAFF0000EAFF454BE4FFF8F8
      F6FFF4F4F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFFFBFFF9F8F9FFFCFAF9FFEAF0EEFF59758DFFA1AAB2FFD2D2
      D1FFCCCCCCFFC6C6C6FF6E6E6EFFBAB9BAFFCACBCAFFCFCECDFF697A94FF3051
      74FF3E567FFF3C5A83FF3F5D85FF49698BFF5A7F97FF59819BFF24344CFF3141
      57FF608A9CFF5A859AFF63889DFF68879EFF5F7D93FF445D72FFC7D0DAFFFAFA
      FBFFF8F8F7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF4F3F0FFEEF1F5FF7D8FB6FF42589EFF314EB6FF557E
      D3FFDDDCC6FFD1CFACFFBDB66DFFBFBA79FFBABB84FFB1BF9BFFB1BE9AFFBABB
      82FFBFB976FFBEBA77FFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      80FFB7B674FFC8C796FFF1F1F1FFF1F1F3FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFFEFDF2FF8E93E9FF0008EAFF0006
      EFFF0006EDFF0005EEFF000DF2FF061BEBFF8D93ECFFF9F9F5FFFFFFF2FFF4F4
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F0FFFCFAF2FF838DEFFF0318F0FF0006
      F0FF0007EFFF0007EEFF0006EEFF0006EDFF0005EBFF0003EEFF0000E9FF8C92
      ECFFFFFFF4FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEC7FEFFFCFDFCFFFFFFFDFFEDF3F2FF5C798FFFA1AAB2FFD3D2
      D1FFCCCCCCFFC6C6C6FF6E6E6EFFBAB9BAFFCACBCBFFCFCECDFF677A93FF3152
      75FF3D577FFF3D5A82FF3F5D84FF46688AFF588097FF587F99FF24354CFF3041
      57FF628B9CFF5B859AFF5C869AFF62889CFF608399FF5A778BFFD3DBE3FFFFFF
      FFFFF9F9F9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFFDFAF2FF90ACE6FF2E53BDFF4366C8FF4671D4FF4B78
      DBFFDCE1FCFFE4E5DEFFA4C0AEFF9CC7D2FF94CBE9FF8FCDF6FF90CEF9FF98CC
      E8FFA2C7CCFFB3C09CFFBFB976FFBCBB7EFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFB5B472FFD4D3B0FFF4F5FAFFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F7F6F0FFDEDEF0FF2438E8FF0006F2FF0007
      EFFF0006F0FF0010F3FF0724EEFF9EA2F0FFFFFFF7FFF4F4F0FFEFEFF0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF4F4EFFFFBF9F2FF8894F2FF0529F3FF000FF4FF0007
      F1FF0009F1FF0009F0FF0008F0FF0007EFFF0007EFFF0006EDFF0001F0FF1D2B
      EAFFDDDFF4FFF7F7F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAEFFAFFFAFAFAFFFEFEFDFFEFF5F4FF5B788FFFA1AAB0FFD2D1
      CFFFCACACAFFC7C7C7FF6F6F6FFFB8B8B8FFCAC9CBFFCFCECEFF687C92FF3150
      74FF39567DFF3E5780FF425A82FF44688AFF547F97FF547E98FF25384FFF3145
      5AFF638C9DFF5E869BFF5F879CFF60889CFF5C869CFF627F93FFD4D9DEFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF9F7F1FFD0D9EDFF4372D6FF4776DBFF4A78DBFF4977D9FF3B6C
      D6FFB8C4E7FFEFF1F4FF92CFFAFF8DCCF8FF91CDF4FF94CBEBFF85C2E4FF78C1
      F6FF83C7F8FF92CFF9FFABC3B1FFBEB974FFBCBB7EFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBBBA7DFFBAB97BFFE7E7DCFFF2F2F6FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000FFFEF2FF8D95EDFF0013EFFF0008F2FF0007
      F1FF000DF3FF0022F3FF808DEEFFFFFFF4FFF3F3F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF4F4F0FFFFFEF7FF8998F3FF0230F5FF0013F6FF000AF4FF000C
      F3FF000CF3FF000AF3FF0007F2FF0007F1FF0008F1FF0008F0FF0007F1FF0004
      EFFF8D93F1FFFFFEF4FFF0F0EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F1F0FFEEEEEEFFF8F8F6FFF6FBFAFF5D7B91FFA0ABB0FFD1CF
      CEFFC8C8C8FFC5C5C5FF696969FFB8B8B8FFCAC9CAFFCECECEFF5E7184FF233E
      59FF294160FF2C4060FF2E4565FF3F5E81FF567F97FF57819CFF273A51FF3247
      5BFF638D9EFF537E93FF568096FF628A9DFF5E889FFF5C7C90FFD1D5DAFFF9F8
      F8FFF4F4F4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF1F0F0FFFBF9F2FF83A1E1FF3A6BD5FF4976D8FF4976D8FF4976D8FF3B6C
      D6FF90A9E2FFFCF6F2FFA3D3F6FF89CBF9FF8ECEFAFF96CAE5FFB5B985FF8AB4
      B5FF5CB1EEFF72BBECFF8CCDFCFFADC8BFFFBEBA78FFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFB7B675FFD0CFA7FFF4F4F8FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F2F1EFFF3F55ECFF000FF4FF000AF3FF0009
      F3FF001CF7FF3759F0FFEDEBF2FFF6F6EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF4F3EFFFFFFBF4FF8A9BF7FF0038F6FF0019F9FF000CF6FF000FF6FF000E
      F5FF000CF5FF0011F6FF0019F6FF0018F6FF000EF3FF0009F2FF0009F1FF0004
      F2FF3F51F0FFEEEEF2FFF4F4F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFF4F4F4FFFCFBFAFFCDD5DBFF57738BFFA4A9B0FFCDCC
      CBFFC5C5C5FFC1C1C1FF808080FFB7B7B7FFC7C6C8FFCDCDCDFF57697BFF1F35
      4BFF283D53FF273952FF2F435DFF466784FF557E98FF497089FF24374FFF3148
      5FFF466881FF36587AFF4E748CFF60889CFF476D87FF5B7587FFDCE1E3FFFAFA
      F9FFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF5F3F1FFE1E6F0FF507BDAFF4573D7FF4976D8FF4976D8FF4674DAFF396B
      DBFF6189E5FFF6F2F7FFC5D4CBFFA4BEABFF9AC8D9FF8DCEFDFFA0C9D4FFBDBA
      7CFF7BB6CFFF5DB3F0FF76BAE3FFACC5B6FFBDBA7DFFBCBB7EFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBAB97CFFBFBE84FFEEEDE8FFF1F1F3FFF0F0F0FF0000
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
      0000000000000000000000000000D8D7EFFF0E34EFFF0012F6FF000BF5FF0011
      F7FF0130F6FF9BA8F2FFFFFEF1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4
      EFFFFAF5F2FF899BF5FF0045F8FF0023FAFF0010F8FF0013F8FF0013F8FF000D
      F7FF0018F9FF0032F8FF4968F6FF415DF4FF0025F7FF000FF5FF000BF4FF000C
      F5FF0F29F2FFCCCEF4FFF8F8F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFFBFBFAFFFFFFFFFF849CA9FF4C7389FFABAFB8FFC8C7
      C7FFBFBEBEFFB6B6B6FFA8A8A8FFB1B1B1FFBBBABBFFC3C3C2FF697D93FF334E
      6BFF3C576FFF364F6BFF45607EFF5F879CFF59859DFF385A73FF192A43FF2E45
      61FF30496BFF3E5C81FF5D8196FF5D869BFF3F6382FF92A4B5FFFFFFFFFFFBFB
      FAFFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFFCF9F2FFB4C4E9FF3568D9FF4172DEFF3E6FE0FF4272DDFF4E79D3FF5E82
      C5FF8198B1FFC3C294FFC1BC7BFFC0B972FFBEBA79FFB2BE98FF96CDEDFFA3CD
      DBFFBBBA7CFFAABA96FFA8B994FFBFB975FFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFB7B675FFDFDEC9FFF4F4F8FFF0F0F0FF0000
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
      0000000000000000000000000000ADB6EEFF0028F5FF0012F8FF000CF7FF001D
      F9FF1A52F5FFDBDAF4FFF7F7F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F3EFFFFBF6
      F2FF889EF7FF0352FAFF0030FAFF001BF9FF001EF9FF001DF9FF0018F9FF0025
      FAFF0035F8FF6E84F4FFFAF7F4FFDEDEF4FF1947F5FF0018F9FF000BF6FF000C
      F6FF011EF5FF9DA9F2FFFDFBF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFF5F5F4FFFFFFFFFF869FB0FF49708AFFABB1BBFFBFBE
      BDFFAEAEAEFFA6A6A6FF9F9F9FFF9F9F9FFFA5A4A6FFB6B5B4FF657A91FF2B48
      6AFF304969FF355070FF436381FF5A859AFF56849DFF3C5F78FF21354CFF3247
      64FF395376FF3E5C80FF567E96FF5E8AA1FF476E8DFFA3B0C3FFFFFFFFFFFBFD
      F9FFEFEEEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFFBF8F2FF97AFE6FF4873CBFF6C8ABDFF869BA8FF9FA995FFB3B685FFC1BE
      7BFFC3BF77FFBAB979FFBBBA7EFFBCBB80FFBCBB7EFFBFB974FFB9BC87FFABC6
      BCFFB8B97EFFC0BA73FFC3BD79FFBBBA7DFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFB7B675FFD7D7B6FFF4F4F7FFF0F0F0FF0000
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
      00000000000000000000000000008F9FECFF0027F7FF0012F8FF0012F8FF002E
      FAFF4676F7FFEEECF2FFF4F3F0FFF0F0F0FFF0F0F0FFF4F4F0FFFFFAF6FF899F
      F8FF025EFBFF0040FCFF002BFAFF002EFAFF002DFAFF0027F9FF0036FBFF0043
      FAFF6F86F6FFF4F1F2FFFBF9EFFFF3F1F1FF4C6FF7FF0020F9FF000FF7FF000E
      F7FF001BF7FF8390F1FFFFFDF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFFAFAF9FFFFFFFFFF85A0B1FF497289FFA6ABB3FFB0AF
      AFFF969696FF7E7E7EFF737373FF717171FF787878FF909294FF5D6F87FF3756
      79FF3E5C81FF3D5B80FF426586FF57849AFF59859BFF456784FF2B4567FF3851
      77FF3D577FFF425F85FF587E97FF608A9FFF47718DFF9FBEC2FFFFD0FFFFFBC4
      FAFFEFF9EFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F1FFF3F3F5FFC1C5ACFFB5B57AFFC4C078FFC6C178FFC4C079FFBFBD7CFFBDBB
      7FFFBCBB7EFFBBBA7DFFBBBA7DFFBBBA7BFFBCBA7CFFC0BE82FFC4C081FFC2BD
      7DFFC0BF89FFBCBC8BFFBCBD94FFC9C697FFB9B97BFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFB8B777FFCDCDA4FFF3F3F6FFF0F0F0FF0000
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
      00000000000000000000000000008795ECFF002FF8FF001AF8FF001DF9FF003B
      FAFF6A89F8FFFAF7F3FFF1F1EFFFF0F0F0FFF4F3EFFFFFF8F4FF8AA2FAFF0066
      FBFF0050FEFF003BFCFF003FFCFF003FFCFF003AFCFF004AFDFF004FFBFF6E87
      F8FFF7F3F3FFF6F6EFFFF1F0F0FFFBF8F2FF6883F8FF002DFAFF0016F8FF0013
      F8FF001EF8FF7786F6FFFDFCF2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFFCFCFBFFFFFFFFFF82A2B1FF4C778CFFA1A8AEFF9795
      95FF484848FF272727FF212121FF1E1E1EFF1E1F1FFF242524FF263341FF3E5D
      7CFF3D5A7DFF3D5B81FF406485FF57839AFF5C889CFF466B89FF2C4A72FF3B57
      81FF3F5C84FF456588FF588198FF60879DFF4B768FFFA2CAC7FFFFBDFFFFFBAD
      FAFFEFFDEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F1FFF2F2F5FFCBC997FFBCBA76FFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBBBA
      7EFFBFBD81FFC4C288FFC0BF88FFBDBD8AFFBCBD8FFFBFBF97FFBFBE9CFFBBBC
      9CFFBABB9DFFCFCDB4FFB5B89CFFC3C299FFBDBC7EFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFB9B878FFC8C89BFFF2F2F5FFF0F0F1FF0000
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
      00000000000000000000000000008897EEFF003AFAFF0026FAFF002CFBFF0049
      FBFF6E8EF8FFFBF7F3FFF0F0EFFFF4F4EFFFFAF3F2FF89A3F8FF0070FCFF005F
      FEFF0048FDFF004DFDFF004DFDFF0049FDFF0059FEFF0060FCFF6E8AF9FFFCF7
      F5FFF6F6F0FFEFF0F0FFF0F0EFFFFEFBF2FF718CF9FF003BFBFF0022FAFF001D
      F9FF0025F9FF6B81F8FFFBF9F2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFFAF9F9FFFFEFFFFF7E9DACFF497489FF90979DFF6D6B
      6BFF202020FF0F0F0FFF161616FF171717FF141616FF12110EFF202730FF4260
      81FF3F5C81FF3F5C82FF416586FF59849AFF5A879BFF49728EFF37597FFF4365
      88FF466A8AFF4B728EFF5C849AFF62889EFF517B92FF98BEBEFFFAC7FCFFFBBF
      FBFFEFFAEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F1FFF2F2F4FFC8C79AFFB9B878FFBCBB7FFFBCBB7FFFBCBB7FFFBBBA7EFFC0BE
      83FFC6C59DFFB0B391FFBEBFA0FFC2C2A6FFC6C6ACFF939A77FF86906AFFD8D2
      B5FFEFE6CDFFC7C6AAFFD4D1B8FFBABB96FFC1C083FFBCBB7EFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFB9B878FFC8C89BFFF2F2F5FFF0F0F1FF0000
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
      0000000000000000000000000000889DEFFF0048FBFF0036FCFF003CFCFF0056
      FDFF5E8DFBFFF5F1F2FFF6F5EEFFFBF3F2FF88A5F9FF037BFDFF006AFFFF0055
      FFFF005AFFFF005AFFFF0056FFFF0068FFFF006DFDFF6E8FFAFFF5F0F3FFF6F5
      EEFFEFEFF0FFF0F0F0FFF2F2F0FFF7F3F1FF5E85FBFF0046FDFF0032FBFF002A
      FAFF0033FBFF7E90F6FFFFFCF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF1EFFFF4EBF3FFFF8EFFFFAABFC9FF708E9FFF8E9498FF9796
      96FFA9A9A9FF727272FF161616FF181818FF1B1919FF161514FF13171BFF384F
      6DFF3E5D80FF3F5C83FF406588FF5D869BFF5A869BFF4E7A92FF496F8DFF4E73
      8EFF4E718DFF547A92FF5D8298FF567A93FF5D829AFF668B9DFFE0E5EBFFFEFF
      FEFFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF3F3F6FFCDCCA3FFB8B777FFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFC1BF
      83FFB9BA96FFCAC9AFFFDFDBC2FFEEE7D1FFCAC8ACFF606F40FF5D6C3BFF93A8
      94FFD4D8C7FF7E8558FFD5D2BAFFBEBE9EFFC4C289FFBBBA7DFFBBBA7FFFC3C2
      82FFC7C584FFC6C584FFC6C584FFC3C27DFFD2D1A6FFF2F2F5FFF0F0F0FF0000
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
      000000000000000000000000000099AEF2FF0058FDFF0049FDFF0048FCFF0062
      FFFF3081FCFFF0EAF4FFFFFCF6FF89A6FAFF0284FDFF0077FFFF0061FFFF0065
      FFFF0066FFFF0063FFFF0077FFFF0079FEFF6F92FAFFF3EEF3FFF7F5EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF5F4F0FFEBE7F3FF3378FCFF0054FEFF0040FCFF003C
      FCFF0047FCFF89A0F5FFFFFBEFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFF6F9F5FFFEC1FDFFCDB8CFFFC1CAC8FFD6D5D4FFD8D9
      D8FFBEBEBEFF8A8A8AFF191919FF171717FF1A1718FF171717FF3A3C3BFF6C74
      7CFF5D728CFF416185FF486F8EFF588399FF537E96FF537C94FF597D95FF4C6D
      8CFF476788FF567992FF62869BFF5D7E97FF61859DFF6C8EA2FFDFE5ECFFFDFF
      FDFFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF4F4F7FFD7D6B6FFB7B675FFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBDBC
      7DFFBEBE94FFD0CEB5FF909771FFAAAD8CFFD8D4BAFF687548FF687240FF90B8
      C1FFB1DEFBFFE6DFC7FFD7D2B7FFB2B498FFC8C592FFB9B97AFFBEBD7EFF9D9D
      70FF8A8A68FF868765FF838464FF747555FFB9B9A9FFF8F8FAFFF0F0F0FF0000
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
      0000000000000000000000000000C1C6F4FF0365FCFF005BFEFF0054FEFF0068
      FFFF087DFCFFA3AEFCFF8BA9FCFF008DFDFF0080FFFF006BFFFF0071FFFF0072
      FFFF006FFFFF0083FFFF0085FEFF6E93FCFFF7F0F3FFF6F5EFFFEFF0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFFBF9EEFFC9CCF7FF0A6CFEFF005EFEFF004CFDFF004C
      FDFF0655FDFFB2BEF7FFFBF9EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFF7F7F7FFEDF3ECFFDAD9D7FFE4E1DFFFDBD9D9FFECEC
      ECFF949494FF606060FF1F2020FF171717FF161515FF212222FFA4A5A3FFCEC8
      C3FF9BA3AFFF567D94FF5D859BFF4E768FFF497088FF54778EFF628197FF4E6F
      8DFF456B89FF597C96FF6B8CA1FF6A8DA2FF6487A0FF6A8EA2FFE1E5ECFFFEFE
      FDFFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF4F4F9FFDEDEC8FFB7B675FFBCBB80FFBCBB7FFFBCBB7FFFBCBB7FFFBAB9
      7BFFC3C292FFBFC0A4FFE9E3CCFFDDDAC1FFE5DEC3FFB5B38DFF9C9866FFAEB9
      A4FF90D0FFFF9AC2D0FFB4B389FFC7C293FFC3C28CFFBBBA7DFFC5C485FF5F61
      55FF2A2E3DFF2A2D36FF292C35FF1A1D27FFACAEB2FFFEFEFDFFF0F0F0FF0000
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
      0000000000000000000000000000E8E1F2FF2074FAFF006DFFFF0061FFFF0067
      FFFF0086FFFF038AFEFF0093FEFF008CFFFF0075FFFF007CFFFF007DFFFF007B
      FFFF0090FFFF0096FFFF6E9AFCFFFCF3F5FFF6F6EFFFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF1F1EFFFFFF9F3FF6697FAFF0075FFFF005FFFFF0057FEFF005C
      FFFF1F69FDFFDFDDF8FFF7F6EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF1F1F1FFEBEBEBFFEFEFEFFFA7A7A7FF8E8E8EFFDADA
      DAFF696969FF040404FF191919FF191919FF161817FF151514FF5E5B5CFFADAA
      AFFF9DABB9FF568297FF5C8699FF9DB6C5FFBAC8CDFFBAC8CEFFCFDCE2FF728C
      9BFF456F83FF5E8198FF648AA3FF5D89A1FF6287A2FF698EA1FFE3E6EBFFFFFF
      FDFFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF1F1F3FFEDEDE7FFBFBE84FFBAB97CFFBCBB7FFFBCBB7FFFBCBB7FFFB9B8
      7AFFC9C693FFB2B599FFBBBDA0FFB9BB9AFFAFB9A2FFA3BCB8FF95BFD0FF9BBD
      BCFFA8C6BEFF8DD0FFFF9FCDE0FFB6BC8CFFBCB465FFD0CCA3FFF3F4F5FF7576
      78FF34373BFF414448FF3B3E43FF494C4FFFE3E3E3FFF4F4F4FFF0F0F0FF0000
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
      0000000000000000000000000000FAF4F1FF5F92FAFF007CFEFF006EFFFF0073
      FFFF0078FFFF008AFFFF0088FFFF0080FFFF0085FFFF0089FFFF0087FFFF009C
      FFFF00AFFFFF6EA9FDFFF5EDF3FFF6F5EEFFEFEFF0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEFEFEFFFFFFAF0FFC7CEFBFF0A84FFFF007FFFFF0068FFFF0064FFFF0068
      FEFF6190FDFFF8F5F4FFF2F1EFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEFFFF3F3F3FFF9F9F9FFE8E8E8FFADADADFF8E8E8EFFC5C5
      C5FF676767FF0C0C0CFF1A1A1AFF1A1A1AFF171919FF1A191AFF181414FF4D5D
      5BFF759BA8FF527D92FF577D91FFD2E1E5FFFFFFFFFFFFFFFFFFFFFFFFFFA2B4
      BDFF517B8DFF567E98FF5F849AFF5D869CFF658599FF708E9DFFE4E7ECFFFFFF
      FDFFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF4F4F8FFCFCFA7FFB7B675FFBCBB7FFFBCBB7FFFBCBB7FFFBBBA
      7DFFBFBE85FFC8C597FFBFBD86FFC0C08AFF9ED2F2FF7EC6FBFF5CB2F0FF6EB2
      D4FFBBBB80FF93CBEDFF8DCDFAFF93CBEDFF9AC3C5FFBFD5DAFFFCF9FFFF7578
      7EFF33363AFF414448FF303338FF7F8284FFFDFCFCFFF1F1F1FFF0F0F0FF0000
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
      0000000000000000000000000000FDF9F0FFB3BDF8FF0583FEFF0087FFFF007C
      FFFF0084FFFF0086FFFF008AFFFF0090FFFF0093FFFF0093FFFF00A8FFFF00BA
      FFFF6FB3FDFFF3ECF3FFF7F5EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEF
      F0FFFDF9F1FFEAE7FBFF3B99FEFF0098FFFF007BFFFF0073FFFF0079FFFF0277
      FEFFB5C2FBFFFCF9F1FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF4F4F4FFF6F6F6FFEEEEEEFFD3D3D3FFBEBEBEFFCDCD
      CDFF838383FF141414FF181818FF151515FF0D0E0EFF070808FF040701FF4230
      4DFF9BA6BCFF9FBABEFFC1D2DBFFEAF5F7FFF9FCFCFFF8F9F9FFF8F9FAFFFBFD
      FBFFD7E4E6FFC1CFDAFFC7D4DFFFCADBE2FFCDDBE0FFCFDFE3FFF1F3F5FFF6F7
      F7FFEFEFEFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF2F2F6FFE7E7DBFFBAB97BFFBBBA7DFFBCBB7FFFBCBB7FFFBCBB
      7FFFBBBB7EFFBAB97AFFBAB97AFFBDB978FFA8C3B5FF90CEF9FF8BCCF9FF88C4
      E5FF9FC5C8FF92CCF1FF92CCF0FF91CCF2FF87CBFAFFB5D9F7FFFCF7FAFF7578
      7DFF33363AFF3D4044FF3A3E41FFD0D1D1FFF9F9F9FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F3F2EFFFF5EDF4FF4D95FDFF009DFFFF008A
      FFFF0090FFFF0095FFFF0099FFFF009DFFFF009FFFFF00ADFFFF03C2FFFF6FB7
      FEFFF7EDF3FFF6F4EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1EFFFFFF7
      EEFFE8E6FAFF4CADFFFF00ACFFFF0090FFFF0084FFFF0080FFFF0089FFFF4791
      FEFFF6F1F6FFF3F2EFFFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFEFEFEFFFF2F2F2FFF8F8F8FFEFEFEFFFE0E0E0FFE2E6
      E2FFD0D0D0FF252525FF171717FF2E2E2EFF5A5A5AFF737373FF313431FF4332
      44FFFFF4FFFFFFEAFFFFFFFFFFFFFFFFFFFFF6F8F8FFEEEEEEFFEFEFEFFFF0F0
      F0FFF8F6F5FFFFFFFFFFFFFFFEFFFAF8F7FFF7F5F4FFF7F5F5FFF1F0F0FFEFEF
      EFFFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF4F5F9FFD4D3B0FFB5B472FFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBFB975FFB2BE98FF9BC9DAFF90CF
      FCFF8CCEFFFF8FCDF7FF8FCDF7FF8FCDF7FF88CAF8FFB5D9F6FFFCF7FAFF7578
      7DFF34373BFF2C2F34FF8C8E90FFFEFEFEFFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFFDF9F1FFC5CBFCFF0C97FEFF00AF
      FFFF009AFFFF00A1FFFF00A6FFFF00A9FFFF00AAFFFF00C8FFFF35B6FFFFFFED
      FAFFFFF9EEFFF5F2EFFFF5F2EFFFF5F2EFFFF7F3EFFFFEF5F0FFFBF2F5FFB7CF
      F9FF32B1FFFF00BBFFFF00A8FFFF0095FFFF0091FFFF009BFFFF0C92FFFFCDD8
      FFFFFDFAF2FFEFEFF0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF7F8F7FFFBF9FBFFF0D9
      F0FFA9A9A9FF0F0F0FFF424242FFD7D7D7FFDADADAFFF6F6F6FFCDCCCCFFA6AE
      A5FFFCF5FBFFFEB4FEFFF6F4F7FFF6F7F7FFF3F4F3FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F3FFF1F1F1FFC8C796FFB7B674FFBCBB80FFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBFBA76FFBEBA7AFFABC1
      AAFF9EC6CEFF9DC6CFFF9EC6CFFF9EC6CEFF98C3C9FFC0D7DFFFFFFCFFFF7072
      7DFF1B1F26FF646669FFF1F1F1FFF4F4F4FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF1F0EFFFFFF8F4FF8CB3FFFF00B0
      FFFF00BCFFFF00ABFFFF00B1FFFF00B5FFFF00B6FFFF01CBFFFF28D1FFFF97C8
      FEFFD5E1F8FFE2E4F3FFE3E5F4FFE3E4F3FFD7E2F7FFA7D4FCFF5DC4FFFF08C0
      FFFF00C8FFFF00B3FFFF00A7FFFF00A1FFFF00A9FFFF00A4FFFF8EBDFDFFFFFB
      F4FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF2F3F2FFF9F6F9FFE0BC
      E0FF989998FF767676FF898989FFBCBCBCFFB6B6B6FFF4F4F4FFFDFEFDFFFFFF
      FFFFF3F7F3FFF3FFF3FFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F7FFEFEEE9FFC3C28CFFB6B574FFBCBB
      80FFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBDBB7EFFBFBA
      76FFBFBA78FFBEBA79FFBEBA79FFBEBA79FFBDB875FFC2C089FFCFCFA5FF9291
      6BFF80816CFFE2E3E4FFF9F9F9FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF4F3EFFFFAF1F5FF6BAC
      FDFF00C0FFFF00CBFFFF00BAFFFF00C0FFFF00C4FFFF00C5FFFF0EDCFFFF21D8
      FFFF48C7FFFF57CFFFFF53D5FFFF4CD0FFFF38CAFFFF0DD4FFFF00D4FFFF00CE
      FFFF00BDFFFF00B7FFFF00B2FFFF00BCFFFF00B4FFFF71B9FEFFF5F0F2FFF3F1
      EEFFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF5F5F5FFE5EB
      E5FFC1C1C1FFCACACAFFC3C3C3FFBCBCBCFFC2C2C2FFF3F3F3FFF1F1F1FFF0EF
      EFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0EFFFF3F3F6FFEEEEE9FFC8C796FFB5B4
      72FFBBBA7DFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBDBC80FFB9B879FFB0AF68FFCECD
      97FFFAFAEFFFF6F6F8FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFEFF0F0FFF6F4EFFFF1EA
      F1FF76B7FDFF0BCBFFFF07DCFFFF00CEFFFF00CEFFFF00D2FFFF00D2FFFF01DB
      FFFF0CE0FFFF0BE8FFFF08EAFFFF06E7FFFF05DEFFFF00D8FFFF00CFFFFF00CA
      FFFF00C6FFFF00C5FFFF00D0FFFF00C6FFFF75C2FEFFF4EFF2FFF6F3EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF6F6F6FFE9E9
      E9FFC9C9C9FFCFCFCFFFCBCBCBFFCACACAFFCFCFCFFFEEEEEEFFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF3F3F6FFF1F1F1FFD4D3
      B1FFBBB97BFFB7B674FFBAB97CFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB7FFFBCBB
      7FFFBCBB7FFFBCBB7FFFBCBB7FFFBAB97BFFB7B674FFBBBA7BFFD4D4B1FFF1F1
      F1FFF3F3F6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFEFF0F0FFF6F3
      EFFFFDF4F5FF9ECEFFFF37CBFFFF28E6FFFF1AE6FFFF00E0FFFF00E0FFFF00E1
      FFFF00E0FFFF00E0FFFF00DFFFFF00E0FFFF00DEFFFF00DCFFFF00DBFFFF00DA
      FFFF00DEFFFF00DEFFFF1CCCFFFF9CD5FFFFFEF6F7FFF5F2EEFFEFF0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F4FFE7E7
      E7FFCDCDCDFFD2D2D2FFCFCFCFFFCECECEFFD2D2D2FFEDEDEDFFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F3FFF5F5
      F9FFE8E7DCFFD0CFA8FFBFBE84FFB7B675FFB7B675FFB8B778FFB9B878FFB9B8
      78FFB8B778FFB7B675FFB7B675FFBFBF84FFD0CFA8FFE8E8DCFFF5F5F9FFF1F1
      F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF3F2EFFFFFF7F4FFCFE1FAFF7BCFFEFF5CDEFFFF55ECFFFF44F3FFFF25F4
      FFFF19F0FFFF0EF0FFFF0CF0FFFF0BEFFFFF12EEFFFF14F0FFFF17F0FFFF18EA
      FFFF1EDFFFFF63D7FFFFD1E5F9FFFFF8F4FFF3F1F0FFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF6F6F6FFEBEB
      EBFFCECECEFFD3D3D3FFD3D3D3FFD1D1D1FFD1D3D1FFF2F2F2FFF2F2F2FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF3F3F6FFF4F4F8FFEDEDE8FFDFDEC9FFD7D7B6FFCECDA4FFC9C89BFFC9C8
      9BFFCECDA4FFD7D7B7FFDFDEC9FFEEEEE8FFF4F4F8FFF3F3F6FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0EFFFF9F4EFFFF4F0F1FFC6E2F7FFA1DDFEFF8EE3FFFF83E1
      FFFF85F3FFFF83FAFFFF78FAFFFF6AFAFFFF63F2FFFF5DE3FFFF61E5FFFF8DE1
      FEFFC9E7F8FFF8F1F3FFFAF3F0FFF0EFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF4F4F4FFF9F8
      F9FFDDE4DDFFD8DFD8FFDAEADAFFDBD9DBFFE3DAE3FFF9FAF9FFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F3FFF4F4F8FFF4F4F8FFF3F3F5FFF2F2F5FFF2F2
      F5FFF3F3F5FFF4F4F8FFF4F4F8FFF1F1F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000
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
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1F0FFF8F2EFFFF9F3F1FFE7EBF1FFD8E9
      F5FFCAEBF7FFC5E9F7FFC5EAF7FFC2EAF7FFC9ECF7FFDAEBF5FFECECF1FFFDF3
      F1FFFAF2EFFFF2F0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7FE
      F7FFFBCFFBFFF6C8F6FFF898F8FFFBF3FBFFFDD7FDFFF4F7F4FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F1FFF0F0
      F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
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
      000000000000F0F0F0FFF4F4F4FFEFEFEFFFCECECEFFB5B5B5FFA8A8A8FFA9A9
      A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA6A6A6FFAEAEAEFFCBCBCBFFDEDEDEFFEDEDEDFFF4F4
      F4FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000F4F4F4FFE4E4E4FFAEAEAEFFC1C1C1FFDEDEDEFFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8
      E8FFE8E8E8FFE8E8E8FFE9E9E9FFEAEAEAFFD2D2D2FFAAAAAAFFB2B2B2FFCFCF
      CFFFF6F6F6FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000EDEDEDFFAFAFAFFFD5D5D5FFF1F1F1FFE8E8E8FFE6E6E6FFE7E7
      E7FFE7E7E7FFE8E8E8FFE9E9E9FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFF0F0F0FFCDCDCDFFAEAEAEFFAFAF
      AFFFC8C8C8FFF5F5F5FFF1F1F1FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000CDCDCDFFC6C6C6FFF1F1F1FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
      E8FFE8E8E8FFE9E9E9FFEAEAEAFFEBEBEBFFEBEBEBFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEDEDEDFFECECECFFBABABAFFC9C9
      C9FFACACACFFCDCDCDFFF6F6F6FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000B9B9B9FFE3E3E3FFEAEAEAFFE6E6E6FFE8E8E8FFE9E9E9FFEAEA
      EAFFEAEAEAFFEBEBEBFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFF0F0F0FFC5C5C5FFD7D7
      D7FFD8D8D8FFADADADFFDCDCDCFFF5F5F5FFF0F0F0FF00000000000000000000
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
      000000000000B5B5B5FFEBEBEBFFE9E9E9FFE9E9E9FFEAEAEAFFEBEBEBFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFF0F0F0FFCDCDCDFFD4D4
      D4FFF1F1F1FFD2D2D2FFBCBCBCFFEBEBEBFFF2F2F2FF00000000000000000000
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
      000000000000B5B5B5FFE9E9E9FFEBEBEBFFEAEAEAFFECECECFFECECECFFECEC
      ECFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0F0FFDDDDDDFFC4C4
      C4FFE2E2E2FFEBEBEBFFD2D2D2FFD6D6D6FFF2F2F2FF00000000000000000000
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
      000000000000B9B9B9FFEBEBEBFFECECECFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
      F0FFF2F2F2FFF1F1F1FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFE1E1
      E1FFCDCDCDFFC0C0C0FFD7D7D7FFDFDFDFFFEFEFEFFF00000000000000000000
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
      000000000000BCBCBCFFECECECFFF0F0F0FFE4E4E4FFC4C4C4FFC5C5C5FFC7C7
      C7FFC4C4C4FFCECECEFFECECECFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF1F1
      F1FFEFEFEFFFDBDBDBFFB7B7B7FFCACACAFFF4F4F4FF00000000000000000000
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
      000000000000BCBCBCFFECECECFFF0F0F0FFE6E6E6FFC3C3C3FFC3C3C3FFC6C6
      C6FFC2C2C2FFCDCDCDFFECECECFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFF3F3F3FFE3E3E3FFB4B4B4FFD4D4D4FF00000000000000000000
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
      000000000000BEBEBEFFEDEDEDFFEFEFEFFFEFEFEFFFF4F4F4FFF4F4F4FFF3F3
      F3FFF4F4F4FFF2F2F2FFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFEFEFEFFFEEEE
      EEFFEEEEEEFFEEEEEEFFF3F3F3FFDFDFDFFFA0A0A0FF00000000000000000000
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
      000000000000C1C1C1FFEDEDEDFFF0F0F0FFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFEFEFEFFFEEEEEEFFEFEFEFFFF2F2F2FFB1B1B1FF00000000000000000000
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
      000000000000C1C1C1FFEDEDEDFFF0F0F0FFEEEEEEFFF0F0F0FFF0F0F0FFF0F0
      F0FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF0F0F0FFF1F1F1FFB9B9B9FF00000000000000000000
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
      000000000000C2C2C2FFEEEEEEFFF0F0F0FFEDEDEDFFE8E8E8FFE9E9E9FFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFEDEDEDFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFBBBBBBFF00000000000000000000
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
      000000000000C5C5C5FFEEEEEEFFF2F2F2FFE2E2E2FFA9A9A9FFA6A6A6FFAAAA
      AAFFABABABFFABABABFFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
      ACFFABABABFFABABABFFAAAAAAFFA9A9A9FFA3A3A3FFC7C7C7FFF4F4F4FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFBDBDBDFF00000000000000000000
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
      000000000000C6C6C6FFEEEEEEFFEFEFEFFFEFEFEFFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEFEFEFFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFBEBEBEFF00000000000000000000
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
      000000000000C6C6C6FFEEEEEEFFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFC0C0C0FF00000000000000000000
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
      000000000000C8C8C8FFEFEFEFFFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFC1C1C1FF00000000000000000000
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
      000000000000CBCBCBFFF0F0F0FFF2F2F2FFF2F2F2FFFAFAFAFFFAFAFAFFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFAFAFAFFF5F5F5FFF0F0F0FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFC2C2C2FF00000000000000000000
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
      000000000000CCCCCCFFF0F0F0FFF5F5F5FFE8E8E8FFBABABAFFB9B9B9FFBCBC
      BCFFBCBCBCFFBCBCBCFFBCBCBCFFBBBBBBFFB6B6B6FFD8D8D8FFF4F4F4FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFC4C4C4FF00000000000000000000
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
      000000000000CCCCCCFFF0F0F0FFF4F4F4FFEBEBEBFFCBCBCBFFCACACAFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCBCBCBFFC8C8C8FFDFDFDFFFF3F3F3FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFC5C5C5FF00000000000000000000
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
      000000000000CECECEFFF1F1F1FFF2F2F2FFF2F2F2FFF9F9F9FFF9F9F9FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF9F9F9FFF5F5F5FFF2F2F2FFF2F2
      F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF3F3F3FFC6C6C6FF00000000000000000000
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
      000000000000D0D0D0FFF0F0F0FFF3F3F3FFEFEFEFFFEBEBEBFFEAEAEAFFEAEA
      EAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFEAEAEAFFEBEBEBFFF0F0
      F0FFF1F1F1FFF1F1F1FFF1F1F1FFF3F3F3FFC7C7C7FF00000000000000000000
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
      000000000000D0D0D0FFF1F1F1FFF5F5F5FFE1E1E1FFB6B6B6FFB5B5B5FFB8B8
      B8FFBABABAFFBBBBBBFFBBBBBBFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
      BCFFBCBCBCFFBBBBBBFFBBBBBBFFB9B9B9FFB8B8B8FFB5B5B5FFBBBBBBFFE9E9
      E9FFF3F3F3FFF1F1F1FFF1F1F1FFF3F3F3FFC8C8C8FF00000000000000000000
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
      000000000000D0D0D0FFF1F1F1FFF3F3F3FFEFEFEFFFE8E8E8FFE8E8E8FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE9E9E9FFF0F0
      F0FFF1F1F1FFF1F1F1FFF1F1F1FFF3F3F3FFC9C9C9FF00000000000000000000
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
      000000000000D2D2D2FFF1F1F1FFF2F2F2FFF2F2F2FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF4F4
      F4FFF5F5F5FFF2F2F2FFF1F1F1FFF3F3F3FFCBCBCBFF00000000000000000000
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
      000000000000D4D4D4FFF1F1F1FFF3F3F3FFEAEAEAFFD8D8D8FFD9D9D9FFDADA
      DAFFDADADAFFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDCDCDCFFDCDCDCFFDBDBDBFFDBDBDBFFDADADAFFDADADAFFDADA
      DAFFD1D1D1FFE7E7E7FFF3F3F3FFF3F3F3FFCDCDCDFF00000000000000000000
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
      000000000000D7D7D7FFF2F2F2FFF4F4F4FFE7E7E7FFCECECEFFCECECEFFD0D0
      D0FFD0D0D0FFD1D1D1FFD2D2D2FFD3D3D3FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5
      D5FFD4D4D4FFD4D4D4FFD3D3D3FFD2D2D2FFD2D2D2FFD0D0D0FFCFCFCFFFD0D0
      D0FFC3C3C3FFE3E3E3FFF4F4F4FFF4F4F4FFC9C9C9FF00000000000000000000
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
      000000000000DDDDDDFFE7E7E7FFF5F5F5FFF2F2F2FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF5F5F5FFF2F2F2FFF4F4F4FFEBEBEBFFC8C8C8FF00000000000000000000
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
      000000000000EAEAEAFFD9D9D9FFF3F3F3FFF4F4F4FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF4F4F4FFEFEFEFFFCCCCCCFFE0E0E0FF00000000000000000000
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
      000000000000F2F2F2FFE5E5E5FFDADADAFFEEEEEEFFF6F6F6FFF6F6F6FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF6F6F6FFEAEAEAFFC9C9C9FFD1D1D1FFF2F2F2FF00000000000000000000
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
      000000000000F0F0F0FFF2F2F2FFE8E8E8FFDADADAFFD3D3D3FFDADADAFFDADA
      DAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD8D8
      D8FFCDCDCDFFCCCCCCFFE0E0E0FFF2F2F2FFF1F1F1FF00000000000000000000
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
      28000000F8000000A00000000100010000000000001400000000000000000000
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
      00000000000000000000000000000000FFFF80000017FFFFFFFC00000007FFF0
      00000000000000000000000000000000FFFFE0000007FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000001FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFF00000003FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE10000001FFFFFFF800000007FFF0
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
      00000000000000000000000000000000FFFE00000005FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFF00000003FFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC000000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFC040000FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFE040001FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFE000001FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFF000001FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFF003803FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFF007801FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFFF000001FFFFFFFF800000007FFF0
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFFF
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
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFFF001D00FFFFFFFFFFFFFF80FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFFE0000003FFFFFFFFFFFFE00FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFFE0000003FFFFFFFFFFFFC00FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFF80000003FFFFFFFFFFFF800FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFFFFF0007FFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFFFFE000FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFFC1C001FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFF800003FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000003FFFFFFFFE000007FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000003FFFFFFFFE00000FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFC00000FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF800001FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF0000001FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF0000000FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000000FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFC0000001FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFC0000003FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000003FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFE0000007FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF000000FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFE000007FFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFE00000007FFFFFFFFF80001FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFF00000007FFFFFFFFF80003FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFF00000007FFFFFFFFFC0007FFFFFF
      FFF80000007FFFFFFFE0000001FFFF00FFFF8000000FFFFFFFFFFE003FFFFFFF
      FFF80000007FFFFFFFE0000001FFFF0000000000000000000000000000000000
      000000000000}
  end
  inherited Cadastro: TIBQuery
    Tag = 1
    AfterScroll = CadastroAfterScroll
    BeforeScroll = CadastroBeforeScroll
    BufferChunks = 2500
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT PK.ID  ,PK.IDEP,PK.DEEP,'
      '       PK.IDEV,PK.IDCA,PK.DTCA,PK.HTPK,'
      
        '       PK.IDST,PK.DTST,PK.CDST,PK.REST,PK.DEST,PK.D_DEST ,PK.INF' +
        'ADST,'
      
        '       PK.IDPK,PK.DEPK,PK.DTPK,PK.CDCX,PK.CDPP,PK.API_B2B,PK.CTN' +
        'R   ,'
      '       PK.IDOS,PK.CDOS,PK.DTOS,PK.D_DTOS,PK.D_HTOS,PK.D_HNOS,'
      '       PK.INFADOS,PK.INFSTOS,'
      
        '       PK.IDSP,PK.DESP,PK.DTSP,PK.D_DTSP,PK.DTSP_INI,PK.DTSP_FIM' +
        ',PK.D_HTSP,PK.D_HNSP,'
      '       PK.CDRO,PK.DTRO,D_DTRO ,'
      
        '       NULLIF(PK.CDNF,0) AS CDNF,PK.DTNF,PK.HTNF,PK.D_DTNF,PK.CF' +
        'OP,'
      '       PK.CDDV,PK.DTDV,PK.DEDV,'
      '       PK.IDSA,PK.DTSA,PK.D_DTSA,PK.D_HTSA,PK.D_HNSA,'
      
        '       PK.IDCD,PK.DECD,PK.RZCD,PK.PJCD,PK.GPCD,PK.CNCD,PK.CSCD,P' +
        'K.FIN_VCRD,PK.UFCD,PK.RSCD,'
      '       PK.IDCV,PK.DECV,PK.RSCV,'
      '       PK.IDCR,PK.DECR,PK.UFCR,PK.RSCR,'
      '       PK.IDCT,PK.DECT,PK.LOC_NO_CT,PK.UFCT,PK.RSCT,'
      '       PK.ITEM,PK.QTDE,PK.D_QTDE,PK.QTRL,PK.D_QTRL,'
      '       PK.ITSP,PK.QTSP,PK.D_QTSP,PK.RLSP,PK.D_RLSP,'
      '       PK.IDSC,PK.TDSC,PK.PDSC  ,PK.VDSC  ,'
      '       PK.TSDE,PK.D_TSDE,PK.TCDE,PK.D_TCDE,'
      '       PK.VTSP,PK.D_VTSP,PK.PPSP,PK.D_PPSP,'
      '       PK.VNF ,PK.VIPI,PK.VST,'
      '       PK.VTFA,PK.VTAP,'
      '       PK.PCOM,PK.VCOM,'
      '       PK.MFRT,PK.D_MFRT,PK.VFRT  ,PK.PSBR,PK.PSLQ,'
      
        '       PK.CDPD,PK.STPD  ,PK.SVPD  ,PK.ABPD,PK.DVPD,PK.FAPD,PK.BQ' +
        'PD,'
      '       PK.BEPD,PK.QEPD  ,PK.SEPD  ,PK.DEPD,'
      '       PK.CDCO,PK.STCO  ,PK.D_STCO,PK.TPCO,PK.RECO,'
      '       PK.CDPG,PK.DEPG,'
      '       PK.APST,PK.FBST,PK.BXST  ,PK.LQST,PK.BQST,'
      '       PK.CDBX,PK.DTBX,PK.D_DTBX,'
      '       PK.INFADCAD,PK.IP,PK.HOST,'
      '       PK.LOG_PRN_CDEV,PK.LOG_PRN_QTEV,PK.INFADPRN'
      ''
      'FROM   VW_PED_VEN_CAB AS PK'
      'WHERE (PK.APST = 1'
      
        'OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE)))'
      
        'OR     PK.DTNF BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE)))'
      
        'OR     PK.DTBX BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))))'
      ''
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      ')')
    Left = 120
    Top = 241
    object CadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_CAB_004"."ID"'
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_CAB_004"."IDEP"'
    end
    object CadastroDEEP: TIBStringField
      FieldName = 'DEEP'
      Origin = '"VW_PED_VEN_CAB_004"."DEEP"'
      Size = 60
    end
    object CadastroIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"VW_PED_VEN_CAB_004"."IDEV"'
    end
    object CadastroIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_CAB_004"."IDCA"'
    end
    object CadastroDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_CAB_004"."DTCA"'
    end
    object CadastroIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"VW_PED_VEN_CAB_004"."IDST"'
    end
    object CadastroDTST: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTST'
      Origin = '"VW_PED_VEN_CAB_004"."DTST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PED_VEN_CAB_004"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PED_VEN_CAB_004"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_CAB_004"."DEST"'
    end
    object CadastroD_DEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'D_DEST'
      Origin = '"VW_PED_VEN_CAB_004"."D_DEST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroINFADST: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADST'
      Origin = '"VW_PED_VEN_CAB_004"."INFADST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object CadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_CAB_004"."IDPK"'
    end
    object CadastroDEPK: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPK'
      Origin = '"VW_PED_VEN_CAB_004"."DEPK"'
      Size = 30
    end
    object CadastroDTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTPK'
      Origin = '"VW_PED_VEN_CAB_004"."DTPK"'
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroHTPK: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTPK'
      Origin = '"VW_PED_VEN_CAB_004"."HTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroCDCX: TLargeintField
      FieldName = 'CDCX'
      Origin = '"VW_PED_VEN_CAB_004"."CDCX"'
    end
    object CadastroCDPP: TLargeintField
      FieldName = 'CDPP'
      Origin = '"VW_PED_VEN_CAB_004"."CDPP"'
    end
    object CadastroAPI_B2B: TSmallintField
      FieldName = 'API_B2B'
      Origin = '"VW_PED_VEN_CAB_004"."API_B2B"'
    end
    object CadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_PED_VEN_CAB_004"."CTNR"'
    end
    object CadastroIDOS: TSmallintField
      DisplayLabel = 'OS'
      FieldKind = fkInternalCalc
      FieldName = 'IDOS'
      Origin = '"VW_PED_VEN_CAB_004"."IDOS"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0'
    end
    object CadastroCDOS: TLargeintField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'CDOS'
      Origin = '"VW_PED_VEN_CAB_004"."CDOS"'
    end
    object CadastroDTOS: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTOS'
      Origin = '"VW_PED_VEN_CAB_004"."DTOS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroD_DTOS: TDateTimeField
      DisplayLabel = 'Ordem'
      FieldName = 'D_DTOS'
      Origin = '"VW_PED_VEN_CAB_004"."D_DTOS"'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object CadastroD_HTOS: TIBStringField
      DisplayLabel = 'IN'#205
      FieldKind = fkInternalCalc
      FieldName = 'D_HTOS'
      Origin = '"VW_PED_VEN_CAB_004"."D_HTOS"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object CadastroD_HNOS: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_HNOS'
      Origin = '"VW_PED_VEN_CAB_004"."D_HNOS"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object CadastroD_HTSP: TIBStringField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'D_HTSP'
      Origin = '"VW_PED_VEN_CAB_004"."D_HTSP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object CadastroD_HNSP: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_HNSP'
      Origin = '"VW_PED_VEN_CAB_004"."D_HNSP"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object CadastroINFADOS: TIBStringField
      FieldName = 'INFADOS'
      Origin = '"VW_PED_VEN_CAB_004"."INFADOS"'
      Size = 50
    end
    object CadastroINFSTOS: TIBStringField
      FieldName = 'INFSTOS'
      Origin = '"VW_PED_VEN_CAB_004"."INFSTOS"'
      Size = 30
    end
    object CadastroIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"VW_PED_VEN_CAB_004"."IDSP"'
    end
    object CadastroDESP: TIBStringField
      FieldName = 'DESP'
      Origin = '"VW_PED_VEN_CAB_004"."DESP"'
      Size = 30
    end
    object CadastroDTSP: TDateField
      DisplayLabel = 'Separado'
      FieldKind = fkInternalCalc
      FieldName = 'DTSP'
      Origin = '"VW_PED_VEN_CAB_004"."DTSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroD_DTSP: TDateTimeField
      DisplayLabel = 'Separado'
      FieldName = 'D_DTSP'
      Origin = '"VW_PED_VEN_CAB_004"."D_DTSP"'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object CadastroDTSP_INI: TDateTimeField
      DisplayLabel = 'INI SP'
      FieldName = 'DTSP_INI'
      Origin = '"VW_PED_VEN_CAB_004"."DTSP_INI"'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object CadastroDTSP_FIM: TDateTimeField
      DisplayLabel = 'FIM SP'
      FieldName = 'DTSP_FIM'
      Origin = '"VW_PED_VEN_CAB_004"."DTSP_FIM"'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object CadastroCDRO: TLargeintField
      DisplayLabel = 'N'#186' ROM'
      FieldName = 'CDRO'
      Origin = '"VW_PED_VEN_CAB_004"."CDRO"'
      DisplayFormat = '0'
    end
    object CadastroDTRO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTRO'
      Origin = '"VW_PED_VEN_CAB_004"."DTRO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroD_DTRO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'D_DTRO'
      Origin = '"VW_PED_VEN_CAB_004"."D_DTRO"'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object CadastroCDNF: TLargeintField
      DisplayLabel = 'Fatura'
      FieldName = 'CDNF'
      Origin = '"VW_PED_VEN_CAB_004"."CDNF"'
      DisplayFormat = '0'
    end
    object CadastroCFOP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CFOP'
      Origin = '"VW_PED_VEN_CAB_004"."CFOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object CadastroDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTNF'
      Origin = '"VW_PED_VEN_CAB_004"."DTNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroHTNF: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HTNF'
      Origin = '"VW_PED_VEN_CAB"."HTNF"'
      DisplayFormat = 'hh:mm'
    end
    object CadastroD_DTNF: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'D_DTNF'
      Origin = '"VW_PED_VEN_CAB_004"."D_DTNF"'
      DisplayFormat = 'dd.mm.hh'
    end
    object CadastroIDSA: TSmallintField
      FieldName = 'IDSA'
      Origin = '"VW_PED_VEN_CAB_004"."IDSA"'
    end
    object CadastroDTSA: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTSA'
      Origin = '"VW_PED_VEN_CAB_004"."DTSA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroD_DTSA: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'D_DTSA'
      Origin = '"VW_PED_VEN_CAB_004"."D_DTSA"'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object CadastroD_HTSA: TIBStringField
      DisplayLabel = 'Dura'#231#227'o'
      FieldName = 'D_HTSA'
      Origin = '"VW_PED_VEN_CAB_004"."D_HTSA"'
      Size = 10
    end
    object CadastroD_HNSA: TIBBCDField
      FieldName = 'D_HNSA'
      Origin = '"VW_PED_VEN_CAB_004"."D_HNSA"'
      Precision = 18
      Size = 2
    end
    object CadastroCDDV: TLargeintField
      FieldName = 'CDDV'
      Origin = '"VW_PED_VEN_CAB_004"."CDDV"'
    end
    object CadastroDTDV: TDateField
      FieldName = 'DTDV'
      Origin = '"VW_PED_VEN_CAB_004"."DTDV"'
    end
    object CadastroDEDV: TIBStringField
      FieldName = 'DEDV'
      Origin = '"VW_PED_VEN_CAB_004"."DEDV"'
      Size = 30
    end
    object CadastroIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"VW_PED_VEN_CAB_004"."IDCD"'
    end
    object CadastroDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      Origin = '"VW_PED_VEN_CAB_004"."DECD"'
      Size = 60
    end
    object CadastroRZCD: TIBStringField
      FieldName = 'RZCD'
      Origin = '"VW_PED_VEN_CAB_004"."RZCD"'
      Size = 60
    end
    object CadastroPJCD: TIBStringField
      FieldName = 'PJCD'
      Origin = '"VW_PED_VEN_CAB_004"."PJCD"'
      Size = 14
    end
    object CadastroGPCD: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GPCD'
      Origin = '"VW_PED_VEN_CAB_004"."GPCD"'
      Size = 60
    end
    object CadastroCNCD: TSmallintField
      FieldName = 'CNCD'
      Origin = '"VW_PED_VEN_CAB_004"."CNCD"'
    end
    object CadastroCSCD: TSmallintField
      FieldName = 'CSCD'
      Origin = '"VW_PED_VEN_CAB_004"."CSCD"'
    end
    object CadastroUFCD: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UFCD'
      Origin = '"VW_PED_VEN_CAB_004"."UFCD"'
      FixedChar = True
      Size = 2
    end
    object CadastroRSCD: TIBStringField
      FieldName = 'RSCD'
      Origin = '"VW_PED_VEN_CAB_004"."RSCD"'
      Size = 10
    end
    object CadastroFIN_VCRD: TIBBCDField
      FieldName = 'FIN_VCRD'
      Origin = '"VW_PED_VEN_CAB_004"."FIN_VCRD"'
      Precision = 18
      Size = 2
    end
    object CadastroIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_PED_VEN_CAB_004"."IDCV"'
    end
    object CadastroDECV: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'DECV'
      Origin = '"VW_PED_VEN_CAB_004"."DECV"'
      Size = 30
    end
    object CadastroRSCV: TIBStringField
      FieldName = 'RSCV'
      Origin = '"VW_PED_VEN_CAB_004"."RSCV"'
      Size = 10
    end
    object CadastroIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_PED_VEN_CAB_004"."IDCR"'
    end
    object CadastroDECR: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'DECR'
      Origin = '"VW_PED_VEN_CAB_004"."DECR"'
      Size = 60
    end
    object CadastroUFCR: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UFCR'
      Origin = '"VW_PED_VEN_CAB_004"."UFCR"'
      FixedChar = True
      Size = 2
    end
    object CadastroRSCR: TIBStringField
      FieldName = 'RSCR'
      Origin = '"VW_PED_VEN_CAB_004"."RSCR"'
      Size = 10
    end
    object CadastroIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"VW_PED_VEN_CAB_004"."IDCT"'
    end
    object CadastroDECT: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'DECT'
      Origin = '"VW_PED_VEN_CAB_004"."DECT"'
      Size = 60
    end
    object CadastroLOC_NO_CT: TIBStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'LOC_NO_CT'
      Origin = '"VW_PED_VEN_CAB_004"."LOC_NO_CT"'
      Size = 72
    end
    object CadastroUFCT: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UFCT'
      Origin = '"VW_PED_VEN_CAB_004"."UFCT"'
      FixedChar = True
      Size = 2
    end
    object CadastroRSCT: TIBStringField
      FieldName = 'RSCT'
      Origin = '"VW_PED_VEN_CAB_004"."RSCT"'
      Size = 10
    end
    object CadastroITEM: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'ITEM'
      Origin = '"VW_PED_VEN_CAB_004"."ITEM"'
      DisplayFormat = '0'
    end
    object CadastroQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_CAB_004"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_QTDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_QTDE'
      Origin = '"VW_PED_VEN_CAB_004"."D_QTDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object CadastroQTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_CAB_004"."QTRL"'
      DisplayFormat = '0'
    end
    object CadastroD_QTRL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'D_QTRL'
      Origin = '"VW_PED_VEN_CAB_004"."D_QTRL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroITSP: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'ITSP'
      Origin = '"VW_PED_VEN_CAB_004"."ITSP"'
      DisplayFormat = '0'
    end
    object CadastroQTSP: TIBBCDField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_CAB_004"."QTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_QTSP: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_QTSP'
      Origin = '"VW_PED_VEN_CAB_004"."D_QTSP"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object CadastroRLSP: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_CAB_004"."RLSP"'
      DisplayFormat = '0'
    end
    object CadastroD_RLSP: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'D_RLSP'
      Origin = '"VW_PED_VEN_CAB_004"."D_RLSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroIDSC: TSmallintField
      FieldName = 'IDSC'
      Origin = '"VW_PED_VEN_CAB_004"."IDSC"'
    end
    object CadastroTDSC: TIBStringField
      FieldName = 'TDSC'
      Origin = '"VW_PED_VEN_CAB_004"."TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroPDSC: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_CAB_004"."PDSC"'
      DisplayFormat = '0%'
      Precision = 9
      Size = 2
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_CAB_004"."VDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTSDE: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_CAB_004"."TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_TSDE: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldKind = fkInternalCalc
      FieldName = 'D_TSDE'
      Origin = '"VW_PED_VEN_CAB_004"."D_TSDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTCDE: TIBBCDField
      DisplayLabel = 'Pedidos R$'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_CAB_004"."TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_TCDE: TIBBCDField
      DisplayLabel = 'Pedidos R$'
      FieldKind = fkInternalCalc
      FieldName = 'D_TCDE'
      Origin = '"VW_PED_VEN_CAB_004"."D_TCDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVTSP: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_CAB_004"."VTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroD_VTSP: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldKind = fkInternalCalc
      FieldName = 'D_VTSP'
      Origin = '"VW_PED_VEN_CAB"."D_VTSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPPSP: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PPSP'
      Origin = '"VW_PED_VEN_CAB_004"."PPSP"'
      DisplayFormat = '0%'
      Precision = 9
      Size = 2
    end
    object CadastroD_PPSP: TIBBCDField
      DisplayLabel = '%'
      FieldKind = fkInternalCalc
      FieldName = 'D_PPSP'
      Origin = '"VW_PED_VEN_CAB"."D_PPSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0%'
      Precision = 9
      Size = 2
    end
    object CadastroVNF: TIBBCDField
      DisplayLabel = 'Nota Fiscal R$'
      FieldName = 'VNF'
      Origin = '"VW_PED_VEN_CAB_004"."VNF"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVIPI: TIBBCDField
      DisplayLabel = 'IPI R$'
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_CAB_004"."VIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVST: TIBBCDField
      DisplayLabel = 'ST R$'
      FieldName = 'VST'
      Origin = '"VW_PED_VEN_CAB_004"."VST"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVTFA: TIBBCDField
      DisplayLabel = 'Faturados R$'
      FieldName = 'VTFA'
      Origin = '"VW_PED_VEN_CAB_004"."VTFA"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVTAP: TIBBCDField
      DisplayLabel = 'Em Aberto R$'
      FieldKind = fkInternalCalc
      FieldName = 'VTAP'
      Origin = '"VW_PED_VEN_CAB_004"."VTAP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPCOM: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PCOM'
      Origin = '"VW_PED_VEN_CAB_004"."PCOM"'
      DisplayFormat = '0 %'
      Precision = 9
      Size = 2
    end
    object CadastroVCOM: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VCOM'
      Origin = '"VW_PED_VEN_CAB_004"."VCOM"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"VW_PED_VEN_CAB_004"."MFRT"'
    end
    object CadastroD_MFRT: TIBStringField
      DisplayLabel = 'Modelo'
      FieldKind = fkInternalCalc
      FieldName = 'D_MFRT'
      Origin = '"VW_PED_VEN_CAB_004"."D_MFRT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CadastroVFRT: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VFRT'
      Origin = '"VW_PED_VEN_CAB_004"."VFRT"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_CAB_004"."PSBR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroPSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_CAB_004"."PSLQ"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroCDPD: TSmallintField
      FieldName = 'CDPD'
      Origin = '"VW_PED_VEN_CAB_004"."CDPD"'
    end
    object CadastroSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"VW_PED_VEN_CAB_004"."STPD"'
      Size = 60
    end
    object CadastroABPD: TSmallintField
      FieldName = 'ABPD'
      Origin = '"VW_PED_VEN_CAB_004"."ABPD"'
    end
    object CadastroDVPD: TSmallintField
      FieldName = 'DVPD'
      Origin = '"VW_PED_VEN_CAB_004"."DVPD"'
    end
    object CadastroSVPD: TSmallintField
      FieldName = 'SVPD'
      Origin = '"VW_PED_VEN_CAB_004"."SVPD"'
    end
    object CadastroFAPD: TSmallintField
      FieldName = 'FAPD'
      Origin = '"VW_PED_VEN_CAB_004"."FAPD"'
    end
    object CadastroBQPD: TSmallintField
      FieldName = 'BQPD'
      Origin = '"VW_PED_VEN_CAB_004"."BQPD"'
    end
    object CadastroBEPD: TSmallintField
      FieldName = 'BEPD'
      Origin = '"VW_PED_VEN_CAB_004"."BEPD"'
    end
    object CadastroQEPD: TSmallintField
      FieldName = 'QEPD'
      Origin = '"VW_PED_VEN_CAB_004"."QEPD"'
    end
    object CadastroSEPD: TSmallintField
      FieldName = 'SEPD'
      Origin = '"VW_PED_VEN_CAB_004"."SEPD"'
    end
    object CadastroDEPD: TSmallintField
      FieldName = 'DEPD'
      Origin = '"VW_PED_VEN_CAB_004"."DEPD"'
    end
    object CadastroCDCO: TSmallintField
      FieldName = 'CDCO'
      Origin = '"VW_PED_VEN_CAB_004"."CDCO"'
    end
    object CadastroSTCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'STCO'
      Origin = '"VW_PED_VEN_CAB_004"."STCO"'
      Size = 60
    end
    object CadastroD_STCO: TIBStringField
      DisplayLabel = 'Prazo'
      FieldKind = fkInternalCalc
      FieldName = 'D_STCO'
      Origin = '"VW_PED_VEN_CAB_004"."D_STCO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 84
    end
    object CadastroTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"VW_PED_VEN_CAB_004"."TPCO"'
    end
    object CadastroRECO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'RECO'
      Origin = '"VW_PED_VEN_CAB_004"."RECO"'
      Size = 3
    end
    object CadastroCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"VW_PED_VEN_CAB_004"."CDPG"'
    end
    object CadastroDEPG: TIBStringField
      FieldName = 'DEPG'
      Origin = '"VW_PED_VEN_CAB_004"."DEPG"'
      Size = 60
    end
    object CadastroAPST: TSmallintField
      FieldName = 'APST'
      Origin = '"VW_PED_VEN_CAB_004"."APST"'
    end
    object CadastroFBST: TSmallintField
      FieldName = 'FBST'
      Origin = '"VW_PED_VEN_CAB_004"."FBST"'
    end
    object CadastroBXST: TSmallintField
      FieldName = 'BXST'
      Origin = '"VW_PED_VEN_CAB_004"."BXST"'
    end
    object CadastroLQST: TSmallintField
      FieldName = 'LQST'
      Origin = '"VW_PED_VEN_CAB_004"."LQST"'
    end
    object CadastroBQST: TSmallintField
      FieldName = 'BQST'
      Origin = '"VW_PED_VEN_CAB_004"."BQST"'
    end
    object CadastroCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"VW_PED_VEN_CAB_004"."CDBX"'
    end
    object CadastroDTBX: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_PED_VEN_CAB_004"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroD_DTBX: TDateTimeField
      FieldName = 'D_DTBX'
      Origin = '"VW_PED_VEN_CAB_004"."D_DTBX"'
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PED_VEN_CAB_004"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
    object CadastroIP: TIBStringField
      FieldName = 'IP'
      Origin = '"VW_PED_VEN_CAB_004"."IP"'
      Size = 30
    end
    object CadastroHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"VW_PED_VEN_CAB_004"."HOST"'
      Size = 30
    end
    object CadastroLOG_PRN_CDEV: TSmallintField
      FieldName = 'LOG_PRN_CDEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_CDEV"'
    end
    object CadastroLOG_PRN_QTEV: TSmallintField
      FieldName = 'LOG_PRN_QTEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_QTEV"'
    end
    object CadastroINFADPRN: TIBStringField
      FieldName = 'INFADPRN'
      Origin = '"VW_PED_VEN_CAB_004"."INFADPRN"'
      Size = 255
    end
    object CadastroC_IDPK: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'C_IDPK'
      Calculated = True
    end
  end
  inherited TConsulta: TIBTransaction
    Left = 120
    Top = 208
  end
  inherited SQLConsulta: TIBSQL
    Left = 152
    Top = 208
  end
  inherited TEdicao: TIBTransaction
    Left = 184
    Top = 208
  end
  inherited SQLEdicao: TIBSQL
    Left = 216
    Top = 208
  end
  inherited SPEdicao: TIBStoredProc
    Left = 280
    Top = 208
  end
  inherited TEvent: TIBTransaction
    Left = 312
    Top = 208
  end
  inherited SPEvent: TIBStoredProc
    Left = 376
    Top = 208
  end
  inherited ILDockIcons: TImageList
    Top = 168
  end
  inherited DMMain: TdxDockingManager
    AutoHideInterval = 20
    AutoHideMovingSize = 20
    AutoShowInterval = 20
    Left = 448
    Top = 296
  end
  inherited BMMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 480
    Top = 296
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited SQLEvent: TIBSQL
    Left = 344
    Top = 208
  end
  inherited EEvent: TIBEvents
    Left = 408
    Top = 208
  end
  inherited ALPrincipal: TActionList
    Left = 440
    Top = 208
    object ACTMPPedido: TAction
      Category = 'Menu Principal'
      Caption = 'ACTMPPedido'
      OnExecute = ACTMPPedidoExecute
    end
    object ACTMPDevolucao: TAction
      Category = 'Menu Principal'
      Caption = 'Devolu'#231#245'es'
      Hint = 'Devolu'#231#245'es de Produtos'
      OnExecute = ACTMPDevolucaoExecute
    end
    object ACTMPAbatimento: TAction
      Category = 'Menu Principal'
      Caption = 'Abatimentos'
      Hint = 'Abatimentos de Pedidos'
      OnExecute = ACTMPAbatimentoExecute
    end
    object ACTMPRomaneio: TAction
      Category = 'Menu Principal'
      Caption = 'Romaneios'
      Hint = 'Romaneios de Vendas'
      OnExecute = ACTMPRomaneioExecute
    end
    object ACTMPFinanceiroAppend: TAction
      Category = 'Menu Principal'
      Caption = 'Finalizar'
      Hint = 'Finaliza o pedido e gera contas a receber'
      OnExecute = ACTMPFinanceiroAppendExecute
    end
    object ACTMPFinanceiroDelete: TAction
      Category = 'Menu Principal'
      Caption = 'Re-Abrir'
      Hint = 'Baixa contas a receber e re-abre pedido'
      OnExecute = ACTMPFinanceiroDeleteExecute
    end
    object ACTMPCAD_CLI_CRD: TAction
      Category = 'Menu Principal'
      Caption = 'Comercial'
      Hint = 'Informa'#231#245'es Comerciais'
      OnExecute = ACTMPCAD_CLI_CRDExecute
    end
    object ACTMPCAD_CLI_EDI: TAction
      Category = 'Menu Principal'
      Caption = 'Clientes'
      Hint = 'Informa'#231#245'es Cadastrais'
      OnExecute = ACTMPCAD_CLI_EDIExecute
    end
  end
  object fin_rec_bai: TIBDataSet
    Database = FBird.DBEDI
    Transaction = TSEdicao
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
      
        '   FIN_STA, FIN_STCO, FIN_STDO, FIN_STFI, FIN_TIPO, FIN_TITU, FI' +
        'N_VALO, '
      
        '   FIN_VCHQ, FIN_VDES, FIN_VENC, FIN_VEND, FIN_VJUR, FIN_VMUL, F' +
        'IN_VPAG, '
      '   FIN_VPEN, ID)'
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
      
        '   :FIN_STA, :FIN_STCO, :FIN_STDO, :FIN_STFI, :FIN_TIPO, :FIN_TI' +
        'TU, :FIN_VALO, '
      
        '   :FIN_VCHQ, :FIN_VDES, :FIN_VENC, :FIN_VEND, :FIN_VJUR, :FIN_V' +
        'MUL, :FIN_VPAG, '
      '   :FIN_VPEN, :ID)')
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
      '  FIN_DTST,'
      '  FIN_OBSE,'
      '  FIN_TIPO,'
      '  FIN_STCO,'
      '  FIN_STFI,'
      '  FIN_TITU'
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
      '  FIN_TITU = :FIN_TITU,'
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
    Left = 504
    Top = 208
    object fin_rec_baiID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object fin_rec_baiFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_BAI"."FIN_CDRD"'
    end
    object fin_rec_baiFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_BAI"."FIN_CCLI"'
    end
    object fin_rec_baiFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_BAI"."FIN_DFIN"'
      Size = 60
    end
    object fin_rec_baiFIN_DCLI: TIBStringField
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC_BAI"."FIN_DCLI"'
      Size = 60
    end
    object fin_rec_baiFIN_RCLI: TIBStringField
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC_BAI"."FIN_RCLI"'
      Size = 60
    end
    object fin_rec_baiFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_BAI"."FIN_CVEN"'
    end
    object fin_rec_baiFIN_VEND: TIBStringField
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC_BAI"."FIN_VEND"'
      Size = 60
    end
    object fin_rec_baiFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_BAI"."FIN_CREP"'
    end
    object fin_rec_baiFIN_DREP: TIBStringField
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC_BAI"."FIN_DREP"'
      Size = 60
    end
    object fin_rec_baiFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC_BAI"."FIN_RREP"'
      Size = 60
    end
    object fin_rec_baiFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_BAI"."FIN_PRAZ"'
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
    object fin_rec_baiFIN_DVEN: TDateField
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAI"."FIN_DVEN"'
    end
    object fin_rec_baiFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAI"."FIN_DPAG"'
    end
    object fin_rec_baiFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_BAI"."FIN_DMED"'
    end
    object fin_rec_baiFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_BAI"."FIN_DATR"'
    end
    object fin_rec_baiFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_BAI"."FIN_DBAI"'
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
    object fin_rec_baiFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAI"."FIN_STDO"'
      Size = 3
    end
    object fin_rec_baiFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAI"."FIN_DOCT"'
      Size = 30
    end
    object fin_rec_baiFIN_BANC: TIBStringField
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAI"."FIN_BANC"'
      Size = 4
    end
    object fin_rec_baiFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAI"."FIN_DBAN"'
      Size = 50
    end
    object fin_rec_baiFIN_AGEN: TIBStringField
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAI"."FIN_AGEN"'
      Size = 10
    end
    object fin_rec_baiFIN_CONT: TIBStringField
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAI"."FIN_CONT"'
      Size = 15
    end
    object fin_rec_baiFIN_NCHQ: TIBStringField
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAI"."FIN_NCHQ"'
      Size = 10
    end
    object fin_rec_baiFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAI"."FIN_MCHQ"'
    end
    object fin_rec_baiFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAI"."FIN_VALO"'
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
    object fin_rec_baiFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_BAI"."FIN_VENC"'
      Precision = 18
      Size = 2
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
    object fin_rec_baiFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_BAI"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object fin_rec_baiFIN_COBR: TIBStringField
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC_BAI"."FIN_COBR"'
      FixedChar = True
      Size = 1
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
    object fin_rec_baiFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_BAI"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object fin_rec_baiFIN_TIPO: TIBStringField
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAI"."FIN_TIPO"'
      Size = 60
    end
    object fin_rec_baiFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAI"."FIN_STCO"'
      Size = 60
    end
    object fin_rec_baiFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAI"."FIN_STFI"'
      Size = 60
    end
    object fin_rec_baiFIN_TITU: TIBStringField
      FieldName = 'FIN_TITU'
      Origin = '"FIN_REC_BAI"."FIN_TITU"'
      Size = 30
    end
  end
  object TSEdicao: TIBTransaction
    DefaultDatabase = FBird.DBEDI
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 472
    Top = 208
  end
  object DTSFKCadastro: TDataSource
    DataSet = FKCadastro
    OnDataChange = DTSFKCadastroDataChange
    Left = 152
    Top = 272
  end
  object FKCadastro: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = FKCadastroAfterOpen
    AfterScroll = FKCadastroAfterScroll
    BeforeClose = FKCadastroBeforeClose
    OnCalcFields = FKCadastroCalcFields
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT   PK.ID    ,PK.IDEP,'
      '         PK.IDPK  ,PK.ITEM,'
      '         PK.IDCP  ,PK.CP_IDEP,PK.CP_DEEP,'
      '         PK.ARTIGO,PK.SKU ,PK.CEAN,'
      '         PK.DECP  ,PK.DGCP,'
      '         PK.UCOM  ,PK.UCON,PK.QTDE,PK.QTRL,PK.UN_QTDE,'
      
        '         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,PK.VPRC_PAD,PK.PDSC,PK.' +
        'VDSC,PK.VPRC_COM,'
      '         PK.NCM   ,PK.PIPI,PK.VIPI,'
      '         PK.PCOM  ,PK.VCOM,'
      '         PK.TSDE  ,PK.TCDE,PK.VTSP,'
      '         PK.PSBR  ,PK.PSLQ,'
      
        '         PK.IDSP  ,PK.CDSP,PK.DESP,PK.QTSP,PK.RLSP,PK.DTSP,PK.UN' +
        '_QTSP,'
      '         PK.IMG_ID,PK.IMG_PAD'
      'FROM     VW_PED_VEN_ITE_004 AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDPK = :IDPK'
      'ORDER BY PK.ITEM')
    Left = 120
    Top = 272
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftLargeint
        Name = 'IDPK'
        ParamType = ptUnknown
        Size = 8
      end>
    object FKCadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_ITE_004"."ID"'
    end
    object FKCadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_ITE_004"."IDEP"'
    end
    object FKCadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_ITE_004"."IDPK"'
    end
    object FKCadastroITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"VW_PED_VEN_ITE_004"."ITEM"'
    end
    object FKCadastroIDCP: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'IDCP'
      Origin = '"VW_PED_VEN_ITE_004"."IDCP"'
    end
    object FKCadastroCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_PED_VEN_ITE_004"."CP_IDEP"'
    end
    object FKCadastroCP_DEEP: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'CP_DEEP'
      Origin = '"VW_PED_VEN_ITE_004"."CP_DEEP"'
      Size = 60
    end
    object FKCadastroARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"VW_PED_VEN_ITE_004"."ARTIGO"'
    end
    object FKCadastroSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"VW_PED_VEN_ITE_004"."SKU"'
    end
    object FKCadastroCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_PED_VEN_ITE"."CEAN"'
    end
    object FKCadastroDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"VW_PED_VEN_ITE_004"."DECP"'
      Size = 120
    end
    object FKCadastroDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_PED_VEN_ITE_004"."DGCP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FKCadastroUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"VW_PED_VEN_ITE_004"."UCOM"'
      Size = 10
    end
    object FKCadastroUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldKind = fkInternalCalc
      FieldName = 'UCON'
      Origin = '"VW_PED_VEN_ITE_004"."UCON"'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object FKCadastroQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_ITE_004"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_ITE_004"."QTRL"'
      DisplayFormat = '0'
    end
    object FKCadastroUN_QTDE: TIBStringField
      DisplayLabel = 'Quantidade'
      FieldKind = fkInternalCalc
      FieldName = 'UN_QTDE'
      Origin = '"VW_PED_VEN_ITE"."UN_QTDE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 26
    end
    object FKCadastroVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"VW_PED_VEN_ITE_004"."VPRC_PAD_INI"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"VW_PED_VEN_ITE_004"."VPRC_PAD_FIM"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroVPRC_PAD: TFloatField
      DisplayLabel = 'Unit'#225'rio r$'
      FieldName = 'VPRC_PAD'
      Origin = '"VW_PED_VEN_ITE_004"."VPRC_PAD"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroPDSC: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_ITE_004"."PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKCadastroVDSC: TFloatField
      DisplayLabel = 'R$'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_ITE_004"."VDSC"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroVPRC_COM: TFloatField
      DisplayLabel = 'Unit'#225'rio r$'
      FieldName = 'VPRC_COM'
      Origin = '"VW_PED_VEN_ITE_004"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VW_PED_VEN_ITE_004"."NCM"'
      FixedChar = True
      Size = 8
    end
    object FKCadastroPIPI: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PIPI'
      Origin = '"VW_PED_VEN_ITE_004"."PIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKCadastroVIPI: TFloatField
      DisplayLabel = 'Total r$'
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_ITE_004"."VIPI"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroPCOM: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'PCOM'
      Origin = '"VW_PED_VEN_ITE_004"."PCOM"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKCadastroVCOM: TFloatField
      DisplayLabel = 'Valor r$'
      FieldName = 'VCOM'
      Origin = '"VW_PED_VEN_ITE_004"."VCOM"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroTSDE: TIBBCDField
      DisplayLabel = 'Total r$'
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_ITE_004"."TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroTCDE: TIBBCDField
      DisplayLabel = 'Total r$'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_ITE_004"."TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroVTSP: TIBBCDField
      DisplayLabel = 'Total r$'
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_ITE_004"."VTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroPSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_ITE_004"."PSBR"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object FKCadastroPSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_ITE_004"."PSLQ"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object FKCadastroIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"VW_PED_VEN_ITE_004"."IDSP"'
    end
    object FKCadastroCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"VW_PED_VEN_ITE_004"."CDSP"'
    end
    object FKCadastroDESP: TIBStringField
      DisplayLabel = 'Separador'
      FieldKind = fkInternalCalc
      FieldName = 'DESP'
      Origin = '"VW_PED_VEN_ITE_004"."DESP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FKCadastroQTSP: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_ITE_004"."QTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroUN_QTSP: TIBStringField
      DisplayLabel = 'Quantidade'
      FieldKind = fkInternalCalc
      FieldName = 'UN_QTSP'
      Origin = '"VW_PED_VEN_ITE"."UN_QTSP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 26
    end
    object FKCadastroRLSP: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_ITE_004"."RLSP"'
      DisplayFormat = '0'
    end
    object FKCadastroDTSP: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTSP'
      Origin = '"VW_PED_VEN_ITE_004"."DTSP"'
      DisplayFormat = 'dd/mm hh:mm'
    end
    object FKCadastroIMG_ID: TLargeintField
      FieldName = 'IMG_ID'
      Origin = '"VW_PED_VEN_ITE"."IMG_ID"'
    end
    object FKCadastroIMG_PAD: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'IMG_PAD'
      Origin = '"VW_PED_VEN_ITE"."IMG_PAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object FKCadastroC_ID: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object Separados: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterScroll = SeparadosAfterScroll
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT   PK.ID  ,PK.IDEP,'
      '         PK.IDCA,PK.DTCA,PK.CDSP,LG_SP.LOGIN AS DESP,'
      '         PK.CDRO,PK.IDPK,PK.CDET,'
      '         PK.ITEM,CP.SKU ,CP.DGCP,PK.UCOM,CP.UCON,'
      
        '         PK.QTDE,PK.QTRL,PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,PK.VPRC' +
        '_COM,CAST(PK.QTDE*PK.VPRC_COM AS NUMERIC(15,2)) AS TCDE'
      'FROM     CAD_PRO_SEP AS PK'
      'JOIN     TAB_USER    AS LG_SP ON (LG_SP.ID = PK.IDCA)'
      'JOIN     CAD_PRO     AS CP    ON (CP.ID    = PK.IDCP)'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDPK = :IDPK'
      'ORDER BY PK.ITEM')
    Left = 121
    Top = 336
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftLargeint
        Name = 'IDPK'
        ParamType = ptUnknown
        Size = 8
      end>
    object SeparadosID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_SEP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SeparadosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_PRO_SEP"."IDEP"'
    end
    object SeparadosIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_PRO_SEP"."IDCA"'
    end
    object SeparadosDTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_SEP"."DTCA"'
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object SeparadosCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"CAD_PRO_SEP"."CDSP"'
    end
    object SeparadosDESP: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'DESP'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object SeparadosCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"CAD_PRO_SEP"."CDRO"'
    end
    object SeparadosIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"CAD_PRO_SEP"."IDPK"'
    end
    object SeparadosCDET: TLargeintField
      DisplayLabel = 'Etiqueta'
      FieldName = 'CDET'
      Origin = '"CAD_PRO_SEP"."CDET"'
    end
    object SeparadosITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"CAD_PRO_SEP"."ITEM"'
    end
    object SeparadosSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object SeparadosDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"CAD_PRO"."DGCP"'
      Size = 60
    end
    object SeparadosUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"CAD_PRO_SEP"."UCOM"'
      Size = 10
    end
    object SeparadosUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'UCON'
      Origin = '"CAD_PRO"."UCON"'
      Size = 45
    end
    object SeparadosQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"CAD_PRO_SEP"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object SeparadosQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"CAD_PRO_SEP"."QTRL"'
      DisplayFormat = '0'
    end
    object SeparadosVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"CAD_PRO_SEP"."VPRC_PAD_INI"'
    end
    object SeparadosVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"CAD_PRO_SEP"."VPRC_PAD_FIM"'
    end
    object SeparadosVPRC_COM: TFloatField
      DisplayLabel = 'Unit'#225'rio r$'
      FieldName = 'VPRC_COM'
      Origin = '"CAD_PRO_SEP"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object SeparadosTCDE: TIBBCDField
      DisplayLabel = 'Total r$'
      FieldName = 'TCDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
  end
  object DTSFKSeparados: TDataSource
    DataSet = Separados
    OnDataChange = DTSFKSeparadosDataChange
    Left = 152
    Top = 336
  end
  object Romaneios: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterScroll = RomaneiosAfterScroll
    BufferChunks = 2500
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT   FK.ID,PK.IDEP,'
      '         FK.ROM_CDET,CP.PRO_CPRO,FK.DGCP,'
      '         FK.UCOM,FK.UCON,'
      '         FK.ROM_QTDE,FK.ROM_QTRL,'
      
        '         FK.ROM_UNIT*PK.ROM_CONC AS ROM_UNIT,CAST(FK.ROM_QTDE*(F' +
        'K.ROM_UNIT*PK.ROM_CONC) AS NUMERIC(15,2)) AS ROM_TOTA,'
      
        '         FK.ROM_DSEP||'#39'  '#39'||CAST(LPAD(EXTRACT(DAY  FROM FK.ROM_D' +
        'TSP),2,0)||'#39'/'#39'||LPAD(EXTRACT(MONTH  FROM FK.ROM_DTSP),2,0)||'#39'/'#39'|' +
        '| RIGHT(LPAD(EXTRACT(YEAR FROM FK.ROM_DTSP),4,0),2)||'#39' '#39'||'
      
        '                                 LPAD(EXTRACT(HOUR FROM FK.ROM_D' +
        'TSP),2,0)||'#39':'#39'||LPAD(EXTRACT(MINUTE FROM FK.ROM_DTSP),2,0) AS VA' +
        'RCHAR(14)) AS SEPARADOR'
      'FROM     ROM_CAB_004 AS PK'
      'JOIN     ROM_ITE_004 AS FK ON (FK.IDPK = PK.IDPK)'
      'JOIN     CAD_PRO     AS CP ON (CP.ID   = FK.IDCP)'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.CDRO = :CDRO'
      'ORDER BY FK.ITEM')
    Left = 121
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'CDRO'
        ParamType = ptUnknown
        Size = 8
      end>
    object RomaneiosID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROM_ITE_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RomaneiosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"ROM_CAB_004"."ROM_CDEP"'
    end
    object RomaneiosPRO_CPRO: TIBStringField
      DisplayLabel = 'SKU'
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object RomaneiosROM_CDET: TIBStringField
      DisplayLabel = 'Etiqueta'
      FieldName = 'ROM_CDET'
      Origin = '"ROM_ITE_004"."ROM_CDET"'
      Size = 10
    end
    object RomaneiosROM_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTDE'
      Origin = '"ROM_ITE_004"."ROM_QTDE"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object RomaneiosROM_QTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'ROM_QTRL'
      Origin = '"ROM_ITE_004"."ROM_QTRL"'
      DisplayFormat = '0'
    end
    object RomaneiosROM_UNIT: TFloatField
      DisplayLabel = 'Unit'#225'rio r$'
      FieldName = 'ROM_UNIT'
      ProviderFlags = []
      DisplayFormat = ',##,0.00###'
    end
    object RomaneiosROM_TOTA: TIBBCDField
      DisplayLabel = 'Total r$'
      FieldName = 'ROM_TOTA'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object RomaneiosSEPARADOR: TIBStringField
      DisplayLabel = 'Separador'
      FieldName = 'SEPARADOR'
      ProviderFlags = []
      Size = 56
    end
    object RomaneiosDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"ROM_ITE_004"."DGCP"'
      Size = 60
    end
    object RomaneiosUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"ROM_ITE_004"."UCOM"'
      Size = 10
    end
    object RomaneiosUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'UCON'
      Origin = '"ROM_ITE_004"."UCON"'
      Size = 40
    end
  end
  object DTSFKRomaneios: TDataSource
    DataSet = Romaneios
    OnDataChange = DTSFKRomaneiosDataChange
    Left = 152
    Top = 368
  end
  object SQLFKEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 248
    Top = 208
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
    Left = 120
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDCP'
        ParamType = ptUnknown
        Size = 4
      end>
    object CAD_PRO_IMGIMG_ID: TLargeintField
      Tag = 1
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
    Left = 152
    Top = 304
  end
  object REL_PED_PDV_DIA: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT PK.* FROM REL_PED_PDV_DIA AS PK'
      'WHERE PK.ID = 0'
      'ORDER BY PK.PED_DIA DESC')
    Left = 121
    Top = 400
    object REL_PED_PDV_DIAID: TLargeintField
      FieldName = 'ID'
      Origin = '"REL_PED_PDV_DIA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object REL_PED_PDV_DIAEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"REL_PED_PDV_DIA"."EP_ID"'
    end
    object REL_PED_PDV_DIAPED_EP_ID: TSmallintField
      FieldName = 'PED_EP_ID'
      Origin = '"REL_PED_PDV_DIA"."PED_EP_ID"'
    end
    object REL_PED_PDV_DIAPED_EP_NO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PED_EP_NO'
      Origin = '"REL_PED_PDV_DIA"."PED_EP_NO"'
      Size = 60
    end
    object REL_PED_PDV_DIAPED_DIA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PED_DIA'
      Origin = '"REL_PED_PDV_DIA"."PED_DIA"'
      DisplayFormat = 'dd.mm.yy'
    end
    object REL_PED_PDV_DIACLI_ITCD: TIntegerField
      DisplayLabel = 'Total'
      FieldName = 'CLI_ITCD'
      Origin = '"SP_PED_VEN_REL"."CLI_ITCD"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_DIACLI_INCD: TIntegerField
      DisplayLabel = 'Novos'
      FieldName = 'CLI_INCD'
      Origin = '"SP_PED_VEN_REL_FCV"."CLI_INCD"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_DIAPED_VLPK: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VLPK'
      Origin = '"SP_PED_VEN_REL"."PED_VLPK"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_DIAPED_ILPK: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ILPK'
      Origin = '"SP_PED_VEN_REL"."PED_ILPK"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_DIAPED_VLSP: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VLSP'
      Origin = '"SP_PED_VEN_REL"."PED_VLSP"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_DIAPED_ILSP: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ILSP'
      Origin = '"SP_PED_VEN_REL"."PED_ILSP"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_DIAPED_PLSP: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'PED_PLSP'
      Origin = '"SP_PED_VEN_REL"."PED_PLSP"'
      DisplayFormat = '0.00 %'
      Precision = 9
      Size = 2
    end
    object REL_PED_PDV_DIAPED_VTLQ: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VTLQ'
      Origin = '"SP_PED_VEN_REL_FCV"."PED_VTLQ"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_DIAPED_ITLQ: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ITLQ'
      Origin = '"SP_PED_VEN_REL_FCV"."PED_ITLQ"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_DIACREATED_AT: TDateTimeField
      FieldName = 'CREATED_AT'
      Origin = '"REL_PED_PDV_DIA"."CREATED_AT"'
    end
  end
  object REL_PED_PDV_MES: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT PK.* FROM REL_PED_PDV_MES AS PK'
      'WHERE PK.ID = 0'
      'ORDER BY PK.PED_ANO_MES DESC')
    Left = 121
    Top = 432
    object REL_PED_PDV_MESID: TLargeintField
      FieldName = 'ID'
      Origin = '"REL_PED_PDV_MES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object REL_PED_PDV_MESEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"REL_PED_PDV_MES"."EP_ID"'
    end
    object REL_PED_PDV_MESPED_EP_ID: TSmallintField
      FieldName = 'PED_EP_ID'
      Origin = '"REL_PED_PDV_MES"."PED_EP_ID"'
    end
    object REL_PED_PDV_MESPED_EP_NO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PED_EP_NO'
      Origin = '"REL_PED_PDV_MES"."PED_EP_NO"'
      Size = 60
    end
    object REL_PED_PDV_MESPED_MES: TIBStringField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'PED_MES'
      Origin = '"REL_PED_PDV_MES"."PED_MES"'
      Size = 15
    end
    object REL_PED_PDV_MESPED_ANO_MES: TIBStringField
      FieldName = 'PED_ANO_MES'
      Origin = '"REL_PED_PDV_MES"."PED_ANO_MES"'
      Size = 6
    end
    object REL_PED_PDV_MESPED_VLPK: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VLPK'
      Origin = '"REL_PED_PDV_MES"."PED_VLPK"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_MESPED_ILPK: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ILPK'
      Origin = '"REL_PED_PDV_MES"."PED_ILPK"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_MESCLI_ITCD: TIntegerField
      DisplayLabel = 'Total'
      FieldName = 'CLI_ITCD'
      Origin = '"REL_PED_PDV_MES"."CLI_ITCD"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_MESCLI_INCD: TIntegerField
      DisplayLabel = 'Novos'
      FieldName = 'CLI_INCD'
      Origin = '"REL_PED_PDV_MES"."CLI_INCD"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_MESPED_VLSP: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VLSP'
      Origin = '"REL_PED_PDV_MES"."PED_VLSP"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_MESPED_ILSP: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ILSP'
      Origin = '"REL_PED_PDV_MES"."PED_ILSP"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_MESPED_PLSP: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'PED_PLSP'
      Origin = '"REL_PED_PDV_MES"."PED_PLSP"'
      DisplayFormat = '0.00 %'
      Precision = 9
      Size = 2
    end
    object REL_PED_PDV_MESPED_VTLQ: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VTLQ'
      Origin = '"REL_PED_PDV_MES"."PED_VTLQ"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_MESPED_ITLQ: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ITLQ'
      Origin = '"REL_PED_PDV_MES"."PED_ITLQ"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_MESCREATED_AT: TDateTimeField
      FieldName = 'CREATED_AT'
      Origin = '"REL_PED_PDV_MES"."CREATED_AT"'
    end
  end
  object DTSREL_PED_PDV_MES: TDataSource
    AutoEdit = False
    DataSet = REL_PED_PDV_MES
    Left = 152
    Top = 432
  end
  object DTSREL_PED_PDV_DIA: TDataSource
    AutoEdit = False
    DataSet = REL_PED_PDV_DIA
    Left = 152
    Top = 400
  end
  object REL_PED_PDV_ANO: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT PK.* FROM REL_PED_PDV_ANO AS PK'
      'WHERE PK.ID = 0'
      'ORDER BY PK.PED_ANO DESC')
    Left = 121
    Top = 464
    object REL_PED_PDV_ANOID: TLargeintField
      FieldName = 'ID'
      Origin = '"REL_PED_PDV_ANO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object REL_PED_PDV_ANOEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"REL_PED_PDV_ANO"."EP_ID"'
    end
    object REL_PED_PDV_ANOPED_EP_ID: TSmallintField
      FieldName = 'PED_EP_ID'
      Origin = '"REL_PED_PDV_ANO"."PED_EP_ID"'
    end
    object REL_PED_PDV_ANOPED_EP_NO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'PED_EP_NO'
      Origin = '"REL_PED_PDV_ANO"."PED_EP_NO"'
      Size = 60
    end
    object REL_PED_PDV_ANOPED_ANO: TSmallintField
      DisplayLabel = 'Emss'#227'o'
      FieldName = 'PED_ANO'
      Origin = '"REL_PED_PDV_ANO"."PED_ANO"'
    end
    object REL_PED_PDV_ANOPED_VLPK: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VLPK'
      Origin = '"REL_PED_PDV_ANO"."PED_VLPK"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_ANOPED_ILPK: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ILPK'
      Origin = '"REL_PED_PDV_ANO"."PED_ILPK"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_ANOCLI_ITCD: TIntegerField
      DisplayLabel = 'Total'
      FieldName = 'CLI_ITCD'
      Origin = '"REL_PED_PDV_ANO"."CLI_ITCD"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_ANOCLI_INCD: TIntegerField
      DisplayLabel = 'Novos'
      FieldName = 'CLI_INCD'
      Origin = '"REL_PED_PDV_ANO"."CLI_INCD"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_ANOPED_VLSP: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VLSP'
      Origin = '"REL_PED_PDV_ANO"."PED_VLSP"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_ANOPED_ILSP: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ILSP'
      Origin = '"REL_PED_PDV_ANO"."PED_ILSP"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_ANOPED_PLSP: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'PED_PLSP'
      Origin = '"REL_PED_PDV_ANO"."PED_PLSP"'
      DisplayFormat = '0.00 %'
      Precision = 9
      Size = 2
    end
    object REL_PED_PDV_ANOPED_VTLQ: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'PED_VTLQ'
      Origin = '"REL_PED_PDV_ANO"."PED_VTLQ"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object REL_PED_PDV_ANOPED_ITLQ: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'PED_ITLQ'
      Origin = '"REL_PED_PDV_ANO"."PED_ITLQ"'
      DisplayFormat = ',##,0'
    end
    object REL_PED_PDV_ANOCREATED_AT: TDateTimeField
      FieldName = 'CREATED_AT'
      Origin = '"REL_PED_PDV_ANO"."CREATED_AT"'
    end
  end
  object DTSREL_PED_PDV_ANO: TDataSource
    AutoEdit = False
    DataSet = REL_PED_PDV_ANO
    Left = 152
    Top = 464
  end
end
