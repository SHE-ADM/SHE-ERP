inherited frmcad_cli_inf: Tfrmcad_cli_inf
  Left = -9
  Top = 1
  HelpType = htKeyword
  HelpKeyword = '0'
  ActiveControl = DBGPedidos
  AlphaBlend = True
  AlphaBlendValue = 0
  Caption = 'Informa'#231#245'es Comerciais'
  ClientHeight = 995
  ClientWidth = 1920
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 1920
    Height = 911
    inherited PaintBox: TPaintBox
      Width = 1920
      Height = 842
    end
    object pnlpri: TPanel
      Left = 0
      Top = 0
      Width = 1920
      Height = 842
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object GBFinanceiro: TGroupBox
        Left = 0
        Top = 415
        Width = 1920
        Height = 427
        Align = alClient
        Caption = '  Financeiro  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object PCFinanceiro: TdxPageControl
          Left = 2
          Top = 19
          Width = 1916
          Height = 406
          ActivePage = TSFB
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          ParentFont = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpTop
          TabWidth = 0
          object TSFB: TdxTabSheet
            Caption = 'Banc'#225'rio'
            object DBGFB: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1916
              Height = 379
              Bands = <
                item
                  Alignment = taLeftJustify
                  Caption = 'T'#237'tulos'
                end
                item
                  Caption = 'Encargos R$'
                end
                item
                  Caption = 'Descontos R$'
                  Width = 93
                end
                item
                  Alignment = taLeftJustify
                  Caption = 'Recebimentos R$'
                end
                item
                  Caption = 'Status Recebimentos'
                end
                item
                  Alignment = taLeftJustify
                  Caption = 'Instru'#231#245'es Banc'#225'rias'
                  Width = 145
                end
                item
                  Caption = 'Vendedores'
                end
                item
                  Caption = 'Empresa'
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
              BandColor = clGray
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSFB
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = [fsItalic]
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = [fsItalic]
              ShowBands = True
              ShowGrid = False
              OnCustomDrawCell = DBGFBCustomDrawCell
              object DBGFBC_ID: TdxDBGridColumn
                DisableEditor = True
                Visible = False
                BandIndex = -1
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGFBDOCUMENTO: TdxDBGridColumn
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DOCUMENTO'
              end
              object DBGFBTITULO: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 90
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TITULO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGFBCTNR: TdxDBGridColumn
                DisableEditor = True
                Visible = False
                Width = 80
                BandIndex = -1
                RowIndex = 0
                FieldName = 'CTNR'
              end
              object DBGFBDTFA: TdxDBGridColumn
                DisableEditor = True
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTFA'
              end
              object DBGFBD_TIPO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'D_TIPO'
              end
              object DBGFBRECO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RECO'
              end
              object DBGFBDTVC: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTVC'
              end
              object DBGFBVDUP: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
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
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVJUR: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VJUR'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VJUR'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVMUL: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VMUL'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VMUL'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVDSC: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 85
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VDSC'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VDSC'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBDTPG: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 75
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTPG'
              end
              object DBGFBVPAG: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPAG'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPAG'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBVPEN: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPEN'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPEN'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFBDEST: TdxDBGridColumn
                DisableEditor = True
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DEST'
              end
              object DBGFBSTFI: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 100
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'STFI'
              end
              object DBGFBDTBX: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Visible = False
                Width = 70
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DTBX'
              end
              object DBGFBFIN_PEN: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_PEN'
              end
              object DBGFBFIN_LIQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_LIQ'
              end
              object DBGFBFIN_BLQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_BLQ'
              end
              object DBGFBAPI_ST: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Width = 125
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_ST'
              end
              object DBGFBAPI_CA: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_CA'
              end
              object DBGFBAPI_NN: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 110
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_NN'
              end
              object DBGFBAPI_DTCA: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Width = 110
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_DTCA'
              end
              object DBGFBAPI_DTED: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 95
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_DTED'
              end
              object DBGFBAPI_INFADCAD: TdxDBGridBlobColumn
                Color = 13816016
                HeaderAlignment = taCenter
                Width = 20
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_INFADCAD'
                PictureTransparency = gtOpaque
                PopupHeight = 500
                PopupWidth = 600
              end
              object DBGFBAPI_MT: TdxDBGridColumn
                Color = 13816016
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Width = 100
                BandIndex = 5
                RowIndex = 0
                FieldName = 'API_MT'
              end
              object DBGFBDECV: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 90
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DECV'
              end
              object DBGFBDECR: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 150
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DECR'
              end
              object DBGFBDEEP: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 150
                BandIndex = 7
                RowIndex = 0
                FieldName = 'DEEP'
              end
            end
            object PNLFBINFADCAD: TPanel
              Left = 0
              Top = 379
              Width = 1916
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
                Width = 1916
                Height = 0
                Align = alClient
              end
              object DBFBINFADCAD: TdxDBMemo
                Left = 0
                Top = 0
                Width = 1916
                Cursor = crHandPoint
                Hint = 'Informa'#231#245'es Adicionais'
                Align = alClient
                ParentColor = True
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Edges = []
                Style.Shadow = False
                TabOrder = 0
                DataField = 'INFADCAD'
                DataSource = DTSFB
                HideSelection = False
                OEMConvert = True
                ReadOnly = False
                HideScrollBars = False
                ScrollBars = ssVertical
                Height = 0
                StoredValues = 64
              end
            end
          end
          object TSFC: TdxTabSheet
            Caption = 'Carteira'
            object DBGFC: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1916
              Height = 391
              Bands = <
                item
                  Alignment = taLeftJustify
                  Caption = 'T'#237'tulos'
                end
                item
                  Caption = 'Encargos R$'
                end
                item
                  Caption = 'Descontos R$'
                end
                item
                  Alignment = taLeftJustify
                  Caption = 'Recebimentos R$'
                end
                item
                  Caption = 'Status Recebimentos'
                end
                item
                  Caption = 'Vendedores'
                end
                item
                  Caption = 'Empresa'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = 15131619
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
              BandColor = clGray
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSFC
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
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
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = [fsItalic]
              ShowBands = True
              ShowGrid = False
              OnCustomDrawCell = DBGFCCustomDrawCell
              object DBGFCC_ID: TdxDBGridColumn
                DisableEditor = True
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGFCDOCUMENTO: TdxDBGridColumn
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DOCUMENTO'
              end
              object DBGFCTITULO: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 90
                Width = 90
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TITULO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGFCCTNR: TdxDBGridColumn
                Visible = False
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CTNR'
              end
              object DBGFCDTFA: TdxDBGridColumn
                DisableEditor = True
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTFA'
              end
              object DBGFCD_TIPO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'D_TIPO'
              end
              object DBGFCRECO: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RECO'
              end
              object DBGFCDTVC: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DTVC'
              end
              object DBGFCVDUP: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
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
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVJUR: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VJUR'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VJUR'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVMUL: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'VMUL'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VMUL'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVDSC: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VDSC'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VDSC'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCDTPG: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 75
                BandIndex = 3
                RowIndex = 0
                FieldName = 'DTPG'
              end
              object DBGFCVPAG: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPAG'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPAG'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCVPEN: TdxDBGridColumn
                DisableEditor = True
                HeaderAlignment = taRightJustify
                Width = 92
                BandIndex = 3
                RowIndex = 0
                FieldName = 'VPEN'
                SummaryFooterType = cstSum
                SummaryFooterField = 'VPEN'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGFCDEST: TdxDBGridColumn
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DEST'
              end
              object DBGFCSTFI: TdxDBGridColumn
                DisableEditor = True
                MinWidth = 100
                Width = 135
                BandIndex = 4
                RowIndex = 0
                FieldName = 'STFI'
              end
              object DBGFCDTBX: TdxDBGridColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Visible = False
                Width = 70
                BandIndex = 4
                RowIndex = 0
                FieldName = 'DTBX'
              end
              object DBGFCFIN_PEN: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_PEN'
              end
              object DBGFCFIN_LIQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_LIQ'
              end
              object DBGFCFIN_BLQ: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 4
                RowIndex = 0
                FieldName = 'FIN_BLQ'
              end
              object DBGFCDECV: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 80
                BandIndex = 5
                RowIndex = 0
                FieldName = 'DECV'
              end
              object DBGFCDECR: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 160
                BandIndex = 5
                RowIndex = 0
                FieldName = 'DECR'
              end
              object DBGFCDEEP: TdxDBGridMaskColumn
                DisableEditor = True
                Width = 150
                BandIndex = 6
                RowIndex = 0
                FieldName = 'DEEP'
              end
            end
            object PNLFCINFADCAD: TPanel
              Left = 0
              Top = 391
              Width = 1916
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
              object Bevel1: TBevel
                Left = 0
                Top = 0
                Width = 1916
                Height = 0
                Align = alClient
              end
              object DBFCINFADCAD: TdxDBMemo
                Left = 0
                Top = 0
                Width = 1916
                Cursor = crHandPoint
                Hint = 'Informa'#231#245'es Adicionais'
                Align = alClient
                ParentColor = True
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Edges = []
                Style.Shadow = False
                TabOrder = 0
                DataField = 'INFADCAD'
                DataSource = DTSFB
                HideSelection = False
                OEMConvert = True
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
      object PNLCabecalho: TPanel
        Left = 0
        Top = 0
        Width = 1920
        Height = 415
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object GBVendas: TGroupBox
          Left = 0
          Top = 18
          Width = 1920
          Height = 397
          Align = alClient
          Caption = '  Vendas  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object PCPedidos: TdxPageControl
            Left = 2
            Top = 19
            Width = 1916
            Height = 376
            ActivePage = TSPedidos
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
            object TSPedidos: TdxTabSheet
              Caption = 'Pedidos'
              object PNLPedidos: TPanel
                Left = 0
                Top = 0
                Width = 1916
                Height = 349
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBGPedidos: TdxDBGrid
                  Left = 0
                  Top = 0
                  Width = 1916
                  Height = 349
                  Bands = <
                    item
                      Caption = 'Pedidos'
                    end
                    item
                      Caption = 'Nota Fiscal'
                    end
                    item
                      Caption = 'Vendedores'
                    end
                    item
                      Caption = 'Totais R$'
                    end
                    item
                      Caption = 'Cobran'#231'a'
                    end
                    item
                      Caption = 'Impostos R$'
                    end
                    item
                      Caption = 'Frete'
                    end
                    item
                      Caption = 'Volume'
                    end>
                  DefaultLayout = False
                  HeaderPanelRowCount = 1
                  KeyField = 'ID'
                  ShowSummaryFooter = True
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
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
                  BandColor = clGray
                  BandFont.Charset = ANSI_CHARSET
                  BandFont.Color = clWhite
                  BandFont.Height = -13
                  BandFont.Name = 'Segoe UI Semibold'
                  BandFont.Style = [fsBold, fsItalic]
                  DataSource = DTSPedidos
                  Filter.Active = True
                  Filter.Criteria = {00000000}
                  GridLineColor = clSilver
                  HeaderFont.Charset = ANSI_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -13
                  HeaderFont.Name = 'Segoe UI'
                  HeaderFont.Style = [fsItalic]
                  HideSelectionColor = 14789952
                  HighlightColor = 14789952
                  LookAndFeel = lfUltraFlat
                  OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                  OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                  OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                  OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                  PreviewFont.Charset = DEFAULT_CHARSET
                  PreviewFont.Color = clBlue
                  PreviewFont.Height = -13
                  PreviewFont.Name = 'Segoe UI'
                  PreviewFont.Style = [fsItalic]
                  ShowBands = True
                  ShowGrid = False
                  OnCustomDrawCell = DBGPedidosCustomDrawCell
                  object DBGPedidosC_ID: TdxDBGridColumn
                    Visible = False
                    Width = 78
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'C_ID'
                  end
                  object DBGPedidosLOG_PRN_CDEV: TdxDBGridMaskColumn
                    Visible = False
                    Width = 103
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'LOG_PRN_CDEV'
                  end
                  object DBGPedidosLOG_PRN_QTEV: TdxDBGridMaskColumn
                    Visible = False
                    Width = 103
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'LOG_PRN_QTEV'
                  end
                  object DBGPedidosDEPk: TdxDBGridMaskColumn
                    Alignment = taLeftJustify
                    Color = clGray
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clHighlightText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 75
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'DEPK'
                    SummaryFooterType = cstCount
                    SummaryFooterField = 'ID'
                    SummaryFooterFormat = '0'
                  end
                  object DBGPedidosDTPK: TdxDBGridColumn
                    Color = clGray
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clHighlightText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 70
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'DTPK'
                  end
                  object DBGPedidosSTPD: TdxDBGridMaskColumn
                    Color = clGray
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clHighlightText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 75
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'STPD'
                  end
                  object DBGPedidosCDNF: TdxDBGridColumn
                    Alignment = taLeftJustify
                    DisableEditor = True
                    Width = 69
                    BandIndex = 1
                    RowIndex = 0
                    FieldName = 'CDNF'
                  end
                  object DBGPedidosD_DTNF: TdxDBGridColumn
                    DisableEditor = True
                    Width = 70
                    BandIndex = 1
                    RowIndex = 0
                    FieldName = 'D_DTNF'
                  end
                  object DBGPedidosD_DTSA: TdxDBGridDateColumn
                    Alignment = taLeftJustify
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 70
                    BandIndex = 1
                    RowIndex = 0
                    FieldName = 'D_DTSA'
                  end
                  object DBGPedidosDECV: TdxDBGridMaskColumn
                    DisableEditor = True
                    Width = 85
                    BandIndex = 2
                    RowIndex = 0
                    FieldName = 'DECV'
                  end
                  object DBGPedidosDECR: TdxDBGridMaskColumn
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 120
                    BandIndex = 2
                    RowIndex = 0
                    FieldName = 'DECR'
                  end
                  object DBGPedidosQTRL: TdxDBGridMaskColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 50
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'QTRL'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'QTRL'
                    SummaryFooterFormat = '0'
                    DisableFilter = True
                  end
                  object DBGPedidosVDSC: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 82
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VDSC'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VDSC'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosTCDE: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'TCDE'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'D_TCDE'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisplayFormat = ',##,0.00'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosD_TCDE: TdxDBGridColumn
                    Visible = False
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'D_TCDE'
                  end
                  object DBGPedidosVTSP: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VTSP'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VTSP'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosVNF: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VNF'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VNF'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosVTFA: TdxDBGridColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 110
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'VTFA'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VTFA'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisableFilter = True
                  end
                  object DBGPedidosDEST: TdxDBGridMaskColumn
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Width = 107
                    BandIndex = 3
                    RowIndex = 0
                    FieldName = 'DEST'
                  end
                  object DBGPedidosTPCO: TdxDBGridMaskColumn
                    Visible = False
                    BandIndex = 4
                    RowIndex = 0
                    FieldName = 'TPCO'
                  end
                  object DBGPedidosRECO: TdxDBGridMaskColumn
                    Alignment = taCenter
                    DisableEditor = True
                    Width = 47
                    BandIndex = 4
                    RowIndex = 0
                    FieldName = 'RECO'
                  end
                  object DBGPedidosD_STCO: TdxDBGridColumn
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 120
                    BandIndex = 4
                    RowIndex = 0
                    FieldName = 'D_STCO'
                  end
                  object DBGPedidosVIPI: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 85
                    BandIndex = 5
                    RowIndex = 0
                    FieldName = 'VIPI'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VIPI'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisplayFormat = ',##,0.00'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosVST: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    HeaderAlignment = taRightJustify
                    Width = 75
                    BandIndex = 5
                    RowIndex = 0
                    FieldName = 'VST'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'VST'
                    SummaryFooterFormat = 'R$ ,##,0.00'
                    DisplayFormat = ',##,0.00'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosDECT: TdxDBGridMaskColumn
                    DisableEditor = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Width = 185
                    BandIndex = 6
                    RowIndex = 0
                    FieldName = 'DECT'
                  end
                  object DBGPedidosVFRT: TdxDBGridMaskColumn
                    HeaderAlignment = taRightJustify
                    Width = 80
                    BandIndex = 6
                    RowIndex = 0
                    FieldName = 'VFRT'
                    DisableFilter = True
                  end
                  object DBGPedidosPSBR: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderAlignment = taRightJustify
                    Width = 80
                    BandIndex = 7
                    RowIndex = 0
                    FieldName = 'PSBR'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'PSBR'
                    SummaryFooterFormat = ',##,0.00'
                    DisplayFormat = ',##,0.000'
                    Nullable = False
                    DisableFilter = True
                  end
                  object DBGPedidosPSLQ: TdxDBGridCurrencyColumn
                    Alignment = taRightJustify
                    Color = clBtnFace
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderAlignment = taRightJustify
                    Width = 80
                    BandIndex = 7
                    RowIndex = 0
                    FieldName = 'PSLQ'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'PSLQ'
                    SummaryFooterFormat = ',##,0.00'
                    DisplayFormat = ',##,0.000'
                    Nullable = False
                    DisableFilter = True
                  end
                end
                object PNLINFADCAD: TPanel
                  Left = 0
                  Top = 349
                  Width = 1916
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
                    Width = 1912
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
                    DataSource = DTSPedidos
                    ReadOnly = True
                    ScrollBars = ssBoth
                    Height = 46
                    StoredValues = 64
                  end
                end
              end
              object PNLINFADPRN: TPanel
                Left = 0
                Top = 349
                Width = 1916
                Height = 0
                Cursor = crHandPoint
                Hint = 'Log de registro do '#250'ltimo relat'#243'rio emitido'
                Align = alBottom
                Alignment = taLeftJustify
                BevelInner = bvLowered
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                object Bevel3: TBevel
                  Left = 2
                  Top = 2
                  Width = 1912
                  Height = 46
                  Align = alClient
                end
                object DBINFADPRN: TdxDBMemo
                  Left = 2
                  Top = 2
                  Width = 1912
                  Cursor = crHandPoint
                  Hint = 'Log de registro do '#250'ltimo relat'#243'rio emitido'
                  Align = alClient
                  Color = clGray
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
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
                  DataField = 'INFADPRN'
                  DataSource = DTSPedidos
                  ReadOnly = True
                  ScrollBars = ssBoth
                  Height = 46
                  StoredValues = 64
                end
              end
            end
            object TSFKPedidos: TdxTabSheet
              Caption = 'Itens'
              object DBGFKPedidos: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1551
                Height = 326
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
                Color = 16316664
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
                DataSource = DTSFKPedidos
                Filter.Active = True
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -13
                HeaderFont.Name = 'Segoe UI'
                HeaderFont.Style = [fsItalic]
                HideSelectionColor = 14789952
                HighlightColor = 14789952
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -13
                PreviewFont.Name = 'Segoe UI'
                PreviewFont.Style = [fsItalic]
                ShowGrid = False
                OnCustomDrawCell = DBGFKPedidosCustomDrawCell
                object DBGFKPedidosITEM: TdxDBGridColumn
                  Width = 50
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'ITEM'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                end
                object DBGFKPedidosSKU: TdxDBGridMaskColumn
                  Width = 110
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SKU'
                end
                object DBGFKPedidosDECP: TdxDBGridColumn
                  Width = 400
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DECP'
                end
                object DBGFKPedidosDGCP: TdxDBGridColumn
                  Width = 250
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DGCP'
                end
                object DBGFKPedidosUCOM: TdxDBGridColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'UCOM'
                end
                object DBGFKPedidosUCON: TdxDBGridColumn
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'UCON'
                end
                object DBGFKPedidosQTDE: TdxDBGridColumn
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
                object DBGFKPedidosQTRL: TdxDBGridColumn
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
                object DBGFKPedidosVPRC_COM: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VPRC_COM'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'VPRC_COM'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGFKPedidosPDSC: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  Width = 50
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PDSC'
                  SummaryFooterType = cstAvg
                  SummaryFooterField = 'PDSC'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGFKPedidosTCDE: TdxDBGridColumn
                  HeaderAlignment = taRightJustify
                  Width = 90
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TCDE'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'TCDE'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGFKPedidosC_ID: TdxDBGridColumn
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'C_ID'
                end
              end
            end
            object TSNotasFiscais: TdxTabSheet
              Caption = 'Notas Fiscais'
              object DBGNF: TdxDBGrid
                Left = 0
                Top = 0
                Width = 1551
                Height = 326
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'ID'
                ShowSummaryFooter = True
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                BorderStyle = bsNone
                Color = 16316664
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
                DataSource = DTSNF
                Filter.Active = True
                Filter.Criteria = {00000000}
                GridLineColor = clSilver
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWindowText
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
                PreviewFont.Color = clBlue
                PreviewFont.Height = -13
                PreviewFont.Name = 'Segoe UI'
                PreviewFont.Style = [fsItalic]
                PreviewLines = 1
                ShowGrid = False
                OnCustomDrawCell = DBGNFCustomDrawCell
                object DBGNFCDNF: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 65
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CDNF'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'ID'
                  SummaryFooterFormat = '0'
                  DisableFilter = True
                end
                object DBGNFDTNF: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DTNF'
                end
                object DBGNFDTSA: TdxDBGridDateColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 95
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DTSA'
                end
                object DBGNFDESA: TdxDBGridMaskColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DESA'
                end
                object DBGNFVNF: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 110
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VNF'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'VNF'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                  StoredRowIndex = 1
                end
                object DBGNFVIPI: TdxDBGridColumn
                  Color = clInfoBk
                  HeaderAlignment = taRightJustify
                  Visible = False
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VIPI'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'VIPI'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGNFVST: TdxDBGridColumn
                  Color = clInfoBk
                  HeaderAlignment = taRightJustify
                  Visible = False
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VST'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'VST'
                  SummaryFooterFormat = ',##,0.00'
                  DisableFilter = True
                end
                object DBGNFECFOP: TdxDBGridColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CFOP'
                end
                object DBGNFD_CFOP: TdxDBGridMaskColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 104
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'D_CFOP'
                  StoredRowIndex = 1
                end
                object DBGNFD_FINNFE: TdxDBGridColumn
                  Width = 79
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'D_FINNFE'
                end
                object DBGNFDECT: TdxDBGridColumn
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 210
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DECT'
                  StoredRowIndex = 1
                end
                object DBGNFDVOL: TdxDBGridColumn
                  Alignment = taRightJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taCenter
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DVOL'
                  StoredRowIndex = 1
                end
                object DBGNFPSBR: TdxDBGridColumn
                  Alignment = taRightJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PSBR'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'PESOB'
                  SummaryFooterFormat = ',##,0.000'
                  DisableFilter = True
                  StoredRowIndex = 1
                end
                object DBGNFPSLQ: TdxDBGridColumn
                  Alignment = taRightJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taRightJustify
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PSLQ'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'PESOL'
                  SummaryFooterFormat = ',##,0.000'
                  DisableFilter = True
                  StoredRowIndex = 1
                end
                object DBGNFMOTORISTA: TdxDBGridMaskColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'MOTORISTA'
                end
                object DBGNFPLACA: TdxDBGridMaskColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 80
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PLACA'
                end
                object DBGNFAJUDANTES: TdxDBGridMaskColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AJUDANTES'
                end
                object DBGNFDEST: TdxDBGridColumn
                  Alignment = taLeftJustify
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEST'
                  StoredRowIndex = 1
                end
                object DBGNFDEEP: TdxDBGridColumn
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEEP'
                end
                object DBGNFC_ID: TdxDBGridColumn
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
              end
            end
          end
        end
        object PNLCliente: TPanel
          Left = 0
          Top = 0
          Width = 1920
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = 7492630
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object pnlbot: TPanel
      Left = 0
      Top = 842
      Width = 1920
      Height = 69
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object GBSumario: TGroupBox
        Left = 0
        Top = 0
        Width = 1920
        Height = 69
        Align = alClient
        Caption = '  Sum'#225'rio  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object LAVCRD: TLabel
          Left = 8
          Top = 16
          Width = 94
          Height = 17
          Cursor = crHandPoint
          Hint = 'Click aqui para atualizar o limite de cr'#233'dito'
          Caption = 'Limite de Cr'#233'dito'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic, fsUnderline]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = LAVCRDClick
        end
        object LDVCRD: TLabel
          Left = 152
          Top = 16
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Caption = 'R$ 0.00'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAPrazo: TLabel
          Left = 32
          Top = 48
          Width = 70
          Height = 17
          Hint = 'Prazo m'#233'dio em dias para pagamentos'
          Caption = 'Prazo M'#233'dio'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LDPrazo: TLabel
          Left = 174
          Top = 48
          Width = 21
          Height = 17
          Alignment = taRightJustify
          Caption = '999'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LDSCRD: TLabel
          Left = 152
          Top = 32
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Caption = 'R$ 0.00'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LASCRD: TLabel
          Left = 69
          Top = 32
          Width = 33
          Height = 17
          Cursor = crHandPoint
          Hint = 'Saldo Dispon'#237'vel'
          Caption = 'Saldo'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = LAVCRDClick
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 976
    Width = 1920
    Panels = <
      item
        Text = 'Consulta'
        Width = 100
      end
      item
        Width = 50
      end>
    Visible = False
  end
  inherited PNLMenu: TPanel
    Width = 1920
    inherited SpeedBar2: TSpeedBar
      Width = 1920
      inherited SpeedbarSection5: TSpeedbarSection
        Caption = 'Menu'
      end
      inherited siVAL: TSpeedItem [4]
        SectionName = 'Menu'
      end
      inherited siSAIR: TSpeedItem [5]
        SectionName = 'Menu'
      end
      inherited siSAV: TSpeedItem [6]
        Visible = False
        SectionName = 'Menu'
      end
      inherited siCAN: TSpeedItem [7]
        Left = 122
        Visible = False
        SectionName = 'Menu'
      end
      object siLIB: TSpeedItem
        BtnCaption = 'Faturamento'
        Cursor = crHandPoint
        Hint = 'Libera'#231#227'o de Cliente para Faturamento'
        ImageIndex = 4
        Spacing = 0
        Left = 5
        Top = 5
        Visible = True
        OnClick = siLIBClick
        SectionName = 'Menu'
      end
      object siSEP: TSpeedItem
        BtnCaption = 'Separa'#231#227'o'
        Cursor = crHandPoint
        Hint = 'Libera'#231#227'o de Cliente para Separa'#231#227'o'
        ImageIndex = 3
        Spacing = 0
        Left = 85
        Top = 5
        Visible = True
        OnClick = siSEPClick
        SectionName = 'Menu'
      end
    end
  end
  inherited Consulta: TIBQuery
    Left = 1752
    Top = 624
  end
  inherited IBTra: TIBTransaction
    Left = 1752
    Top = 592
  end
  inherited ibSP: TIBStoredProc
    Left = 1784
    Top = 592
  end
  inherited TEvent: TIBTransaction
    Left = 1816
    Top = 592
  end
  inherited SPEvent: TIBStoredProc
    Left = 1848
    Top = 592
  end
  inherited EEvent: TIBEvents
    Left = 1880
    Top = 592
  end
  inherited SQLEvent: TIBSQL
    Left = 440
    Top = 32
  end
  inherited ALPrincipal: TActionList
    Left = 408
    Top = 32
  end
  inherited EEventAdmin: TIBEvents
    Left = 472
    Top = 32
  end
  inherited ILMenuPrincipal: TImageList
    Bitmap = {
      494C01010500090004003E002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000F80000006000000001002000000000000074
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
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFFBFB
      FBFFA5A59FFFA09F99FFCBCAC7FFDDDDDAFFECECEBFFF4F5F5FFF7F7F7FFF6F6
      F7FFF3F3F3FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFEFEFEFFC7C8
      C7FF6D6E68FF79796FFF78776FFF6E6E66FF85857EFFA7A6A0FFC0BFBBFFD5D4
      D2FFE9E9E7FFF2F2F2FFF4F4F5FFF7F7F7FFF3F3F4FFF2F2F2FFF0F0F0FFEFEF
      EFFFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF5F4F4FFF1F1F1FFFCFCFCFFC4C4C3FF2829
      27FF4F4F4AFF8A8981FF818079FF6A6A63FF5C5C55FF575651FF60605AFF6E6E
      67FF919089FFA6A59FFFBABAB5FFD7D7D3FFE8E7E5FFF2F2F2FFF7F8F8FFF9FA
      FAFFF5F5F5FFF2F2F3FFF1F1F1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      F0FFF0F0F0FFF0F0F0FFF3F4F4FFEBEFF0FFFFFFFFFFECECECFF2F302EFF0001
      00FF61615BFF8B8983FF87857FFF8E8D84FF8B8B83FF87867FFF7E7D77FF7271
      6AFF818079FF807F78FF96968DFF807F78FF888781FFA3A29DFFC0C0BBFFD5D5
      D2FFE3E3E1FFF1F1F0FFF1F2F2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      F0FFF0F0F0FFFCFCFDFFD6D6D6FF777D7DFFB1B3B2FF515150FF070805FF0F0F
      0EFF232320FF73786EFF84897DFF83837DFF8D8C85FF97968EFF9B9891FFA19E
      97FF9D9A93FF92908AFFA1A099FF86857FFF767570FF73726CFF74716BFF7C79
      74FF8F8E88FFAEADA8FFBBBBB7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      F0FFFBFBFBFFE0E0DFFF6D6C68FF363431FF141412FF050503FF0C0D0CFF1313
      13FF1B1C1BFF414840FF3F4740FF494744FF62665DFF4D514CFF666E6BFF7D7F
      7AFF93938DFFA0A098FFA3A19BFFACA9A4FFABA9A3FFA6A49FFF9D9B94FF8E8D
      86FF908F89FFA5A49EFFA4A39DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF8F8
      F8FFDEDEDDFF6B6B66FF4D4D46FF21201FFF000000FF040301FF131410FF565F
      55FF6D7367FF4C4E4DFF434B46FF373732FF171715FF141717FF1E2626FF2429
      28FF393F3CFF4A4E4AFF565954FF7A837AFF929790FFA4A29DFFB3B0A7FFBAB6
      A9FFB9B5ABFFAEADA7FFA9A8A3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFEFEFEFFFF6F6F6FFEEEE
      EEFF706F6BFF4E4C47FF5C5B56FF242321FF020200FF10100EFF5A6161FF5862
      55FF45483BFF53554FFF636E5EFF373E36FF222C2AFF2A322CFF2F342EFF2C2F
      28FF121212FF121313FF101412FF161F1BFF263027FF2A2D27FF4C5B77FF6A76
      97FF7C8795FF9B9A95FFACAAA4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFEFEFEFFFF4F4F4FFFAFAFAFFA0A0
      9CFF514F4AFF605E58FF605E58FF1D1D1BFF040504FF78818CFF99A8BCFF2932
      43FF344975FF3D4550FF5D605EFF53595EFF202625FF293130FF303934FF2124
      22FF1F2520FF232C25FF223129FF1B241FFF0E1117FF07111EFF02142FFF0214
      37FF00041AFF7A7978FFECEBE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF3F3F3FFFBFBFBFFA8A7A4FF5857
      52FF615F5AFF63625CFF60605AFF3F3E3AFF2C2C29FF3E4249FF20252CFF2839
      56FF425984FF636B78FF9FB4D0FF6C7A8CFF2B3855FF4E5A70FF606868FF656E
      6EFF232824FF2A312CFF202620FF1C2223FF112347FF08255DFF001A45FF0608
      06FF686661FFEBEBEBFFF9F9F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F1FFF5F5F5FFAAAAA7FF5E5D57FF6362
      5CFF66645FFF64625EFF696962FF83837AFF7F7E77FF73706BFF63615BFF5858
      53FF4B4841FF444647FF313A45FF1E2229FF2B3854FF3E454AFF5B675CFF5165
      5DFF4C654EFF596159FF847F88FF46434CFF3A3743FF303240FF222730FF9F9F
      9EFFF8F8F7FFF6F6F6FFEFEFEFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFFCCCCCBFF63625CFF686761FF6A6A
      63FF6A6962FF696762FF7E7D76FF8E8F85FF94928BFF9B9A93FF9F9E97FFA09F
      96FF9E9D95FF95948CFF8D8B81FF84817AFF6D6B63FF575751FF3D3E39FF2223
      20FF252A24FF262626FF312D32FF312C33FF524B56FF272425FFB4B2AFFFFFFF
      FFFFF3F3F3FFEFEFEFFFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCDCDBFF7B7A75FF6B6964FF6E6D68FF6E6D
      68FF5C5B56FF454341FF41403DFF494843FF65635DFF7A7A72FF83837BFF8D8C
      84FF96948EFFA0A09AFFA8A6A0FFAEADA7FFB5B4AEFFB6B5AFFFB3B2ABFFAAA8
      A2FF94928EFF7B7A74FF61615CFF494946FF242422FF272825FFD9D9D7FFF9F9
      F9FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000777671FF6A6A64FF72706AFF74726CFF6765
      60FF3D3C38FF32312EFF3D3C39FF5D5C58FF71706AFF8B8B84FF898881FF8787
      7FFF898881FF8E8D87FF95958DFF9B9A94FFA2A19BFFACABA5FFB4B3ADFFBCB9
      B4FFC3C1BBFFC7C6C0FFC3C1BCFFB7B6B0FFACABA5FFA4A29CFFE0DFDEFFF4F4
      F4FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000696A60FF71716AFF75736DFF6C6B64FF4544
      40FF373633FF4B4A46FF6C6A65FF7E7D77FF999891FFBAB9B2FFB6B5B0FFB4B4
      ADFFB4B2ACFFB3B2AAFFB1B0A9FFAFAEA7FFADACA5FFADACA6FFAEADA7FFB1AF
      A9FFB5B3AEFFBBBAB4FFB8B6B1FFAAA9A3FFB1B0A9FFDCDAD5FFF3F3F3FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6D63FF74756DFF6A6963FF464541FF3433
      30FF53524DFF76746EFF898880FFA09F98FFCDCCC5FFD8D7D1FFDBD7D0FFDBD8
      CFFFDBD7D0FFDAD8D3FFDAD8D2FFD9D8D1FFD7D6D0FFD6D4D0FFD6D4CFFFD0CE
      CAFFC8C7C3FFC7C4BFFFBAB8B1FFBAB8B0FFE7E6E3FFF7F7F6FFF1F1F1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000736F66FF6E6C65FF45433FFF3A3835FF4D4C
      47FF73726CFF7F7E77FF9C9B92FFC3C2BAFFA4A59EFF90908BFFA8AFB1FFB9C0
      C4FFC8CBCBFFD4D3D2FFDCDAD5FFE1E0DBFFE4E2E0FFE9E8E3FFEBE8E4FFE9E7
      E6FFE9E8E6FFE7E5E4FFE1E1DDFFF2F2F0FFF7F8F8FFEFEFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000656259FF423F3AFF33322FFF4D4C48FF6967
      62FF83837DFF898982FFAAABA3FFB5ADACFF7E7075FF626360FF647B98FF6B88
      ACFF7B95B3FF939698FF9D9B93FFA5A49DFFC4C1C1FFCCC9DDFFD9DBE3FFE2E4
      E6FFE9E7E6FFE8E7E5FFF3F3F3FFF3F3F3FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A7A3FF797671FF4A4C49FF595B56FF7B7B
      76FF878680FF989791FFC5C5BDFFB5A4A9FF98878CFF7F898EFF6E88ABFF6C8A
      AFFF8393A4FF85837CFF83827BFF9D9994FFADAEAAFF8C9896FF90ACA2FFA9AD
      B9FFDDCFD7FFECEDEBFFF5F4F5FFF0F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFBFFFDFDFCFFACACA9FF6B6A65FFA2A1
      9CFF84837DFFB9B8B1FFD2CFC8FFCFCCC6FFCFCFC7FFCCCCC8FFBFC3C4FFBBC2
      C6FFC2C0BDFFAEACA5FFACAAA2FFBDBEBDFF95A2A8FF9A9D64FF919E63FF9EA3
      A7FFE7E2E6FFF7F7F6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEFFFFAFAFBFFCDCDCAFF9A9993FFA1A0
      9AFF8C8C86FFD6D4CFFFDEDDD8FFD4D3CDFFD4D3CDFFD7D5CFFFDEDAD5FFDFDB
      D3FFC4C2BAFFE1E0DCFFF1EFEDFFE5E4E4FFD4D3D4FFCFC1B6FFC6B6A6FFD1CC
      C5FFF6F8F7FFF3F3F3FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F2FFECECECFFB3B2ADFFA8A6A0FF9E9D
      96FFA8A7A1FFC6C4BFFF8D8E8CFFD9D8D3FFE1DFDBFFD5D4CCFFD8D9CDFFD6D5
      D1FF9B9A94FFBCBBB8FFD3D2D1FFE3E1DFFFF0EEEBFFF4F5F6FFEEEEEFFFEEED
      EBFFF2F2F2FFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F3FFE8E7E6FFADABA6FFACABA5FF9E9D
      98FF7B7B77FF9C9B96FF939490FFD5D4D2FFE7E6E2FFEBEAE4FFEBECDDFFC9C9
      C3FFB0AFABFF9A938FFF4C4946FFB3B3B2FFF0EEECFFCCCAC7FFEEEDEBFFF7F7
      F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F2FFECEBEBFFAEADA8FFB0AEA8FF9897
      92FF0D0C0BFF171111FF2C2727FF363131FF514F4DFF716F6EFF989897FFBAB9
      B7FFC8C6C4FF8D8580FF514E4CFFE0DEDEFFE9E5E5FFB6B4B0FFF5F4F3FFF5F5
      F5FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F1FFF2F2F2FFCBCBC7FFB7B5B0FF8784
      7FFF08130DFF042818FF041F13FF02150BFF020C05FF000000FF3A3A38FFC6C5
      C0FFE1DFDCFFCFCDCBFFC2C0BEFFEDE7E7FFEAE6E5FFE6E6E4FFF7F7F6FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF3F3F3FFF6F6F5FFC8C6C1FF6462
      5FFF000804FF052C19FF053F21FF064525FF063F23FF04120CFF959291FFE4E3
      DDFFE3E1DDFFD4D3D0FFBBB8B5FFEFE8E9FFECE8E8FFF2F2F1FFF4F4F5FFEFEF
      EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF0F0F0FFFDFDFDFFD6D5D0FF5B5B
      56FF22211FFF201C1DFF131111FF0A0A0AFF000602FF0F1210FFC2C1BDFFE2E1
      DBFFDFDDD9FFC8C7C1FFC8C3BEFFE5DEDCFFE8E6E4FFF6F7F7FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F0FFF1F1F1FFE9E9E9FFD5D4D2FFB2B1
      ADFF757570FF726E65FF605B53FF4F4D4AFF4F4C4AFF73716DFFC9C8BFFFCCCA
      C3FFCDCCC5FFBFBDB7FFC7C6BFFFD6D5CFFFE9E9E5FFF3F3F4FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F5FFE1E1E1FF3A3939FF1A1919FF2524
      24FF10110FFF191814FF181712FF272624FFC6C4C0FFECEAE6FFD2D0CCFFCBC9
      C4FFC8C5BFFFBBBAB3FFB8B7B0FFDDDBD6FFF4F4F4FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F6FFDEDEDDFF201F1EFF080902FF1111
      0AFF050503FF040503FF000000FF1E1D1BFFDAD9D9FFFFFFFFFFF7F7F7FFF3F2
      F2FFF0F0EFFFEEEEECFFEAE9E7FFF2F2F1FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FFDCDCDCFF1B1B1AFF020300FF0909
      05FF000000FF000000FF000000FF4D4B49FFF1F0F0FFF3F3F3FFF0F0F0FFF0F0
      F0FFF1F1F1FFF2F2F2FFF2F2F3FFF0F0F1FFF0F0EFFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F3FFE8E8E8FF797977FF595957FF5F5F
      5DFF5F5E5AFF595955FF474743FF9C9C99FFFBFBFBFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EFF000FCFAFB00EEF2F000A0B8
      A8004A6F4E0084A89900F7F8FA00F7F6F700F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F4F400FBFAFB00A7B7AE003A5E3D00537B5B00A7BDAD00F0F3
      F200F8F7F800EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFBFD00EEF4F100A5BBAC0062886D00C9D3CD00FDFB
      FD00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFA00E4E4ED007579CE00B5BAE500EBEF
      E40063816600567F6200A8BFAF00EFF4E800BBBCE6005556C700B8BAE600FFFF
      F800F1F1F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000335912003554180035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      1900355519003555190035551900355519003555190035551900355519003555
      190035551900355519003354190037571B00455E20005E682C006A6E35000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFF0F0F0FFF2F2
      F2FFF2F2F2FFF6F6F6FFF9F9F9FFFEFEFEFFFEFEFEFFFFFFFFFFFDFDFDFFFDFD
      FDFFFAFAFAFFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF8F8F8FFFBFBFBFFF6F6
      F6FFF5F5F5FFF6F6F6FFF5F5F5FFF2F2F2FFF1F1F1FFEFEFEFFFEFEFEFFFEFEF
      EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00FEFAFD00C5D7CC003C6B4800002D
      0000001F0000668D7A00F1F2F400EFEEEE00EEEEEE00EEEEEE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEE
      EE00EDEDED00EDEDED00F4F2F4008EA195000025000000250000003103004D73
      5400E3E9E500FDFBFC00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFCFF00BACFC20031603C000029000000320800AEBAB200F5F3
      F500EDEDED00EFEFEF00000000000000000000000000F1F1F100F1F1F100F1F1
      F1000000000000000000F8F7F100DCDEE1004849B7000000A900131AB7008A9A
      C000194917000024000000350000314A68001C1BB8000000A8001516B300B7B8
      E600FFFFF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000766B
      3000005400000051000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      0000005300000053000000530000005300000053000000530000005300000053
      00000053000000530000005300000053000000520000004F0000005600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F3F1FFF8F8F8FFFCFC
      FCFFF9F9F9FFF4F4F4FFE5E5E5FFD4D4D4FFD9D9D9FFCDCDCDFFCDCDCDFFCACA
      CAFFCFD0D0FFDADADAFFE5E5E5FFE8E8E8FFEEEEEEFFF1F1F1FFF2F2F2FFF7F7
      F7FFFAFAFAFFFBFBFBFFFAFAFAFFF8F8F8FFF5F5F5FFF1F1F1FFF3F3F3FFF4F4
      F4FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF7F900D0DDD5001D51270000240000002C
      0000002800006D918000F3F3F500F0EFF000EDEDED00EDEDED00EEEEEE00EEEE
      EE00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EDEDED00EDEDED00ECEC
      EC00EBEBEB00ECECEC00F6F4F60092A59900002D0000002E0100002C00000020
      000040664500E3E9E600F6F4F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF9FB00BCCDC30014471E0000240000002C00000A3A1200B2BEB600F8F6
      F700EDEDED00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EAEAEB00F1F1ED00DFE0E3004B4CB9000000AE000000B2000000B5000710
      AF0007293C0000340000001D2F00000099000000B4000000B0000000AB001617
      B700BDBEE6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B63
      3800025D0700469C4F0053A455004BA156004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA155004CA155004CA155004CA155004CA1
      55004CA155004CA155004CA155004CA1550053A55C00308A3A00005600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAEEFAFFFCFCFCFFF9F9
      F9FFF3F3F3FFE9E9E9FFC9C9C9FFC1C1C1FFC2C2C2FFB1B1B1FF7D7D7DFF9898
      98FFB1B1B1FFB1B1B1FFCFCFCFFFE3E2E1FFE9E8E8FFEFEFEEFFF2F1F0FFF4F4
      F3FFF6F5F4FFF6F6F6FFF8F7F8FFFAFAFAFFFAFAFAFFFAFBFBFFFDFDFDFFFEFE
      FFFFF8F8F8FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFAFB005078590000250000002F0200002F
      0200002800006D918100F6F6F800EEEDED00D4D4D400D1D1D100D2D2D200D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D2D2D200D2D2D200D2D2
      D200D0D0D000D5D5D500F5F3F50094A69A00002D0000002E010000300300002E
      0100002400006E927700FAF8F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9EDEB00346643000027000000320800002E03000A3A1200B4BFB800FBF9
      FB00E2E2E200CCCCCC00CECECE00CECECE00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00D2D2CF00CDCECD00454AB6000000B2000000B5000001B7000000B7000000
      BA000005A00000175A0000059E000000BE000000B7000000B5000000B3000000
      AF002D30C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007660
      330010781C0045954B002A7D2E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028812E0028812E0028812E0028812E002881
      2E0028812E0028812E0028812E0028802E00348B3F0070BB8A00005900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDC6FDFFFBFDFBFFF6F5
      F5FFF2F0F0FFECE6E7FFD5D1D1FFCBCBCBFFCCCCCCFFCCCCCCFF6F6F6FFFB9B9
      B9FFCDCACAFFBEC1C3FFC5C8C9FFD3D0D0FFCBCACBFFC6CCCCFFD0D4D8FFD8DD
      E1FFDDE0E6FFEAECEBFFF0EEEFFFF3F1F0FFF8F2F0FFF0F5F2FFF2F6F5FFF9F7
      F7FFFEF8F9FFF9F6F6FFF8FBFAFFF6F9F9FFEEEEEEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8D7CD0003360900002B000000300300002F
      0200002800006D918100F6F6F800F4F4F400F2F2F200F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F1F1
      F100F1F1F10000000000F9F7F90093A69900002D0000002E0100003003000030
      030000280000194B2100D7E1DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AABFB00000300400002F050000320800002E03000A3A1200B4C0B800FBF9
      FB00F2F2F20000000000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F6F5F200ECEDEF003A43C1000000B4000002B8000005B9000006B9000007
      BA000007BD000007BE000006BE000006B9000005B8000003B8000000B6000000
      B4004F58CF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      35001082140017701600004D0000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      000000520000005200000052000000500000005C00004FB16400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFFFDFFF7F7F7FFEEEE
      EEFFE8E8E8FFE8E8E7FFCCCFCFFFC8C8C8FFCACACAFFCBCBCBFF747474FFB9B9
      B9FFCDCACBFFCACBCCFF7C8B97FF4F637BFF4B5B74FF435972FF4C637FFF5B75
      8CFF728B9CFF97A9B0FFC0CBC5FFCACFCDFFD2CFD2FFDDD9DCFFE4E7E5FFF0ED
      EBFFF6F0F0FFF4F3F3FFF6F7F7FFFAFAFAFFF7F7F7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087AA930000290000002E010000300300002F
      0200002800006F928100F9F9FB00EFEEEE00DFDFDF00DDDDDD00DEDEDE00DEDE
      DE00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DDDDDD00E3E3E300F9F7F90094A79A00002C0000002E0100003003000030
      0300002D0000002F0200ADBFB200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000073917C00002800000031070000330800002F03000A3A1200B6C2BA00FEFC
      FD00EEEEEE00E5E5E500E6E6E600E7E7E700E7E7E700E7E7E700E8E8E800E7E7
      E700E7E7E700EEEEE800C1C4D9002631B5000000B700000CBC000010BC000011
      BD000011BE000011BF000010BD00000EBC00000BBB000008BB000005BE004854
      D000E3E4F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000580000005900000059
      000000590000005900000059000000570000066308004DB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFFF0F0F0FFE4E4
      E4FFD2D4D4FF8A9C9DFFAAB7B6FFCECDCDFFCACACAFFC9C9C9FF727272FFB9B9
      BAFFCBCACBFFCFCECCFF5D748DFF234870FF38537BFF3B5981FF405E85FF4A6B
      8BFF507A91FF3D5B7AFF414F5FFF4A5A67FF6B8B98FF7A93A2FF8699AAFF8E9E
      AFFF9CA7B2FFE2E4E2FFF2EEECFFF8F5F5FFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000759179000025000000330300003403000034
      0200002D000070948200FBFAFC00EEEDEE00D9D9D900D8D8D800D8D8D800D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D8D8
      D800D6D6D600E0E0E000FBF9FB0095A89B00002D0000002F0100003003000030
      0300002E0100002E000089A39100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000366D4900002F02000035080000360900003204000A3F1300B6C3BB00FFFD
      FE00ECECEC00E1E1E100E2E2E200E2E2E200E2E2E200E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300EFEEE500C9CBDD00293CC0000011BD00001DC100001F
      C1000020C100001FC100001EC100001BC0000017C000000FBD003146B400E8EC
      F000FBFAF3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005600000054000000540000005400000054
      0000005500000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005A00000057000000500000005800000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFF3F3F3FFF0EF
      EEFFD9DFDCFF4E6A80FF9DA7B0FFD3D1D0FFCBCBCBFFC6C6C6FF6F6F6FFFBAB9
      BAFFCBCBCAFFCFCFCDFF697C96FF2E5075FF3E567EFF3D5A83FF405E85FF4B6B
      8CFF547A93FF466888FF192841FF293C52FF5A8899FF568397FF526E88FF4A67
      86FF5B738AFFB3BEC1FFDDDCDAFFF0EFF0FFF9F9F9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078937900002B0000003A0500003C0500003C
      04000035000071978300FAF9FC00F9F8F800FAFAFA00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00F9F9
      F900F9F9F900F7F7F700FEFBFE0095AA9B000034000000340100003503000033
      0300002F01000032010086A28E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002264380000370600003C0B00003D0B00003A06000A451500B6C4BB00FFFC
      FE00F9F9F900FDFDFD00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00FDFDFE00FDFDFD00FFFFFF00D8D8EA00253CC000002AC500002F
      C5000031C5000031C500002DC500002AC500002BCC00001781004C705400FAFA
      F200F2F1F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000520000096307000D6B10000C690E000C690E000C6A
      100009670B00015B000000580000005900000059000000590000005900000059
      000000590000005900000059000000550000146B18005BAD70000E6612000055
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFFFBFFF9F8F9FFFCFA
      F9FFEAF0EEFF59758DFFA1AAB2FFD2D2D1FFCCCCCCFFC6C6C6FF6E6E6EFFBAB9
      BAFFCACBCAFFCFCECDFF697A94FF305174FF3E567FFF3C5A83FF3F5D85FF4969
      8BFF5A7F97FF59819BFF24344CFF314157FF608A9CFF5A859AFF63889DFF6887
      9EFF5F7D93FF445D72FFC7D0DAFFFAFAFBFFF8F8F7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078967A000033000000420600004207000043
      0600003C0000759B8700FDFCFF00F3F3F300E0E0E000DEDEDE00E0E0E000E0E0
      E000E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E0E0E000DFDF
      DF00DDDDDD00E5E5E500FDFAFD0098AE9F00003B0200003B0300003C0500003A
      0500003502000039020087A49000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000266C3E00003E070000430C0000430D00004208000B4B1700BAC7BE00FFFE
      FF00EDEDED00DFDFDF00E0E0E000E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E2E2E200E1E1E100E2E2E100EBE8E200BEC4D8002250C600003DCA000042
      CB000044CB000044CB000041CA00003CC900003BCC000029A200486B7B00F9F8
      EF00F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004C000078BB8800D2F6EE00C0F2E600C0F2E600C7F3
      EC00A0E0B6000E6A050000540000005900000059000000590000005900000059
      0000005900000059000000590000004F0000367E3B00E2FFFF0021782A000051
      0000004F0000004F0000004E000000520000066409004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEC7FEFFFCFDFCFFFFFF
      FDFFEDF3F2FF5C798FFFA1AAB2FFD3D2D1FFCCCCCCFFC6C6C6FF6E6E6EFFBAB9
      BAFFCACBCBFFCFCECDFF677A93FF315275FF3D577FFF3D5A82FF3F5D84FF4668
      8AFF588097FF587F99FF24354CFF304157FF628B9CFF5B859AFF5C869AFF6288
      9CFF608399FF5A778BFFD3DBE3FFFFFFFFFFF9F9F9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078987B00003B00000049080000490900004B
      080000430000629A8000FFFEFF00F8F7F8000000000000000000F1F1F100F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F10000000000EFEF
      EF00EFEFEF00F1F1F100FFFDFF008FAC9B000041030000430500004306000041
      0600003D03000041040087A69000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026703F0000450900004A0E00004B0F0000480B0006511900AEC7BC00FFFF
      FF00F2F2F200E9E9E900EAEAEA00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECEDEC00F6F3ED00B8BDD3002159C200004BCF000053D0000056
      D2000058D2000058D2000055D1000050CF000048CC000040CD001C57CE00C3D0
      EB00FFFAF4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007DC6A000E9FFFF00D9FFFF00D9FFFF00E1FF
      FF00BEEED000146B090000530000005900000059000000590000005900000059
      000000590000005900000059000000500000307D3900D5FFFF001F712400025F
      0600349154003F986000479961001C742600035E04004EB16400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAEFFAFFFAFAFAFFFEFE
      FDFFEFF5F4FF5B788FFFA1AAB0FFD2D1CFFFCACACAFFC7C7C7FF6F6F6FFFB8B8
      B8FFCAC9CBFFCFCECEFF687C92FF315074FF39567DFF3E5780FF425A82FF4468
      8AFF547F97FF547E98FF25384FFF31455AFF638C9DFF5E869BFF5F879CFF6088
      9CFF5C869CFF627F93FFD4D9DEFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000789C7C000042000000500B0000500B000052
      0A00004B010025764200E0EFEE00FFFFFF00FFFDFE00FFFEFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FEFDFD00FEFC
      FD00FDFCFC00FFFFFF00F6F6F9004086590000470000004B0800004A09000048
      0800004405000049060087A89100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026764100004C0C0000501100005112000050110000500D0065A98900FFFF
      FF00FFFEFF00FEFEFE00FDFDFD00FEFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FEFEFE00FFFFFF00CCD1E6002B66CC000054D200005FD5000066D600006B
      D8000070DB000076DF00006CD8000065D600005BD4000051D0000046CE002868
      D400CAD7F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000540000005900000059000000590000005900000059
      000000590000005900000059000000500000307E3C00D8FFFF00116315000B6F
      0D00CAFCEA00EAFFFF00F8FFFF0062A66E00005200004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F1F0FFEEEEEEFFF8F8
      F6FFF6FBFAFF5D7B91FFA0ABB0FFD1CFCEFFC8C8C8FFC5C5C5FF696969FFB8B8
      B8FFCAC9CAFFCECECEFF5E7184FF233E59FF294160FF2C4060FF2E4565FF3F5E
      81FF567F97FF57819CFF273A51FF32475BFF638D9EFF537E93FF568096FF628A
      9DFF5E889FFF5C7C90FFD1D5DAFFF9F8F8FFF4F4F4FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000789F7D000048000000560D0000570D000058
      0E0000580D0000580D0042987000CCE6DF00FBFAFD00FDFBFD00FCFBFC00FDFC
      FE00FEFDFF00FFFDFF00FFFDFF00FEFCFF00FCFBFD00FCFBFC00FBFAFC00FAF9
      FB00FBF9FC00DCECE90069A2820002540C000051080000520B0000510B00004F
      0A00004C070000500A0087A99200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000267A440000531000005614000058150000581600005510000867290087C2
      AD00F2F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF8FF003C69D300005BD5000068D8000074DB00007BDD000083
      E100017DE1000056CA000079E100007BDE00006FDA000064D6000052D100004A
      CD005185DA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000540000005900000059000000590000005900000059
      00000059000000590000005900000051000026782D00DCFFFD0069B17F00157E
      1E00ABE2C3005CAD68004FA252001E751F00035C04004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFF4F4F4FFFCFB
      FAFFCDD5DBFF57738BFFA4A9B0FFCDCCCBFFC5C5C5FFC1C1C1FF808080FFB7B7
      B7FFC7C6C8FFCDCDCDFF57697BFF1F354BFF283D53FF273952FF2F435DFF4667
      84FF557E98FF497089FF24374FFF31485FFF466881FF36587AFF4E748CFF6088
      9CFF476D87FF5B7587FFDCE1E3FFFAFAF9FFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078A27E0000500100005E1200005E1200005E
      1200005F1200005E0F00005D0D00177A3B00509A680059A56F0057A46F0057A5
      710057A5710057A5710057A5710057A5710057A4710057A46F0057A46F0058A5
      6F00549D6B00227E4400005D0F0000590B00005A0F0000580F0000570D000056
      0D0000520A0000560D0087AB9300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000267E4600005B1300005E1800005E1800005E1800005F1A00005C14000069
      21003D925D0071B2840078BA8C0077B98C0077B98B0077B98B0077B98B0077B9
      8B0078BB8C0070B283000E5B8E000268D800007FE1000082DF00008AE300098A
      E80004579600003A3A000351A9000488E8000083E0000073DB00006CD900187C
      D800AFC7EB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000530000005500000058000000580000005800000058
      00000058000000580000005800000056000002580000469B5600D9FFFE00BAE6
      CB009CDCC20000630F00004C000000540000066409004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFFBFBFAFFFFFF
      FFFF849CA9FF4C7389FFABAFB8FFC8C7C7FFBFBEBEFFB6B6B6FFA8A8A8FFB1B1
      B1FFBBBABBFFC3C3C2FF697D93FF334E6BFF3C576FFF364F6BFF45607EFF5F87
      9CFF59859DFF385A73FF192A43FF2E4561FF30496BFF3E5C81FF5D8196FF5D86
      9BFF3F6382FF92A4B5FFFFFFFFFFFBFBFAFFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078A8800000680F0000772100007420000072
      1E0000711E00006F1C00006C19000066120000650F0000671000006610000067
      1000006710000067110000671100006710000066100000661000006610000065
      0F0000620D00005F0E0000621300006214000061140000601200005E1200005C
      110000590D00005D100087AD9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026874A000074210000762300007522000073220000712100006F1F000069
      1A00006514000065120000651200006512000065120000651300006613000066
      13000065120000660F00005E1D00065183001081E3000391E8001B90EA00125D
      9F000054260000620900014C31000E5EB100108FE900048CE5001F86DD00A5C4
      E900FBF7F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A080000530000086F10000054000000530000005300000053
      00000053000000530000005500000053000000500000004800006AC18700EEFF
      FF00B4EFE4000A6817000053000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFF5F5F4FFFFFF
      FFFF869FB0FF49708AFFABB1BBFFBFBEBDFFAEAEAEFFA6A6A6FF9F9F9FFF9F9F
      9FFFA5A4A6FFB6B5B4FF657A91FF2B486AFF304969FF355070FF436381FF5A85
      9AFF56849DFF3C5F78FF21354CFF324764FF395376FF3E5C80FF567E96FF5E8A
      A1FF476E8DFFA3B0C3FFFFFFFFFFFBFDF9FFEFEEEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078AC830000771B0000852C0000832B000083
      2B0000822A0000822900007F2800007D2600007A23000076210000721D000070
      1C00006E1B00006E1B00006D1B00006E1B00006E1B00006E1900006C1900006B
      1900006B1900006A180000691800006818000067170000661600006415000063
      1500005F11000065150087AE9500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026904F00008B2C00008B2D00008A2D0000892D0000872C0000852A000083
      2900007F2700007A25000076230000722100006F2000006F1F00006F1F00006F
      1F00006E1F00006E1F000071190000621F00105B8900338BEA002668A500025A
      2A000069150000681B0000671100035336001E67B5001575CC004B7D9F00F5F1
      ED00F5F3F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA000C640200297F3900A3D8B20071BA6A0070BA6A0070BA6A0070BA
      6A0071BA6B0075BA6C002B8835005BAF620072B969005BA858007DC49200E5FF
      FF00A9E5D200035E08000056000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFFAFAF9FFFFFF
      FFFF85A0B1FF497289FFA6ABB3FFB0AFAFFF969696FF7E7E7EFF737373FF7171
      71FF787878FF909294FF5D6F87FF375679FF3E5C81FF3D5B80FF426586FF5784
      9AFF59859BFF456784FF2B4567FF385177FF3D577FFF425F85FF587E97FF608A
      9FFF47718DFF9FBEC2FFFFD0FFFFFBC4FAFFEFF9EFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078AE850000781D0000852F0000842E000084
      2E0000832C0000832C0000832C0000832C0000832A0000822A0000812900007F
      2600007B24000078210000751F0000741E0000751F0000741E0000731E000073
      1D0000721D0000711D00006F1B00006F1B00006D1B00006C1900006B1900006A
      180000651400006B180087AF9600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026935200008F2E00008F3000008E3000008D3000008D2F00008B2E00008B
      2E00008A2E0000892D0000872D0000852B0000812900007C2500007823000077
      220000772300007523000074230000761D00006C24001061580001662E000071
      1900006F2000006E1F00006D1E00006B1700005E2E0000542F00478E5900F5F3
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA000B6302002A872E00ACEECE0096DFCB0096DEC80096DEC80096DE
      C80096DEC9009CDECC003E9B610077CDB200B0ECDF00E2FFFF00DCFFFF00E6FF
      FF006CB37700004900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFFCFCFBFFFFFF
      FFFF82A2B1FF4C778CFFA1A8AEFF979595FF484848FF272727FF212121FF1E1E
      1EFF1E1F1FFF242524FF263341FF3E5D7CFF3D5A7DFF3D5B81FF406485FF5783
      9AFF5C889CFF466B89FF2C4A72FF3B5781FF3F5C84FF456588FF588198FF6087
      9DFF4B768FFFA2CAC7FFFFBDFFFFFBADFAFFEFFDEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B08600007B200000873300008632000086
      310000862F0000852F0000852F0000852E0000842D0000842D0000832C000083
      2C0000832B0000822900007F2800007C2400007B2200007A2200007A22000078
      210000772000007720000076200000751F0000741F0000721D0000711D000070
      1C00006C180000701C0087B09600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026965400009431000093340000923400009133000091320000903200008F
      3200008F3000008C3000008C2F00008C2E00008B2E0000892C0000852B000081
      2800007E2600007C2500007C2500007B2500007C220000791B00007920000077
      24000076230000742300007321000071210000711A0000690B0047935C00F4F1
      F400F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA0015680800005D00001D8C280002691B0003681900036919000369
      1900036919000469190001610600005D120033954E00D4FFF900D4FFFB00C8F5
      EC002D8833000C6A0A00005A000000560000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFFAF9F9FFFFEF
      FFFF7E9DACFF497489FF90979DFF6D6B6BFF202020FF0F0F0FFF161616FF1717
      17FF141616FF12110EFF202730FF426081FF3F5C81FF3F5C82FF416586FF5984
      9AFF5A879BFF49728EFF37597FFF436588FF466A8AFF4B728EFF5C849AFF6288
      9EFF517B92FF98BEBEFFFAC7FCFFFBBFFBFFEFFAEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B28600007D2400008A3700008836000089
      340000893300008733000087320000873100008631000086300000852F000084
      2F0000852E0000842D0000832D0000822B000081290000802700007F2500007D
      2600007D2500007D2400007C2300007A23000079220000782100007620000076
      200000731C000075200087B09700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269857000097340000973700009636000095350000953600009436000093
      340000923400009134000091320000903100008F3100008E2F00008D2F00008B
      2E0000882D0000852A0000822800008128000080280000802700007E2600007E
      2600007C2500007B2500007A24000077230000762300006E160047965F00F4F1
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000510000005400000054000000540000005400000054
      0000005400000054000000560000004C00002B832F00D7FFFF00E4FFFF0078B9
      8E000E670F00A7EAC60016711A0000510000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFF1EFFFF4EBF3FFFF8E
      FFFFAABFC9FF708E9FFF8E9498FF979696FFA9A9A9FF727272FF161616FF1818
      18FF1B1919FF161514FF13171BFF384F6DFF3E5D80FF3F5C83FF406588FF5D86
      9BFF5A869BFF4E7A92FF496F8DFF4E738EFF4E718DFF547A92FF5D8298FF567A
      93FF5D829AFF668B9DFFE0E5EBFFFEFFFEFFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B48700007F2700008B3900008A3800008A
      3700008A37000089360000893500008935000088350000883200008630000086
      2F0000862E0000852E0000852C0000842C0000832B0000822900008127000080
      26000080270000802800007F2700007F2600007E2600007D2500007C2400007B
      230000782000007A230087B19700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269B59000099390000993A00009938000098380000983800009737000097
      3600009637000096360000963500009535000095340000933400009232000091
      310000903000008F2F00008B2D0000892C0000882B0000852B00008329000083
      29000082290000812700007F2700007E2600007D25000074180047996000F4F1
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39B00E2FFFF00D3FFFE00D3FFFE00DBFF
      FF00BAEACA00156A090000530000005A00000059000000590000005900000059
      0000005900000059000000590000004E000024802900BBF1DB00D6FFFE0097D9
      C30088CFB5008AD3B600095C0B0000540000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFF6F9F5FFFEC1
      FDFFCDB8CFFFC1CAC8FFD6D5D4FFD8D9D8FFBEBEBEFF8A8A8AFF191919FF1717
      17FF1A1718FF171717FF3A3C3BFF6C747CFF5D728CFF416185FF486F8EFF5883
      99FF537E96FF537C94FF597D95FF4C6D8CFF476788FF567992FF62869BFF5D7E
      97FF61859DFF6C8EA2FFDFE5ECFFFDFFFDFFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B5890000822B00008D3C00008C3A00008C
      3A00008C3A00008B3900008A3800008B380000842F0000812E00098333000A83
      33000A8333000A8133000A8130000A803000097F2F00097F2E000A7E2E00067D
      2C00007D25000082280000832C0000822A000081290000812800007F2800007F
      2700007D2300007D280087B19900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269C5A00009D3B00009B3C00009B3C00009B3C00009A3B00009A3A000099
      3B00009A380000902C0000862800008429000084290000842900008428000082
      270000812600007F2500007E2400007C2300007E230000872700008B2E000089
      2D0000872C0000862B0000852B000083290000822800007A1C00479C6400F4F0
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E00007AC39C00E3FFFF00D4FFFF00D4FFFF00DCFF
      FF00BBEBCB00156A090000540000005900000059000000590000005900000059
      0000005900000059000000570000025A02006AB57900A3E0B200BCE9CF00DCFD
      F800C7F7EB00207A23000050000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFF7F7F7FFEDF3
      ECFFDAD9D7FFE4E1DFFFDBD9D9FFECECECFF949494FF606060FF1F2020FF1717
      17FF161515FF212222FFA4A5A3FFCEC8C3FF9BA3AFFF567D94FF5D859BFF4E76
      8FFF497088FF54778EFF628197FF4E6F8DFF456B89FF597C96FF6B8CA1FF6A8D
      A2FF6487A0FF6A8EA2FFE1E5ECFFFEFEFDFFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B68A0000832E00008F3F00008E3D00008E
      3D00008E3D00008D3B00008D3B0000863200228F520088B8A100AFC2B600A7BB
      AE009FB3A6009BAFA3009FB3A500A2B9A900ABC2B100B8CDBC00B7CBBB00A1BF
      AD0055A07A000480340000832A0000852E0000842D0000832C0000822B000082
      2B000080260000802E0087B29B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000269D5C00009F3E00009F4000009F4000009E3E00009D3D00009D3E00009D
      3C00018E330048A471009EC1AB00ACC4B200A0BAA70095AE9C0095B09C009BB8
      A100A2BFA800AECCB400B3D1B900AEC7B10082AF9600288D500000882A000090
      3100008E3000008D2F00008B2E00008A2E0000882D0000812100479F6800F4F0
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D741C00004E000081C89F00EEFFFF00DEFFFF00DEFFFF00E6FF
      FF00C2F1D100166B090000540000005900000059000000590000005900000059
      000000590000005900000055000001610700B6F1E600E7FFFF002C8331001165
      11000C670F00005500000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF1F1F1FFEBEB
      EBFFEFEFEFFFA7A7A7FF8E8E8EFFDADADAFF696969FF040404FF191919FF1919
      19FF161817FF151514FF5E5B5CFFADAAAFFF9DABB9FF568297FF5C8699FF9DB6
      C5FFBAC8CDFFBAC8CEFFCFDCE2FF728C9BFF456F83FF5E8198FF648AA3FF5D89
      A1FF6287A2FF698EA1FFE3E6EBFFFFFFFDFFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B88B000085300000914200009041000090
      4100008F3F00008F4000008B370024965900CCE1DF00FFFBFF00F1ECF000E3DF
      E200D5D0D300CDC9CC00D3D1D200DEDEDC00D8E4DE00B3D1C000C1D7CA00EAE9
      E600D7D6D60066A088000482300000883000008731000085310000862F000085
      2F0000832A000084340087B29D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000279E5F0000A1420000A1430000A1420000A0410000A0410000A141000097
      340060AE8500F7F3F700FBF5F900EFE9EE00E1DBDF00D2CCD000D2CED000DBDA
      D900E9E7E600D6DED700C0D0C300DDE5E100E4E1E200B7BDBB002B9051000091
      2F0000943500009234000091320000903200008E2F000087250047A36C00F4F0
      F300F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D00004F0000479646007FBF8B0074B8820074B8820078BC
      880061AC63000762020000560000005900000059000000590000005900000059
      00000059000000590000005700000159020081C28E00AADFB7000B650D00004F
      000000540000005800000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFF3F3F3FFF9F9
      F9FFE8E8E8FFADADADFF8E8E8EFFC5C5C5FF676767FF0C0C0CFF1A1A1AFF1A1A
      1AFF171919FF1A191AFF181414FF4D5D5BFF759BA8FF527D92FF577D91FFD2E1
      E5FFFFFFFFFFFFFFFFFFFFFFFFFFA2B4BDFF517B8DFF567E98FF5F849AFF5D86
      9CFF658599FF708E9DFFE4E7ECFFFFFFFDFFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078B98D000087340000934600009145000091
      43000091430000914200018B3E0083C1A600FFFFFF00F3F2F200E6E6E600DADA
      DA00CCCCCC00C5C5C500CDCECD00D0D6D1005A8D6A0000470E0010521F0091B0
      A000D6D7D400B0B6B300258C580000872F000089350000883400008833000087
      320000862E000086390087B39F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027A0630000A1450000A1450000A1450000A1450000A1440000A03F000F9D
      5000CEE5E000FFFFFF00EEEEEE00E3E3E300D5D5D500C7C7C700C7C9C700D6D9
      D500B5C6BD002A603700073F0B0051856700CCD6D000D3CBCE006DA68D000292
      35000097350000973700009535000095350000933300008D2A0047A57000F4EF
      F200F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000550000005600000052000000520000005200000052
      0000005200000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005500000360010008690100005800000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF4F4F4FFF6F6
      F6FFEEEEEEFFD3D3D3FFBEBEBEFFCDCDCDFF838383FF141414FF181818FF1515
      15FF0D0E0EFF070808FF040701FF42304DFF9BA6BCFF9FBABEFFC1D2DBFFEAF5
      F7FFF9FCFCFFF8F9F9FFF8F9FAFFFBFDFBFFD7E4E6FFC1CFDAFFC7D4DFFFCADB
      E2FFCDDBE0FFCFDFE3FFF1F3F5FFF6F7F7FFEFEFEFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078BB8F000089380000944900009346000093
      46000092460000914200098F4A00AFCDC200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D1D000C1CAC4002863310000400000004100003D8F
      6700D1D6D200B4B6B80038936C0000873000008A3800008A3800008A37000089
      36000088330000893F0087B3A100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029A4670000A2480000A2480000A2470000A2460000A2460000A03E002EA1
      6600ED8AF300FFF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBDB
      D90060A68600004404000043030001602400A0C7B500D5CCCE0093ACA1000A94
      3C0000983500009A3A0000993900009838000098370000922E0047A97400F4EF
      F200F3F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005900000058000000580000005800000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005A00000056000000550000005900000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFEFEFEFFFF2F2
      F2FFF8F8F8FFEFEFEFFFE0E0E0FFE2E6E2FFD0D0D0FF252525FF171717FF2E2E
      2EFF5A5A5AFF737373FF313431FF433244FFFFF4FFFFFFEAFFFFFFFFFFFFFFFF
      FFFFF6F8F8FFEEEEEEFFEFEFEFFFF0F0F0FFF8F6F5FFFFFFFFFFFFFFFEFFFAF8
      F7FFF7F5F4FFF7F5F5FFF1F0F0FFEFEFEFFFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078BF9500008C3B0000954B0000944A000094
      4A0000944800009245000A914D00B0CDC100FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D1CF00C1C9C4002D733B000057070000580A003C97
      6F00D1D5D200B3B6B70039946C0000893200008A3700008D3A00008D3B00008C
      3900008A3500008B440086B5A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026A2670000A44C0000A34A0000A34A0000A34A0000A3490000A2420030A1
      6500EC70F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBDA
      D90059AB8400005C12000059110002722F009EC9B600D4CBCE0095AC9F000B98
      400000983600009B3C00009D3E00009C3C00009B3B000096320047AE7A00F4EF
      F100F3F1F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      3500108114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF1F1
      F1FFF1F1F1FFF7F8F7FFFBF9FBFFF0D9F0FFA9A9A9FF0F0F0FFF424242FFD7D7
      D7FFDADADAFFF6F6F6FFCDCCCCFFA6AEA5FFFCF5FBFFFEB4FEFFF6F4F7FFF6F7
      F7FFF3F4F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000075BA9300008D430000974F0000964D000096
      4C0000964C00009448000A935000B0CFC200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D0CF00C1CAC4002D80430000691200006A15003F9E
      7600D1D4D200B4B6B7003A956D00008B3500008B3900008D3B00008F3F00008F
      3E00008D3900008D46008ABAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000038A2710000A64F0000A44C0000A44D0000A44C0000A44C0000A3450030A3
      6800EC75F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBD9
      D8005DB28A00006D1A00006B190004803900A0CBB900D4CACD0094AD9F000B9B
      4200009B3900009B3C00009F4000009F4000009E3D0000983F0049A97800F6F2
      F300F3F1F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007862
      3600108114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000570000066308004EB26400005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFEFEFEFFFF2F3F2FFF9F6F9FFE0BCE0FF989998FF767676FF898989FFBCBC
      BCFFB6B6B6FFF4F4F4FFFDFEFDFFFFFFFFFFF3F7F3FFF3FFF3FFEFEFEFFFEFEF
      EFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008FC2AA00008E4F0000974F00009750000097
      50000096500000954B000A945300B0CFC200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D0CF00C2CAC4002E8A490000781C0000781E003FA3
      7C00D1D4D100B4B6B7003B966F00008D3900008E3C00008D3B00008F40000090
      400000914500038B4F00B0D1BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000070B6920000A04C0000A64F0000A64F0000A64F0000A54F0000A4470031A4
      6900ED75F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBD9
      D8005CB48F00007C2200007C2000058C4000A0CBBA00D4CACD0095AEA1000B9D
      4500009E3B00009C3D00009E3F0000A1430000A2400000984D0062AA8400FFFA
      FC00F1F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007761
      35000F8114001D751D0000540000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000570000066308004CB36300005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFEFFFF5F5F5FFE5EBE5FFC1C1C1FFCACACAFFC3C3C3FFBCBC
      BCFFC2C2C2FFF3F3F3FFF1F1F1FFF0EFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0E0D5000A8E52000099580000984F000098
      50000098510000974E000A965500B0D0C200FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500D0D0CF00C2CCC60028904F00007F2000007E220041A5
      7F00D2D4D100B4B6B6003C977200008F3B0000904000008F3E00008F3F000092
      41000694560025946300DAE6DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AED1BD00029A570000A8540000A64E0000A6500000A6500000A5490032A5
      6C00ED76F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C8C9C800DBD8
      D8006AB7980000892700008A250004954500A4CBBD00D4C9CC0095AEA1000B9F
      480000A03E00009F4000009F400000A0410006A655000C955800A4CBB400FEF7
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F65
      3800128215001A6E1500004B0000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      0000005200000052000000520000005200000052000000520000005200000052
      000000520000005200000052000000500000005B000055AC6800005C01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFEFFFF6F6F6FFE9E9E9FFC9C9C9FFCFCFCFFFCBCBCBFFCACA
      CAFFCFCFCFFFEEEEEEFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBF6F70060AE860003925A00079C5E000097
      51000098500000974E000B965500B1D0C300FFFFFF00F1F1F100E6E6E600DADA
      DA00CCCCCC00C5C5C500CDCECD00D1D7D20062B08B00098C4700148F4C0092BE
      A600D3D4D100B3B6B6003E98720000903F0000904100008E3D00008E3D00149A
      5F0009905C0078BA9400FAF5F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8EBE90041A7760006A3650001A8590000A64E0000A6500000A54A0032A6
      6D00ED76F000FEF9FD00EEEEEE00E3E3E300D5D5D500C7C7C700C7C9C700D5D6
      D300B9CDC30029A25D000699380053B08000CCD5D100CCC7C80095AEA1000AA1
      4A0000A1400000A04000009E3A000AA4510011A16A0041A57000EEEFED00F5F2
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008F71
      41000F771B00439C5C002D873C002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B40002F8B
      40002F8B40002F8B40002F8B40002D893E003D96520083BA8A00005601000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF4F4F4FFE7E7E7FFCDCDCDFFD2D2D2FFCFCFCFFFCECE
      CEFFD2D2D2FFEDEDEDFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F4F600D9E8DF0036A37000149867001AA1
      7100089C61000096520003935400B1D1C400FFFFFF00F3F3F300E7E7E700DADA
      DA00CBCBCB00C3C3C300C9CCC900D3D9D300D5DFD800ADD5C700B6D8CB00DEE3
      D900CDD1CB00AFB2B20038956F00008D3A0000904500129754002BA16F001796
      65004CA77700E6EDE700F5F3F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCF5F900BEE1CF0029A86E001CA8770018AC710007A95D0002A7510034A8
      7100F16FF300FFFCFF00F1F1F100E5E5E500D7D7D700C8C8C800C8CAC800D2D6
      D100DFE2DE00D1E4D900C2E2CC00D9E5DD00DADED800C9C7C70097B0A3000CA2
      4F0003A2450009A44C0024AB68002BAA750028A16900C5DDCE00FBF6F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A088
      5700005A0500308D3F003D983F003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003C9640003C9640003C9640003C9640003C96
      40003C9640003C9640003C9640003B963F003F9948002E7E2B00005600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFEFFFF6F6F6FFEBEBEBFFCECECEFFD3D3D3FFD3D3D3FFD1D1
      D1FFD1D3D1FFF2F2F2FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF0EF00FDF6F900D4EADF0054AF84002B9F
      700027A17F0038AB790044B37C00B2D4C500F0EDEF00E6E6E600E1E1E100DBDB
      DB00D4D4D400D1D1D100D3D4D300D7DAD700DFE1DE00EAE9E600E8E7E400DCE0
      DC00D5D6D400C6C9C80070BB9A0041B874003AAC7B003BA380002F9F6D0058B3
      8500E9F0EB00FAF5F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFF9FC00BCE3CF0044B37F002BAC78003EB1840030AE8C005DB3
      9A00DFA3DF00ECE9EB00E3E4E300DDDDDD00D7D7D700D0D0D000D0D1D000D4D6
      D400D8DCD800E2E3E000E7E5E400E0E2DE00D6DAD600D1CFCE00AABDB5004BAE
      8E0041AF8C004BB5820039AD7C004DB78200BEDFCC00FAF5F800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B8C
      5600004E00000050000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000051000000510000005100000051
      0000005100000051000000510000005100000050000000500000005700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFEFFFF4F4F4FFF9F8F9FFDDE4DDFFD8DFD8FFDAEADAFFDBD9
      DBFFE3DAE3FFF9FAF9FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00FBF6F900F6F7F500B0DB
      C7006FC09B0062BA890064BF9100ADD5C700E9E4E600E3E3E300E4E4E400E5E5
      E500E6E6E600E7E7E700E6E6E600E6E6E600E5E5E500E5E4E500E5E4E500E5E5
      E500E9E7E800E4E6E7008CCEB20060C08D0063BB8C0077C29F00B4DBC900F5F5
      F500F8F4F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCF5F900E6EFE900A5D9BB0064C29E0044BA8C0069C0
      9900DAE9DD00E7E5E600E4E4E400E5E5E500E5E5E500E6E6E600E6E6E600E5E5
      E500E5E5E500E5E4E500E5E4E500E5E5E500E5E5E500ECE8E900C3DCD00055BC
      8B004EBC910069C29F00A7DABC00E9F2EE00FBF5F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7AE
      980076673C00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766D3E00766D3E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7FEF7FFFBCFFBFFF6C8F6FFF898F8FFFBF3
      FBFFFDD7FDFFF4F7F4FFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000F8000000600000000100010000000000000C00000000000000000000
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
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFE00000001FFFC0000000000000000
      00000000000000000000000000000000FFFF00000003FFFFFFFC00000007FFFF
      FFF00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF8038C0007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000401FFFFFFF004000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00C02001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF00000000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF00000000FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF00000001FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000003FFFFFFF80000003FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFF00000007FFFFFFFC0000007FFFFF
      FFE00000001FFFFFFF800000007FFF0000000000000000000000000000000000
      000000000000}
  end
  object DTSPedidos: TDataSource
    DataSet = Pedidos
    OnDataChange = DTSPedidosDataChange
    Left = 1784
    Top = 720
  end
  object Pedidos: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = IBTra
    AfterClose = PedidosAfterClose
    AfterOpen = PedidosAfterOpen
    AfterScroll = PedidosAfterScroll
    BeforeOpen = PedidosBeforeOpen
    OnCalcFields = PedidosCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID  ,PK.IDEP,PK.DEEP,'
      '         PK.IDPK,PK.DEPK,PK.DTPK,'
      '         PK.CDNF,PK.DTNF,PK.D_DTNF,PK.DTSA,PK.D_DTSA,'
      '         PK.IDCD,PK.DECD,PK.RZCD,PK.FIN_VCRD,'
      '         PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,'
      '         PK.QTDE,PK.QTRL,'
      
        '         PK.PDSC,PK.VDSC,PK.TCDE  ,PK.D_TCDE,PK.VTSP,PK.VNF ,PK.' +
        'VTFA,'
      
        '         PK.STPD,PK.STCO,PK.D_STCO,PK.TPCO,PK.RECO  ,PK.DEPG,PK.' +
        'DEST,'
      '         PK.VIPI,PK.VST,'
      
        '         PK.IDCT,PK.DECT,PK.MFRT,PK.D_MFRT,PK.VFRT,PK.PSBR,PK.PS' +
        'LQ,'
      '         PK.LOG_PRN_CDEV,PK.INFADPRN,PK.LOG_PRN_QTEV,'
      '         PK.INFADCAD'
      'FROM     VW_PED_VEN_CAB AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDCD = :IDCD'
      'ORDER BY PK.DTCA DESC')
    Left = 1752
    Top = 720
    ParamData = <
      item
        DataType = ftString
        Name = 'IDEP'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'IDCD'
        ParamType = ptUnknown
        Value = '33'
      end>
    object PedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_CAB"."ID"'
    end
    object PedidosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_CAB"."IDEP"'
    end
    object PedidosDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      ProviderFlags = []
      Size = 60
    end
    object PedidosIDPK: TLargeintField
      FieldName = 'IDPK'
      ProviderFlags = []
    end
    object PedidosDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      Origin = '"VW_PED_VEN_CAB"."DEPK"'
      Size = 30
    end
    object PedidosDTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTPK'
      Origin = '"VW_PED_VEN_CAB"."DTPK"'
      DisplayFormat = 'dd.mm.yy'
    end
    object PedidosIDCD: TIntegerField
      FieldName = 'IDCD'
      ProviderFlags = []
    end
    object PedidosDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      Origin = '"VW_PED_VEN_CAB_004"."DECD"'
      Size = 60
    end
    object PedidosRZCD: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RZCD'
      Origin = '"VW_PED_VEN_CAB_004"."RZCD"'
      Size = 60
    end
    object PedidosCDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDNF'
      Origin = '"VW_PED_VEN_CAB"."CDNF"'
    end
    object PedidosDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTNF'
      Origin = '"VW_PED_VEN_CAB"."DTNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object PedidosD_DTNF: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'D_DTNF'
      Origin = '"VW_PED_VEN_CAB"."D_DTNF"'
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object PedidosDTSA: TDateField
      DisplayLabel = 'Entrega'
      FieldKind = fkInternalCalc
      FieldName = 'DTSA'
      Origin = '"VW_PED_VEN_CAB"."DTSA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object PedidosD_DTSA: TDateTimeField
      DisplayLabel = 'Entrega'
      FieldName = 'D_DTSA'
      Origin = '"VW_PED_VEN_CAB"."D_DTSA"'
      DisplayFormat = 'dd.mm.yy hh:mm'
    end
    object PedidosVIPI: TIBBCDField
      DisplayLabel = 'IPI'
      FieldName = 'VIPI'
      Origin = '"VW_PED_VEN_CAB"."VIPI"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVST: TIBBCDField
      DisplayLabel = 'Sub. Tribut'#225'ria'
      FieldName = 'VST'
      Origin = '"VW_PED_VEN_CAB"."VST"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosFIN_VCRD: TIBBCDField
      FieldName = 'FIN_VCRD'
      Origin = '"VW_PED_VEN_CAB"."FIN_VCRD"'
      Precision = 18
      Size = 2
    end
    object PedidosIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"VW_PED_VEN_CAB"."IDCV"'
    end
    object PedidosDECV: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'DECV'
      Origin = '"VW_PED_VEN_CAB"."DECV"'
      Size = 30
    end
    object PedidosIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"VW_PED_VEN_CAB"."IDCR"'
    end
    object PedidosDECR: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'DECR'
      Origin = '"VW_PED_VEN_CAB"."DECR"'
      Size = 60
    end
    object PedidosQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_CAB"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosQTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_CAB"."QTRL"'
      DisplayFormat = '0'
    end
    object PedidosTCDE: TIBBCDField
      DisplayLabel = 'Produtos'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_CAB"."TCDE"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosD_TCDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'D_TCDE'
      Origin = '"VW_PED_VEN_CAB"."D_TCDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object PedidosPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_CAB"."PDSC"'
      Precision = 9
      Size = 2
    end
    object PedidosVDSC: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'VDSC'
      Origin = '"VW_PED_VEN_CAB"."VDSC"'
      Precision = 18
      Size = 2
    end
    object PedidosVTSP: TIBBCDField
      DisplayLabel = 'Separados'
      FieldName = 'VTSP'
      Origin = '"VW_PED_VEN_CAB_004"."VTSP"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVNF: TIBBCDField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'VNF'
      Origin = '"VW_PED_VEN_CAB"."VNF"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosVTFA: TIBBCDField
      DisplayLabel = 'Faturados'
      FieldKind = fkInternalCalc
      FieldName = 'VTFA'
      Origin = '"VW_PED_VEN_CAB"."VTFA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"VW_PED_VEN_CAB"."STPD"'
      Size = 60
    end
    object PedidosSTCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'STCO'
      Origin = '"VW_PED_VEN_CAB"."STCO"'
      Size = 60
    end
    object PedidosD_STCO: TIBStringField
      DisplayLabel = 'Prazo'
      FieldKind = fkInternalCalc
      FieldName = 'D_STCO'
      Origin = '"VW_PED_VEN_CAB"."D_STCO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 84
    end
    object PedidosTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"VW_PED_VEN_CAB"."TPCO"'
    end
    object PedidosRECO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'RECO'
      Origin = '"VW_PED_VEN_CAB"."RECO"'
      Size = 3
    end
    object PedidosDEPG: TIBStringField
      DisplayLabel = 'Prazo'
      FieldName = 'DEPG'
      Origin = '"VW_PED_VEN_CAB"."DEPG"'
      Size = 50
    end
    object PedidosDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_PED_VEN_CAB"."DEST"'
      ProviderFlags = []
      ReadOnly = True
    end
    object PedidosIDCT: TSmallintField
      FieldName = 'IDCT'
      Origin = '"VW_PED_VEN_CAB"."IDCT"'
    end
    object PedidosDECT: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'DECT'
      Origin = '"VW_PED_VEN_CAB"."DECT"'
      Size = 60
    end
    object PedidosMFRT: TSmallintField
      FieldName = 'MFRT'
      Origin = '"VW_PED_VEN_CAB"."MFRT"'
    end
    object PedidosD_MFRT: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_MFRT'
      Origin = '"VW_PED_VEN_CAB"."D_MFRT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object PedidosVFRT: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VFRT'
      Origin = '"VW_PED_VEN_CAB"."VFRT"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosPSBR: TIBBCDField
      DisplayLabel = 'Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_CAB"."PSBR"'
      DisplayFormat = ',##,0.00#'
      Precision = 18
      Size = 3
    end
    object PedidosPSLQ: TIBBCDField
      DisplayLabel = 'L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_CAB"."PSLQ"'
      DisplayFormat = ',##,0.00#'
      Precision = 18
      Size = 3
    end
    object PedidosLOG_PRN_CDEV: TSmallintField
      FieldName = 'LOG_PRN_CDEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_CDEV"'
    end
    object PedidosLOG_PRN_QTEV: TSmallintField
      FieldName = 'LOG_PRN_QTEV'
      Origin = '"VW_PED_VEN_CAB_004"."LOG_PRN_QTEV"'
    end
    object PedidosINFADPRN: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADPRN'
      Origin = '"VW_PED_VEN_CAB"."INFADPRN"'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object PedidosINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PED_VEN_CAB_004"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object PedidosC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object dtscad_cli_inf: TDataSource
    Left = 1920
    Top = 608
  end
  object NF: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    AfterScroll = NFAfterScroll
    OnCalcFields = NFCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT    PK.ID  ,PK.IDPK  ,PK.IDEP,PK.DEEP,'
      
        '          PK.CDST,PK.REST  ,PK.DEST,PK.CDNF,PK.DTNF  ,PK.IDSA,PK' +
        '.DTSA,PK.DESA,'
      '          PK.CFOP,PK.D_CFOP,PK.TPNF,PK.D_FINNFE,'
      '          PK.VNF ,PK.VIPI  ,PK.VST,'
      
        '          PK.IDCT,PK.DECT  ,PK.D_FRT,PK.VFRT,PK.DVOL,PK.PSBR,PK.' +
        'PSLQ,'
      '          PK.MOTORISTA     ,PK.PLACA,PK.AJUDANTES,'
      '          PK.INFADCAD'
      'FROM      VW_NFE_CAB_004 AS PK'
      'WHERE     PK.IDEP  = 4'
      'AND       PK.CDST  = 30 -- Ativos'
      'AND       PK.TPCHV = 44 -- Tipo Chave (44 = nosso xml)'
      'AND       PK.IDCD  = 12192'
      'ORDER BY  PK.DTCA DESC')
    Left = 1752
    Top = 784
    object NFID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_NFE_CAB_004"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object NFIDEP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDEP'
      Origin = '"VW_NFE_CAB_004"."IDEP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object NFDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkInternalCalc
      FieldName = 'DEEP'
      Origin = '"VW_NFE_CAB_004"."DEEP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object NFCDNF: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'CDNF'
      Origin = '"VW_NFE_CAB_004"."CDNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0'
    end
    object NFDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTNF'
      Origin = '"VW_NFE_CAB_004"."DTNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object NFDTSA: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldKind = fkInternalCalc
      FieldName = 'DTSA'
      Origin = '"VW_NFE_CAB_004"."DTSA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object NFDESA: TIBStringField
      DisplayLabel = 'Conferente'
      FieldName = 'DESA'
      Origin = '"VW_NFE_CAB_004"."DESA"'
      Size = 40
    end
    object NFCFOP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CFOP'
      Origin = '"VW_NFE_CAB_004"."CFOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object NFD_CFOP: TIBStringField
      DisplayLabel = 'Natureza Opera'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'D_CFOP'
      Origin = '"VW_NFE_CAB"."D_CFOP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object NFTPNF: TIBStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkInternalCalc
      FieldName = 'TPNF'
      Origin = '"VW_NFE_CAB"."TPNF"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object NFD_FINNFE: TIBStringField
      DisplayLabel = 'Finalidade'
      FieldKind = fkInternalCalc
      FieldName = 'D_FINNFE'
      Origin = '"VW_NFE_CAB"."D_FINNFE"'
      ProviderFlags = []
      ReadOnly = True
    end
    object NFVNF: TIBBCDField
      DisplayLabel = 'Total NF R$'
      FieldKind = fkInternalCalc
      FieldName = 'VNF'
      Origin = '"VW_NFE_CAB_004"."VNF"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object NFVIPI: TIBBCDField
      DisplayLabel = 'IPI R$'
      FieldKind = fkInternalCalc
      FieldName = 'VIPI'
      Origin = '"VW_NFE_CAB_004"."VIPI"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object NFVST: TIBBCDField
      DisplayLabel = 'ST R$'
      FieldKind = fkInternalCalc
      FieldName = 'VST'
      Origin = '"VW_NFE_CAB_004"."VST"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object NFDECT: TIBStringField
      DisplayLabel = 'Transporte'
      FieldKind = fkInternalCalc
      FieldName = 'DECT'
      Origin = '"VW_NFE_CAB_004"."DECT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object NFVFRT: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'VFRT'
      Origin = '"VW_NFE_CAB_004"."VFRT"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object NFD_FRT: TIBStringField
      DisplayLabel = 'Frete'
      FieldKind = fkInternalCalc
      FieldName = 'D_FRT'
      Origin = '"VW_NFE_CAB"."D_FRT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 24
    end
    object NFDVOL: TIBStringField
      DisplayLabel = 'Volume'
      FieldKind = fkInternalCalc
      FieldName = 'DVOL'
      Origin = '"VW_NFE_CAB_004"."DVOL"'
      ProviderFlags = []
      ReadOnly = True
      Size = 67
    end
    object NFPSBR: TIBBCDField
      DisplayLabel = 'Peso Br'
      FieldKind = fkInternalCalc
      FieldName = 'PSBR'
      Origin = '"VW_NFE_CAB_004"."PSBR"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object NFPSLQ: TIBBCDField
      DisplayLabel = 'Peso Lq'
      FieldKind = fkInternalCalc
      FieldName = 'PSLQ'
      Origin = '"VW_NFE_CAB_004"."PSLQ"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object NFDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_NFE_CAB_004"."DEST"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object NFMOTORISTA: TIBStringField
      DisplayLabel = 'Motorista'
      FieldName = 'MOTORISTA'
      Origin = '"VW_NFE_CAB_004"."MOTORISTA"'
      Size = 40
    end
    object NFPLACA: TIBStringField
      DisplayLabel = 'Carro'
      FieldName = 'PLACA'
      Origin = '"VW_NFE_CAB_004"."PLACA"'
      Size = 10
    end
    object NFAJUDANTES: TIBStringField
      DisplayLabel = 'Ajudante(s)'
      FieldName = 'AJUDANTES'
      Origin = '"VW_NFE_CAB_004"."AJUDANTES"'
      Size = 81
    end
    object NFC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DTSNF: TDataSource
    DataSet = NF
    Left = 1784
    Top = 784
  end
  object FB: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    AfterOpen = FBAfterOpen
    AfterScroll = FBAfterScroll
    BeforeOpen = FBBeforeOpen
    OnCalcFields = FBCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID,PK.IDEP,PK.DEEP,'
      
        '         PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,PK.VDUP,' +
        'PK.D_VDUP,PK.DECV,PK.DECR,'
      '         PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,'
      '         PK.VJUR,PK.VMUL,PK.VDSC,'
      '         PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,'
      '         PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,'
      
        '         PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,P' +
        'K.API_ST,PK.API_MT,PK.API_INFADCAD,'
      '         PK.INFADCAD'
      'FROM     VW_FIN_REC_BAN_004 AS PK'
      'WHERE    PK.IDEP = 4'
      'AND      PK.DOCUMENTO like '#39'183804%'#39
      'ORDER BY PK.DTCA DESC')
    Left = 1752
    Top = 816
    object FBID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_FIN_REC_BAN"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBIDEP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDEP'
      Origin = '"VW_FIN_REC_BAN"."IDEP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      Origin = '"VW_FIN_REC_BAN"."DEEP"'
      Size = 60
    end
    object FBDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldKind = fkInternalCalc
      FieldName = 'DOCUMENTO'
      Origin = '"VW_FIN_REC_BAN"."DOCUMENTO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 60
    end
    object FBD_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'D_TIPO'
      ProviderFlags = []
      Size = 60
    end
    object FBRECO: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'RECO'
      ProviderFlags = []
      Size = 3
    end
    object FBCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldKind = fkInternalCalc
      FieldName = 'CTNR'
      Origin = '"VW_FIN_REC_BAN_TMP"."CTNR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBDTFA: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTFA'
      Origin = '"VW_FIN_REC_BAN"."DTFA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBTITULO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'TITULO'
      Origin = '"VW_FIN_REC_BAN"."TITULO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBDTVC: TDateField
      DisplayLabel = 'Vencto'
      FieldKind = fkInternalCalc
      FieldName = 'DTVC'
      Origin = '"VW_FIN_REC_BAN"."DTVC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBVDUP: TIBBCDField
      DisplayLabel = 'Vl. T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'VDUP'
      Origin = '"VW_FIN_REC_BAN"."VDUP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'DECV'
      Origin = '"VW_FIN_REC_BAN"."DECV"'
      Size = 30
    end
    object FBDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldName = 'DECR'
      Origin = '"VW_FIN_REC_BAN"."DECR"'
      Size = 60
    end
    object FBVJUR: TIBBCDField
      DisplayLabel = 'Vl. Juros'
      FieldKind = fkInternalCalc
      FieldName = 'VJUR'
      Origin = '"VW_FIN_REC_BAN"."VJUR"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBVMUL: TIBBCDField
      DisplayLabel = 'Vl. Multa'
      FieldKind = fkInternalCalc
      FieldName = 'VMUL'
      Origin = '"VW_FIN_REC_BAN"."VMUL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBVDSC: TIBBCDField
      DisplayLabel = 'Vl. Desc.'
      FieldKind = fkInternalCalc
      FieldName = 'VDSC'
      Origin = '"VW_FIN_REC_BAN"."VDSC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBDTPG: TDateField
      DisplayLabel = 'Dt. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'DTPG'
      Origin = '"VW_FIN_REC_BAN"."DTPG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBVPAG: TIBBCDField
      DisplayLabel = 'Vl. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'VPAG'
      Origin = '"VW_FIN_REC_BAN"."VPAG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBVPEN: TIBBCDField
      DisplayLabel = 'Vl. Pendente'
      FieldKind = fkInternalCalc
      FieldName = 'VPEN'
      Origin = '"VW_FIN_REC_BAN"."VPEN"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FBDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_FIN_REC_BAN"."DEST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o Financeira'
      FieldKind = fkInternalCalc
      FieldName = 'STFI'
      Origin = '"VW_FIN_REC_BAN"."STFI"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FBFIN_PEN: TSmallintField
      FieldName = 'FIN_PEN'
      Origin = '"VW_FIN_REC_BAN_004"."FIN_PEN"'
    end
    object FBFIN_LIQ: TSmallintField
      FieldName = 'FIN_LIQ'
      Origin = '"VW_FIN_REC_BAN_004"."FIN_LIQ"'
    end
    object FBFIN_BLQ: TSmallintField
      FieldName = 'FIN_BLQ'
      Origin = '"VW_FIN_REC_BAN_004"."FIN_BLQ"'
    end
    object FBDTBX: TDateField
      DisplayLabel = 'Baixa'
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_FIN_REC_BAN_TMP"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FBAPI_ID: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_ID'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBAPI_DTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'API_DTCA'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_DTCA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object FBAPI_DTED: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'API_DTED'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_DTED"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object FBAPI_INFADCAD: TMemoField
      DisplayLabel = '?'
      FieldKind = fkInternalCalc
      FieldName = 'API_INFADCAD'
      Origin = '"VW_FIN_REC_BAN"."API_INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
      Size = 8
    end
    object FBAPI_MT: TIBStringField
      DisplayLabel = 'Motivo'
      FieldKind = fkInternalCalc
      FieldName = 'API_MT'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_MT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object FBAPI_NN: TLargeintField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'API_NN'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_NN"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FBAPI_CA: TSmallintField
      DisplayLabel = 'Carteira'
      FieldName = 'API_CA'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_CA"'
    end
    object FBAPI_ST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o Banc'#225'ria'
      FieldKind = fkInternalCalc
      FieldName = 'API_ST'
      Origin = '"VW_FIN_REC_BAN_TMP"."API_ST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FBINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_FIN_REC_BAN"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object FBC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DTSFB: TDataSource
    DataSet = FB
    OnDataChange = DTSFBDataChange
    Left = 1784
    Top = 816
  end
  object Prazo: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      
        'SELECT SUM((PAG_D001+PAG_D002+PAG_D003+PAG_D004+PAG_D005+PAG_D00' +
        '6+PAG_D007+PAG_D008+PAG_D009+PAG_D010)/PAG_PARC) "PAG_PRAZ" FROM' +
        ' TAB_PAG'
      'WHERE ID = :ID')
    Left = 1752
    Top = 688
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    object PrazoPAG_PRAZ: TLargeintField
      FieldName = 'PAG_PRAZ'
      ProviderFlags = []
    end
  end
  object FKPedidos: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    OnCalcFields = FKPedidosCalcFields
    BufferChunks = 4500
    DataSource = DTSPedidos
    SQL.Strings = (
      'SELECT   PK.*'
      'FROM     VW_PED_VEN_ITE AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDPK = :IDPK'
      'ORDER BY PK.ITEM')
    Left = 1752
    Top = 752
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
    object FKPedidosC_ID: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
    object FKPedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_VEN_ITE"."ID"'
    end
    object FKPedidosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_VEN_ITE"."IDEP"'
    end
    object FKPedidosIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"VW_PED_VEN_ITE"."IDCA"'
    end
    object FKPedidosDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_PED_VEN_ITE"."DTCA"'
    end
    object FKPedidosIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_VEN_ITE"."IDPK"'
    end
    object FKPedidosITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"VW_PED_VEN_ITE"."ITEM"'
      DisplayFormat = '0'
    end
    object FKPedidosIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_PED_VEN_ITE"."IDCP"'
    end
    object FKPedidosCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_PED_VEN_ITE"."CP_IDEP"'
    end
    object FKPedidosCP_DEEP: TIBStringField
      FieldName = 'CP_DEEP'
      Origin = '"VW_PED_VEN_ITE"."CP_DEEP"'
      Size = 60
    end
    object FKPedidosARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"VW_PED_VEN_ITE"."ARTIGO"'
    end
    object FKPedidosSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"VW_PED_VEN_ITE"."SKU"'
    end
    object FKPedidosCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"VW_PED_VEN_ITE"."CEAN"'
    end
    object FKPedidosDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"VW_PED_VEN_ITE"."DECP"'
      Size = 120
    end
    object FKPedidosDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_PED_VEN_ITE"."DGCP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FKPedidosUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"VW_PED_VEN_ITE"."UCOM"'
      Size = 10
    end
    object FKPedidosUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldKind = fkInternalCalc
      FieldName = 'UCON'
      Origin = '"VW_PED_VEN_ITE"."UCON"'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FKPedidosQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_PED_VEN_ITE"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKPedidosQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"VW_PED_VEN_ITE"."QTRL"'
      DisplayFormat = '0'
    end
    object FKPedidosQTSP: TIBBCDField
      FieldName = 'QTSP'
      Origin = '"VW_PED_VEN_ITE"."QTSP"'
      Precision = 18
      Size = 2
    end
    object FKPedidosRLSP: TIntegerField
      FieldName = 'RLSP'
      Origin = '"VW_PED_VEN_ITE"."RLSP"'
    end
    object FKPedidosVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD"'
    end
    object FKPedidosVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD_INI"'
    end
    object FKPedidosVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"VW_PED_VEN_ITE"."VPRC_PAD_FIM"'
    end
    object FKPedidosPDSC: TIBBCDField
      DisplayLabel = 'Desc'
      FieldName = 'PDSC'
      Origin = '"VW_PED_VEN_ITE"."PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKPedidosVPRC_COM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'VPRC_COM'
      Origin = '"VW_PED_VEN_ITE"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object FKPedidosTSDE: TIBBCDField
      FieldName = 'TSDE'
      Origin = '"VW_PED_VEN_ITE"."TSDE"'
      Precision = 18
      Size = 2
    end
    object FKPedidosTCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TCDE'
      Origin = '"VW_PED_VEN_ITE"."TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKPedidosNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VW_PED_VEN_ITE"."NCM"'
      FixedChar = True
      Size = 8
    end
    object FKPedidosPIPI: TIBBCDField
      FieldName = 'PIPI'
      Origin = '"VW_PED_VEN_ITE"."PIPI"'
      Precision = 9
      Size = 2
    end
    object FKPedidosCEST: TIBStringField
      FieldName = 'CEST'
      Origin = '"VW_PED_VEN_ITE"."CEST"'
      Size = 7
    end
    object FKPedidosEXTIPI: TIBStringField
      FieldName = 'EXTIPI'
      Origin = '"VW_PED_VEN_ITE"."EXTIPI"'
      Size = 3
    end
    object FKPedidosRCOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'RCOM'
      Origin = '"VW_PED_VEN_ITE"."RCOM"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object FKPedidosPCOM: TIBBCDField
      FieldName = 'PCOM'
      Origin = '"VW_PED_VEN_ITE"."PCOM"'
      Precision = 9
      Size = 2
    end
    object FKPedidosPSBR: TIBBCDField
      FieldName = 'PSBR'
      Origin = '"VW_PED_VEN_ITE"."PSBR"'
      Precision = 18
      Size = 3
    end
    object FKPedidosPSLQ: TIBBCDField
      FieldName = 'PSLQ'
      Origin = '"VW_PED_VEN_ITE"."PSLQ"'
      Precision = 18
      Size = 3
    end
    object FKPedidosORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"VW_PED_VEN_ITE"."ORIG"'
    end
    object FKPedidosCPAIS: TSmallintField
      FieldName = 'CPAIS'
      Origin = '"VW_PED_VEN_ITE"."CPAIS"'
    end
    object FKPedidosIP: TIBStringField
      FieldName = 'IP'
      Origin = '"VW_PED_VEN_ITE"."IP"'
      Size = 30
    end
    object FKPedidosHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"VW_PED_VEN_ITE"."HOST"'
      Size = 30
    end
  end
  object DTSFKPedidos: TDataSource
    DataSet = FKPedidos
    Left = 1784
    Top = 752
  end
  object SQLConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 1784
    Top = 624
  end
  object FC: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    AfterOpen = FCAfterOpen
    AfterScroll = FCAfterScroll
    BeforeOpen = FCBeforeOpen
    OnCalcFields = FCCalcFields
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID,PK.IDEP,PK.DEEP,'
      
        '         PK.DOCUMENTO,PK.CTNR,PK.TITULO,PK.DTFA,PK.DTVC,PK.VDUP,' +
        'PK.DECV,PK.DECR,'
      '         PK.TIPO,LEFT(PK.TIPO,3) AS D_TIPO,PK.RECO,'
      '         PK.VJUR,PK.VMUL,PK.VDSC,'
      '         PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,PK.STFI,PK.DTBX,'
      '         PK.FIN_PEN,PK.FIN_LIQ,PK.FIN_BLQ,'
      
        '         PK.API_ID,PK.API_DTCA,PK.API_DTED,PK.API_NN,PK.API_CA,P' +
        'K.API_ST,PK.API_MT,PK.API_INFADCAD,'
      '         PK.INFADCAD'
      'FROM     VW_FIN_REC_CAR_004 AS PK'
      'WHERE    PK.IDEP = 0'
      'AND      PK.IDCD = 0'
      'AND      PK.CDST <> 46 -- Cancelado'
      'ORDER BY PK.DTCA DESC')
    Left = 1752
    Top = 848
    object FCID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_FIN_REC_CAR_TMP"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCIDEP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDEP'
      Origin = '"VW_FIN_REC_CAR_TMP"."IDEP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkInternalCalc
      FieldName = 'DEEP'
      Origin = '"VW_FIN_REC_CAR_TMP"."DEEP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldKind = fkInternalCalc
      FieldName = 'DOCUMENTO'
      Origin = '"VW_FIN_REC_CAR"."DOCUMENTO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldKind = fkInternalCalc
      FieldName = 'CTNR'
      Origin = '"VW_FIN_REC_CAR_TMP"."CTNR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCDTFA: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTFA'
      Origin = '"VW_FIN_REC_CAR_TMP"."DTFA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCTITULO: TIBStringField
      DisplayLabel = 'Titulo'
      FieldKind = fkInternalCalc
      FieldName = 'TITULO'
      Origin = '"VW_FIN_REC_CAR"."TITULO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCDTVC: TDateField
      DisplayLabel = 'Vencto'
      FieldKind = fkInternalCalc
      FieldName = 'DTVC'
      Origin = '"VW_FIN_REC_CAR"."DTVC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCVDUP: TIBBCDField
      DisplayLabel = 'Vl. T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'VDUP'
      Origin = '"VW_FIN_REC_CAR_TMP"."VDUP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldKind = fkInternalCalc
      FieldName = 'DECV'
      Origin = '"VW_FIN_REC_CAR_TMP"."DECV"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldKind = fkInternalCalc
      FieldName = 'DECR'
      Origin = '"VW_FIN_REC_CAR_TMP"."DECR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkInternalCalc
      FieldName = 'TIPO'
      Origin = '"VW_FIN_REC_CAR_TMP"."TIPO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCD_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'D_TIPO'
      ProviderFlags = []
      Size = 60
    end
    object FCRECO: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldKind = fkInternalCalc
      FieldName = 'RECO'
      Origin = '"VW_FIN_REC_CAR_TMP"."RECO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object FCVJUR: TIBBCDField
      DisplayLabel = 'Vl. Juros'
      FieldKind = fkInternalCalc
      FieldName = 'VJUR'
      Origin = '"VW_FIN_REC_CAR_TMP"."VJUR"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCVMUL: TIBBCDField
      DisplayLabel = 'Vl. Multa'
      FieldKind = fkInternalCalc
      FieldName = 'VMUL'
      Origin = '"VW_FIN_REC_CAR_TMP"."VMUL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCVDSC: TIBBCDField
      DisplayLabel = 'Vl. Desc.'
      FieldKind = fkInternalCalc
      FieldName = 'VDSC'
      Origin = '"VW_FIN_REC_CAR_TMP"."VDSC"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCDTPG: TDateField
      DisplayLabel = 'Dt. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'DTPG'
      Origin = '"VW_FIN_REC_CAR_TMP"."DTPG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCVPAG: TIBBCDField
      DisplayLabel = 'Vl. Pago'
      FieldKind = fkInternalCalc
      FieldName = 'VPAG'
      Origin = '"VW_FIN_REC_CAR_TMP"."VPAG"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCVPEN: TIBBCDField
      DisplayLabel = 'Vl. Pendente'
      FieldKind = fkInternalCalc
      FieldName = 'VPEN'
      Origin = '"VW_FIN_REC_CAR_TMP"."VPEN"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FCDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o T'#237'tulo'
      FieldKind = fkInternalCalc
      FieldName = 'DEST'
      Origin = '"VW_FIN_REC_CAR"."DEST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o Financeira'
      FieldKind = fkInternalCalc
      FieldName = 'STFI'
      Origin = '"VW_FIN_REC_CAR_TMP"."STFI"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FCFIN_PEN: TSmallintField
      FieldName = 'FIN_PEN'
      Origin = '"VW_FIN_REC_CAR_004"."FIN_PEN"'
    end
    object FCFIN_LIQ: TSmallintField
      FieldName = 'FIN_LIQ'
      Origin = '"VW_FIN_REC_CAR_004"."FIN_LIQ"'
    end
    object FCFIN_BLQ: TSmallintField
      FieldName = 'FIN_BLQ'
      Origin = '"VW_FIN_REC_CAR_004"."FIN_BLQ"'
    end
    object FCDTBX: TDateField
      DisplayLabel = 'Baixa'
      FieldKind = fkInternalCalc
      FieldName = 'DTBX'
      Origin = '"VW_FIN_REC_CAR_TMP"."DTBX"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object FCAPI_ID: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_ID'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_DTCA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'API_DTCA'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_DTCA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_DTED: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'API_DTED'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_DTED"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_NN: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'API_NN'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_NN"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FCAPI_CA: TSmallintField
      DisplayLabel = 'Carteira'
      FieldName = 'API_CA'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_CA"'
    end
    object FCAPI_ST: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_ST'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_ST"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FCAPI_MT: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'API_MT'
      Origin = '"VW_FIN_REC_CAR_TMP"."API_MT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object FCAPI_INFADCAD: TMemoField
      FieldKind = fkInternalCalc
      FieldName = 'API_INFADCAD'
      Origin = '"VW_FIN_REC_CAR"."API_INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
      Size = 8
    end
    object FCINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_FIN_REC_CAR"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object FCC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object DTSFC: TDataSource
    DataSet = FC
    OnDataChange = DTSFCDataChange
    Left = 1784
    Top = 848
  end
  object SQLEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 1784
    Top = 656
  end
  object ConsultaAux: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 1752
    Top = 656
  end
end
