inherited FrmEXP_SEP_COL: TFrmEXP_SEP_COL
  Left = 351
  Top = 82
  HelpContext = 95
  ActiveControl = DBGEdicao
  BorderIcons = [biSystemMenu]
  Caption = 'Separa'#231#227'o de Pedidos'
  ClientHeight = 805
  ClientWidth = 1296
  FormStyle = fsNormal
  Position = poDesigned
  Visible = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 784
    Width = 1296
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 125
        Text = 'Consulta'
        Width = 125
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1015
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
  inherited DSMenu: TdxDockSite
    Width = 1296
    Height = 727
    DockType = 0
    OriginalWidth = 1296
    OriginalHeight = 727
    inherited LDSMenu: TdxLayoutDockSite
      Width = 1296
      Height = 727
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSEdicao: TdxLayoutDockSite
        Width = 1196
        Height = 727
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited DPMenu: TdxDockPanel
        Height = 727
        DockType = 2
        OriginalWidth = 100
        OriginalHeight = 573
        inherited SBMenu: TdxSideBar
          Height = 702
        end
      end
    end
    inherited DPEdicao: TdxDockPanel
      Width = 1296
      Height = 727
      DockType = 1
      OriginalWidth = 470
      OriginalHeight = 285
      inherited PNLPrincipal: TPanel
        Width = 1292
        Height = 702
        object PCEdicao: TdxPageControl
          Left = 0
          Top = 0
          Width = 1292
          Height = 647
          ActivePage = TSSeparados
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          object TSSeparados: TdxTabSheet
            Caption = 'Separados'
            object SBEdicaoGrade: TSpeedBar
              Left = 0
              Top = 0
              Width = 39
              Height = 620
              Cursor = crHandPoint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsItalic]
              Position = bpCustom
              Align = alLeft
              Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
              BtnOffsetHorz = 3
              BtnOffsetVert = 3
              BtnWidth = 34
              BtnHeight = 34
              Images = ILMenu
              TabOrder = 0
              InternalVer = 1
              object SSEdicao: TSpeedbarSection
                Caption = 'Edi'#231#227'o'
              end
              object SIEInclui: TSpeedItem
                Tag = 9
                Caption = 'SIEInclui'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Ins] - Incluir'
                ImageIndex = 6
                Spacing = 1
                Left = 3
                Top = 3
                Visible = True
                SectionName = 'Edi'#231#227'o'
              end
              object SIEAltera: TSpeedItem
                Tag = 1
                Caption = 'SIEAltera'
                Cursor = crHandPoint
                Hint = '[Enter] - Alterar'
                ImageIndex = 7
                Spacing = 1
                Left = 3
                Top = 37
                Visible = True
                OnClick = SIEAlteraClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIEExclui: TSpeedItem
                Tag = 1
                Caption = 'SIEExclui'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Del] - Excluir'
                ImageIndex = 8
                Spacing = 1
                Left = 3
                Top = 71
                Visible = True
                OnClick = SIEExcluiClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIESalva: TSpeedItem
                Tag = 2
                Caption = 'SIESalva'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Ctrl+S] - Salvar'
                ImageIndex = 9
                Spacing = 1
                Left = 3
                Top = 105
                Visible = True
                OnClick = SIESalvaClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIECancela: TSpeedItem
                Tag = 2
                Caption = 'SIECancela'
                Enabled = False
                Cursor = crHandPoint
                Hint = '[Esc] - Cancelar'
                ImageIndex = 10
                Spacing = 1
                Left = 3
                Top = 139
                Visible = True
                OnClick = SIECancelaClick
                SectionName = 'Edi'#231#227'o'
              end
            end
            object DBGEdicao: TdxDBGrid
              Left = 39
              Top = 0
              Width = 1253
              Height = 620
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
              Color = clBtnFace
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnKeyDown = DBGEdicaoKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = 16048829
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clBlack
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSEdicao
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = [fsItalic]
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
              PreviewFont.Charset = ANSI_CHARSET
              PreviewFont.Color = clBlack
              PreviewFont.Height = -12
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = [fsItalic]
              ScrollBars = ssVertical
              OnCustomDrawCell = DBGEdicaoCustomDrawCell
              object DBGEdicaoC_ID: TdxDBGridColumn
                Color = clWhite
                DisableEditor = True
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGEdicaoPRO_DERO: TdxDBGridButtonColumn
                Color = clGray
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                MinWidth = 80
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DERO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
                Buttons = <
                  item
                    Default = True
                  end>
              end
              object DBGEdicaoPRO_CART: TdxDBGridMaskColumn
                Color = clWhite
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 70
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CART'
              end
              object DBGEdicaoPRO_CPRO: TdxDBGridMaskColumn
                Color = clWhite
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CPRO'
              end
              object DBGEdicaoPRO_DGCP: TdxDBGridMaskColumn
                Color = clWhite
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 250
                Width = 260
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DGCP'
              end
              object DBGEdicaoPRO_DUNI: TdxDBGridMaskColumn
                Color = clWhite
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 70
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DUNI'
              end
              object DBGEdicaoPRO_UCON: TdxDBGridMaskColumn
                Color = clWhite
                DisableEditor = True
                MinWidth = 150
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_UCON'
              end
              object DBGEdicaoPRO_CDET: TdxDBGridColumn
                Color = clGray
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                MinWidth = 75
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CDET'
              end
              object DBGEdicaoPRO_QTDE: TdxDBGridCurrencyColumn
                Color = clWhite
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                MinWidth = 65
                Width = 65
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PRO_QTDE'
                SummaryFooterFormat = ',##,0.00'
                DisplayFormat = ',##,0.00'
                Nullable = False
                DisableFilter = True
              end
              object DBGEdicaoPRO_QCOR: TdxDBGridCurrencyColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                MinWidth = 65
                Width = 65
                BandIndex = 0
                RowIndex = 0
                OnValidate = DBGEdicaoPRO_QCORValidate
                FieldName = 'PRO_QCOR'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PRO_QCOR'
                SummaryFooterFormat = ',##,0.00'
                DisplayFormat = ',##,0.00'
                Nullable = False
                DisableFilter = True
              end
              object DBGEdicaoPRO_RSEP: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                MinWidth = 65
                Width = 65
                BandIndex = 0
                RowIndex = 0
                OnValidate = DBGEdicaoPRO_RSEPValidate
                FieldName = 'PRO_RSEP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PRO_RSEP'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGEdicaoPRO_QDIS: TdxDBGridMaskColumn
                DisableEditor = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                MinWidth = 65
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_QDIS'
                DisableFilter = True
              end
              object DBGEdicaoPRO_ERRO: TdxDBGridMaskColumn
                Color = clWhite
                DisableEditor = True
                MinWidth = 120
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_ERRO'
              end
            end
          end
          object TSConferencia: TdxTabSheet
            Caption = 'Confer'#234'ncia'
            object DBGPedidos: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1285
              Height = 620
              Bands = <
                item
                  Caption = 'Pedido'
                end
                item
                  Caption = 'Separa'#231#245'es'
                end
                item
                  Caption = 'Pre'#231'o Venda'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'IDFK'
              ShowSummaryFooter = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
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
              DataSource = DTSPedidos
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              PreviewFont.Charset = ANSI_CHARSET
              PreviewFont.Color = 12092957
              PreviewFont.Height = -12
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              object DBGPedidosDEPK: TdxDBGridMaskColumn
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DEPK'
                SummaryFooterType = cstCount
                SummaryFooterField = 'IDFK'
                SummaryFooterFormat = '0'
              end
              object DBGPedidosITEM: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Sorted = csUp
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ITEM'
                SummaryFooterType = cstCount
                SummaryFooterField = 'IDFK'
                SummaryFooterFormat = '0'
                DisableFilter = True
              end
              object DBGPedidosARTIGO: TdxDBGridMaskColumn
                Visible = False
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ARTIGO'
              end
              object DBGPedidosSKU: TdxDBGridMaskColumn
                Width = 110
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SKU'
              end
              object DBGPedidosDECP: TdxDBGridMaskColumn
                Width = 250
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DECP'
              end
              object DBGPedidosDGCP: TdxDBGridMaskColumn
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DGCP'
              end
              object DBGPedidosUCOM: TdxDBGridMaskColumn
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'UCOM'
              end
              object DBGPedidosQTDE: TdxDBGridMaskColumn
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
              object DBGPedidosQTRL: TdxDBGridMaskColumn
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
              object DBGPedidosQTSP: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 1
                RowIndex = 0
                FieldName = 'QTSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'QTSP'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGPedidosRLSP: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 40
                BandIndex = 1
                RowIndex = 0
                FieldName = 'RLSP'
                SummaryFooterType = cstSum
                SummaryFooterField = 'RLSP'
                SummaryFooterFormat = '0'
                DisableFilter = True
              end
              object DBGPedidosVPRC_COM: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 80
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VPRC_COM'
                DisableFilter = True
              end
            end
          end
          object TSErros: TdxTabSheet
            Caption = 'Erros'
            object DBGErros: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1285
              Height = 620
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
              Color = 9395
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyDown = DBGEdicaoKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = 16048829
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clBlack
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSErros
              Filter.Active = True
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -13
              HeaderFont.Name = 'Segoe UI'
              HeaderFont.Style = [fsItalic]
              HideSelectionColor = 14789952
              HighlightColor = 14789952
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
              PreviewFont.Charset = ANSI_CHARSET
              PreviewFont.Color = clBlack
              PreviewFont.Height = -12
              PreviewFont.Name = 'Segoe UI'
              PreviewFont.Style = [fsItalic]
              ScrollBars = ssVertical
              object DBGErrosC_ID: TdxDBGridColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = False
                Width = 81
                BandIndex = 0
                RowIndex = 0
                FieldName = 'C_ID'
              end
              object DBGErrosPRO_DERO: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DERO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGErrosPRO_CART: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = False
                Width = 66
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CART'
              end
              object DBGErrosPRO_CPRO: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 70
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CPRO'
              end
              object DBGErrosPRO_DGCP: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DGCP'
              end
              object DBGErrosPRO_DUNI: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_DUNI'
              end
              object DBGErrosPRO_UCON: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 160
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_UCON'
              end
              object DBGErrosPRO_CDET: TdxDBGridColumn
                Color = clGray
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_CDET'
              end
              object DBGErrosPRO_QTDE: TdxDBGridMaskColumn
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'PRO_QTDE'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGErrosPRO_ERRO: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Width = 440
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRO_ERRO'
              end
            end
          end
        end
        object PNLRodape: TPanel
          Left = 0
          Top = 647
          Width = 1292
          Height = 0
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object PBPrincipal: TProgressBar
            Left = 0
            Top = 0
            Width = 1292
            Height = 0
            Align = alClient
            TabOrder = 0
          end
        end
        object PNLConsultaRodape: TPanel
          Left = 0
          Top = 647
          Width = 1292
          Height = 55
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object PNLDescricao: TPanel
            Left = 0
            Top = 0
            Width = 1292
            Height = 35
            Align = alTop
            BevelOuter = bvNone
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -27
            Font.Name = 'Segoe Print'
            Font.Style = [fsBold]
            Locked = True
            ParentFont = False
            TabOrder = 0
          end
          object DBGConsultaPedido: TdxDBGrid
            Left = 0
            Top = 35
            Width = 1292
            Height = 20
            Cursor = crHandPoint
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelMaxRowCount = 1
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            Ctl3D = True
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clBlack
            BandFont.Height = -13
            BandFont.Name = 'Segoe UI'
            BandFont.Style = [fsItalic]
            CustomizingRowCount = 2
            DataSource = DTSEdicao
            Filter.DropDownCount = 1
            Filter.MaxDropDownCount = 1
            Filter.Criteria = {00000000}
            GroupPanelColor = clNone
            GroupPanelFontColor = clNone
            GroupNodeColor = clNone
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -13
            HeaderFont.Name = 'Segoe UI'
            HeaderFont.Style = [fsItalic]
            HideFocusRect = True
            HideSelection = True
            HideSelectionColor = 14789952
            HideSelectionTextColor = clWhite
            HighlightColor = 14789952
            HighlightTextColor = clWhite
            LookAndFeel = lfUltraFlat
            MaxRowLineCount = 1
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = ANSI_CHARSET
            PreviewFont.Color = clBlack
            PreviewFont.Height = -11
            PreviewFont.Name = 'Segoe UI Semibold'
            PreviewFont.Style = [fsBold, fsItalic]
            ScrollBars = ssNone
            ShowGrid = False
            ShowHeader = False
            ShowPreviewGrid = False
            object DBGConsultaPedidoPRO_DVEN: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PRO_DVEN'
            end
            object DBGConsultaPedidoPRO_DCLI: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Width = 484
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PRO_DCLI'
              StoredRowIndex = 1
            end
          end
        end
      end
    end
  end
  inherited TConsulta: TIBTransaction
    Left = 1024
    Top = 120
  end
  inherited SQLConsulta: TIBSQL
    Left = 1056
    Top = 120
  end
  inherited QConsulta: TIBQuery
    Left = 1024
    Top = 152
  end
  inherited Consulta: TIBQuery
    SQL.Strings = (
      
        'SELECT   PK.ID,PK.DEPV,FK.ID AS IDFK,FK.ITEM,FK.IDCP,CP.ARTIGO,C' +
        'P.SKU,FK.DECP,FK.DGCP,FK.UCOM,FK.QTDE,FK.QTRL,FK.QTSP,FK.RLSP,FK' +
        '.VPRC_COM,'
      
        '         (SELECT COUNT(*) FROM PED_VEN_ITE_004 AS PV WHERE PV.ID' +
        'PK = FK.IDPK AND PV.IDCP = FK.IDCP) AS IS_UNQ'
      'FROM ped_ven_cab_004 AS PK'
      'JOIN ped_ven_ite_004 AS FK ON (FK.IDPK = PK.ID)'
      'JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)'
      'WHERE    PK.DEPV = '#39'0'#39
      'ORDER BY FK.ITEM')
    Left = 1024
    Top = 184
  end
  inherited DTSConsulta: TDataSource
    Left = 1056
    Top = 184
  end
  inherited TEdicao: TIBTransaction
    Left = 1120
    Top = 120
  end
  inherited SQLEdicao: TIBSQL
    Left = 1152
    Top = 120
  end
  inherited SPEdicao: TIBStoredProc
    Left = 1216
    Top = 120
  end
  inherited TEvent: TIBTransaction
    Left = 1248
    Top = 120
  end
  inherited SPEvent: TIBStoredProc
    Left = 1280
    Top = 120
  end
  inherited EEvent: TIBEvents
    Left = 1312
    Top = 120
  end
  inherited ILMenu: TImageList
    Top = 192
    Bitmap = {
      494C01010C000E00040024002400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000900000009000000001002000000000000044
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
      0000EFEFEF000000000000000000F2F2F200F2F2F20000000000EFEFEF000000
      000000000000000000000000000000000000EFEFEF000000000000000000F2F2
      F20000000000EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00EFEF
      EF0000000000F3F3F30000000000DEDFDF00E4E4E400F5F5F500F1F1F1000000
      0000EFEFEF00000000000000000000000000EFEFEF00F3F3F300DBD7D700E1E0
      E000F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00EFEF
      EF0000000000F3F3F30000000000DEDFDF00E4E4E400F5F5F500F1F1F1000000
      0000EFEFEF00000000000000000000000000EFEFEF00F3F3F300DBD7D700E1E0
      E000F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF0000000000F3F3
      F30000000000D6D8D700B7BABA009D9F9E00A3A0A100BEBCBD00EEEFEF000000
      000000000000EFEFEF00000000000000000000000000F3F4F400D0CBCB00A9A2
      A100D3D2D200F3F4F400F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADB
      DC00AAACAC00979A9A008B8D8E009698990099979900928F8F009A999900C3C3
      C30000000000F3F3F300EFEFEF00EFEFEF0000000000F2F3F300D8D4D300C0B7
      B600A6A1A100C0BFC000EEEEED00F0F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00EFEFEF00000000000000000000000000E9E9E900A3A5A6008E91
      90009094920096979800999B9B009C9EA000A1A2A300A19FA0009B979700908C
      8D006A696F00E4E4E40000000000F3F3F300EEEEEE00F7F8F800D8D0D000B1AA
      AA00CFC7C500AAA3A300D4D3D300F3F2F2000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900F6F6F600F5F5F500F4F4
      F400F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200FDFDF700E3E3
      ED00DFDFEB00FFFFF900F4F4F400F6F6F600F6F6F70000000000E3E3EE00E7E7
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0EF000000
      0000F0F0EF00000000000000000000000000F0F0EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E0E000E7E6E600E1E0E000DBDA
      DA00D8D6D600D9D7D700E2E1E000F3F4F400F2F3F300F3F3F300F2F3F300F1F1
      F100EFF0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF0000000000F2F2F20000000000EDEDED00A2A5A5007F82820091939300989A
      9A009A9C9D009B9D9F009D9F9F009D9EA000A5A5A600A2A2A2009E9F9E00A2A4
      A300959497003531380095949700EFEFEF00F4F5F400ECEAEA00D4C8CA00CDCA
      C900B2AEAE00C3BAB900D9D3D300F1F2F2000000000000000000000000000000
      0000000000000000000000000000F7F7F700C7C7C700C3C3C300C2C2C200C0C0
      C000C1C1C100C0C0C000C0C0C000C0C0C000C0C0C000C6C6C200C8C8C3000505
      790001017800CCCCC200D0D0C700C1C1C200CDCDC700D2D2CE00171781001616
      8100E6E6F2000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F1F1F100EDEFEF00F1F1F100F1F1F100F1F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0EF00F0F0
      EF00EEEFF100F1F1F100F1F1F100F1F1F000EFEFEF00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600ADA8A800F7F6F600EBEAEA00E5E3
      E300E1DFDF00E2E0E000DCDAD900DBD9DA00D1CFCF00CECACB00D0CDCC00E2E1
      E000F2F0F000F1F1F100F1F1F100F2F2F200F2F3F300F2F2F20000000000F1F1
      F100F0F0F0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF0000000000F2F2F20000000000EDEDED00A2A5A5007F82820091939300989A
      9A009A9C9D009B9D9F009D9F9F009D9EA000A5A5A600A2A2A2009E9F9E00A2A4
      A300959497003531380095949700EFEFEF00F4F5F400ECEAEA00D4C8CA00CDCA
      C900B2AEAE00C3BAB900D9D3D300F1F2F2000000000000000000000000000000
      0000000000000000000000000000F1F1F100BEBEBE00C2C2C200C3C3C300C4C4
      C400C3C3C300C4C4C400C4C4C400C3C3C300C3C3C400D2D2C8001C1C82000000
      7C0003037F0003037A00ACACB800DFDFCC00C1C1C0000000710001017D000000
      74003F3F94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00EFEF
      EF00F7F8F900FAFFFF00FAFFFF00FAFFFF00F8FDFF00F1F3F400F1F3F300F1F2
      F200F0F1F100F0F0F100000000000000000000000000F8FBFF00FCFFFF00FCFF
      FF00FBFFFF00FBFFFF00FAFEFF00F8FBFF00F0F0F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100BEBABA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8F8FC00F4F4F200F7F8F600F6F6F600F6F7F700F5F6F600F9F8
      F800EAEAEA00E0DFDF00DDDCDB00D7D5D400D1CECD00DAD8D600DBD8D700DFDC
      DC00ECEBEB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F5F5F500E5E5E500BEC0C000808483008F9191009A9B9C009A9B9C009C9E
      9F009B9E9E009D9FA0009A9FA0009CA0A100A5A9AA00A5A4A7009EA0A3009B9E
      9F00A5A4A6007F7C7E004841490067646600C8C8C900F4EEEF00D0C8C700E4DA
      D900DCD7D500B4B0B000DBD9D900F2F2F2000000000000000000000000000000
      0000000000000000000000000000F3F3F300BEBEBE00C2C2C200C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C3C3C300C3C3C300CDCDC5008888BB000000
      75000B0B8700020288000D0D87009C9CB4001A1A8B00040489000D0D89000000
      7600A3A3D3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F9
      FA00B6B2A9007C4904008D590A00905E0E00976B2B00E4D9D800E9D9D700E8E1
      DF00EAE5E200E8E5E200E7E8E700E6E5E300F4F6FC009C8452007B5704008160
      1200806113008C670D0091690200997D3B00FBFEFF00F0F0F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEAE900CCC9C900FFFFFF00FDFDFD00FEFE
      FE00FFFFFE00E4E3F8007B71DF00FFFFFF00FEFEFD00FDFDFD00FAFAFA00FBFC
      FC00FBFBFB00FDFEFE00FEFEFE00FCFCFC00F8F9F900FAFAFA00F6F7F700E8E8
      E800EDEDED000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400F4F4F4009F9E
      9E008D8C8C008E8F8E00979999009A9C9C009B9D9E009D9EA1009C9FA0009DA2
      A3009DA1A2009B9FA000A0A4A500A1A5A600ADB0B100ADACAE00A5A6A7009FA1
      A300A1A3A80095959900676A6F0078797B00E2DCDC00EDE5E600E6E1E200DAD5
      D700C1BBBA00D6CFCF00F0EFF000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300C1C1C100C5C5C500C5C5C500C4C4
      C400C4C4C400C4C4C400C5C5C500C4C4C400C4C4C400C4C4C400E3E3CC005757
      AF00000084000E0E8E000C0C900000008800090990000E0E8F0000007E006F6F
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F100FBFE
      FF00A2835B0098661E00A1733600A4763400AD864D00E5D3C900B28C6700BCA1
      8400FCF3F000FFF6F400FFFAFA00FFFFFF00FFFFFF00AD936A0089621A00906F
      2B0094712B00997830009C772800A48A5600FBFEFF00F0F0F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDEDF00E0DEDE00FFFFFF00FEFEFE00FCFC
      FC00FEFEFC00F5F4FB007E75E100A79FEB00FFFFFF00FAFAFA00FBFBFB00F9F9
      F900FAFAF900FAFAFA00F8F8F800F8F8F800F7F7F700F7F7F700F9F9F900F6F7
      F700EFEFEF000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF000000000000000000DFDFDF0074787700898C
      8C009193930097999A00999B9B009B9D9D009D9E9F009DA0A2009EA1A2009BA0
      A1009FA3A400A1A5A600A2A6A700A3A7A800ADB1B300AEAEB000AAABAA009FA1
      A400ACABB000979A9E0060646900BAB8BA00E7E4E200B7B4B200EAE3E300F4ED
      EE00DDD7D800E7E5E400F1F2F100F0EFF0000000000000000000000000000000
      0000000000000000000000000000F4F4F400C6C6C600C7C7C700BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00CACACA00C8C8C800C8C8C800C9C9C800D8D8
      CF005A5AB40001018E0011119700111198001111970002028F004E4EB7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F100FAFE
      FF00A6875F009A662300A0733400A3733300AD864E00D9C2B90092663400A280
      5900F7E8E500F9EBE700F9EEEC00FBF4F200FFFFFF00A28A67007A511600835E
      290087622700906E2D00936D23009F865400FBFEFF00F0F0F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBDADA00E6E5E500FFFFFF00FDFDFD00FBFB
      FB00FDFDFD00FFFFFF004C3DD8004435D700FFFFFD00FDFDFC00F9F9F900F9F9
      F900FAFAFA00F9F9F900F8F8F800F9FAF800F9FAF700F8F8F800F8F8F800F0F0
      F000EFEFEF000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF000000000000000000DFDFDF0074787700898C
      8C009193930097999A00999B9B009B9D9D009D9E9F009DA0A2009EA1A2009BA0
      A1009FA3A400A1A5A600A2A6A700A3A7A800ADB1B300AEAEB000AAABAA009FA1
      A400ACABB000979A9E0060646900BAB8BA00E7E4E200B7B4B200EAE3E300F4ED
      EE00DDD7D800E7E5E400F1F2F100F0EFF0000000000000000000000000000000
      0000000000000000000000000000F4F4F400C9C9C900CDCDCD00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CDCDCD00CDCDCD00CDCDCD00CCCCCD00DBDB
      D000D7D7CF000000970012129E001212A10011119F0016169C00D6D6EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFE
      FF00AA8961009C662400A3723400A5743400AC825100CEBDB4008E633C00A07F
      6200F6DDD900F7E1DB00F6E5E200F8EAE600FFFFFF009B8264006D4210007950
      21007A5122008C672D008E6723009B815400FBFEFF00F0F0F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0DFDF00EBEAEA00FFFFFF00FBFBFB00FDFD
      FD00F8F9F800EBEADE00A299DC000000CB00C2BCED00FDFCF400F8F8F800FCFD
      FD00FDFDFD00FBFBFB00FEFEFA00F6F6F700E2E0F500FBFCF800F5F5F500F4F4
      F400EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF000000000000000000AFAFAF006F707000909492009395
      9500979B99009A9D9C009C9E9E009EA0A1009CA2A3009CA0A1009EA2A300A3A7
      A800A2A6A700A4A9AA00A1A4A400A5A9AA00B0B2B300AEAFB000AAACAD00A0A0
      A300A3A4A800A2A9AC00A9ADAD00EDE6E700E7E2E300E6E2E300B9B5B400CFCA
      CA00F2EAEB00F1EFF00000000000EFEFEF000000000000000000000000000000
      0000000000000000000000000000F4F4F400CCCCCC00D0D0D000D5D5D500D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D4D4D500E1E1D800CDCD
      CE0016169A000D0DA1001414A4000A0AA2001313A4000C0C9F000A0A9400FAFA
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9FE
      FF00AB8B6200A0672500A5733700A8753700AC824F00BEB0A6007F5632009675
      5A00F5D5CE00F6DAD300F4DDD900F5E1DD00FFFFFF00987E640065390E007148
      1F007249200089622B008C632200997F5400F9FCFF00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E2E200EEEDED00FDFDFD00FCFCFC00FEFE
      FE00E4E3E300DFDEDA00FDFBF0000000C4002C16CF00FFFFE500DEDBDC00DDDA
      D900DBD9D900EDEDDF00FFFFEC005D4EE900B7B1ED00FFFFF700F6F6F600F0F0
      F000EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF0000000000DCDDDD00898989008F8F8F00969796009798
      98009A9C9C009D9E9F009C9FA00099A0A1009CA0A1009FA3A400A0A4A500A1A5
      A600A2A6A800AFB1AA004C454700B3B9BA00B0B4B500AFB2B300ABABAD00AEAF
      B000A7AAAC009FA3A700CAC8CA00D1CBCD00DCD6D500F3EDEE00F1ECEC00D8D2
      D200C6C2C200D5D5D500F4F4F400EFEFEF000000000000000000000000000000
      0000000000000000000000000000F6F6F600D0D0D000CFCFCF00BDBDBD00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BDBDBE00C5C5BF00B5B5B9000000
      93000A0AA2001313A7000606AA005F5FC5000F0FAD001414A8000C0CA4000909
      9400D6D6E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F0F000F8FD
      FF00AF8D6300A3692500A9743700AC763800AB825100C6C2C1009C827200B19E
      9300F4DCDC00FFE5E700FFECF000FFF1F500FFFFFF00947B6900522806006039
      1900613A1A00875E2A008B602200997D5300F9FDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E700F4F4F300FEFEFE00FAFAFA00FFFF
      FF00CFCCCB00FFFFFF00FFFFFF00736CDF000000C700C4BDF500FFFFFF00FDFD
      FE00FFFFFF00D6D3F7001F09E1007B70E500FFFFF900F7F7F700F2F2F200EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B6008C8B8B0097979700959A99009B9C
      9D009D9F9E009C9D9F009A9EA1009CA0A100A3A7A800A1A5A600A0A4A500A3A7
      A700A4A7AA00A4A8A20088838300AEB3B300AFB4B500AEB2B200ABAEB000A9AC
      AD00ADADAE00ADACAF00A8AAAD00A6A6A800AFAEAE00C7C2C200F1ECEA00E4DD
      DF0095959700C0C0C100F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000F6F6F600D4D4D400D5D5D500D4D4D400D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500E2E2D8002C2C9E000505
      9C001414A5000000A7008181CF00FAFADC009C9CD5000000A5001414A8000000
      96005151B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F0F000F8FD
      FF00B38E6500A86C2700AC773A00B07A3B00AB7A4100AD896300BA967300C1A4
      8600A07A50009F7347009E754A009C744A00A47D5500835A2F00784E20007850
      2400795124008B602C00895D2100997B5300F9FDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECEBEB00F8F7F700FBFBFB00FCFCFC00FFFF
      FF00C8C5C400FFFFFF00FFFFFA00BEBBF0000000CA003228D900FFFFFA00FFFF
      FC00D3CEF4000000DB001E09E600EDEDE400FEFEFA00F4F4F400F7F6F600F1F1
      F100EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200E4E5E500A19E9F00949091009A9A9A00999B9B009C9E
      A000999C9E009CA0A2009FA4A400A3A6A700A1A5A600A2A6A700A2A6A700A4A8
      A900A6A9AA00A3A8A900AAAEB000A6ACAC00B3B8BA00B2B6B900A5A8AA00ACAE
      AF00AAADAD00A9ACAD00ABACAE00ACAFB000ABB0B100A3A4A600C9C7CA00B9B6
      B7009A999D00BCBBBB00EAEAEA00F1F1F1000000000000000000000000000000
      0000000000000000000000000000F7F7F700D6D6D600D9D9D900DCDCDC00DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00E7E7DE00AAAAD5000000
      A0000000A500A4A4DA00F7F7E000D9D9DA00F6F6DB009A9AD7000000A7000404
      9F00ACACE2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F0F000F7FD
      FF00B6916700AC6E2900B1793A00B27C3E00B4804500B37F4400B6874F00BD94
      6500A67236009864240096632400936123008E5D200094652C00966B32009467
      300093672F008F642E008A5A1F00997B5500F9FDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEAEA00FCFCFC00FCFCFC00FBFBFB00FFFF
      FF00CAC6C500FFFFFF00F9F9F900FFFFFE005353DB000000CF009991E9009488
      EA000000D6001D0AE000F4F3F800EDEDE300F7F7F700F5F5F600F5F4F400F3F3
      F300EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200E4E5E500A19E9F00949091009A9A9A00999B9B009C9E
      A000999C9E009CA0A2009FA4A400A3A6A700A1A5A600A2A6A700A2A6A700A4A8
      A900A6A9AA00A3A8A900AAAEB000A6ACAC00B3B8BA00B2B6B900A5A8AA00ACAE
      AF00AAADAD00A9ACAD00ABACAE00ACAFB000ABB0B100A3A4A600C9C7CA00B9B6
      B7009A999D00BCBBBB00EAEAEA00F1F1F1000000000000000000000000000000
      0000000000000000000000000000F7F7F700DADADA00D9D9D900CFCFCF00D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000E2E2D3009595
      C4009090C500E5E5D500CECECF00D3D3D300DBDBDC00F2F2E800ACACE700B8B8
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F0F000F7FC
      FF00B9946900B1722A00B4783700B26F2600B0722D00B3793600B67F4100BB8D
      5900AA7334009A5D1700985C1800925A17008F5717008B53130086501300834F
      1100824E13008B5E28008B5B20009A7A5500F9FDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBE9E900FDFEFE00FCFCFC00F9F9F900FFFF
      FF00CCCACA00FFFFFF00F9F9F900FFFFFB00EEEAF6000000CE001D05D7000400
      D7000000D800E9E7F600FFFFF300E8E8E800F7F7F700F3F4F300F4F4F500F3F3
      F300EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100B6B6B6008C8B8C00999A9A00979C9B0098999D009599
      9A009DA2A200A1A5A600A1A5A600A2A6A700A1A5A600A1A5A600A3A7A800A5A9
      AB00A6AAA900AAADAE00A6ABAD00A8AEB000D9D6D900E7E1E200C7C6C800A0A2
      A600A7ABAC00A9ABAC00A9ABAC00ACACAE00ABADAF00AFB0B200A5A6AB009294
      99009FA2A700A9AAAC00E8E8E800F2F2F2000000000000000000000000000000
      0000000000000000000000000000F8F8F800DCDCDC00D9D9D900C4C4C400C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500CFCF
      C800D0D0C800C5C5C500C4C4C500CCCCCC00DEDEDE00E7E7E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F0F000F6FC
      FF00BF9A6D00B7742500BB854500CFB59400D2BA9A00D3BB9E00D5BDA300DAC6
      AD00D5C0A400CCB29100CBB19200CDB39300CCB29200C9B19300CAB19200CAB1
      9300C7B191009A703E00885419009B7A5500F9FDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECEBEB00FEFFFF00FAFAFA00FBFBFB00F9F9
      F900D1CFCE00FFFFFF00FDFDFA00FFFFFC00D4D8F1000800D1001900D7002513
      DB00F6F4F800FFFFF900EBEBEB00EFEEEE00F5F5F500F5F3F500F5F5F500F2F1
      F200EFEFEF000000000000000000000000000000000000000000000000000000
      0000F2F2F200E9EAEA00A1A0A100969695009B9A9A0091959800979B9C00A1A5
      A600A0A4A5009FA3A400A1A5A600A0A4A500A3A7A800A4A8A900A5A9AA00A7AB
      AB00A9ADAF00A9AFB200A5ADAF00CECFD000EBE3E600E1DCDD00EAE3E300E8E8
      E700B7B4B700A4A8A900A6A8AA00AAAAAB00ACAAAD00AAA9AB00ACABAD00ACAB
      AC00A0A0A200A09EA200DDDDDD00F2F2F2000000000000000000000000000000
      0000000000000000000000000000F8F8F800DEDEDE00E0E0E000E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E3E3E300DFDFDF00E8E8E800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6FB
      FF00C4A06F00BB772300C28F5300EDF4F300F0F7FC00F3F8FB00F5FAFC00F8FD
      FD00FBFEFF00FAFDFF00FDFEFF00FDFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5805400854F13009C7A5800F9FDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEEEE00FCFCFC00FAFAFA00F9F9F900F5F6
      F600D5D2D200FFFFFF00FFFFFC005042D9000400CD000000CF000700D5000E00
      D900B5B6EE00FFFFFA00E7E6E700F1F1F100F4F4F500F5F5F500F4F4F400F0F0
      F000EFEFEF000000000000000000000000000000000000000000000000000000
      0000F3F3F300E0E0E0008E8F8E009599990092979700989D9F00A0A5A6009EA2
      A300A0A4A500A1A5A600A1A5A600A2A6A700A3A7A800A5A8AA00A7ABAD00A9AC
      AF00ACAFB200A3AAAF00C3C5CA00F2EAEB00E2DEDF00E1DCDD00E1DCDD00E2DD
      DE00ECE4E900D0CCCF00AFB0B400A2A5A800A7A9AB00ABA9AB00AAA9AB00AAA8
      AB00A9A9AA00A2A1A300E1E1E100F2F2F2000000000000000000000000000000
      0000000000000000000000000000F9F9F900E0E0E000E2E2E200E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E5E5E500E0E0E000EAEAEA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF0F000F5FB
      FF00C9A47200C27E2600C48F4F00E6E4E200E9E6E100E7E4E000E9E7E100ECEB
      E600EFEDEA00EBE8E500ECEBE600EEECE800EFEEEA00F2F0ED00F4F1EF00F5F4
      F200F6F6F400A2794A00865013009D7C5800F9FDFF00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00FCFCFC00F9F9F900FBFBFB00F1F0
      F000DDDCDA00FFFFFF001F19CE000000CB001811D200D9D4F500978DE9000000
      D5000000D700F5F3F900EAEAE100F6F6F600F5F4F500F3F4F300F2F2F200F1F1
      F100EFEFEF000000000000000000000000000000000000000000000000000000
      0000F3F3F300E0E0E0008E8F8E009599990092979700989D9F00A0A5A6009EA2
      A300A0A4A500A1A5A600A1A5A600A2A6A700A3A7A800A5A8AA00A7ABAD00A9AC
      AF00ACAFB200A3AAAF00C3C5CA00F2EAEB00E2DEDF00E1DCDD00E1DCDD00E2DD
      DE00ECE4E900D0CCCF00AFB0B400A2A5A800A7A9AB00ABA9AB00AAA9AB00AAA8
      AB00A9A9AA00A2A1A300E1E1E100F2F2F2000000000000000000000000000000
      0000000000000000000000000000F9F9F900E3E3E300DEDEDE00C4C4C400C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C4C4C400CDCDCD00E5E5E500EBEBEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF1F000F4F8
      FF00D1AC7500CC882900CA975100EAE8E500EBEBE800EBE9E500E8E7E300EAE8
      E300EDECE800ECEAE700E9E7E300ECEAE500EDEBE700EFEDEA00F0EEEA00F0EF
      ED00F0F0EE00A1774900875114009D7E5900F9FDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200FBFBFB00F9F9F900FBFBFB00F4F3
      F300C4C0C100DBDACB00726DC2003B2AC600EBE9EC00FFFFFD00FFFFFF002920
      E0000300DA003931E600F7F6DF00FCFCF900F4F4F400F3F3F400F3F2F200F3F2
      F200EFEFEF000000000000000000000000000000000000000000000000000000
      0000F5F5F500D0CECE00888B8A00959A9B009C9FA2009EA2A3009DA1A2009FA3
      A400A1A5A500A1A5A600A2A6A700A3A7A800A3A8A900A7AAAB00A9ACB000A9AF
      B300A4AAAD00C1C1C500FEF6FA00E0D8DB00EFEAEA00E8E3E400E4DEDF00E3DE
      DE00E3DDDF00E9E0E200E1DBDD00C6C4C500AAAAAC00A2A2A400A7A6A800AAA8
      AB00A7A6A800A1A0A200E2E2E200F2F2F2000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E4E4E400E7E7E700E7E7E700E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E5E5E500EBEBEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF1F000F4F8
      FF00D5B27800D4932A00CE9D5300EDEBE900EDECEA00EDECE800EBEAE600EBEA
      E500EBEAE500EFEDE900E7E5E000E9E8E200EBE8E500ECEAE600ECEBE700EBEB
      E700EAE9E700A2794A00895315009F7E5A00FBFFFF00F0F0F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300FAFAFA00FAFAFA00FAFAFA00F6F6
      F600F5F5F500F8F8F800FFFFFA00FFFFF300E7E5E100D5D2D200D7D4CF00E4E2
      D8002414DB000000DE002D24DB00FFFFF700F8F9F400F3F2F200F3F2F200EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000EFF0F00096989900929597009DA1A2009EA2A3009DA1A2009FA4A500A0A4
      A500A1A4A500A1A6A700A1A6A700A3A8A900A2A9A900A8AEAE00A9AEAF00A3AA
      AC00C6C9CB00FFFFFF00B0AAAC0068676800A09C9D00EBE6E700E8E3E400E5DF
      E000E5DFE000E3DDDE00E5DFE000E7E0E100DBD6D900C6C2C700A6A4A500A09F
      A300A5A4A600A2A0A300DEDEDF00F2F2F2000000000000000000000000000000
      0000000000000000000000000000F9F9F900E6E6E600E8E8E800E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E8E8
      E800E9E9E900E8E8E800E9E9E900E9E9E900E7E7E700EDEDED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF1F000F2F7
      FF00DAB77A00DB9D2A00D2A25400EEEDEC00F1EFEC00EFEDEA00EEEBE900ECED
      E700ECEAE800EDEBE800EBE9E500E5E3DE00E7E5E100E9E7E200E8E6E200E7E8
      E400E5E4E200A27948008A571600A0825B00FBFFFF00F0F0F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200FAFAFA00F9F9F900F8F8F800F8F8
      F800F7F7F700F8F8F800F9F9F900F8F8F800FBFBFB00F5F5F500F6F6F600FFFF
      F500E1DFEF000000DC000000DD004635E800E6E6F000F5F4F200F3F2F200EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000DBDBDA008F9498009FA3A6009DA1A2009EA4A5009FA2A3009FA2A3009BA1
      A500989DA000979C9D009EA3A400A6ABAC00A6ADB000A6ACAE00ADB1B500D7D7
      D800FFFFFF006C6B6B004143420080818100151515007C777900ECE6E700E6E0
      E100E6E0E100E5DFE000E2DCDD00E2DDDB00E4DEDE00E3DCDC00E0D9DB00C6C4
      C600A9A8AA0099979A00DDDDDD00F2F2F2000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E8E8E800E8E8E800DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00E1E1
      E100EAEAEA00EFEFEF00F0F0F000F2F2F200F3F3F300F3F3F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0EFF000F1F6
      FF00E0C37D00E1A92F00D8AD5600F0EFF000F4F4F200F2F2EE00F1EFED00F0EE
      EC00EFEFEA00EFEDEB00EFEEED00E9E7E300E4E1DC00E3E0DC00E2E0DC00E0DF
      DA00D8D7D600A37C4800905E1800A4875E00FBFEFF00F0F0F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300FAFAFA00F8F8F800F9F9F900F6F6
      F600F8F8F800F7F7F700F6F6F600F6F5F600F5F5F500F6F6F600F4F5F400F3F4
      F500FFFFF600F2F1F000D8D5EF00FFFFF200F7F6F300F4F3F300F3F1F100EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000F5F5F400A3A3A5009C9FA100A0A4A5009DA1A2009BA2A3009BA1A200AEB0
      B200CBC8CA00E0D8D800E5DADB00E3DADB00E6DADC00E0D4D700E4DADC00F1EA
      EB00EAE4E500FFFFFF0092919000000000003F3F3E00E6E1E200EEE8E900E5DF
      E000E5E0E000E4DEDE00E3DCDF00E1DDDB00E0DBDA00DED9DB00DED8D900E2DA
      DB00E5DFE000C7C5C400E7E7E700F2F2F2000000000000000000000000000000
      0000000000000000000000000000FAFAFA00EAEAEA00E6E6E600D2D2D200D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3D300D7D7
      D700F2F2F200CACACA008E8E8E009696960080808000BABABA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0EFF000F1F5
      FF00E3CA7F00EFC13100DBB65900F1F0F000F7F5F500F5F3F100F3F1EE00F1F0
      ED00F1EFEC00EFEFEC00F0EEEA00EEEEEA00E7E5E000E0DED900DEDBD600D9D7
      D300CFCFCC00A58048009A681B00A78B5E00FAFEFF00F0F0F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200FBFBFB00F7F7F700F5F5F500F8F8
      F800F8F7F800F6F6F600F6F6F600F7F7F700F8F8F900F3F3F300F4F5F500F4F5
      F500F4F4F400F5F6F300F7F6F200F4F3F200F2F2F300F4F2F200F2EFEF00EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000F5F5F400A3A3A5009C9FA100A0A4A5009DA1A2009BA2A3009BA1A200AEB0
      B200CBC8CA00E0D8D800E5DADB00E3DADB00E6DADC00E0D4D700E4DADC00F1EA
      EB00EAE4E500FFFFFF0092919000000000003F3F3E00E6E1E200EEE8E900E5DF
      E000E5E0E000E4DEDE00E3DCDF00E1DDDB00E0DBDA00DED9DB00DED8D900E2DA
      DB00E5DFE000C7C5C400E7E7E700F2F2F2000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E9E9E900ECECEC00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00FCFCFC00929292006E6E6E005F5F5F006464640000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0EFF000F0F4
      FF00EDD68200C5A12800D7B75800F6F5F300FBFAFB00F9F8F600F7F6F400F6F5
      F300F5F4F200F3F3F000F2F1EE00F2F1EE00EFEEEC00E2DFDC00DAD9D500D4D3
      D000C5C5C300A3824700835D1500B0946300F8FDFF00F1F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00EEEEEE00EEEEEE00F3F3F300F6F6
      F600EFF0EF00F5F5F500F5F5F500EEEEE600F5F2DC00F8F9F900F5F5F500F3F3
      F300F3F3F300F3F2F200F3F3F300F4F3F300F3F2F200F3F1F100F1F0F000EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000F5F5F400A6A8A9009B9FA0009DA2A400A6AAAA00BDBCBE00E2D9DC00E7DD
      DF00E0D9D700E0D9D800E6DEDE00E6DDDC00D1CBCE00CEC7C500C9C4C200CBC3
      C400E9E1E300EEE7E900FFFBFB00ECE7E700D3CFCE00F6F2F200E5DFE000E5DF
      E000E3DDDE00E4DEDF00E3DCDE00E0DCDC00E5DFDF00E2DBDC00DFD9DA00DDD6
      D800DAD2D300E6E1E200F1F0F100000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00EBEBEB00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00ECEC
      EC0000000000909090004A4A4A0063636300F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0EFF100F0F3
      FD00F0DA7D00B79A1B00D3B64F00EEEADE00F2EFEB00F0EDE800EEEBE600EDE9
      E300EDE9E300EBE7E100E9E5DF00E6E3DC00E6E2DC00E1DED600D2CEC800C5C0
      B900B2AEA500A2823C00825E0E00B59B6100F7FBFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F7F7F400B6B2C300211AA500FFFFEE00F7F7F600F2F3
      F300F3F2F200F3F1F100F4F3F300F4F2F200F2F1F100F2F1F100F2F1F100EFEF
      EF00F0F0F0000000000000000000000000000000000000000000000000000000
      0000F1F1F100DDDCDC00CEC6C700E0D8D700E0D8D700DDD4D600ECE4E400EDE5
      E40090888F00655E6700565057006F676800A597920096888600AB9B9500AD9E
      99009F928A009E948E00BBB4B100E9E3E400F3ECEC00ECE4E400E8DFDF00E5DE
      DE00E6DFDE00E3DDDD00E8E2E300CCC6C700A8967800C9C2B900E7E2E200E0DA
      DB00ECECEC0000000000EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00E9E9E900ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EBEB
      EB00000000006464640076767600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0EF
      F000EEE9D500F5EBC200EBE3C600E2DAC900E2DAC700E1D9C700E1D9C600E0D8
      C600E0D9C700E0D9C800E1D9CA00E1DACC00E2DBCD00E4DED200E0DBCE00D9D1
      C200D6D0C200DCD3BE00E2D6BC00DED9CA00F2F3F600EFF0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FFFFF300615FCD000000CE00C7C7F600F4F4EF00EFEF
      EF00EFEFEF00F2F1F100F1F0F000F1EFEF00F1F0F000F1F0F000F0EFEF00EFF0
      F000F0F0F0000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200E8E6E600D9D2D200DAD1D200E8E0DE00ABA5A800100A
      1600342D3600786C6A00A5979000938986008C807A00AC9D9700AD9D9700AD9D
      9A00AE9F9A00A89A9500A2948D009A908800BDB4B000E5DFDF00FDF6F600F6EF
      EE00ECE5E400E2DDDC00E3DFDD00DCD6D600D6CEC400E2DCE000E3DDDD00EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000FEFEFE00B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0EF000000
      0000F0F0F400F0F0F600F0F1F600F1F3F600F1F3F500F1F3F500F1F3F500F1F3
      F600F1F3F500F1F3F500F1F3F500F1F3F500F1F3F400F1F2F400F1F3F500F3F4
      F600F4F4F700F2F4F800F2F5F700F1F2F400F0F0EF00F0EFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FFFFF200493DD700736EF000FFFFF300F0F0EF00F0F0
      F000F0F0F000EFEFEF00EFEFEF00EFF0F000EFEFEF00EFEFEF00EFF0F000F0F0
      F000F0F0F0000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200E8E6E600D9D2D200DAD1D200E8E0DE00ABA5A800100A
      1600342D3600786C6A00A5979000938986008C807A00AC9D9700AD9D9700AD9D
      9A00AE9F9A00A89A9500A2948D009A908800BDB4B000E5DFDF00FDF6F600F6EF
      EE00ECE5E400E2DDDC00E3DFDD00DCD6D600D6CEC400E2DCE000E3DDDD00EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF0F000F2F3F200EFF0F100E4DFDF00DCD6D300F3EAE500D9D0
      D2008D8589004942490033303A006957580097867E009D8D8400A7948C00A997
      8E00A9989000AD9C9300AE9A9800AE9C9700A3938C009D90870079747600A7A0
      A100D5CDCB00EADFE000E7DDDB00E6DEDD00E5DEE000E5E0E000F2F3F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF00F0F1F100F2F3F300EDEDEE00E2E1DD00EAE2
      E000F8EEED00F4ECE900C1B9B9006F676E00524950005D5053007C6B69009482
      7C00A1908800A5948D00AA9A9000AE9F9600B4A39C00887A79004F4245004F3F
      400072676A00CAC6C600E3E0DE00E9E4E300ECE9E900F1F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0EFEF00EFEFEF00F0F1F100F1F2F300EDED
      EC00E9E4E300E5E0DE00EBE2E000F4EBE900C8BEBD00948D9100655D65004F43
      49006655550083706F008F7E7800827271006D595C005B4B4F008F7D7D00B3A9
      A900FEFFFF00F4F6F600F2F3F300F0F1F100EFF0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0EFEF00F0EFEF00F0F1
      F100F0F1F200EFEFEF00EDEAEA00E5E3E200E6E1DD00E7E1DD00D7CFCD00B3AA
      AD00999095006B666900544C5400635C6300928A8F00B8B5B700DEDEE000F7F8
      F80000000000F0EFEF00EFEFEF00EFEFEF00EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0EFEF00F0EFEF00F0F1
      F100F0F1F200EFEFEF00EDEAEA00E5E3E200E6E1DD00E7E1DD00D7CFCD00B3AA
      AD00999095006B666900544C5400635C6300928A8F00B8B5B700DEDEE000F7F8
      F80000000000F0EFEF00EFEFEF00EFEFEF00EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0EF
      EF00EFEFEF0000000000F0F1F10000000000EFEFF00000000000F4F3F400F7F8
      F800F8F7F700F4F5F400F3F4F400F5F6F600F7F8F800F7F7F700F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E400D5D3D300D2D2D100EEED
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0EEED00D5D3D200E7E5E400EBE8E700ECEAE800CECD
      CD00C3C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEA00DFDFDF00CDCDCD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDBDA00E0DEDD00ECEAE900E6E4E300E6E4E300E4E2E100E8E6
      E600E2E2E200BDBDBD00D6D7D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD00DADA
      DA00E2E2E200AAAAAA00DEDEDE00F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      EC00D7D6D500E8E8E600E5E3E200E6E4E300E4E2E100E4E2E100E3E1E000E2E0
      DF00E2E2E200E8E6E700D4D3D200BBBBBA00F4F3F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDADA00D2D0D000DCDADA00BEBC
      BC007F7D7D00615F5F00E4E3E300F3F3F30000000000FDFDFB00FFFFFD000000
      0000000000000000000000000000D9DBDB00CCCDCD00F4F5F60000000000FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADAD900E1DE
      DD00E7E5E300E3E1E000E3E1E000E3E1E000E3E1E000E3E1E000E1DFDE00E1DF
      DE00E2E0DF00E2E0DE00EBE9E800EBE9E800BDBBB900D3D1D100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00E2E1E100D6D4D400CECCCC00E7E5E500D2D0D0005C5A
      5A009F9D9D00DBD9D900ECEAEA00F3F3F3000000000000000000000000000000
      0000EAEBEB00BABBBB0093959500A0A3A400999B9C00AFB1B300E8E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700DADADA00E6E5E400E2E0
      DF00E2E0E000E2E0DF00E2E0DF00E1DFDE00E2E0DF00E0DEDD00E1DFDE00DFDD
      DC00E7E5E400D8D6D500A09E9D00B6B4B300F4F2F200D7D5D300BDBDBA00E8E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000DDDBDB00BFBDBD00C7C4C400DDDBDB00E2E0E000E6E4E400D9D7
      D70000000000DFDEDE00D1CFCF000000000000000000F7F8F800BCBEBE00777A
      7A007477770091939300A3A5A500AEB0B200A1A3A400BDBFC000BEBFC000DFDF
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D7D700E2E1E000E3E2E200E1E0DF00E3E1
      E000E1DFDE00E1DFDE00E1DFDE00E0DEDD00E0DEDD00DDDBDA00E3E0DF00E8E8
      E600C3C4C6008E8E8C007576730064615C008D897D00D2D6D500D0CCF100B8B8
      C400C3C1C7000000000000000000000000000000000000000000000000000000
      000000000000E2E0E000D5D3D300C3C2C200EBE9E900ECEAEA00FAF8F800D8D6
      D6009795950082808000A6A4A400F3F4F50082888A004B5052004E5456007678
      78008C8D8D009D9F9F00AAABAB00B1B2B400A4A5A600BDBFC000C5C6C700C0C1
      C000DAD9D9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700E6E6E600E5E5E500E4E4
      E400E2E2E200E2E2E200E2E2E200E3E3E300E2E2E200E3E3E300E2E2E200E2E2
      E200E6E3E500DCE2DF00BEDFCB00C6DFCF00E8E6E700F2F1F200FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F30000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E4E300DCD9D800E6E4E300E0DEDD00E1DFDD00E0DEDD00DFDD
      DC00DFDDDC00DFDDDC00DEDCDB00DEDCDB00E3E1E000E5E3E200D3D1D0007C7C
      7700A1A19F00BFBBB8009E9D8B0093959600494E91004A46C4008D8BB900DFE1
      E500E0DDDA00B3B4B200E2E2E100000000000000000000000000000000000000
      000000000000DBD9D900B5B3B300E5E3E300C6C5C500CBC9C900868484007E7C
      7C00A8A6A600E0DEDE00E7E5E500D6D4D400AAA8AB0054575800686D6E00777C
      7D008E9293009EA2A300A8ACAD00B4B8B9009FA3A400BCC0C100C0C4C500C1C5
      C600BFC3C400CDD1D200000000000000000000000000FFFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00B9B9B900BABABA00BBBBBB00B8B8
      B800B8B8B800B8B8B800B7B7B700B7B7B700B7B7B700B7B7B700B8B8B800B7B8
      B700CFBBC70041A9690014A54B0013A44B0087B19800E2DBDF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200BCBCBC00BFBFBF00BEBEBF00BEBDBF00BDBDBF00BDBDBF00BDBDBF00BDBD
      BF00BDBDBF00BDBDBF00BFBFBF00BFBFBE00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BEBEBE00C2C2C200F9F9F900FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F400DBD9D900E1DFDE00DFDDDC00DFDDDC00E0DEDD00DDDBDA00DDDBDA00DEDC
      DB00DDDBDA00DDDBDA00DFDDDC00EBE9E800C7C5C4009493920093919000BDB7
      B6008F917F0081868E007E75CE005B58DF007174C9007B7C7F0062645D007673
      6A00C0BAB600DEE0DE00C0C1BF00C1C2C000F6F6F60000000000000000000000
      000000000000D5D4D400F6F4F4007E7C7C008F8D8D0084828200BEBCBC00E3E1
      E100E0DEDE00E2E0E000EEECEC00F6F4F400DFDEE00050545500686D6E007B80
      810093989900A4A9AA00AFB4B500B5BABB00A2A7A800BBC0C100BFC4C500C0C5
      C600C5C9CA00C5CACB00CBD0D000F9FCFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600B9B9B900C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C1C1C100C0C0C000C0C0C000C0C0C000BFC0
      BF00DBC2D10037B76E0029B668001FB5610083B99B00D7CDD300FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200BCBCBC00C1C1C100C2C3C300C8C3BB00C7C3BD00C7C3BD00C7C3BD00C7C3
      BD00C7C3BD00C9C4BD00C2BEBB00D2D3D500C6C5C600C0C1C100C1C1C100C1C1
      C100C0C0C000C4C4C400FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E1E100DADA
      DA00E1DFDE00DEDCDA00DEDCDB00DDDBDA00DEDCDB00DCDAD900DEDCDB00DCDA
      D900D9D7D600E6E6E000CECCCC0074727700B5B9B500ADA9A1008C848100868E
      8C006E6CC9004C3ED7004046A20063647500A49E92009F9F9C0091928E007372
      710065646200BBBBBA00D3D3D200CECFCD00B6B5B500D5D4D500000000000000
      000000000000DCDBDB00F6F4F4008D8B8B00D3D1D100DEDBDB00DDDCDC00E2E0
      E000F5F3F300E4E2E200FFFDFD00EDEAEB00A6A5A70083868700666B6C007F83
      84009BA0A100ABAFB000B3B8B900BBBFC000A3A7A800B9BDBE00BEC3C400C1C6
      C700C4C9CA00C8CCCD00C5CCCB00CBD1D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800B8B8B800BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BEBF
      BE00DAC1CE0035BB740026BA6C001DBA660083BC9E00D8CED300FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200BDBDBD00C0C0C100BCBFBC00AAA49A00AEA89F00AEA89F00AEA89F00AEA8
      9F00AEA79E00BAB1A70076726D00413E3E00B4B1B000C5BEBD00C0BEBD00C1C1
      C100BFBFBF00C3C3C300FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000DBD9D800E0DEDD00DFDD
      DC00DDDBDA00DDDBDA00DCDAD900DBD9D800DBD9D800DBD9D800DBD9D800E2E0
      DF00EBE9E700A09AA1009F9A95009D9D8D00554F49007E807D00808ACD00342F
      D4002D2AA1005F6C72006D7062007D7A7500605E5D0093919000A9A7A600BCBA
      B900D6D4D300D1CFCE00CDCBCA00CCC9C900CFCDCC00C2C0BF00B8B6B4000000
      000000000000EAEAEA00E7E5E500DBD8D900DFDCDC00D8D4D500DBD9D900DFDC
      DC00F7F6F600CECCCC00908E8E00211E1F007F7D7F00C0C3C4005D6263008387
      8800A1A5A600B0B4B500BABEBF00BDC1C200A5A9AA00BABEBF00BEC2C300C1C5
      C600C4C8C900C7CBCC00C7D0CE00CACFD000B0B4B500F5F7F800000000000000
      0000FFFFFE00FFFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAEA00BEBEBE00C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C8C5C600D6C5CE00D4C5CC00D3C5
      CB00F2C7DB0035BF7C0022C0720018BF6D008EC0A800EFD6E200FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300C2C2C200C5C5C500C8C8C800CECECF00CCCDD000CCCDCF00CCCDCF00CCCD
      CF00CCCCCF00D5D5D800ABACAA0028383D00B9E0ED00C8E8F300CBD3D400CEC4
      C200C4C5C500C9C9C900FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000E2E3E300D8D7D600DAD7D600DBD9
      D800DBD9D800DBD9D800DAD8D700DAD8D700DBD9D800DDDBDA00D4D2D100BAB8
      B700555353008F8C8400ACAA9F0086858F008A8DC0002A25CE001913A9004F58
      620085897C0062595D00635A5B005A59580093919000A9A7A600D6D4D300CECC
      CB00CBC9C800CAC8C700C9C7C600C9C7C600C8C6C500C5C3C200C0BEBD00CDCE
      CE0000000000F5F6F600CBC8C800DAD3D400EDE7E800E9E3E400DED8D900B2AC
      AD003F3D3D0076747400B6B4B400EEEBEC00CECCCC00D7D8D800747877008387
      8800ACB0B100B7BBBC00BEC2C300C0C4C500A5A9AA00B8BBBC00BEC2C300C1C5
      C600C4C8C900C6CACB00C9CCD100CCCFD500CDD0D500D1D5DB00EDEFF0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEB00C3C3C300C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900CBC9CA00D2C8CC0046C68A004FC6900050C6
      8F005AC6940027C47A0023C47A0020C478003FC5870059CA940061D6A00055D2
      97009BE4C3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300C5C5C500CACBCC00C5C3C3009F978600A39E8D00A39E8D00A39E8D00A39E
      8D00A39E8D00A49E8B00A49C8E00A9E8FF00B9DFF500C6E6F5005BC8F70094BF
      CF00DACBC500CBCDCD00FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000E2E0E000D7D5D400D6D4
      D300D8D7D600D9D8D700D8D6D500DCDBD900D5D2D100C9C6C6008F8F8F005C5A
      5A0087837B00959387004C4F7C00494BCF004745D1005C6183007B7764005E59
      5800393A350054565200767578007E7B7A009C9A9900B4B2B100C0BEBD00C6C4
      C300C6C4C300C7C5C300C4C3C200C3C1C000BBBAB900C4C2C100DBD9D9000000
      000000000000FEFEFE00E4E0E100D7D1D200ECE7E800D5D0D100CFCACB00CEC9
      CA00C3C2C200D6D4D400CDCBCB00B7B4B400C3BDBE00BFBBBB00AEAEAE007C81
      8100B7BCBD00BFC4C500BCC1C200BEC3C400A1A6A700B1B6B700BEC3C400BEC3
      C400C2C7C800C5CBCC00C7CCCE00CACFD200CDD2D500CED3D600CDD1D600EAEC
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00C6C6C600CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CBCCCB00DACDD3008CCCAF0000C870001CC97B001BC9
      7B0019C97B0020CA7E0022CA7F0022CA7F001DC97C0019CA7A0018C7790019C8
      79000CC471000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400CACACA00CDCDCD00D0D1D200DADADD00D9DADE00D9DADE00D9DADE00D9DA
      DE00D9DADE00D7D7DB00E0D7D5008DCAEF0091D0F10048BCED004EBBEE0030B4
      EC00B3C8CF00D5D2D000FAFAFA00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E900D0D1CF00CED0CE00CED0CE00C1BDBC00B8B2B3008485810099958D00BBBC
      AB008284A000453EAC003A3CAC007F83A800696658005D5A5300787775005C5A
      5900767372007D7B7A008E8C8B008C8A89008D8B8A009A989700A8A6A500B4B2
      B100BDBBBA00BCBFBC00BBBDBB00C7C8C600E7E7E80000000000000000000000
      000000000000EEEFEE00D8D5D500E0DADB00D3CDCE00D7D2D300EFE8E900D9D3
      D400C2BFBF00B1AFAF00D7D5D500CAC7C700D7CDCE00D6D0D100D2CECE009093
      9400BFC4C500B9BEBF00AFB3B400B9BDBE00A8ADAE00A8ADAE00B8BCBD00C5C8
      CA00C0C3C500C6CBCC00CACCD100CCCFD400CED2D600D2D5DB00CCD3DA00D2D7
      DC00EAECED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00CACACA00CFCFCF00D0D0D000CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00DCCFD40098D0B70000CF75000BCB79000BCB
      7A000ACB79001CCC810020CD830020CD830013CC7E0009CA790007C7760006C7
      750018CD7E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400CCCCCC00CFD0D000C9C8C500928775009C9182009B9182009B9182009B91
      82009C9081009B978600E0CFC50067BFF00000A4E1006AC5F10033B4E90049BD
      F1003AB4E100FDDACD00FAFBFB00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF0EE00D9DAD800979596007B7C7700A2A5A300A1A9B1006D6A
      A8006A65B000969CB500ADA198006F635800616568008D8B8A006B696800B4B2
      B100A8A6A500999796008B8988008C8A89008C8A89008D8B8A00918F8E009997
      9600A7A5A400B5B7B500CBCCCA00E7E8E6000000000000000000000000000000
      000000000000C9C9C900D6D6D700C8C2C300F7F0F100ECE6E700C3BDBE00CEC8
      C900C8C6C600D5D4D300BCBBBB00A29D9F0077717200B0AAAC00DEDADB00C2BE
      C0006F6D700097999A00C3C7C800C0C5C600ABAFB000B7B9BB00B6B8B800BABF
      BB00C4CBC700CAC8CB00CACBD000CBCFD300CCD0D300D0D3D700D2D7DD00D6DA
      DF00D6D8DE00DADCE00000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00CECECE00D4D4D400D2D2D200D3D3
      D300D3D3D300D3D3D300D3D3D300D4D4D300DFD2D80090DABA0099DCBE0099DC
      BE00AFDEC8002BD48E0019D1850012D082006CD9A900A6E2C700AFF3D400A6F0
      CE00D4F7E8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600D0D0D000D2D2D200D5D5D600D9DADD00D9DBDD00D9DBDD00D9DBDD00D9DB
      DD00D8DBDC00DBDBDE00DDDBDB00CED9DF0048C2FA0024AFE60045BAEC002BB1
      E90021B1ED0081C3DC00FFFFFB00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E6DF009E9CB000716898008786
      9700ACAEAB008C8C8A0086868900A6A4A000ABA7A000BCBABA00DFDDDC00B1AF
      AE00A3A1A000BDBBB900A3A1A000949292008A88870086848300908E8D00ABA9
      A800BFBDBC00C3C5C300C9C9C800D2D3D100E3E3E300F2F2F200000000000000
      000000000000C7C9CB00B4BABB00DAD5D800B8B1B300AFA9AA00C8C3C400D5CF
      D000ACA9A9008A8788008A868700A19D9D00B6B0B000DCD8D800A9A5A5006359
      5C002D262900B2B1B200C5C9CA00C2C7C800ADB1B200B7B7B800C4C2CB00C4C3
      D400BCBAC900C5C5CA00C9CECC00CACFCF00CDD0D100D1D4D500D2D5DA00D6D9
      DE00D8DCE000D5DADF00E6EAED00000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000D0D0D000D5D5D500D6D6D600D4D4
      D400D5D5D500D5D5D500D5D5D500D5D5D500D6D5D600E0D4DA00E1D3D900DFD3
      D800FFD4E70029D38F0015D387000AD3830092D1B800F7DFE900FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600D3D2D200D6D8D800D2D1D000B3ACA100B9B2A900B9B2A800B9B2A800B9B2
      A800B9B2A800B8B2A800B7B1A700C1B2A4009CAEB00035B7F10033B4E9001DAE
      E60035B4EA000DA7E400A6DAF600FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEFEB00B5B6
      B100868784008B8B8900BBB9B800BFBDBD00DFDEDB00B3B2AD004C4B47001514
      10003D3D38006E6D6900BEBDBA00A0A0A100B1B1B100D8D8D800DDDEDE00D0D0
      D000C9C9C900C9C9C900CBCBCB00D2D2D200DDDDDD0000000000000000000000
      000000000000CBCECF00B0B9B900D4D3D500C4BFC100D8D3D400DFDBDC00E7E1
      E200CAC4C500A9A4A500B6B1B200ACA5A800837A8000483E43002A222700271C
      1F000B040800918F9100C9CDCE00C6CCCD00B2B6B700B8B7B900C5C8C80099A4
      7700CAC5A900BBBEC800C4CDCD00CACECF00CCD1D200CED3D300D1D7DA00D6DB
      DE00D8DDDF00DBDFE300D7DBE000F8FBFD000000000000000000000000000000
      0000000000000000000000000000F1F1F100D4D4D400D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D6D8
      D700FBD9E60027D7930014D68B0007D687008CD6B900EEE1E600FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700D7D7D700DAD9DB00D7D8D800C6C2BD00C9C6C400C9C6C400C9C6C400C9C6
      C400C9C6C400C9C6C400C9C6C400C9C6C400D5C4B900BBCFD8003DBAF20025B0
      E70003A6E20021B0E90040B2D600FFFBF700FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFCFCD00D6D4D300A8A6A500403E3B0013130D0053534D00A8A7
      A200A8A9A30039393300A9A9A600000000000000000000000000000000000000
      0000DEDEDE00D8D8D800D9D9D900DBDBDB00E1E1E10000000000000000000000
      000000000000CBD1D100B1BEBC00C0C1C200D4CDCE00DED8D900BDB7B800B5B0
      B000D1C9CA009F989900605A5A0042383B0031232C0025161E0020101A001E11
      16000E06090073727400D0D3D400BCC1C200AEB2B300B6B4B700D0CED2006F7F
      1100919B1000D7D7D200B8BFC500C9CDCE00CDD1D200CDD1D200D0D3D800D5D8
      DD00D9DCE100DADDE200DCDFE400F7F8F9000000000000000000000000000000
      0000000000000000000000000000F2F2F200D8D8D800DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DADC
      DB00FFDCE9001DD891000FD78C0001D7870089D9B900F2E3EA00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700D9D9D900DBDBDB00DFDDDE00E2E4E600E3E4E600E3E4E600E3E4E600E3E4
      E600E3E4E600E3E4E600E3E4E600E3E4E600E1E3E400EAE0D900A0D2ED0029B4
      EC0003A5E700D3F0ED00B4A4BF0031309500ECEDF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDE0048474500171414005E5C5A00AEADA900BAB9B500B9B8
      B4009D9C99007C7A760000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCFD100BEC1C700A7ABAF00B5B0B400B9B0B300A0979A007A72
      7400352A310030262C002A1E26001C1117001C1418001E1619001E1619001817
      19000F0E10004E4D5000CDD5D500C6CBCF00B8BABD009B9C9C00C7C4D1008F97
      4D007E910000CED4A500CDCFD900C4C6C700C9CBCC00CFD2D300D2D5DB00D4D7
      DC00D9DCE100DADDE200DADEE300F6F7F7000000000000000000000000000000
      0000000000000000000000000000F2F2F200DADADA00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DCDD
      DD00F3DCE60068E0B00012DC8F001DDD9300B4DDCB00EDE5E800FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800DBDBDB00DFDFE000D5D5D2008B816D00958E7D00958D7D00958D7D00958D
      7D00958D7D00958D7D00968D7C0092887700A8A29500E7E7E600EEE2DB0063C4
      F500DEF2E1006156A50000007B0000009B00D5D5EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004547420013150E006A696400ADACA800BBBAB500B7B6B200BCBBB700C2C1
      BC009F9E99007E7B7C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCFD300A9ADB100999DA200534F53004E4649002E272A002D26
      2900261E240021181F0020181E00211A1F001E181A001C1619001C1618001A1B
      1C001815170039383A00CFD8D700CACED400C0C3C700C2C3C300A5A1A900C3C5
      AD008B9B5100D1D0C100C9C7CF00CDCFD000CDCFD000C9CACB00C9CDD300D7DB
      DF00D8DCE000DBDEE300DCDFE300E5E7E9000000000000000000000000000000
      0000000000000000000000000000F4F4F400DCDCDC00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00E0DFDF00E4DFE100D1E1DA00D5E1DB00E4DEE000E7E7E700FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800DEDEDE00DEDFDF00E2E3E300EAEBEE00EAEBEF00EAEBEE00EAEBEE00EAEB
      EE00EAEBEF00E9EBED00E0E1E200DFDFE000DFE0DF00DFDFE000E6E3E000D3D3
      D600423D95000000860000009700CAC8F100FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000073757000ADAEA800B9B9B400B8B7B100BFBFBA00BDBCB600B2B2AC009999
      93008A8A8500A09D9D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1D4D600868C8F00D0D5D9004643460027212300251F2100211B
      1E00211D1E00221D1F00201B1C001F191B001D171A001C161800191316001512
      140018111300211C1F00DDE3E300CED2D700C2C5C900C2C2C100C8C5C800ABAA
      B200C4C8D200C5C1C900D0D0D200CBCDCE00CED0D100D3D5D600CDD1D500C8CD
      D000D7DCDF00DADEE200DBDFE300DEE0E1000000000000000000000000000000
      0000000000000000000000000000F4F4F400DFDFDF00E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E3E3E300E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E3E2E300E6E2E400E5E2E300E2E1E100E9E9E900FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E0E0E000E3E4E400DCDAD90098917F00A29C8C00A29C8C00A29C8C00A29C
      8C00A19B8B00A7A29400DFDFDF00E2E2E200E1E1E100E1E1E000E0E1E100F1F0
      E8007673C9005F5EC500FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8D9D500AFB0AB00BFBDB900BEBDBA00B5B6B200B5B4B200B2B0AD00A1A2
      9C00898883000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4D6DB008C8F9400D5D8DE00434245001E1B1D0023202300211E
      2100201F1E001F1E1E001E1D1C001C181A0018111400160F1300241D21003E3A
      3C00625A5D0048404400BFC3C400CACDD300C1C5C800B9B8B900C7C8C800C8C7
      C700CDC5C300C5C4C400B6BABA00CCCED000CFD1D300D1D2D300D1D4DA00D5D8
      DE00CCCFD500CCD0D500E0E3E800DBDDDF000000000000000000000000000000
      0000000000000000000000000000F4F4F400E1E1E100E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E3E3E300E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E3E3E300EAEAEA00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900E2E2E200E4E4E400E7E7E900F7F7FC00F5F6FA00F5F6FA00F5F6FA00F5F6
      FA00F5F6FA00F4F5F900F4F5F800F3F4F700F3F4F700F4F4F700EDEEF100E4E5
      E200F2F1E700F6F6EA00FFFFFD00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F4F500B5BAB600CAC5B900C1BEBE00BFB8B000B3B8AF00BCAEB600A1A4
      9A00939090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5D7DB0091949900D6D9DF0043434400211F1E00232221002321
      2100251E1F001E181A001B141600251E1F00473F3F00635B5B006B6263004D46
      47002A222300150D0E003A303100D3E1E000C3CACA00C2C4C500C3C2C300C6C6
      C600C7C7C700CACBCA00CECECE00C0C0C000C9C8C800D3D3D300D2D4D500D5D7
      D800D8DADA00DBDEE100D3D7DB00CED0D2000000000000000000000000000000
      0000000000000000000000000000F6F6F600E3E3E300E6E6E600E6E6E600E5E5
      E500E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E5E5E500E6E6E600E6E6E600E6E6E600E4E4E400EDEDED00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00E4E4E400E8E8E900DCDEDB00887F6C00968D7E00968D7D00968D7D00968D
      7D00968D7D00968D7D00958C7D00958C7D00958D7D008F867500B8B0A700ECEE
      EF00E4E5E500E6E6E600FCFCFC00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCD3D100C5CBC700D8D7CA00C4C1DA00C6C1B400AEB4AD00ADA2
      A100B1B0AF003937360000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D8DBDE0094999D00D4DADD0043424400221F1F00211F1F001C1A
      1900201B1C003D37380064606100746D6E0060585900342C2D001D1516001A12
      13001A121300170F100004000000989E9F00D6DBDC00D9DBDC00D1D1D200C6C6
      C600C8C8C800CBCBCB00CACACA00D0D0D000CACACA00C7C8C700CDCFD100D4D6
      D700D7D9DA00D7DBDD00DDE0E500D9DBDD000000000000000000000000000000
      0000000000000000000000000000F6F6F600E5E5E500E7E7E700E8E8E800E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E8E8E800E7E7E700E7E7E700E5E5E500EDEDED00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900E6E6E600ECEAEB00F8EBF300E9DEE000EBE0E300EBE0E300EBE0E300EBE0
      E300EBE0E300EBE0E300EBE0E300EBE0E300EBE0E300EADFE100F1E5EA00F9EF
      F500EAE8EA00E9E9E900FDFDFD00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CAC9D000CFC4CA002F85D700B7C5EE00B5B5AB00B1AA
      A400BEBCBD00555353007B797900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDD0D300ABAEB300D8DBE1003C3C3E0017151400302E2E006361
      610089838400746E6F00423C3D00211B1C001C1415001B13140018101100170F
      1000241C1D005A515200928A8B009C989B00CBCACB00E2E5E600D8DBDC00D3D3
      D300C7C7C700C8C8C800CBCBCB00CBCBCB00CFCFCF00D2D2D200CBCDCE00CBCD
      CE00D8D9DA00D6DADC00D9DCE200DCDEE0000000000000000000000000000000
      0000000000000000000000000000F7F7F700E6E6E600EAEAEA00EAEAEA00E9E9
      E900EAEAEA00E9E9E900E8E8E800EAEAEA00E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900EDEDED00F4F4F400F5F5F500F6F6F600F0F0F000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00EBE9EB00D9E5E1008ED0AA008CD0AC008DCFAD008DCFAD008DCFAD008DCF
      AD008DCFAD008DCFAD008DCFAD008DCFAD008DD0AD008BD1AB0085D4A90088D6
      AC00EAF2F000F4F3F400FDFDFD00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2DFD600D7D9D600A0AFC900C5D3DC00D1CBBA00ADAC
      AC00A7A6A100D2D1CC005C5C5800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5F5F500B2B5BA00D3D7DC006F6E70007C7B7A0086838400524F
      4F00201A1B00171112001C1617001A1314001C1415002C232400574F50009089
      8900BBB4B300BBB5B400B7AFAF00B1A9AD0098949600C5C5C700DFE1E200E0E0
      E000D7D7D700C7C7C800CACAC900CCCCCC00CCCCCC00D0D0D000D2D5D600D3D5
      D600CED0D100CCCFD100D4D7DB00D8DBDC000000000000000000000000000000
      0000000000000000000000000000F7F7F700E8E8E800E9E9E900EAEAEA00E9E9
      E900E9E9E900EAEAEA00E9E9E900EAEAEA00EAEAEA00EAEAEA00EAEAEA00E9E9
      E900EEEEEE00D5D5D5009A9A9A00A1A1A10083838300D5D5D500FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00F2EBEE00A9DAC50007B3590013B8610013B7610013B7610013B7610013B7
      610013B7610013B7610013B7610013B7610013B8610013B6620052906D005985
      6C0081878300959495000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0DACF00E7E2D500E7E2DD00DED6D600BFC3
      B600ADADA700B0B0AA00D2D2CE00E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F7F700C0C3C500C8CDD20098999B001E1F1E00191415001A13
      14001D1718001E1819002B252600554E4F00877E7F00ADA5A600B8B1B200ADA7
      A700ABA6A400A19D9A008D8886007D7A7C008B888A00ABA6A800E3E1E200D0D1
      D300CACDCE00D3D6D800C7C7C800CDCDCD00CECECE00CFCFCF00CFD0D100CFD1
      D200D4D6D700D9DBDB00D4D6D700CACCCD000000000000000000000000000000
      0000000000000000000000000000F7F7F700E8E8E800EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00FCFCFC008F8F8F00696969005151510097979700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00F5EDF000A8E2CA0010C673001CC97B001DC97A001DC97C001DC97B001DC9
      7B001DC97B001DC97C001DC97C001DC97C001CCB7B002ABF7C007D7178006760
      6400615F6000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1DBDA00DADBD200E1E1D700DBD6
      D400BDBCB900ABAAA600B1B0AD00BBBBBC00C6C6C700DFDFDF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFD2D400B7BBC000C3C4C6000E0D0D001C1718002923
      2400474142007A7576009D989900A8A2A300A8A3A400A7A1A2009E989A008985
      8500716D6E008A868600B5B2B200DBDADC00EBEAEC00E3E1E300DBDADC00CED0
      D100D1D3D400B9BBBC00D6D5D500CBCBCB00CCCCCC00CECDCD00CED0D100D0D2
      D300D2D4D500D3D5D600D6D8D900D3D5D6000000000000000000000000000000
      0000000000000000000000000000F7F7F700E9E9E900EAEAEA00ECECEC00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9
      E900FFFFFF008F8F8F003C3C3C0095959500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00EEECED00DBEAE50077DFB0006EDDAE006EDEAE0071DFAF006FDEAE0070DF
      B0006FDEAE006FDEAE006FDEAE0070DEAE006FE1B10071D3A700656263004B4C
      4B00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E7E000D2D5CE00DDDD
      DA00DAD9D600C5C4C000B0AEAB00ADACA900B2B1AD00BAB9B600C3C1C100D1CE
      CF00F0EFEF000000000000000000000000000000000000000000000000000000
      00000000000000000000ECEDEF00B9BDC300D7DADB0087878700575253008E88
      8900A19B9C00A19A9B009E9798009D9899008C8989006662630084807F00B7B5
      B600E7E6E700EAE9EB00E4E4E600D8DBDB00D7D9DA00D7D9DA00D6D9DA00D4D6
      D700D1D4D500CFD2D300D0D0D000CECECE00CBCACA00CBCBCA00CCCDCE00CFD1
      D200D0D2D300D2D4D500D4D6D700CED0D2000000000000000000000000000000
      0000000000000000000000000000F7F7F700E9E9E900EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00FFFFFF006565650081818100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00E9E9E900F0EBEE00FFEDF700FFEDF700FFEDF800FFEDF800FFEDF800FFED
      F800FFEDF800FFEDF800FFEDF800FFEDF800FFF1FB00E7D9E10034333400E0E0
      E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F6F400D8D9
      D400DADAD400DDDDD800CFCFC900BBBBB400ACACA700AFAFAA00ACAAA800B7B5
      B200C1BFBE00C9C9CA00F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000D5D7DA00D7D7D900F0F0F000B1AFB1008582
      83008F8C8C00817E7F00767373007F7D7E00ABABAE00EFEFF200F0EFF200DDE1
      E600DCDFE500E1DEE500DAD1D800F0F0F000D8D8DA00D2D6D800D0D4D400D2D2
      D200CECFCF00D0D0D200D0D4D400D2D6D600CED1D100C6CACA00C2C3C400C8C9
      C900CFD0D000CFD0D100D3D4D400D8D9DA000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F2F2F200F2F2F200F3F3F300F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200FEFEFE00BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00F2F2F200F1F1F100F0F1F100F1F2F100F1F1F100F1F1F000F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F3F3F300E0E0DF00CACACA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E3E000D6D5D000DEDDD900D9D8D400C9C8C400B6B5B100B0B0AA00AEAE
      A800A9AAA500B3B3B400BEBEBE00D2D2D2000000000000000000000000000000
      000000000000000000000000000000000000DEDDDF00D7D6D800EAE9EB00BCBB
      BD007C7D7C00AEAFAE00DCDDDD00F0F0F200E3E4EA00DDDDE400E4E5EA00E0D5
      DE00DCCDD700CFBBC600D3BEC900DBDADC00D4D7D800CDD2D200CDD2D300D8D8
      D700D7D7D700C3C3C200A2A1A2006B6A6A0088878700C4C3C300C9C9C900BEBE
      BE00B1B1B100BFBFBF00D2D2D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D6D400DCD8D200E2DED900DAD5D100CCC6C300BAB5
      B200B4AFAC00ACACA800A9A8A500BDBBB800C7C5C40000000000000000000000
      000000000000000000000000000000000000FFFEFF00E7E6E800D7D6D800E2E0
      E200E4E7EA00E2E5E800DADDE100D9DBDE00DBDBE000D7D9DD00DFE1E500EDE4
      E900D6CCD300D8D5DB00D3D6DB00CFD5D500D7DDDD00DBDFDF00C2C2C400A5A0
      A1006C6869003C3839001A13150008000100000000000000000066656500AFAF
      AF00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBE9E600D6D3D000DEDCD800DFDCD700DBD8
      D300C8C6C100B4B5AE00B0AFAA00A8A7A300B3B1B000C5C4C300000000000000
      000000000000000000000000000000000000FEFEFF0000000000F3F2F400D7D7
      D900D3D7DC00D6D9DF00D4D8DE00D5D9DE00D6D6DD00D6D6DC00D5D5DC00CED2
      D500D4DBDC00D5DDDE00D8E2E200C4C3C500969093005C5255002F2326000903
      0400000000000000000002000000827F8000B0AEAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDDDE00DDD7D400DED9
      D600DFDBD700D1D0CC00BFBEBB00AFADA900A8A5A50099979600000000000000
      000000000000000000000000000000000000FFFEFF00FEFEFF00000000000000
      0000E4E4E700D1D1D500D3D2D600D3D4D800CFD3D900CFD3D800CACFD400D6D3
      D500B9B4B5007D777900403A3B001B1415000300000000000000000000001F1F
      1F00ABAAAA00CBCACB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDF
      DE00D2D0D000D1CCC600CCC8C300B8B4B000939494007E7E7E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F900DFDEDE00C9CACD00C4C7CC00C6CACE00B6BABF00312D
      2E0000000000000000000000000000000000444141009F9C9D00DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E2E000D9D8D600CFD0D00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00FEFEFE00000000000000
      0000F7F7F700FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B49E850000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B600B0B0B000AEAEAE00AAAAAA00A9A9A900A9A9A900A6A6
      A600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A4A4A400A3A3A300A3A3
      A300A3A3A300A3A3A300A3A3A300A4A4A400A4A4A400A4A4A400A4A4A400A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A6A6A600A9A9A900A9A9A900AAAA
      AA00AEAEAE00B0B0B000B6B6B600000000000000000000000000000000000000
      0000F1F1F000F1F1F000F2F2F200F2F2F200F2F2F200F2F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F000F1F1F000F1F1F000F1F1
      F000F2F2F100F2F2F200F2F2F200F2F2F100F2F2F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC896000965A1500965A
      1500B36C1800C7711000F0DAC100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A3A300D7D6
      D600D0CDCE00C2C0C100C2C0C100B9B6B600B2AEAD00ACA7A700ADA8A800BBB7
      B600CFCCCB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E4E400DADADA00D5D5D500CDCDCD00CACACA00C8C8C800000000000000
      000000000000BEBEBE00B7B7B700B6B6B600B9B9B800C0BFBC00C1C0BC00C1C0
      BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C0BDBA00C5C1BC00C8C3BD00C4C0
      BC00C1BEBB00BFBDBB00C5C4C200C9C7C500C8C7C500C9C8C600D2D1CE00D3D2
      D000D7D6D300DEDDDA00DDDDDC00E4E4E400000000000000000000000000F2F2
      F200EBEDEF00EBEDEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEE
      F2000000000000000000000000000000000000000000EEEEF000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F2ED00000000000000000000000000000000000000
      0000C3AC9000C3AC9000C3AC9000AA7E4800C58F5100D3A06500D3A46B00D3A4
      6B00D4A56E00D2A16700E2C4A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6
      F600E5E4E400DAD8D800D1CECE00CBC8C800C9C5C500C9C6C500C9C6C500CDCA
      C900D8D6D50000000000F1EFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ADB5CC00A7AFC900A5AE
      C800A5ADC800A4ADC800ACB3CA006A94BF003A70AC004679B1005E89B80081A1
      C3009BB3D000C0CEDD00CDD4E000C3CBDB00BFC5D700BCC0D300BFC3D600BFC4
      D700C0C5D800C4CADC00F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F3000000
      00000000000000000000E6DBC600E6DBC600E7DDCA00E7DDC900E7DDC900E6DC
      CA00E6DCCA00E8DDCB00E8DDCA00E8DECB00E9DDCE00E9DDCE00E8DDCE00E9DF
      D000F0E8DC00F0E8DC00F0E8DC00F2ECE300EFECE400EFEBE300EFECE400EFEC
      E400EFECE400F0ECE500EEE6DC00E9DFCF00E9DFCF0000000000000000000000
      00000000000000000000000000000000000000000000EBE9E900B5B1B100FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F7F700ECECEB00E2E1E100DCDADA00D7D5D400D4D2D100D1CECD00CECA
      C900CECAC900D3D0CE00D3D0CE00D8D6D500DEDBD900E2E0DF00E9E7E7000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000008600000045E00000059000015
      670000176800001364000C3783002E6BAB00326BAA003069A8002D66A7002964
      A5002661A300235FA200215DA0001F5A9E001B549A00164D95000E418B000735
      8200002978000012680000035C00D4D9E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F3000000
      00000000000000000000E8DECB00E8DECB00E8DECE00E9DFD000E9DFD000EBE0
      CF00EBE0CF00EAE1CE00EBDFD100EBDFD200E9E0D100E9E0D100EAE1D300EAE1
      D300EBE1D200EBE1D200EBE1D200EAE1D300EBE2D400EAE2D400ECE3D400ECE3
      D400EDE3D500EBE3D500EBE4D600EBE2D500EBE2D50000000000000000000000
      00000000000000000000000000000000000000000000E0DEDD00C6C3C300FFFF
      FF00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFE00C4C1
      F00000000000FEFFFC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFB
      FB00FBFBFB00FCFCFC00FCFCFD00FCFDFD00FDFDFD00FDFDFD00FEFEFE000000
      000000000000F6F6F600F6F6F600EEEDED00E7E5E500E2E0E000DBD9D900F0F0
      EF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000102975000011650000136800AFB3BF00DAD7
      D000CECCC600CDC7BC00678AAF005081BC00326BAA00346CAA00346BA900336B
      A900336BA900326AA800326AA8003269A700326AA700336AA800336BA900346D
      AA00356EAB003772AD0017448B001128730000000000F1F1F10000000000B3AE
      A5008B6531008B65310093651F00986A25009B6F290096692400CFC2BA00EDE1
      E000EADEDF00EAE5E600EAE5E600E8E3E100E6E1DF00E4E2E000E4E4E300E3E2
      E100E2E2DE00EAEAEB00B1A18000B1A18000876823008C702B008B6E2B00896F
      2C00917226009A7823009D792000917126009171260000000000F3F4F6000000
      00000000000000000000E8DECB00E8DECB00E8DECE00E9DFD000E9DFD000EBE0
      CF00EBE0CF00EAE1CE00EBDFD100EBDFD200E9E0D100E9E0D100EAE1D300EAE1
      D300EBE1D200EBE1D200EBE1D200EAE1D300EBE2D400EAE2D400ECE3D400ECE3
      D400EDE3D500EBE3D500EBE4D600EBE2D500EBE2D50000000000000000000000
      00000000000000000000000000000000000000000000D4D2D000D8D6D700FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FFFFFF009C96
      E7006255DC00F6F5FB00FEFEFC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FAFA
      FA00FBFBFB00FAFAFA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9FAF900F8F8
      F800F9F9F900F9F9F900F9F9F900F9F9F900F9FAFA0000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000000B6200000E65007380A400E2DFD700CACA
      C900C1C1C100C0BCB7006C8CB200608EC400316AA900356DAB00346DAB00346C
      AA00336BA900336BA900326AA800326AA8003168A6003268A6003269A7003269
      A7003269A7003269A7003873AE000120700000000000F3F3F400000000009473
      450097662200976622009F723200A2743300A6793700A1722D00E4D5C700E6D0
      C400CCB19A00D0BBA700D0BBA700F4ECE600FFF7F600FFF9F700FFFCFC00FFFF
      FF00FFFFFF00FFFFFF00C2B08E00C2B08E008F69210096742A0095742B009775
      2B009A7A2F009D7C3100A17E2D00967733009677330000000000F3F4F6000000
      000000000000E7CDAD00E9E1D300E9E1D300EAE0D000EAE0CE00EAE0CE00EAE1
      D000EAE1D000EBDFD300EAE0D100E9E1D200EBE1D300EBE1D300EBE1D300EBE1
      D300EBE2D400EBE2D400EBE2D400EBE2D500EBE3D500EDE3D500ECE2D600ECE2
      D600EBE4D700EBE4D700ECE3D700ECE4D600ECE4D60000000000000000000000
      00000000000000000000000000000000000000000000C7C3C200ECEBEC00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FFFFFE00CDCA
      F2007D74E100A49DEB00FFFFFE00FCFCFC00FBFBFB00FAFAFA00FAFAFA00FBFB
      FB00FAFAFA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9
      F900F8F8F800F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000106600000C6500969FB600D8D7D300C9C9
      C900C1C1C100BFBBB7006E8EB300608FC500326BAA00356DAB00356DAB00346C
      AA00356CAA00336BA900346BA900326AA800326AA8003168A6003168A6003269
      A7003269A7003269A700356FAB000F34800000000000F3F4F60000000000956D
      39009B6B29009B6B29009E713300A1733400A57738009F723100DECDC300C3A2
      8800946935009B7548009B754800E4D6CB00FDF0EF00FAEDEA00FBF1F000FCF7
      F500FDFBFA00FFFFFF00BBA78B00BBA78B00815C1E008A66280089672B008B69
      2A00916F2D0096752F009A752C00917130009171300000000000F3F4F6000000
      0000B5762C00D6A46A00EDE8DC00EDE8DC00EAE0CF00EAE0D200EAE0D200EADF
      D200EADFD200E9E1D100EAE0D300EBE1D300EAE1D300EAE1D300EBE2D400EBE3
      D500EAE3D400EAE3D400EAE3D400ECE3D500EDE2D500EBE3D700EBE5D700EBE5
      D700ECE3D700EDE4D700EEE6D800ECE3D600ECE3D60000000000000000000000
      00000000000000000000000000000000000000000000BAB6B600FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FDFDFD00FFFFFD00B7B2
      ED005243D8004332D700FFFFFF00FCFCFB00FAFAFA00FBFBFB00FBFBFB00FAFA
      FA00F9F9F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8
      F800F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB300608EC400326CAB00366EAC00356EAC00366D
      AB00346CAA00356CAA00336CAA00336AA800336AA800326AA8003169A7003168
      A6003269A7003269A700356EAB000F35800000000000F3F4F500000000009870
      3D009C6929009C6929009F713300A2743500A6763800A1733100DECAC200C09F
      87009065360098734A0098734A00E4D1C700FCEBE800F7E8E400F9ECEA00FAF1
      EF00FCF5F300FFFFFF00B6A58B00B6A58B007A521A00825B2600825C2700845E
      26008A672A0094712E00947029008D6D30008D6D300000000000F3F4F6000000
      0000CBAD8900D5A46A00EDE8DE00EDE8DE00EAE0D200EAE0D100EAE0D100EAE1
      D200EAE1D200EAE1D300EBE1D300EAE1D300ECE2D400ECE2D400EBE2D400ECE4
      D500EDE2D500EDE2D500EDE2D500ECE3D600EBE5D700EBE4D700EDE4D700EDE4
      D700EEE6D800EDE5D900EDE5D800EDE4D800EDE4D80000000000000000000000
      00000000000000000000000000000000000000000000BAB6B600FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FEFEFD00FFFF
      FF001400CA001200CD00B4AEEE00FFFFFC00FBFBFB00FAFAFA00FAFAFA00F9F9
      F900FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8F800F7F7
      F700F8F8F800F8F8F800F8F8F800F8F8F800F7F7F70000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000146B0000106A00939DB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB4005F8EC500336CAB00376FAD00376FAD00356E
      AC00366DAB00346DAB00356CAA00346BA900346AA800336AA8003369A7003169
      A7003168A6003269A700356EAB000F36820000000000F3F4F500000000009A71
      3E009E6A2B009E6A2B00A2713300A4723500A7773900A2703400D5C8BE00BD9C
      85008B61380094714E0094714E00E4CAC100F9E3E000F6E2DC00F7E6E300F8EB
      E800F9EEEC00FFFFFF00B4A08800B4A08800714817007A5121007B5422007B53
      230085602800926E2F00906B28008B6930008B69300000000000F3F4F6000000
      000000000000C6945B00EDE8DF00EDE8DF00E9E0D200EAE1D300EAE1D300EBE1
      D300EBE1D300EAE1D300EBE2D400EBE2D400EBE3D500EBE3D500ECE3D500ECE2
      D600EBE4D700EBE4D700EBE4D700EBE4D600ECE4D700EEE5D800EEE6D800EEE6
      D800EDE6D800EDE5D900EEE6DA00ECE3D600ECE3D600F5F0EB00F5F0EB000000
      00000000000000000000000000000000000000000000C3C0BF00FFFFFF00FEFE
      FE00FDFDFD00FCFCFC00FCFCFC00FDFDFD00FCFCFC00FAFAFA00F3F3F200FFFF
      FF006C5FE0000C00CC005F52DD00FFFFFF00FDFDFD00FBFBFC00FBFBFC00FBFB
      FB00FAFAFA00FAFAFA00F9F9F900F8F8F800F9F9F900F8F8F800FBFBF800FFFF
      F900FCFCF800F8F8F800F8F8F800F7F7F700F6F6F600F7F7F700000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000166D0000126C00939DB600D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB500618FC500346DAC003770AE00376FAD00376E
      AC00366EAC00366EAC00356DAB00356CAA00346BA900346BA900336AA8003369
      A7003269A7003168A600356EAA001037830000000000F3F4F500000000009C72
      3F00A06A2C00A06A2C00A4713500A6743700A9783A00A4723400CAC0B500AE94
      7E00855C37008F6D4E008F6D4E00E0C4BA00F9DED800F5DCD700F5E0DD00F7E5
      E200F8E9E500FFFFFF00B19D8900B19D89006A411400734A1F00744B2000744C
      200082592700906C2F008E682800886630008866300000000000000000000000
      000000000000CCAA8000EDE7DD00EDE7DD00EBE1D300EAE1D300EAE1D300EAE2
      D400EAE2D400ECE2D500EAE1D300EBE2D200ECE2D300ECE2D300EDE4D700EDE7
      D900ECE3D600ECE3D600ECE3D600ECE3D600EDE5D600EDE5D800EDE5D800EDE5
      D800EEE6DA00EEE5DA00EFE7DD00ECE3D600ECE3D60000000000000000000000
      00000000000000000000000000000000000000000000CBC8C800FFFFFF00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FBFBFB00FEFEFE00E5E4E300BDB9B800D1CE
      C300847AC4000B00CE001200D100B8B2D900E6E4DC00E9E7E600E9E7E600F1F0
      F000F8F8F700FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFFF900EEEEF7008479
      ED00CAC6F300FCFDF800FCFDF800F6F6F600F7F7F700F6F6F600000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB5006190C600346EAD003871AF003770AE00376F
      AD00366FAD00366EAC00366EAC00356CAA00356CAA00346CAA00346BA900336B
      A9003369A7003269A700356EAA001038850000000000F2F4F500000000009E74
      4000A36C2B00A36C2B00A6723600A7753800AB783C00A5723600C6BBB100A78C
      77007D55340088684C0088684C00DEBFB300F9D8D200F3D7D000F5DBD700F5E0
      DC00F7E3DF00FFFDFE00AF9B8800AF9B8800653A12006D431D006E461E006D44
      1E007D55250091692E008D63270087642F0087642F0000000000000000000000
      000000000000E0CFBB00ECE3D600ECE3D600EAE1D300EBE2D400EBE2D400EBE2
      D400EBE2D400EAE1D100F0E9DE00F3ECE400F5F1E800F5F1E800EBE7DE00DFD6
      CA00F4EFE800F4EFE800F4EFE800F4EFE700F3EEE600EEE7DA00EEE4D800EEE4
      D800EFE7DB00EEE7DC00EFE8DD00F2ECE200F2ECE200AE855500AE8555000000
      00000000000000000000000000000000000000000000D2D0D000FFFFFF00FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00FBFBFB00FFFFFF00D6D4D300ECEBEB00FFFF
      FF00FFFFFF000100C9001500D0002A15D300FFFFED00E5E3E200E5E3E200DDDB
      DB00D9D6D500D6D2D200D6D4D300DAD8D700ECECDD00D2D0E9004E3CE500796C
      EC0000000000F7F7F600F7F7F600F7F7F700F6F6F60000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000A4813100AC8D4600F0F0F0000019790000167100939EB700D8D6D300C9C9
      C900C1C1C100BFBBB7006F90B5006191C700356FAE003871AF003971AF003770
      AE003870AE00366FAD00366EAC00366DAB00356DAB00356DAB00346BA900336B
      A900336BA9003369A700356EAB001139860000000000F2F4F50000000000A276
      4100A66E2C00A66E2C00A8733600AB763800AD793C00A7733600C3BDB700BFAF
      A300A48B7C00B19F9200B19F9200DBC7C000F3D7D500FADBD900FADFE000FCE5
      E500FDE8E900FFFFFF00AC978900AC97890057300D0060381800613A1A006039
      1900774F230092692E008B62270087622F0087622F0000000000000000000000
      00000000000000000000EAE0D100EAE0D100EBE2D400EBE2D400EBE2D400EBE1
      D100EBE1D100F6F3EC00FFFFFF00FFFFFF00FAFCFE00FAFCFE00A0723A00945C
      1B00E5E2DD00E5E2DD00E5E2DD00FFFFFF00FFFFFF00FEFFFF00F0E8DE00F0E8
      DE00EEE7DC00EEE7DD00EFE9DE00F3EFE800F3EFE8009A672C009A672C000000
      00000000000000000000000000000000000000000000DCDAD900FFFFFF00FDFD
      FD00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FFFFFF00C9C6C500F6F5F500FBFC
      FC00FFFFFE008A81E4000E00CE000D00D000C5C1F200FFFFFE00FFFFFE00FCFD
      FD00FCFCFC00FCFDFD00FCFCFC00FFFFFC00C8C4F0002C15E1004C3AE100D7D5
      F300FCFDF700F7F7F700F7F7F700F6F6F6000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000B5965000A0782100B086270035436500000F7C00929EB900D8D6D300C9C9
      C900C1C1C100BFBBB6007091B6006291C700356FAE003A72B0003871AF003970
      AE003770AE00386FAD00366FAD00366EAC00356DAB00356DAB00346DAB00346B
      A900336BA900336BA900366EAB00113B880000000000F2F4F50000000000A276
      4100A66E2C00A66E2C00A8733600AB763800AD793C00A7733600C3BDB700BFAF
      A300A48B7C00B19F9200B19F9200DBC7C000F3D7D500FADBD900FADFE000FCE5
      E500FDE8E900FFFFFF00AC978900AC97890057300D0060381800613A1A006039
      1900774F230092692E008B62270087622F0087622F0000000000000000000000
      00000000000000000000E9E0D000E9E0D000ECE4D500EDE3D500EDE3D500EAE0
      D100EAE0D100FFFFFF00F8F5EF00E9E1D8009E6F37009E6F3700985E1C009A61
      21009F6F37009F6F37009F6F3700E1DACE00F0E8DC00FEFFFF00F7F5EF00F7F5
      EF00EEE7DB00EEE9DD00EFE9DF00F5F2EA00F5F2EA0091591800915918000000
      00000000000000000000000000000000000000000000E3E2E200FFFFFF00FCFC
      FC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FFFFFF00C0BDBC00FEFEFE00FBFB
      FB00FFFFFB00E3E4F5000000CB001600D0001E07D500FFFFFC00FFFFFC00FAFA
      F900F9F9F900F9F9F800FFFFFA009B91EE000200DD00280EE5007E74DF00FFFF
      F900F7F7F700F7F7F700F7F7F700F5F5F500F6F6F60000000000000000000000
      0000C1A56900B4944B00B5954E00B5954E00B5954E00B5954E00B5954E00B797
      5100AC873700AA853200AA843200BE902A00665B440091A0C000D7D7D800C9C9
      C900C1C1C100BFBBB6007091B6006191C8003670AF003972B0003A72B0003872
      B0003970AE003870AE00386FAD00366FAD00366EAC00356DAB00356DAB00346D
      AB00346CAA00336BA9003770AC00123D8A0000000000F2F4F50000000000A577
      4300A96F2D00A96F2D00AB753800AD783A00AF7A3C00AD793C00A9886900B899
      7900B9997D00C4AA9200C4AA9200B0937400A9856200B1876600AF886800AE8A
      6900AD8A6A00B39375008F6A47008F6A470070461C00734B2100724A2200714A
      21007F56270090662E008B60270086612F0086612F0000000000000000000000
      00000000000000000000E9E0D000E9E0D000ECE4D500EDE3D500EDE3D500EAE0
      D100EAE0D100FFFFFF00F8F5EF00E9E1D8009E6F37009E6F3700985E1C009A61
      21009F6F37009F6F37009F6F3700E1DACE00F0E8DC00FEFFFF00F7F5EF00F7F5
      EF00EEE7DB00EEE9DD00EFE9DF00F5F2EA00F5F2EA0091591800915918000000
      000000000000000000000000000000000000EEEDED00EEEDED00FDFEFE00FBFB
      FB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFFFF00BDB9B800FFFFFF00FAFA
      FA00F9FAF900FFFFFE004D39D9001200D0000A00D200958CE900958CE900FFFF
      FB00FCFDF900FFFFFB006B5EE7000200DC001B01E0007267ED00EAE9DD00FAFB
      F900F7F7F700F5F5F500F5F5F500F6F6F600F6F5F500F4F4F400000000000000
      0000AC843200AD863300AD863300AD863300AD863300AD863300AD863300AD86
      3300AF883700AF893800AF893800AF893800B68C3200B78F3D00C9C2B500CACD
      D500C1C1C200BFBBB6007091B6006292C8003671B0003B73B1003973B1003A72
      B0003972B0003971AF003870AE00386FAD00376FAD00366EAC00366EAC00356D
      AB00356CAA00346CAA003770AC00123F8B0000000000F2F4F50000000000A87A
      4400AC712F00AC712F00AF773800B0793B00B17B3D00B27F4300AD793E00B07F
      4600B4865000BB926400BB926400AA7B45009761210093602200915E21008E5C
      20008B5B1E0089591C008E5F25008E5F250093662E0091652D0090642D008F64
      2D008F632D008E632D008C5F2600866030008660300000000000000000000000
      00000000000000000000EBE1D200EBE1D200EDE2D600EBE4D600EBE4D600EAE1
      D200EAE1D200FFFFFF00F3F1EC00A67C4A00975D1B00975D1B009E6729009F68
      2A009B611D009B611D009B611D00B0906800ECE5DC00FFFFFF00F8F5F100F8F5
      F100EEE7DC00EFE9DE00F0EAE000F5F2EB00F5F2EB009B6629009B662900B69A
      770000000000000000000000000000000000E8E7E700F6F5F500FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FFFFFF00BEBAB900FFFFFF00F9F9
      F900FAFAFA00FEFFFA00EEEDF7000000CD001900D4001000D4001000D400FFFF
      FA00FFFFF9003A25DF000B00DB001000DE004E3EE600FFFFF900E3E2DE00F9F9
      F900F5F5F500F6F6F600F6F6F600F5F5F500F5F5F400F4F4F400000000000000
      0000B48D3D00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B38C3900B2872E00BEA9
      7E00C1C5CD00BFBCBA007091B7006292C8003771B1003B74B2003B74B2003A73
      B1003972B0003971AF003971AF003870AE00386FAD00376FAD00376FAD00366E
      AC00366DAB00346CAA003871AD0013408E0000000000F2F3F50000000000AC7C
      4600AF743000AF743000B2793A00B37B3A00B47E3F00B5804400B7854A00B989
      5200BB8E5A00C19A6D00C19A6D00B98C5900A6713400A3713400A16F33009F6E
      32009D6B33009A6A320097683100976831009567310093662E0092642F009164
      2D0090632D008E622C008C5E2500866031008660310000000000000000000000
      00000000000000000000EBE1D300EBE1D300ECE4D700ECE3D700ECE3D700ECE3
      D500ECE3D500FFFFFF00B6956D00955B17009E692A009E692A00A06A2A00A06B
      2B00A26C2D00A26C2D00A26C2D009E611C00C5B19A00FFFFFF00F9F6F300F9F6
      F300EEE8DC00F0E9E000F1EBE100F6F2EC00F6F2EC009B6A2F009B6A2F00996B
      370000000000000000000000000000000000E5E3E300FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FCFCFC00C1BEBD00FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FFFFFD004D3CDB001300D3001400D5001400D5005341
      E0002209DB001300DA001200DC00240DE000F5F6F700F9F9F300E4E2E100F7F7
      F700F6F6F600F5F5F500F5F5F500F4F4F400F5F4F500F4F4F400000000000000
      0000B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9914000B78D
      3500B9964E00BEB7AF007092BA006392C9003872B1003C75B3003C75B3003B74
      B2003A73B1003972B0003972B0003971AF003870AE003870AE003770AE00376E
      AC00366EAC00356DAB003871AD0013418F0000000000F2F3F50000000000AF80
      4800B3763000B3763000B57C3B00B4783400B5753000B4783600B57D3A00B781
      4300B9864C00BD8F5C00BD8F5C00BA8A5700A26926009F6523009D6322009861
      210095602000935E2100915B1E00915B1E008F5A1E008B581D008A581D008856
      1D008A5B240090642F008D5E2600885F3000885F300000000000000000000000
      00000000000000000000EAE2D400EAE2D400EDE4D700EEE6D900EEE6D900F0EA
      E100F0EAE100C9B49B00945713009F692A00A06A2B00A06A2B00A16B2C00A36D
      2E00A46E3000A46E3000A46E3000A56F2F00A1692800E4E1DE00FCFBF800FCFB
      F800F0E9DE00F1EBE000F1EAE200F6F3ED00F6F3ED009A6A33009A6A33008E55
      120000000000000000000000000000000000E5E3E200FFFFFF00FBFBFB00FCFC
      FC00FBFBFB00FAFAFA00FAFAFA00FCFCFC00F6F5F600C8C5C400FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FEFFF900E7E6F6000800D1001C00D6001C00D6001600
      D8001B00DA000D00DA00331EE000FFFFF800FDFEF800EFEEEE00E7E6E600F7F7
      F700F5F6F500F4F5F400F4F5F400F5F4F500F4F5F500F4F4F400000000000000
      0000BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BB92
      4000C69E4C00D2A347006F95C2006493CA003873B2003F7BB8003D78B5003D78
      B5003A74B2003A73B1003973B1003971AF003871AF003871AF003770AE003770
      AE00376EAC00366EAC003972AE001443910000000000F2F3F50000000000B484
      4B00B87A3100B87A3100B77A3300BD8D5400C6A27800C7A27600C7A47B00C8A6
      7F00CAAA8500CDAF8D00CDAF8D00D0B69600BE9B6F00BC986D00BA976D00BB98
      6D00BA986E00BA976C00B7966E00B7966E00B6966C00B7956D00B6956D00B798
      7000A47F50008B5B23008D5E2700885F3000885F300000000000000000000000
      00000000000000000000EBE3D400EBE3D400EEE5D800F0EADE00F0EADE00D2C0
      A800D2C0A80091520A00A0692B00A16B2C00A26B2A00A26B2A00A0682800A36A
      2900A7723200A7723200A7723200A8723300A86F2D00AE7E4900E8E6E100E8E6
      E100F3EDE500F1EAE200F2ECE200F7F2EE00F7F2EE00986A3200986A3200AA74
      340000000000000000000000000000000000E6E5E400FEFEFE00FCFCFC00FBFB
      FB00FAFAFA00FBFBFB00FBFBFB00FCFCFC00EEEEEE00CECBCB00FEFEFE00FAFA
      FA00FAFAFA00F9F9F800FFFFFB00F4F5F7001A01D4001B00D6001B00D6001C00
      D9001500D9006455E500FFFFF900FBFBF700F8F8F800EAE9E900ECEAEA00F6F6
      F600F4F4F400F5F4F500F5F4F500F5F5F500F5F5F500F4F3F400000000000000
      0000C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C2994800BF954200D8B4
      6600DABC7C00BCB6AD007194BA006494CA003C78B600234F9500000257002958
      9C003E78B6003A73B1003B73B1003973B1003971AF003871AF003870AE003770
      AE003770AE00366EAC003A72AF001444930000000000F2F3F50000000000B889
      4D00BC7F3300BC7F3300BA762800D0B69600F3FFFF00F2FAFE00F3FAFF00F7FD
      FF00F7FDFF00F9FFFF00F9FFFF00FCFFFF00FCFFFF00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6C6B000824D10008F5F2800896032008960320000000000000000000000
      00000000000000000000ECE3D500ECE3D500EDE6D900F0E9DE00F0E9DE00DECF
      BB00DECFBB0095581200A16B2B00A36C2C009F6725009F672500E4DED600B487
      5200A66D2900A66D2900A66D2900AB743600AD753700AC702C00B48C6000B48C
      6000E8E4DD00F4EFE700F2ECE400F6F4EE00F6F4EE00996A3300996A3300AB77
      3C00A27F5400A27F54000000000000000000E9E8E700FEFEFE00FBFBFB00FAFA
      FA00FBFBFB00FAFAFA00FAFAFA00FCFCFC00E8E6E700D4D2D100FDFEFE00FAFA
      FA00FFFFFA00FFFFFE00A6A0EA000100CD001900D4001C00D6001C00D6001C00
      D9001300D9007A6CE700FFFFFA00F7F7F700F7F7F700E7E6E500EEEEED00F5F5
      F500F4F5F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2F200000000000000
      0000C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D
      4C00C79E4D00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00E4C17600CFB9
      8F00BEC0C600BEBBB9007193B8006594CA003D7BB800133D8A00002078001844
      8E003F7BB7003C75B3003A74B2003A73B1003A73B1003972B0003871AF003970
      AE003770AE003770AE003A73AF001546950000000000F1F3F50000000000BE8E
      4F00C1843600C1843600BE7C2B00CCAD8700EAEBE900E6E3DD00E8E4DF00EAE6
      E100EBE8E300EDEBE600EDEBE600F0EEEA00EFEBE700ECE8E400EEEBE600EFEC
      E700EFEDE900F0EEEA00F3F1EC00F3F1EC00F4F2EE00F6F3EF00F5F3F000FCFE
      FF00CAB29800844F13008F5E28008A5F33008A5F330000000000000000000000
      00000000000000000000ECE4D700ECE4D700EEE6DA00EEE6DB00EEE6DB00F3EF
      E600F3EFE600DFCEBA0096570F009B5D1500D7C7B300D7C7B300F6F3EC00F2F0
      EA00AA723200AA723200AA723200AC733300B0783800B27A3A00B0732C00B073
      2C00B9977300ECEAE300F4EFE800F7F3EF00F7F3EF009A6C35009A6C3500AD7B
      400097652B0097652B000000000000000000EBEAE900FDFDFD00FAFAFA00FBFB
      FB00FAFAFA00F9F9F900F9F9F900FCFCFC00E2E0E000DAD9D800FDFDFD00FFFF
      FB00D9D6F2002F1AD2000C00CD001900D1001100D3000F00D4000F00D4001800
      D8001D00DB000200D800D1CEF200FEFFF600F7F8F800E3E2E100F1F1F100F5F5
      F500F4F4F500F5F5F500F5F5F500F5F5F500F3F3F300F2F2F200000000000000
      0000D4AD5D00CFA55500D0A65500D0A65500D0A65500D0A65500D0A65500D0A7
      5700CDA35300CCA25200CCA25200CA9D4C00E1B76500EAC98200CCC2B000C7CA
      D200C1C1C200BEBAB6007293B8006595CB003C77B600356EB100104AA0003771
      B1003E77B4003B75B3003C75B3003B74B2003B73B1003A72B0003A72B0003871
      AF003971AF003770AE003B74B0001547960000000000F1F3F40000000000C393
      5200C7893700C7893700C4812B00CEAF8A00EDEFF000EAE8E300E9E7E300E9E7
      E300EAE9E400ECEBE700ECEBE700EEEDEA00F0EFEC00ECE9E600EDECE800EEED
      E900EFEDEB00F0EFEC00F2F1EE00F2F1EE00F4F2EF00F4F2F000F5F3F100FAFC
      FD00C9B39800875014008F5F27008A6133008A61330000000000000000000000
      00000000000000000000EDE4D800EDE4D800EFE6DC00EEE7DC00EEE7DC00EDE5
      D900EDE5D900FFFFFF00E4D6C400D6C3AA00F2EFE600F2EFE600EFE7DD00F2EC
      E300E9E2D600E9E2D600E9E2D600A96D2700B2793700B47C3B00B57E3C00B57E
      3C00B4773000BDA18000EEEBE500FAF7F400FAF7F4009E6E37009E6E3700AE7D
      4400AC763700AC7637000000000000000000ECEBEB00FCFCFC00FBFBFB00FAFA
      FA00F9F9F900FAFAFA00FAFAFA00FDFDFD00DBDAD900E0DFDE00FFFFFD00BAB6
      EB000D00C9001300CD001900D0000000CD005F4FE000FFFFFB00FFFFFB001600
      D7001A00DA001800DB001A00DD00FFFFF900F9F9F700E0DEDD00F4F4F400F5F5
      F500F5F4F500F5F5F500F5F5F500F3F3F300F3F3F300F3F3F300000000000000
      0000F1E0BD00F0DDB000F1DDB100F1DDB100F1DDB100F1DDB100F1DDB100F3E1
      B800D7B06600CFA35200D0A25200FCD27C00988E760090A0BC00D5D6D600C9C9
      C900C1C1C100BEBAB6007294B9006695CC003B76B500407AB700427CB8003F78
      B6003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A72B0003A72
      B0003972B0003870AE003B74B0001549970000000000F1F3F40000000000C393
      5200C7893700C7893700C4812B00CEAF8A00EDEFF000EAE8E300E9E7E300E9E7
      E300EAE9E400ECEBE700ECEBE700EEEDEA00F0EFEC00ECE9E600EDECE800EEED
      E900EFEDEB00F0EFEC00F2F1EE00F2F1EE00F4F2EF00F4F2F000F5F3F100FAFC
      FD00C9B39800875014008F5F27008A6133008A61330000000000000000000000
      00000000000000000000EDE5DA00EDE5DA00EEE8DD00EFE8DD00EFE8DD00EDE7
      DB00EDE7DB00FAF8F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1EBE400AD6F2700B67D3B00B77F3E00B77F
      3E00B9814000B77A3200BEA28100F1F1EF00F1F1EF00A3743D00A3743D00B07F
      4600BD874900BD874900AD93750000000000EDECEC00FCFCFC00FAFAFA00F9F9
      F900FAFAFA00FAFAFA00FAFAFA00FDFEFE00D4D2D200E9E8E800FFFFFF00E7E7
      F9000000C8000F00CF001400D100CECBF200FFFFFC00FFFFF800FFFFF800CAC6
      F1000500D7001C00DB001100DC004431E300FFFFFA00DEDCDB00F6F6F600F5F5
      F500F5F5F500F4F4F400F4F4F400F3F4F400F3F3F30000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000DBB46E00D9AD5C00F8D2830056657F00001F8F0093A3BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007294B9006595CC003B76B5003F79B7003F78B6003E78
      B6003E77B5003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A73
      B1003A73B1003971AF003C75B100164A9A0000000000F1F2F40000000000C999
      5400CC8F3900CC8F3900CA882C00CFB18B00EFF1F200EBEAE600EBE9E500EAE8
      E400E9E8E400EAE9E500EAE9E500ECEAE600F0EFEB00EBE8E500EBE9E500ECEA
      E600EEEBE800EEECE900F0EEEB00F0EEEB00F1EFEC00F1EFEC00F1EFED00F6F8
      F900C6AF9500885115008F5E28008B6234008B62340000000000000000000000
      00000000000000000000EDE5DA00EDE5DA00EEE8DD00EFE8DD00EFE8DD00EDE7
      DB00EDE7DB00FAF8F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1EBE400AD6F2700B67D3B00B77F3E00B77F
      3E00B9814000B77A3200BEA28100F1F1EF00F1F1EF00A3743D00A3743D00B07F
      4600BD874900BD874900AD9375000000000000000000FCFCFC00F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FDFDFD00DEDCDC00BBB7B600BFBCBB00D5D3
      C4007C72C4004A39C300E5E4E100F7F7ED00F3F3F300F8F8F800F8F8F800FFFF
      FD008C83EC000700DA001D00DE000700DE008A80ED00F5F5DB00F7F7F700F5F5
      F500F4F4F300F3F3F400F3F3F400F4F3F300F3F2F200F6F5F400000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EBCB8900E9C98700F0F0F000002E9300002E8E0095A5BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007295BA006796CD003C77B6003F79B7003F79B7003E79
      B7003E78B6003D77B5003D76B4003D76B4003C76B4003C74B2003B74B2003A74
      B2003A73B1003A72B0003D76B200164C9C0000000000F1F2F40000000000CFA0
      5600D2963B00D2963B00D0902F00D0B38C00F1F2F300ECEAE600EDEAE600EBE9
      E500EBE9E400EAE9E400EAE9E400EBE9E400ECEBE600EEECE900E7E5E000E9E7
      E200EBE8E400ECE9E500EDEBE700EDEBE700EDECE800EDECE800EDEBE700F1F2
      F200C3AC920089541600905F27008C6335008C63350000000000F3F4F6000000
      00000000000000000000EEE6DA00EEE6DA00EEE9DE00EEE8DE00EEE8DE00EFE9
      DE00EFE9DE00EEE8DD00F6F1EC00F8F6F100F7F4F100F7F4F100F7F5F100F8F5
      F200F8F5F200F8F5F200F8F5F200FEFFFF00E7DBCC00B1732B00BA803F00BA80
      3F00BC834200BD844300BB7C3400C7AD8E00C7AD8E00A77A4700A77A4700B584
      4B00C7945800C7945800976F3F000000000000000000FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00F8F8F800000000000000000000000000F8F9
      F9000000000000000000E4E2DF00D9D7D700D4D1D000D0CDCC00D0CDCC00D1CD
      CC00EBEBD1004E3CD3000E00DD001C00DF000300DF00928ADE00FFFFF800F4F3
      F300F3F3F400F3F4F400F3F4F400F4F2F200F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000338F000030900095A6C000D8D5D100C9C9
      C900C1C1C100BEBAB6007395BA006697CD003C78B700417BB9003F79B7003F79
      B7003E78B6003E78B6003D78B6003D76B4003C76B4003C76B4003B75B3003B74
      B2003A73B1003A73B1003D77B300174D9D0000000000F1F2F40000000000D3A5
      5900D79E3B00D79E3B00D6973000D2B48E00F5F6F900EFEEEB00EFEEEA00EEED
      EA00EDECE900EDECE800EDECE800ECECE900ECEBE700EEEDEA00E9E8E300E7E6
      E100EAE9E400EAE8E500EBEAE600EBEAE600EBEAE700EAE9E500E9E9E500EDEE
      F000C1AA91008E571900916129008E6536008E65360000000000F3F4F6000000
      00000000000000000000EEE7DC00EEE7DC00EFE9DE00F0E9DF00F0E9DF00F0E9
      E000F0E9E000F1EBE000F0EADF00F0E8DE00F0EADF00F0EADF00F1E9E000F1EA
      E000F0EBE100F0EBE100F0EBE100F0EAE100F5F3EF00E5D8C900B6762E00B676
      2E00BC844100BE854400C0854300C3925A00C3925A00AB815100AB815100BA88
      5000CB985D00CB985D0099662A00EFEEED0000000000FBFBFB00FAFAFA00FAFA
      FA00FAFAFA00F8F8F800F8F8F800F9F9F900F8F8F800F7F7F700F8F8F800F8F8
      F800F9F9F900FAFAFA00F9F9F900FAFAFA000000000000000000000000000000
      00000000000000000000321DE0001000DE001C00E0000700E2009991ED00FFFF
      F500F3F4F400F4F2F200F4F2F200F3F3F300F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C000D7D5D100C9C9
      C900C1C1C100BEBAB6007395BA006797CE003D78B800407BB900417BB9003F79
      B7003F79B7003E79B7003F78B6003D77B5003D77B5003C76B4003C75B3003B75
      B3003B74B2003A73B1003E77B300174E9F0000000000F0F2F40000000000D8AC
      5B00DCA53C00DCA53C00DB9F3100D2B68E00F5F7F900F2EFEB00EFEEEA00F0ED
      EB00EEECE900EDEDE800EDEDE800EDEBE900EDEBE800EDEBE800EEECE900E5E3
      DE00E7E5E000E7E5E000E8E6E100E8E6E100E7E5E100E6E4E100E6E5E100E9EA
      E900BDA78C008F5A1800916428008F6937008F69370000000000F3F4F6000000
      000000000000F8F4F000EEE8DC00EEE8DC00F1E9E000F0E9E000F0E9E000F1EB
      E000F1EBE000F0EAE100F0EAE200F1ECE300F1EBE200F1EBE200F1ECE300F1EC
      E300F0EBE400F0EBE400F0EBE400F2EDE400F2ECE500F6F3EF00EBE5DB00EBE5
      DB00BA7D3800BF844100C0833D00CEAF8B00CEAF8B00B6895500B6895500BF8E
      5400CB9A6000CB9A6000BB8648000000000000000000FAFAFA00FAFAFA00FAFA
      FA00F8F8F800F9F9F900F9F9F900F8F8F800F7F7F700F8F8F800F8F8F800F8F8
      F800F8F8F800F6F6F600F7F6F700F7F7F700F5F5F500F6F6F600F6F6F600F5F5
      F500F5F4F400FAFAF500000000003D29E2000900DF000E00E1001600E4009B92
      ED0000000000F3F2F300F3F2F300F4F3F300F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003695000034950096A7C100D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006897CE003E7AB900427CBA00407BB900417A
      B800407AB800407AB8003F79B7003E78B6003D78B6003D77B5003D76B4003C75
      B3003C75B3003B74B2003E77B3001850A10000000000F0F1F40000000000DCB5
      5D00E0AC3F00E0AC3F00E1A93300D4BA8F00F7F8FC00F3F2EF00F2F1EE00F1F0
      EC00F1EFEC00F0EEEB00F0EEEB00EFEEEA00EFEDEA00EFEDEA00EFEEEC00ECEB
      E700E5E1DC00E5E2DD00E4E1DD00E4E1DD00E3E1DE00E2E0DB00E0DED900E0E0
      E100B9A3890094611B0095672900936D3900936D390000000000F3F4F6000000
      00000000000000000000EFE8DE00EFE8DE00F1EAE100F0EAE100F0EAE100F0EA
      E100F0EAE100F1EBE200F1ECE300F2ECE200F2ECE300F2ECE300F1EBE400F1EC
      E400F2EDE500F2EDE500F2EDE500F2ECE500F2EDE600F1EEE600F6F3EE00F6F3
      EE00EFEAE500C1894A00B8742600E8E5E000E8E5E000BD8C5500BD8C5500C493
      5A00CD9C6200CD9C6200D8A4670092734D00F2F2F200FAFAFA00FAFAFA00F8F8
      F800F9F9F900F9F9F900F9F9F900F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F6F6F600F7F6F700F7F7F700F5F5F500F6F6F600F5F6F500F5F6F500F4F4
      F400F4F5F500F5F5F500F8F8F500000000009C94EB00CBC7F00000000000F7F6
      F300F4F3F300F4F3F300F4F3F300F4F3F300F3F2F20000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003897000036970096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006798CF003E7AB900427DBB00427CBA00417B
      B900407BB900407AB800407AB8003E78B6003E78B6003E77B5003E77B5003D76
      B4003D76B4003B75B3003F78B4001951A20000000000F0F1F40000000000E1BE
      6000E4B73F00E4B73F00E4B13500D5BC9300FAFDFF00F6F5F400F5F4F300F4F3
      F200F3F2F100F1F1EF00F1F1EF00F2F1EE00F1F0EE00F0F0EE00F1EFED00EFF0
      ED00EAEAE700E4E4DF00E2E2DD00E2E2DD00E1DFDC00DEDDD900DBD9D600DADB
      DC00B5A1850098671D00976A2A0095713B0095713B0000000000F3F4F6000000
      00000000000000000000F0E9DF00F0E9DF00F0EAE100F1EBE200F1EBE200F2EB
      E200F2EBE200F0EBE200F1EDE200F1ECE300F1ECE400F1ECE400F3ECE400F2ED
      E400F2EDE500F2EDE500F2EDE500F1EDE500F2EEE600F4EDE600F3EEE700F3EE
      E700F4F3EC00F1EFE900E8DED200F7F8F700F7F8F700C18F5600C18F5600C998
      5E00D09F6500D09F6500E3B07500723C040000000000FAFAFA00F8F8F800F9F9
      F900F9F9F900F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8F800F6F6
      F600F7F7F700F7F7F700F5F5F500F6F6F600F5F6F500F4F4F400F4F4F400F5F5
      F500F4F5F500F4F5F500F5F5F500F4F4F3000000000000000000F5F4F200F4F3
      F300F4F3F300F4F3F300F4F3F300F4F3F300F2F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007496BB006898CF003F7BBA00427DBB00427DBB00417C
      BA00417CBA00407BB900407AB8003F79B7003F79B7003F79B7003E77B5003E77
      B5003D77B5003C75B3004079B5001953A50000000000F0F1F40000000000E3C4
      6100F0C84200F0C84200EDC23700D3BD9100FAFAFC00F7F4F200F6F4F100F5F1
      EE00F4F1ED00F3F0EC00F3F0EC00F1EFEB00F1EFEB00F0EFEB00F0EEE900F0EE
      E900EEEDE900E7E4E000E2DED900E2DED900DEDBD500D9D6D100D5D2CB00D0D1
      CF00B19C8100A1712100A0752C009A773C009A773C0000000000F3F4F5000000
      000000000000F7F4F100EFE9DF00EFE9DF00F2ECE200F1ECE200F1ECE200F1EC
      E200F1ECE200F2ECE400F1EBE300F2ECE400F2EDE400F2EDE400F3ECE500F2ED
      E500F1EEE700F1EEE700F1EEE700F3EDE600F4EEE600F2EFE800F1F0E700F1F0
      E700F3EFE800F4F0EC00F5F3ED00F7F6F300F7F6F300C7935900C7935900CD98
      5B00D19A5A00D19A5A00D4985500E3C6A50000000000F9F9F900F9F9F900F9F9
      F90000000000F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F6F6F600F7F7
      F700F6F6F600F6F6F600F6F7F700F6F5F600F4F4F400F5F5F500F5F5F500F4F5
      F500F5F5F500F5F5F500F3F3F300F3F4F400F3F4F400F4F2F200F4F3F300F4F3
      F300F3F3F300F4F3F300F4F3F300F3F1F100F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003C9B00003A9C0096A8C300D7D5D100C9C9
      C900C1C1C100BEBAB6007497BC006899CF003F7CBB00437EBC00427DBB00427C
      BA00417CBA00417CBA00407BB900407AB800407AB8003F79B7003F79B7003E78
      B6003E77B5003D77B5004079B5001A54A60000000000F0F1F40000000000EACD
      6400BB9D3700BB9D3700D7B23100D6C39500FEFFFF00FAF9F800F9F8F700F8F7
      F500F7F6F400F6F5F300F6F5F300F5F4F200F4F3F100F3F3EF00F2F1EE00F1F0
      ED00F0EFEC00EDEDEB00E5E3E000E5E3E000DDDCD800D7D6D200D0CFCB00C8C9
      C900AF9C7E00986F200081612500A17F4100A17F410000000000F2F3F5000000
      00000000000000000000F1EAE000F1EAE000F1EBE300F2ECE300F2ECE300F2EC
      E300F2ECE300F1ECE300F2ECE400F2ECE400F2EDE500F2EDE500F1EEE500F3EE
      E600F4EDE600F4EDE600F4EDE600F3EEE700F1F0E600F2EFE700F3EFEA00F3EF
      EA00F3EFE900F3F0E800F4F1EC00F6F3F100F6F3F100D0A26B00D0A26B00E5C8
      A700000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F800F8F8F800F8F8F800F7F8F70000000000F7F7F700F6F6
      F600F6F6F600F5F5F400F2F1F100F9F9F900F6F6F600F4F5F500F4F5F500F5F5
      F500F5F5F500F3F3F300F3F4F400F3F3F300F4F2F200F3F3F300F4F3F300F3F3
      F300F4F3F300F3F2F200F3F2F200F2F1F100F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003E9E00003C9E0098AAC500D7D5D100C9C9
      C900C1C1C100BEBAB6007597BC006999D000407DBC00437EBC00437EBC00427E
      BC00437CBA00417CBA00427CBA00407BB900407AB8003F79B7003F79B7003E79
      B7003E78B6003E77B500417AB6001A56A80000000000F0F1F40000000000EACD
      6400BB9D3700BB9D3700D7B23100D6C39500FEFFFF00FAF9F800F9F8F700F8F7
      F500F7F6F400F6F5F300F6F5F300F5F4F200F4F3F100F3F3EF00F2F1EE00F1F0
      ED00F0EFEC00EDEDEB00E5E3E000E5E3E000DDDCD800D7D6D200D0CFCB00C8C9
      C900AF9C7E00986F200081612500A17F4100A17F410000000000F2F3F5000000
      00000000000000000000EEE8DE00EEE8DE00F0EAE100EFEAE100EFEAE100F1EA
      E200F1EAE200F5F3EF00F7F5F400F6F7F500F7F8F600F7F8F600F9F7F600F9F8
      F500F7FAF700F7FAF700F7FAF700F6F9F400F5F4F000F3EEEA00F2EFE600F2EF
      E600F3EFE800F4EFEA00F4EFE900F3EEE900F3EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD8D500CECAB700C1BDA900F5F4F100F5F6F600F5F6F600F5F5
      F500F3F3F300F3F4F400F4F3F300F4F2F200F3F3F300F4F3F300F4F3F300F4F3
      F200F3F2F200F3F1F100F3F1F100F3F2F200F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B900DDD9D300C9C9
      C900C1C1C100BEBAB6007597BE00699AD100407DBC00447FBD00437FBD00447E
      BC00427EBC00437CBA00417DBB00417BB900417BB900407AB800407AB8003F79
      B7003E79B7003E77B500427BB7001A57A90000000000F0F1F40000000000EBCD
      5500AE932100AE932100D3AF1E00D1BE8A00FDFFFF00F9F9FB00F8F8FA00F7F7
      F900F6F5F700F5F4F500F5F4F500F4F3F400F3F2F300F1F1F100F0EFEF00EEED
      ED00EBEBE900EBEAE900E7E5E300E7E5E300DCDBD800D0CDCB00C8C6C400BBBD
      BD00A5916E00986E0E0079591200A07D3300A07D330000000000F2F3F5000000
      00000000000000000000EEE8DE00EEE8DE00F0EAE100EFEAE100EFEAE100F1EA
      E200F1EAE200F5F3EF00F7F5F400F6F7F500F7F8F600F7F8F600F9F7F600F9F8
      F500F7FAF700F7FAF700F7FAF700F6F9F400F5F4F000F3EEEA00F2EFE600F2EF
      E600F3EFE800F4EFEA00F4EFE900F3EEE900F3EEE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3E1DA00140FAA00140EC300DDDCDF00F9F9F600F9F9F600F3F3
      F300F3F3F300F3F3F300F3F2F200F3F2F200F3F3F300F4F3F300F4F3F300F3F1
      F100F2F1F100F2F2F200F2F2F200F3F2F200F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000446A5000648A700154C9B00D3CFC900DAD6
      CE00CECAC400CBC3B9007A9CBF006999D100417EBD004580BE004580BE00437F
      BD00447EBC00427EBC00437DBB00417CBA00407AB9003E79B8003D78B7003B76
      B5003A76B500407AB700467EB8001150A90000000000F0F0F200EFECE300ECDD
      A100EEDB8B00EEDB8B00F1DD8C00D6C69900DBCFB100DACDAD00D9CCAD00D9CB
      AD00D8CBAC00D7CAAB00D7CAAB00D7CAAC00D7CAAD00D6CAAE00D7CAB000D7CB
      B200D7CCB300D8CDB600DACEB900DACEB900D9D0BD00CBBFA700C3B59B00BFB3
      9B00BBAB8B00CBB47D00C5AF7B00C4B28900C4B2890000000000F1F2F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBBB9600D3AF8400D2AF8600D0AD8500D0AD8500CFAA8200CAA8
      7C00C59C6C00C59C6C00C59C6C00CBA77B00E1CDB60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9CAEC000000A5003332DF009594EF0000000000000000000000
      0000000000000000000000000000F3F2F200F3F1F100F2F1F100F2F0F000F2F0
      F000F2F1F100F2F1F100F2F1F100F2F1F100F1F0F00000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0001D5BB100094DA9000348A900094395004C6C
      9B00516F9B004B6894004D7DB2007BA6D8003D7BBC00447FBE00417EBD00407D
      BC003F7BBB003F7CBB003E7AB900417CBA004F85C0005E90C7006A98CB00729E
      CE0079A2D0006090C6001556AB00225EB2000000000000000000000000000000
      0000F0EFEC00F0EFEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEEEEC0000000000EDEDEB00EDEDEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFBB9200C88B4600C68B4800BF864200BF864200BB884F00D5B7
      9500F4ECE200F4ECE200F4ECE200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004845C600321BD7003035E300DFDFF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5001154B0000C52
      AF000C51B000094FAF001F62B40099BAE1006597CD00538BC5006797CC00709E
      D000739FD10074A0D20076A1D200729DD0005B8CC700437ABE00306CB7001C5C
      AF000B4FA9001254AD003B72BE005282C300000000000000000000000000F0F0
      F100F0F0F100F0F0F100F0F0F100F0F0F100F0F1F200F0F1F200F0F1F200F0F1
      F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1F200F0F1
      F200F0F1F100F0F1F100F0F1F100F0F1F100F0F0F100F0F1F200F1F1F200F1F1
      F200F0F1F200F0F1F100F0F1F100F0F0F100F0F0F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7ECDE00C9A07000D5C0A700EFEDEB00EFEDEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9BE6001700DE00D8DEFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00081A4D4004D80C4005988C8005988
      C8005988C8005988C8005484C600437DBF0076A0D2006E9ACF005387C500417A
      BE004178BE00477CC1004A7DC3004B7EC4004B7EC4004D80C5004F81C6005082
      C6005183C600497DC3006390CA00F0F0F000424D3E000000000000003E000000
      2800000090000000900000000100010000000000400B00000000000000000000
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65F6B0000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFCA17070000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA17070000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFA81B810000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0
      08800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF38002000000FF00004FFFF7FFD7
      7FFF000007FFEA0000000000FE000007FFE07FC03FFE000027FFEA0000000000
      FE000007FFC003807FFE000007FFE00000000000FE000007FFE000003FFE0000
      07FF800000010000FE00000FFFC000003FFE000007FD800000000000FE00001F
      FFC000003FFE000007FD800000000000FE00001FFFE000003FFE000007FB0000
      00020000FE00000FFFE000003FFE000007FA000000000000FE000007FFC00000
      7FFE000007FE000000010000FE000007FFC000007FFE000007F8000000000000
      FE000007FFC000007FFE000007F8000000000000FE00000FFFC000007FFE0000
      07F8000000000000FE00003FFFC000007FFE000007F0000000000000FE00003F
      FFE000007FFE000007F0000000000000FE00003FFFC000003FFE000007F00000
      00000000FE00003FFFC000007FFE000007F0000000000000FE00003FFFC00000
      3FFE000007F0000000000000FE00003FFFC000003FFE000007F0000000000000
      FE00003FFFC000003FFE000007F0000000000000FE00003FFFC000003FFE0000
      07F0000000000000FE00007FFFC000003FFE000007F0000000010000FE00087F
      FFC000007FFE000007F0000000050000FE0009FFFFE000003FFE000007F80000
      000F0000FE0003FFFFD000003FFE000007F80000000F0000FFFFFFFFFFFFFFFF
      FFFFFFFFFFF80000001F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003F0000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000007F0000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8000087F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF8000087F0000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE5401FFF0000FFFF0FFFFFFDFFFFFFFFFFFFFFFFFFFF
      FFFF0000FFFC07FFFFF1FFFFFFFFFFFFFFFFFFFFFFFF0000FFF801FFFFC0FFFF
      FFFFFFFFFFFFFFFFFFFF0000FFE0007FFF009E2FFFFFFFFFFFFFFFFFFFFF0000
      FFC0003FF800F01FFFFFFFFFFFFFFFFFFFFF0000FF00000FF809800FFFFFFFFF
      FFFFFFFFFFFF0000FE000007F8000007FFFF000007FFF000027F0000F8000001
      F8000003BFFE000007FFE000007F0000E000000078000000FFFE000007FFE000
      007F0000C000000038000000FFFE000007FFE000007F00008000000018000000
      33FE000007FFE000007F000000000000080000001FFE000007FFE000007F0000
      80000000180000000FFE000007FFE000007F0000E00000007800000007FE0000
      07FFE000007F0000F8000000F800000003FE000007FFE000007F0000FF000000
      3800000001FE000007FFE000007F0000FFC000007800000000FE000007FFE000
      007F0000FFF801F07800000000FE000007FFE000007F0000FFF803FFF8000000
      00FE000007FFE000007F0000FFF003FFF800000000FE000007FFE000007F0000
      FFF003FFF800000000FE000007FFE000007F0000FFF007FFF800000000FE0000
      07FFE000007F0000FFF007FFF800000000FE000007FFE000007F0000FFF803FF
      F800000000FE000007FFE000007F0000FFFC01FFF800000000FE000007FFE000
      007F0000FFFC01FFF800000000FE000007FFE000037F0000FFFE00FFF8000000
      00FE000007FFE000007F0000FFFF003FFC00000000FE000007FFE000007F0000
      FFFF8007FC00000000FE000007FFE000007F0000FFFFC001FE00000000FE0000
      07FFE000007F0000FFFFF000FF00000001FFFFFFFFFFFFFFFFFF0000FFFFFC00
      7F00000003FFFFFFFFFFFFFFFFFF0000FFFFFE003F4000007FFFFFFFFFFFFFFF
      FFFF0000FFFFFF803F300003FFFFFFFFFFFFFFFFFFFF0000FFFFFFE03FF8001F
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFC7FFE30FFFFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFBFFFFFFFFFFF8000000010000F00000007FFFFF81FFC007FF
      FFF0380000000000E3FFFFEFBFFDF001FFC00005FFF0000000000000FFFFFFFF
      DC0000007F801FF00010000000000000FFFFFFFFDC0000007F80080018000000
      00000000A00000005C0000007F8000000070000000000000A000000058000000
      7F8000000030000000000000A0000000500000007F8000000030000000000000
      A0000000500000007F8000000070000000000000A0000000580000001F800000
      0030000000000000A0000000780000007F8000000030000000000000A0000000
      780000001F8000000870000000000000A00000007C0000001F80000000F00000
      00000000A00000007C0000001F8000000070000000000000A00000007C000000
      1F0000000030000000000000A00000007C0000000F0000000030000000000000
      A00000007C0000000F0000000030000000000000A00000007C0000000F000000
      0030000000000000A00000007C0000000F0000000030000000000000A0000000
      7C000000030000000030000000000000A00000007C0000000300000000300000
      00000000A00000007C000000030000000030000000000000A00000007C000000
      010000000070000000000000A00000007C000000018000000030000000000000
      A00000005C0000000180EC000070000000000000A00000005C000000008000FC
      0070000000000000A000000058000000018000020870000000000000A0000000
      5C000000000000012070000000000000A00000005C00000000800000C0700000
      00000000A000000058000000008800000070000000000000A00000005C000000
      0FF840000070000000000000A00000005C0000007FFFF8000070000000000000
      A00000005C0000007FFFF8000070000000000000800000005FF8007FFFFFF87E
      0070000000000000F3FFFFFA7FF801FFFFFFF87FFFF0000000000000E0000000
      7FF83FFFFFFFF8FFFFF000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        IsMainMenu = True
        ItemLinks = <
          item
            Item = BLBColetor
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBETQ_REL_PAD
            Visible = True
          end
          item
            Item = BLQETQ_REL_RED
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBSalva
            Visible = True
          end
          item
            Item = BLBDelete
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBSaida
            Visible = True
          end>
        MultiLine = True
        Name = 'Toolbar'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      57
      0)
    inherited BLBValida: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBCancela: TdxBarLargeButton
      Hint = 'Limpa todos os erros da coleta e habilita valida'#231#227'o'
    end
    object BLBColetor: TdxBarLargeButton
      Action = ACTColetor
      Category = 0
      AutoGrayScale = False
      HotImageIndex = 4
    end
    object BLBETQ_REL_PAD: TdxBarLargeButton
      Action = ACTETQ_REL_PAD
      Category = 0
      AutoGrayScale = False
      HotImageIndex = 5
    end
    object BLQETQ_REL_RED: TdxBarLargeButton
      Action = ACTETQ_REL_RED
      Category = 0
      HotImageIndex = 11
    end
    object BLBDelete: TdxBarLargeButton
      Action = ACTDelete
      Category = 0
      HotImageIndex = 2
    end
  end
  inherited ALMain: TActionList
    inherited ACTSalva: TAction
      Enabled = False
    end
    inherited ACTCancela: TAction
      Enabled = False
    end
    object ACTColetor: TAction
      Category = 'Menu'
      Caption = 'Coletor'
      OnExecute = ACTColetorExecute
    end
    object ACTETQ_REL_PAD: TAction
      Category = 'Etiquetas'
      Caption = 'Padr'#227'o'
      Enabled = False
      Hint = 'Emiss'#227'o de Etiquetas - Modelo Padr'#227'o'
      OnExecute = ACTETQ_REL_PADExecute
    end
    object ACTDelete: TAction
      Category = 'Menu'
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir Erros do Coletor'
      OnExecute = ACTDeleteExecute
    end
    object ACTETQ_REL_RED: TAction
      Category = 'Etiquetas'
      Caption = 'Reduzido'
      Enabled = False
      Hint = 'Emiss'#227'o de Etiquetas - Modelo Reduzido'
      OnExecute = ACTETQ_REL_REDExecute
    end
  end
  inherited SQLEvent: TIBSQL
    Left = 776
    Top = 16
  end
  object Edicao: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSEdicao
    AfterDelete = EdicaoAfterDelete
    AfterOpen = EdicaoAfterOpen
    AfterPost = EdicaoAfterPost
    AfterScroll = EdicaoAfterScroll
    BeforeCancel = EdicaoBeforeCancel
    BeforeDelete = EdicaoBeforeDelete
    BeforeEdit = EdicaoBeforeEdit
    BeforeOpen = EdicaoBeforeOpen
    BeforePost = EdicaoBeforePost
    OnCalcFields = EdicaoCalcFields
    OnNewRecord = EdicaoNewRecord
    BufferChunks = 2500
    DeleteSQL.Strings = (
      'delete from ETIQUETAS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ETIQUETAS'
      
        '  (FLAG, ID, PRO_CART, PRO_CBAR, PRO_CCLF, PRO_CCLI, PRO_CDBE, P' +
        'RO_CDDF, '
      
        '   PRO_CDEP, PRO_CDET, PRO_CDPD, PRO_CDSP, PRO_CLST, PRO_CPRO, P' +
        'RO_CREP, '
      
        '   PRO_CTNR, PRO_CVEN, PRO_DCLI, PRO_DCOR, PRO_DEDF, PRO_DERO, P' +
        'RO_DGCP, '
      
        '   PRO_DPRO, PRO_DREP, PRO_DSEP, PRO_DUNI, PRO_DVEN, PRO_ERRO, P' +
        'RO_FATU, '
      
        '   PRO_FLAG, PRO_FOTO, PRO_IPRO, PRO_ITEM, PRO_LOTE, PRO_NFCI, P' +
        'RO_PBUN, '
      
        '   PRO_PCOR, PRO_PLUN, PRO_PREC, PRO_QCOR, PRO_QDIS, PRO_QSEP, P' +
        'RO_QTDE, '
      
        '   PRO_QTRL, PRO_QTUN, PRO_RCOR, PRO_RDIS, PRO_RSEP, PRO_STAV, P' +
        'RO_STCO, '
      
        '   PRO_STFI, PRO_STPD, PRO_TCDE, PRO_TSDE, PRO_UCON, PRO_UNIT, P' +
        'RO_VIPI)'
      'values'
      
        '  (:FLAG, :ID, :PRO_CART, :PRO_CBAR, :PRO_CCLF, :PRO_CCLI, :PRO_' +
        'CDBE, :PRO_CDDF, '
      
        '   :PRO_CDEP, :PRO_CDET, :PRO_CDPD, :PRO_CDSP, :PRO_CLST, :PRO_C' +
        'PRO, :PRO_CREP, '
      
        '   :PRO_CTNR, :PRO_CVEN, :PRO_DCLI, :PRO_DCOR, :PRO_DEDF, :PRO_D' +
        'ERO, :PRO_DGCP, '
      
        '   :PRO_DPRO, :PRO_DREP, :PRO_DSEP, :PRO_DUNI, :PRO_DVEN, :PRO_E' +
        'RRO, :PRO_FATU, '
      
        '   :PRO_FLAG, :PRO_FOTO, :PRO_IPRO, :PRO_ITEM, :PRO_LOTE, :PRO_N' +
        'FCI, :PRO_PBUN, '
      
        '   :PRO_PCOR, :PRO_PLUN, :PRO_PREC, :PRO_QCOR, :PRO_QDIS, :PRO_Q' +
        'SEP, :PRO_QTDE, '
      
        '   :PRO_QTRL, :PRO_QTUN, :PRO_RCOR, :PRO_RDIS, :PRO_RSEP, :PRO_S' +
        'TAV, :PRO_STCO, '
      
        '   :PRO_STFI, :PRO_STPD, :PRO_TCDE, :PRO_TSDE, :PRO_UCON, :PRO_U' +
        'NIT, :PRO_VIPI)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRO_CDEP,'
      '  PRO_CDPD,'
      '  PRO_DERO,'
      '  PRO_STCO,'
      '  PRO_STPD,'
      '  PRO_FATU,'
      '  PRO_STFI,'
      '  PRO_CLST,'
      '  PRO_CCLI,'
      '  PRO_DCLI,'
      '  PRO_CVEN,'
      '  PRO_DVEN,'
      '  PRO_CREP,'
      '  PRO_DREP,'
      '  PRO_ITEM,'
      '  PRO_CDET,'
      '  PRO_CTNR,'
      '  PRO_LOTE,'
      '  PRO_IPRO,'
      '  PRO_CART,'
      '  PRO_CCLF,'
      '  PRO_VIPI,'
      '  PRO_CPRO,'
      '  PRO_CBAR,'
      '  PRO_DPRO,'
      '  PRO_PCOR,'
      '  PRO_DCOR,'
      '  PRO_DGCP,'
      '  PRO_CDBE,'
      '  PRO_DUNI,'
      '  PRO_UCON,'
      '  PRO_QTUN,'
      '  PRO_PBUN,'
      '  PRO_PLUN,'
      '  PRO_QDIS,'
      '  PRO_RDIS,'
      '  PRO_QTDE,'
      '  PRO_QTRL,'
      '  PRO_QCOR,'
      '  PRO_RCOR,'
      '  PRO_QSEP,'
      '  PRO_RSEP,'
      '  PRO_PREC,'
      '  PRO_UNIT,'
      '  PRO_TSDE,'
      '  PRO_TCDE,'
      '  PRO_CDSP,'
      '  PRO_DSEP,'
      '  PRO_CDDF,'
      '  PRO_DEDF,'
      '  PRO_NFCI,'
      '  PRO_FOTO,'
      '  PRO_ERRO,'
      '  PRO_STAV,'
      '  PRO_FLAG,'
      '  FLAG'
      'from ETIQUETAS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   PK.ID,PK.PRO_CDEP,'
      '         PK.PRO_CDPD,PK.PRO_DERO,'
      
        '         PK.PRO_STCO,PK.PRO_STPD,PK.PRO_FATU,PK.PRO_STFI,PK.PRO_' +
        'CLST,'
      
        '         PK.PRO_CCLI,PK.PRO_DCLI,PK.PRO_CVEN,PK.PRO_DVEN,PK.PRO_' +
        'CREP,PK.PRO_DREP,'
      '         PK.PRO_ITEM,PK.PRO_CDET,PK.PRO_CTNR,PK.PRO_LOTE,'
      
        '         PK.PRO_IPRO,PK.PRO_CART,PK.PRO_CCLF,PK.PRO_VIPI,PK.PRO_' +
        'CPRO,PK.PRO_CBAR,'
      '         PK.PRO_DPRO,PK.PRO_PCOR,PK.PRO_DCOR,PK.PRO_DGCP,'
      
        '         PK.PRO_CDBE,PK.PRO_DUNI,PK.PRO_UCON,PK.PRO_QTUN,PK.PRO_' +
        'PBUN,PK.PRO_PLUN,'
      
        '         PK.PRO_QDIS,PK.PRO_RDIS,PK.PRO_QTDE,PK.PRO_QTRL,PK.PRO_' +
        'QCOR,PK.PRO_RCOR,PK.PRO_QSEP,PK.PRO_RSEP,'
      '         PK.PRO_PREC,PK.PRO_UNIT,'
      '         PK.PRO_TSDE,PK.PRO_TCDE,'
      '         PK.PRO_CDSP,PK.PRO_DSEP,'
      '         PK.PRO_CDDF,PK.PRO_DEDF,'
      '         PK.PRO_NFCI,'
      '         PK.PRO_FOTO,'
      '         PK.PRO_ERRO,'
      '         PK.PRO_STAV,PK.PRO_FLAG,'
      '         PK.FLAG'
      'FROM     ETIQUETAS AS PK'
      'WHERE    PK.PRO_FLAG = 0'
      'ORDER BY PK.PRO_CPRO')
    ModifySQL.Strings = (
      'update ETIQUETAS'
      'set'
      '  FLAG = :FLAG,'
      '  ID = :ID,'
      '  PRO_CART = :PRO_CART,'
      '  PRO_CBAR = :PRO_CBAR,'
      '  PRO_CCLF = :PRO_CCLF,'
      '  PRO_CCLI = :PRO_CCLI,'
      '  PRO_CDBE = :PRO_CDBE,'
      '  PRO_CDDF = :PRO_CDDF,'
      '  PRO_CDEP = :PRO_CDEP,'
      '  PRO_CDET = :PRO_CDET,'
      '  PRO_CDPD = :PRO_CDPD,'
      '  PRO_CDSP = :PRO_CDSP,'
      '  PRO_CLST = :PRO_CLST,'
      '  PRO_CPRO = :PRO_CPRO,'
      '  PRO_CREP = :PRO_CREP,'
      '  PRO_CTNR = :PRO_CTNR,'
      '  PRO_CVEN = :PRO_CVEN,'
      '  PRO_DCLI = :PRO_DCLI,'
      '  PRO_DCOR = :PRO_DCOR,'
      '  PRO_DEDF = :PRO_DEDF,'
      '  PRO_DERO = :PRO_DERO,'
      '  PRO_DGCP = :PRO_DGCP,'
      '  PRO_DPRO = :PRO_DPRO,'
      '  PRO_DREP = :PRO_DREP,'
      '  PRO_DSEP = :PRO_DSEP,'
      '  PRO_DUNI = :PRO_DUNI,'
      '  PRO_DVEN = :PRO_DVEN,'
      '  PRO_ERRO = :PRO_ERRO,'
      '  PRO_FATU = :PRO_FATU,'
      '  PRO_FLAG = :PRO_FLAG,'
      '  PRO_FOTO = :PRO_FOTO,'
      '  PRO_IPRO = :PRO_IPRO,'
      '  PRO_ITEM = :PRO_ITEM,'
      '  PRO_LOTE = :PRO_LOTE,'
      '  PRO_NFCI = :PRO_NFCI,'
      '  PRO_PBUN = :PRO_PBUN,'
      '  PRO_PCOR = :PRO_PCOR,'
      '  PRO_PLUN = :PRO_PLUN,'
      '  PRO_PREC = :PRO_PREC,'
      '  PRO_QCOR = :PRO_QCOR,'
      '  PRO_QDIS = :PRO_QDIS,'
      '  PRO_QSEP = :PRO_QSEP,'
      '  PRO_QTDE = :PRO_QTDE,'
      '  PRO_QTRL = :PRO_QTRL,'
      '  PRO_QTUN = :PRO_QTUN,'
      '  PRO_RCOR = :PRO_RCOR,'
      '  PRO_RDIS = :PRO_RDIS,'
      '  PRO_RSEP = :PRO_RSEP,'
      '  PRO_STAV = :PRO_STAV,'
      '  PRO_STCO = :PRO_STCO,'
      '  PRO_STFI = :PRO_STFI,'
      '  PRO_STPD = :PRO_STPD,'
      '  PRO_TCDE = :PRO_TCDE,'
      '  PRO_TSDE = :PRO_TSDE,'
      '  PRO_UCON = :PRO_UCON,'
      '  PRO_UNIT = :PRO_UNIT,'
      '  PRO_VIPI = :PRO_VIPI'
      'where'
      '  ID = :OLD_ID')
    Left = 632
    Top = 432
    object EdicaoID: TIntegerField
      FieldName = 'ID'
      Origin = '"ETIQUETAS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EdicaoPRO_CDEP: TSmallintField
      FieldName = 'PRO_CDEP'
      Origin = '"ETIQUETAS"."PRO_CDEP"'
    end
    object EdicaoPRO_CDPD: TIntegerField
      FieldName = 'PRO_CDPD'
      Origin = '"ETIQUETAS"."PRO_CDPD"'
    end
    object EdicaoPRO_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PRO_DERO'
      Origin = '"ETIQUETAS"."PRO_DERO"'
    end
    object EdicaoPRO_STCO: TIBStringField
      FieldName = 'PRO_STCO'
      Origin = '"ETIQUETAS"."PRO_STCO"'
      Size = 30
    end
    object EdicaoPRO_STPD: TIBStringField
      FieldName = 'PRO_STPD'
      Origin = '"ETIQUETAS"."PRO_STPD"'
      Size = 30
    end
    object EdicaoPRO_FATU: TIBStringField
      FieldName = 'PRO_FATU'
      Origin = '"ETIQUETAS"."PRO_FATU"'
      FixedChar = True
      Size = 1
    end
    object EdicaoPRO_STFI: TIBStringField
      FieldName = 'PRO_STFI'
      Origin = '"ETIQUETAS"."PRO_STFI"'
      Size = 30
    end
    object EdicaoPRO_CLST: TIBStringField
      FieldName = 'PRO_CLST'
      Origin = '"ETIQUETAS"."PRO_CLST"'
      FixedChar = True
      Size = 1
    end
    object EdicaoPRO_CCLI: TIntegerField
      FieldName = 'PRO_CCLI'
      Origin = '"ETIQUETAS"."PRO_CCLI"'
    end
    object EdicaoPRO_DCLI: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'PRO_DCLI'
      Origin = '"ETIQUETAS"."PRO_DCLI"'
      Size = 60
    end
    object EdicaoPRO_CVEN: TSmallintField
      FieldName = 'PRO_CVEN'
      Origin = '"ETIQUETAS"."PRO_CVEN"'
    end
    object EdicaoPRO_DVEN: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'PRO_DVEN'
      Origin = '"ETIQUETAS"."PRO_DVEN"'
      Size = 40
    end
    object EdicaoPRO_CREP: TSmallintField
      FieldName = 'PRO_CREP'
      Origin = '"ETIQUETAS"."PRO_CREP"'
    end
    object EdicaoPRO_DREP: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'PRO_DREP'
      Origin = '"ETIQUETAS"."PRO_DREP"'
      Size = 60
    end
    object EdicaoPRO_ITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'PRO_ITEM'
      Origin = '"ETIQUETAS"."PRO_ITEM"'
      DisplayFormat = '00000'
    end
    object EdicaoPRO_CDET: TLargeintField
      DisplayLabel = 'Etiqueta'
      FieldName = 'PRO_CDET'
      Origin = '"ETIQUETAS"."PRO_CDET"'
    end
    object EdicaoPRO_CTNR: TIBStringField
      FieldName = 'PRO_CTNR'
      Origin = '"ETIQUETAS"."PRO_CTNR"'
      Size = 30
    end
    object EdicaoPRO_LOTE: TIBStringField
      FieldName = 'PRO_LOTE'
      Origin = '"ETIQUETAS"."PRO_LOTE"'
      Size = 30
    end
    object EdicaoPRO_IPRO: TIntegerField
      FieldName = 'PRO_IPRO'
      Origin = '"ETIQUETAS"."PRO_IPRO"'
    end
    object EdicaoPRO_CART: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'PRO_CART'
      Origin = '"ETIQUETAS"."PRO_CART"'
    end
    object EdicaoPRO_CCLF: TIBStringField
      FieldName = 'PRO_CCLF'
      Origin = '"ETIQUETAS"."PRO_CCLF"'
      Size = 8
    end
    object EdicaoPRO_VIPI: TIBBCDField
      FieldName = 'PRO_VIPI'
      Origin = '"ETIQUETAS"."PRO_VIPI"'
      Precision = 18
      Size = 2
    end
    object EdicaoPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"ETIQUETAS"."PRO_CPRO"'
    end
    object EdicaoPRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"ETIQUETAS"."PRO_CBAR"'
    end
    object EdicaoPRO_DPRO: TIBStringField
      FieldName = 'PRO_DPRO'
      Origin = '"ETIQUETAS"."PRO_DPRO"'
      Size = 120
    end
    object EdicaoPRO_PCOR: TIBStringField
      FieldName = 'PRO_PCOR'
      Origin = '"ETIQUETAS"."PRO_PCOR"'
      Size = 30
    end
    object EdicaoPRO_DCOR: TIBStringField
      FieldName = 'PRO_DCOR'
      Origin = '"ETIQUETAS"."PRO_DCOR"'
      Size = 60
    end
    object EdicaoPRO_DGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'PRO_DGCP'
      Origin = '"ETIQUETAS"."PRO_DGCP"'
      Size = 60
    end
    object EdicaoPRO_CDBE: TIBStringField
      FieldName = 'PRO_CDBE'
      Origin = '"ETIQUETAS"."PRO_CDBE"'
      FixedChar = True
      Size = 2
    end
    object EdicaoPRO_DUNI: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRO_DUNI'
      Origin = '"ETIQUETAS"."PRO_DUNI"'
      Size = 10
    end
    object EdicaoPRO_UCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'PRO_UCON'
      Origin = '"ETIQUETAS"."PRO_UCON"'
      Size = 40
    end
    object EdicaoPRO_QTUN: TIBBCDField
      FieldName = 'PRO_QTUN'
      Origin = '"ETIQUETAS"."PRO_QTUN"'
      Precision = 9
      Size = 2
    end
    object EdicaoPRO_PBUN: TIBBCDField
      FieldName = 'PRO_PBUN'
      Origin = '"ETIQUETAS"."PRO_PBUN"'
      Precision = 9
      Size = 2
    end
    object EdicaoPRO_PLUN: TIBBCDField
      FieldName = 'PRO_PLUN'
      Origin = '"ETIQUETAS"."PRO_PLUN"'
      Precision = 9
      Size = 2
    end
    object EdicaoPRO_QDIS: TIBBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'PRO_QDIS'
      Origin = '"ETIQUETAS"."PRO_QDIS"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object EdicaoPRO_RDIS: TIntegerField
      FieldName = 'PRO_RDIS'
      Origin = '"ETIQUETAS"."PRO_RDIS"'
    end
    object EdicaoPRO_QTDE: TIBBCDField
      DisplayLabel = 'Pedido'
      FieldName = 'PRO_QTDE'
      Origin = '"ETIQUETAS"."PRO_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object EdicaoPRO_QTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'PRO_QTRL'
      Origin = '"ETIQUETAS"."PRO_QTRL"'
    end
    object EdicaoPRO_QCOR: TIBBCDField
      DisplayLabel = 'Corte'
      FieldName = 'PRO_QCOR'
      Origin = '"ETIQUETAS"."PRO_QCOR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object EdicaoPRO_RCOR: TIntegerField
      FieldName = 'PRO_RCOR'
      Origin = '"ETIQUETAS"."PRO_RCOR"'
    end
    object EdicaoPRO_QSEP: TIBBCDField
      FieldName = 'PRO_QSEP'
      Origin = '"ETIQUETAS"."PRO_QSEP"'
      Precision = 18
      Size = 4
    end
    object EdicaoPRO_RSEP: TIntegerField
      DisplayLabel = 'Pe'#231'a'
      FieldName = 'PRO_RSEP'
      Origin = '"ETIQUETAS"."PRO_RSEP"'
      DisplayFormat = '0'
    end
    object EdicaoPRO_PREC: TFloatField
      FieldName = 'PRO_PREC'
      Origin = '"ETIQUETAS"."PRO_PREC"'
    end
    object EdicaoPRO_UNIT: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_UNIT'
      Origin = '"ETIQUETAS"."PRO_UNIT"'
      DisplayFormat = 'R$ ,##,0.00'
    end
    object EdicaoPRO_TSDE: TIBBCDField
      FieldName = 'PRO_TSDE'
      Origin = '"ETIQUETAS"."PRO_TSDE"'
      Precision = 18
      Size = 2
    end
    object EdicaoPRO_TCDE: TIBBCDField
      FieldName = 'PRO_TCDE'
      Origin = '"ETIQUETAS"."PRO_TCDE"'
      Precision = 18
      Size = 2
    end
    object EdicaoPRO_CDSP: TIntegerField
      FieldName = 'PRO_CDSP'
      Origin = '"ETIQUETAS"."PRO_CDSP"'
    end
    object EdicaoPRO_DSEP: TIBStringField
      FieldName = 'PRO_DSEP'
      Origin = '"ETIQUETAS"."PRO_DSEP"'
      Size = 40
    end
    object EdicaoPRO_CDDF: TSmallintField
      FieldName = 'PRO_CDDF'
      Origin = '"ETIQUETAS"."PRO_CDDF"'
    end
    object EdicaoPRO_DEDF: TIBStringField
      FieldName = 'PRO_DEDF'
      Origin = '"ETIQUETAS"."PRO_DEDF"'
      Size = 60
    end
    object EdicaoPRO_NFCI: TIBStringField
      FieldName = 'PRO_NFCI'
      Origin = '"ETIQUETAS"."PRO_NFCI"'
      Size = 40
    end
    object EdicaoPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"ETIQUETAS"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object EdicaoPRO_ERRO: TIBStringField
      DisplayLabel = 'Erros do Coletor'
      FieldName = 'PRO_ERRO'
      Origin = '"ETIQUETAS"."PRO_ERRO"'
      Size = 120
    end
    object EdicaoPRO_STAV: TIBStringField
      FieldName = 'PRO_STAV'
      Origin = '"ETIQUETAS"."PRO_STAV"'
      FixedChar = True
      Size = 1
    end
    object EdicaoPRO_FLAG: TSmallintField
      FieldName = 'PRO_FLAG'
      Origin = '"ETIQUETAS"."PRO_FLAG"'
    end
    object EdicaoFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"ETIQUETAS"."FLAG"'
    end
    object EdicaoC_QTDI: TStringField
      DisplayLabel = 'Dispon'#237'vel'
      FieldKind = fkCalculated
      FieldName = 'C_QTDI'
      Calculated = True
    end
    object EdicaoC_QTFI: TStringField
      DisplayLabel = 'F'#237'sico'
      FieldKind = fkCalculated
      FieldName = 'C_QTFI'
      Calculated = True
    end
    object EdicaoC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  object TSEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBEDI
    DefaultAction = TARollbackRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 960
    Top = 120
  end
  object SQLSEdicao: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 992
    Top = 152
  end
  object DTSEdicao: TDataSource
    DataSet = Edicao
    OnStateChange = DTSEdicaoStateChange
    OnDataChange = DTSEdicaoDataChange
    Left = 664
    Top = 432
  end
  object ODExplorer: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Arquivos Textos|*.txt'
    InitialDir = 'C:\Sheild\Coletor'
    Left = 912
    Top = 120
  end
  object Erros: TIBQuery
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSEdicao
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT   PK.ID,PK.PRO_CDEP,'
      '         PK.PRO_CDPD,PK.PRO_DERO,'
      
        '         PK.PRO_STCO,PK.PRO_STPD,PK.PRO_FATU,PK.PRO_STFI,PK.PRO_' +
        'CLST,'
      
        '         PK.PRO_CCLI,PK.PRO_DCLI,PK.PRO_CVEN,PK.PRO_DVEN,PK.PRO_' +
        'CREP,PK.PRO_DREP,'
      '         PK.PRO_ITEM,PK.PRO_CDET,PK.PRO_CTNR,PK.PRO_LOTE,'
      
        '         PK.PRO_IPRO,PK.PRO_CART,PK.PRO_CCLF,PK.PRO_VIPI,PK.PRO_' +
        'CPRO,PK.PRO_CBAR,'
      '         PK.PRO_DPRO,PK.PRO_PCOR,PK.PRO_DCOR,PK.PRO_DGCP,'
      
        '         PK.PRO_CDBE,PK.PRO_DUNI,PK.PRO_UCON,PK.PRO_QTUN,PK.PRO_' +
        'PBUN,PK.PRO_PLUN,'
      '         PK.PRO_QTDE,PK.PRO_QTRL,PK.PRO_QCOR,PK.PRO_RCOR,'
      '         PK.PRO_PREC,PK.PRO_UNIT,'
      '         PK.PRO_TSDE,PK.PRO_TCDE,'
      '         PK.PRO_CDSP,PK.PRO_DSEP,'
      '         PK.PRO_CDDF,PK.PRO_DEDF,'
      '         PK.PRO_NFCI,'
      '         PK.PRO_FOTO,'
      '         PK.PRO_ERRO,'
      '         PK.PRO_STAV,PK.PRO_FLAG,'
      '         PK.FLAG'
      'FROM     ETIQUETAS AS PK'
      'WHERE    PK.PRO_FLAG =1'
      'ORDER BY PK.PRO_CPRO')
    Left = 632
    Top = 464
    object ErrosID: TIntegerField
      FieldName = 'ID'
      Origin = '"ETIQUETAS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ErrosPRO_CDEP: TSmallintField
      FieldName = 'PRO_CDEP'
      Origin = '"ETIQUETAS"."PRO_CDEP"'
    end
    object ErrosPRO_CDPD: TIntegerField
      FieldName = 'PRO_CDPD'
      Origin = '"ETIQUETAS"."PRO_CDPD"'
    end
    object ErrosPRO_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PRO_DERO'
      Origin = '"ETIQUETAS"."PRO_DERO"'
    end
    object ErrosPRO_STCO: TIBStringField
      FieldName = 'PRO_STCO'
      Origin = '"ETIQUETAS"."PRO_STCO"'
      Size = 30
    end
    object ErrosPRO_STPD: TIBStringField
      FieldName = 'PRO_STPD'
      Origin = '"ETIQUETAS"."PRO_STPD"'
      Size = 30
    end
    object ErrosPRO_FATU: TIBStringField
      FieldName = 'PRO_FATU'
      Origin = '"ETIQUETAS"."PRO_FATU"'
      FixedChar = True
      Size = 1
    end
    object ErrosPRO_STFI: TIBStringField
      FieldName = 'PRO_STFI'
      Origin = '"ETIQUETAS"."PRO_STFI"'
      Size = 30
    end
    object ErrosPRO_CLST: TIBStringField
      FieldName = 'PRO_CLST'
      Origin = '"ETIQUETAS"."PRO_CLST"'
      FixedChar = True
      Size = 1
    end
    object ErrosPRO_CCLI: TIntegerField
      FieldName = 'PRO_CCLI'
      Origin = '"ETIQUETAS"."PRO_CCLI"'
    end
    object ErrosPRO_DCLI: TIBStringField
      FieldName = 'PRO_DCLI'
      Origin = '"ETIQUETAS"."PRO_DCLI"'
      Size = 60
    end
    object ErrosPRO_CVEN: TSmallintField
      FieldName = 'PRO_CVEN'
      Origin = '"ETIQUETAS"."PRO_CVEN"'
    end
    object ErrosPRO_DVEN: TIBStringField
      FieldName = 'PRO_DVEN'
      Origin = '"ETIQUETAS"."PRO_DVEN"'
      Size = 40
    end
    object ErrosPRO_CREP: TSmallintField
      FieldName = 'PRO_CREP'
      Origin = '"ETIQUETAS"."PRO_CREP"'
    end
    object ErrosPRO_DREP: TIBStringField
      FieldName = 'PRO_DREP'
      Origin = '"ETIQUETAS"."PRO_DREP"'
      Size = 60
    end
    object ErrosPRO_ITEM: TIntegerField
      FieldName = 'PRO_ITEM'
      Origin = '"ETIQUETAS"."PRO_ITEM"'
    end
    object ErrosPRO_CDET: TLargeintField
      DisplayLabel = 'Etiqueta'
      FieldName = 'PRO_CDET'
      Origin = '"ETIQUETAS"."PRO_CDET"'
    end
    object ErrosPRO_CTNR: TIBStringField
      FieldName = 'PRO_CTNR'
      Origin = '"ETIQUETAS"."PRO_CTNR"'
      Size = 30
    end
    object ErrosPRO_LOTE: TIBStringField
      FieldName = 'PRO_LOTE'
      Origin = '"ETIQUETAS"."PRO_LOTE"'
      Size = 30
    end
    object ErrosPRO_IPRO: TIntegerField
      FieldName = 'PRO_IPRO'
      Origin = '"ETIQUETAS"."PRO_IPRO"'
    end
    object ErrosPRO_CART: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'PRO_CART'
      Origin = '"ETIQUETAS"."PRO_CART"'
    end
    object ErrosPRO_CCLF: TIBStringField
      FieldName = 'PRO_CCLF'
      Origin = '"ETIQUETAS"."PRO_CCLF"'
      Size = 8
    end
    object ErrosPRO_VIPI: TIBBCDField
      FieldName = 'PRO_VIPI'
      Origin = '"ETIQUETAS"."PRO_VIPI"'
      Precision = 18
      Size = 2
    end
    object ErrosPRO_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_CPRO'
      Origin = '"ETIQUETAS"."PRO_CPRO"'
    end
    object ErrosPRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"ETIQUETAS"."PRO_CBAR"'
    end
    object ErrosPRO_DPRO: TIBStringField
      FieldName = 'PRO_DPRO'
      Origin = '"ETIQUETAS"."PRO_DPRO"'
      Size = 120
    end
    object ErrosPRO_PCOR: TIBStringField
      FieldName = 'PRO_PCOR'
      Origin = '"ETIQUETAS"."PRO_PCOR"'
      Size = 30
    end
    object ErrosPRO_DCOR: TIBStringField
      FieldName = 'PRO_DCOR'
      Origin = '"ETIQUETAS"."PRO_DCOR"'
      Size = 60
    end
    object ErrosPRO_DGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'PRO_DGCP'
      Origin = '"ETIQUETAS"."PRO_DGCP"'
      Size = 60
    end
    object ErrosPRO_CDBE: TIBStringField
      FieldName = 'PRO_CDBE'
      Origin = '"ETIQUETAS"."PRO_CDBE"'
      FixedChar = True
      Size = 2
    end
    object ErrosPRO_DUNI: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRO_DUNI'
      Origin = '"ETIQUETAS"."PRO_DUNI"'
      Size = 10
    end
    object ErrosPRO_UCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'PRO_UCON'
      Origin = '"ETIQUETAS"."PRO_UCON"'
      Size = 40
    end
    object ErrosPRO_QTUN: TIBBCDField
      FieldName = 'PRO_QTUN'
      Origin = '"ETIQUETAS"."PRO_QTUN"'
      Precision = 9
      Size = 2
    end
    object ErrosPRO_PBUN: TIBBCDField
      FieldName = 'PRO_PBUN'
      Origin = '"ETIQUETAS"."PRO_PBUN"'
      Precision = 9
      Size = 2
    end
    object ErrosPRO_PLUN: TIBBCDField
      FieldName = 'PRO_PLUN'
      Origin = '"ETIQUETAS"."PRO_PLUN"'
      Precision = 9
      Size = 2
    end
    object ErrosPRO_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'PRO_QTDE'
      Origin = '"ETIQUETAS"."PRO_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object ErrosPRO_QTRL: TIntegerField
      FieldName = 'PRO_QTRL'
      Origin = '"ETIQUETAS"."PRO_QTRL"'
    end
    object ErrosPRO_QCOR: TIBBCDField
      FieldName = 'PRO_QCOR'
      Origin = '"ETIQUETAS"."PRO_QCOR"'
      Precision = 18
      Size = 2
    end
    object ErrosPRO_RCOR: TIntegerField
      FieldName = 'PRO_RCOR'
      Origin = '"ETIQUETAS"."PRO_RCOR"'
    end
    object ErrosPRO_PREC: TFloatField
      FieldName = 'PRO_PREC'
      Origin = '"ETIQUETAS"."PRO_PREC"'
    end
    object ErrosPRO_UNIT: TFloatField
      FieldName = 'PRO_UNIT'
      Origin = '"ETIQUETAS"."PRO_UNIT"'
    end
    object ErrosPRO_TSDE: TIBBCDField
      FieldName = 'PRO_TSDE'
      Origin = '"ETIQUETAS"."PRO_TSDE"'
      Precision = 18
      Size = 2
    end
    object ErrosPRO_TCDE: TIBBCDField
      FieldName = 'PRO_TCDE'
      Origin = '"ETIQUETAS"."PRO_TCDE"'
      Precision = 18
      Size = 2
    end
    object ErrosPRO_CDSP: TIntegerField
      FieldName = 'PRO_CDSP'
      Origin = '"ETIQUETAS"."PRO_CDSP"'
    end
    object ErrosPRO_DSEP: TIBStringField
      FieldName = 'PRO_DSEP'
      Origin = '"ETIQUETAS"."PRO_DSEP"'
      Size = 40
    end
    object ErrosPRO_CDDF: TSmallintField
      FieldName = 'PRO_CDDF'
      Origin = '"ETIQUETAS"."PRO_CDDF"'
    end
    object ErrosPRO_DEDF: TIBStringField
      FieldName = 'PRO_DEDF'
      Origin = '"ETIQUETAS"."PRO_DEDF"'
      Size = 60
    end
    object ErrosPRO_NFCI: TIBStringField
      FieldName = 'PRO_NFCI'
      Origin = '"ETIQUETAS"."PRO_NFCI"'
      Size = 40
    end
    object ErrosPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"ETIQUETAS"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ErrosPRO_ERRO: TIBStringField
      DisplayLabel = 'Erro Coletor'
      FieldName = 'PRO_ERRO'
      Origin = '"ETIQUETAS"."PRO_ERRO"'
      Size = 120
    end
    object ErrosPRO_STAV: TIBStringField
      FieldName = 'PRO_STAV'
      Origin = '"ETIQUETAS"."PRO_STAV"'
      FixedChar = True
      Size = 1
    end
    object ErrosPRO_FLAG: TSmallintField
      FieldName = 'PRO_FLAG'
      Origin = '"ETIQUETAS"."PRO_FLAG"'
    end
    object ErrosFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"ETIQUETAS"."FLAG"'
    end
  end
  object DTSErros: TDataSource
    DataSet = Erros
    OnDataChange = DTSErrosDataChange
    Left = 664
    Top = 464
  end
  object SQLEdicaoAux: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 1184
    Top = 120
  end
  object SQLConsultaAux: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 1088
    Top = 120
  end
  object SQLFKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 1056
    Top = 152
  end
  object SQLFKEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 1152
    Top = 152
  end
  object SQLSFKEdicao: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 992
    Top = 184
  end
  object SQLSConsulta: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 992
    Top = 120
  end
  object Pedidos: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = PedidosAfterOpen
    AfterScroll = PedidosAfterScroll
    BeforeOpen = PedidosBeforeOpen
    SQL.Strings = (
      'SELECT   FK.ID,FK.IDEP,'
      '         PK.ID AS IDPK  ,PK.DEPK,PK.DTCA AS DTPK,PK.CTNR,'
      
        '         PK.CDRO,PK.DTRO,PK.CDNF,PK.DTNF,PK.CDBX,PK.CDST,PK.REST' +
        ',PK.DEST,'
      
        '         PK.IDCD,CD.FANTASIA AS DECD,CD.REST AS CD_REST,PK.IDCV,' +
        'CV.LOGIN AS DECV,PK.IDCR,CR.FANTASIA AS DECR,'
      '         PK.TPCO,PK.RECO,PK.CDPG,'
      
        '         TRIM(CAST(SUBSTRING(PK.INFADPED FROM 1 FOR 812) AS VARC' +
        'HAR(812))) AS INFADPED,'
      
        '         TRIM(CAST(SUBSTRING(PK.INFADFIN FROM 1 FOR 812) AS VARC' +
        'HAR(812))) AS INFADFIN,'
      '         FK.ID AS IDFK,FK.ITEM,'
      '         FK.IDCP,FK.CP_IDEP,'
      '         FK.ARTIGO,FK.SKU,FK.CEAN,FK.DECP,FK.DGCP,'
      '         FK.UCOM,FK.UCON,CP.UPSBR,CP.UPSLQ,'
      '         FK.QTDE,FK.QTRL,FK.QTSP,FK.RLSP,FK.PSBR,FK.PSLQ,'
      '         FK.VPRC_PAD_INI,FK.VPRC_PAD_FIM,'
      '         FK.VPRC_PAD,FK.VPRC_COM,'
      '         FK.PDSC,FK.VDSC,'
      '         FK.TSDE,FK.TCDE,'
      '         FK.ORIG,FK.NCM ,FK.PIPI,FK.VIPI,'
      '         PK.STCO,PK.FAPD,PK.STPD,'
      
        '         NULLIF(TRIM(CAST(IIF(CP.PRO_COMP IS NOT NULL,CP.PRO_COM' +
        'P||ASCII_CHAR(13)||ASCII_CHAR(10),'#39#39') AS VARCHAR(120)))||'
      
        '                TRIM(CAST(IIF(CP.INFADCAD IS NOT NULL,SUBSTRING(' +
        'CP.INFADCAD FROM 1 FOR 640)      ,'#39#39') AS VARCHAR(640))),'#39#39') AS I' +
        'NFADCAD,'
      '         PK.IDEV,PK.IP,PK.HOST'
      'FROM     PED_VEN_CAB AS PK'
      'JOIN     CAD_CLI     AS CD ON (CD.ID   = PK.IDCD)'
      'JOIN     TAB_USER    AS CV ON (CV.ID   = PK.IDCV)'
      'JOIN     CAD_REP     AS CR ON (CR.IDCR = PK.IDCR)'
      'JOIN     PED_VEN_ITE AS FK ON (FK.IDPK = PK.IDPK)'
      'JOIN     CAD_PRO     AS CP ON (CP.ID   = FK.IDCP)'
      'WHERE    PK.DEPK = :DEPK'
      'ORDER BY FK.VPRC_COM DESC')
    Left = 1024
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DEPK'
        ParamType = ptUnknown
      end>
    object PedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_VEN_CAB_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PedidosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"PED_VEN_ITE"."IDEP"'
    end
    object PedidosIDPK: TIntegerField
      FieldName = 'IDPK'
      Origin = '"PED_VEN_CAB"."ID"'
    end
    object PedidosDEPK: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPK'
      Origin = '"PED_VEN_CAB"."DEPD"'
      Size = 30
    end
    object PedidosDTPK: TDateTimeField
      FieldName = 'DTPK'
      Origin = '"PED_VEN_CAB"."DTCA"'
    end
    object PedidosCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"PED_VEN_CAB"."CTNR"'
    end
    object PedidosCDRO: TLargeintField
      FieldName = 'CDRO'
      Origin = '"PED_VEN_CAB"."CDRO"'
    end
    object PedidosDTRO: TDateTimeField
      FieldName = 'DTRO'
      Origin = '"PED_VEN_CAB"."DTRO"'
    end
    object PedidosCDNF: TLargeintField
      FieldName = 'CDNF'
      Origin = '"PED_VEN_CAB"."CDNF"'
    end
    object PedidosDTNF: TDateTimeField
      FieldName = 'DTNF'
      Origin = '"PED_VEN_CAB"."DTNF"'
    end
    object PedidosCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"PED_VEN_CAB"."CDBX"'
    end
    object PedidosCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"PED_VEN_CAB"."CDST"'
    end
    object PedidosREST: TIBStringField
      FieldName = 'REST'
      Origin = '"PED_VEN_CAB"."REST"'
      Size = 10
    end
    object PedidosDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"PED_VEN_CAB"."DEST"'
      Size = 30
    end
    object PedidosIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"PED_VEN_CAB"."IDCD"'
    end
    object PedidosDECD: TIBStringField
      FieldName = 'DECD'
      Origin = '"CAD_CLI"."FANTASIA"'
      Size = 60
    end
    object PedidosCD_REST: TIBStringField
      FieldName = 'CD_REST'
      Origin = '"CAD_CLI"."REST"'
      Size = 10
    end
    object PedidosIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"PED_VEN_CAB"."IDCV"'
    end
    object PedidosDECV: TIBStringField
      FieldName = 'DECV'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object PedidosIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"PED_VEN_CAB"."IDCR"'
    end
    object PedidosDECR: TIBStringField
      FieldName = 'DECR'
      Origin = '"CAD_REP"."FANTASIA"'
      Size = 60
    end
    object PedidosTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"PED_VEN_CAB"."TPCO"'
    end
    object PedidosRECO: TIBStringField
      FieldName = 'RECO'
      Origin = '"PED_VEN_CAB"."RECO"'
      Size = 3
    end
    object PedidosCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"PED_VEN_CAB"."CDPG"'
    end
    object PedidosINFADPED: TIBStringField
      FieldName = 'INFADPED'
      ProviderFlags = []
      Size = 812
    end
    object PedidosINFADFIN: TIBStringField
      FieldName = 'INFADFIN'
      ProviderFlags = []
      Size = 812
    end
    object PedidosIDFK: TIntegerField
      FieldName = 'IDFK'
      Origin = '"PED_VEN_ITE_004"."ID"'
    end
    object PedidosITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"PED_VEN_ITE_004"."ITEM"'
    end
    object PedidosIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"PED_VEN_ITE_004"."IDCP"'
    end
    object PedidosCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"PED_VEN_ITE"."CP_IDEP"'
    end
    object PedidosARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object PedidosSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object PedidosCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"PED_VEN_ITE"."CEAN"'
    end
    object PedidosDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"PED_VEN_ITE_004"."DECP"'
      Size = 120
    end
    object PedidosDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"PED_VEN_ITE_004"."DGCP"'
      Size = 60
    end
    object PedidosUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"PED_VEN_ITE_004"."UCOM"'
      Size = 10
    end
    object PedidosUCON: TIBStringField
      FieldName = 'UCON'
      Origin = '"PED_VEN_ITE_004"."UCON"'
      Size = 40
    end
    object PedidosUPSBR: TIBBCDField
      FieldName = 'UPSBR'
      Origin = '"CAD_PRO"."UPSBR"'
      Precision = 9
      Size = 3
    end
    object PedidosUPSLQ: TIBBCDField
      FieldName = 'UPSLQ'
      Origin = '"CAD_PRO"."UPSLQ"'
      Precision = 9
      Size = 3
    end
    object PedidosQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"PED_VEN_ITE_004"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"PED_VEN_ITE_004"."QTRL"'
      DisplayFormat = '0'
    end
    object PedidosQTSP: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTSP'
      Origin = '"PED_VEN_ITE"."QTSP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object PedidosRLSP: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'RLSP'
      Origin = '"PED_VEN_ITE"."RLSP"'
      DisplayFormat = '0'
    end
    object PedidosPSBR: TIBBCDField
      FieldName = 'PSBR'
      Origin = '"PED_VEN_ITE"."PSBR"'
      Precision = 18
      Size = 3
    end
    object PedidosPSLQ: TIBBCDField
      FieldName = 'PSLQ'
      Origin = '"PED_VEN_ITE"."PSLQ"'
      Precision = 18
      Size = 3
    end
    object PedidosVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"PED_VEN_ITE_004"."VPRC_PAD_INI"'
    end
    object PedidosVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"PED_VEN_ITE_004"."VPRC_PAD_FIM"'
    end
    object PedidosVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"PED_VEN_ITE_004"."VPRC_PAD"'
    end
    object PedidosPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"PED_VEN_ITE_004"."PDSC"'
      Precision = 9
      Size = 2
    end
    object PedidosVDSC: TFloatField
      FieldName = 'VDSC'
      Origin = '"PED_VEN_ITE_004"."VDSC"'
    end
    object PedidosVPRC_COM: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'VPRC_COM'
      Origin = '"PED_VEN_ITE_004"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object PedidosORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"PED_VEN_ITE"."ORIG"'
    end
    object PedidosNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PED_VEN_ITE_004"."NCM"'
      FixedChar = True
      Size = 8
    end
    object PedidosPIPI: TIBBCDField
      FieldName = 'PIPI'
      Origin = '"PED_VEN_ITE_004"."PIPI"'
      Precision = 9
      Size = 2
    end
    object PedidosVIPI: TFloatField
      FieldName = 'VIPI'
      Origin = '"PED_VEN_ITE"."VIPI"'
    end
    object PedidosTSDE: TIBBCDField
      FieldName = 'TSDE'
      Origin = '"PED_VEN_ITE"."TSDE"'
      Precision = 18
      Size = 2
    end
    object PedidosTCDE: TIBBCDField
      FieldName = 'TCDE'
      Origin = '"PED_VEN_ITE"."TCDE"'
      Precision = 18
      Size = 2
    end
    object PedidosSTCO: TIBStringField
      FieldName = 'STCO'
      Origin = '"PED_VEN_CAB"."STCO"'
      Size = 60
    end
    object PedidosFAPD: TSmallintField
      FieldName = 'FAPD'
      Origin = '"PED_VEN_CAB"."FAPD"'
    end
    object PedidosSTPD: TIBStringField
      FieldName = 'STPD'
      Origin = '"PED_VEN_CAB"."STPD"'
      Size = 60
    end
    object PedidosINFADCAD: TIBStringField
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 760
    end
    object PedidosIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"PED_VEN_CAB"."IDEV"'
    end
    object PedidosIP: TIBStringField
      FieldName = 'IP'
      Origin = '"PED_VEN_CAB"."IP"'
      Size = 30
    end
    object PedidosHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"PED_VEN_CAB"."HOST"'
      Size = 30
    end
  end
  object DTSPedidos: TDataSource
    DataSet = Pedidos
    Left = 1056
    Top = 216
  end
  object SQLPKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 1088
    Top = 152
  end
end
