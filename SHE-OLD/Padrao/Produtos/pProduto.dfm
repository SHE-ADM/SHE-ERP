inherited FrmProduto: TFrmProduto
  Left = -8
  Top = -8
  HelpType = htKeyword
  HelpKeyword = '1'
  HelpContext = 95
  AlphaBlendValue = 95
  Caption = 'Cadastro de Produtos'
  ClientHeight = 1009
  ClientWidth = 1920
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 988
    Width = 1920
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
        Width = 1640
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
  inherited PCPrincipal: TdxPageControl
    Top = 81
    Width = 1920
    Height = 907
    inherited TSPrincipal: TdxTabSheet
      inherited PNLPrincipal: TPanel
        Width = 1920
        Height = 907
        inherited DSConsulta: TdxDockSite
          Width = 1920
          Height = 907
          DockType = 0
          OriginalWidth = 1920
          OriginalHeight = 907
          inherited dxLayoutDockSite3: TdxLayoutDockSite
            Width = 1888
            Height = 907
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
            inherited dxLayoutDockSite2: TdxLayoutDockSite
              Width = 1888
              Height = 907
              DockType = 1
              OriginalWidth = 300
              OriginalHeight = 200
            end
            inherited DPEdicao: TdxDockPanel
              Left = -100
              Height = 907
              CaptionButtons = []
              AutoHidePosition = 0
              DockType = 2
              OriginalWidth = 100
              OriginalHeight = 573
              inherited SBEdicao: TdxSideBar
                Height = 882
              end
            end
          end
          inherited DPConsulta: TdxDockPanel
            Width = 1888
            Height = 907
            DockType = 1
            OriginalWidth = 470
            OriginalHeight = 285
            inherited PNLConsulta: TPanel
              Top = 290
              Width = 1884
              Height = 592
              TabOrder = 1
              inherited DBGConsulta: TdxDBGrid
                Left = 874
                Top = -19
                Width = 9
                Height = 9
                Align = alNone
                Enabled = False
                Visible = False
                Filter.Criteria = {00000000}
              end
              object PNLConsulta_Produtos: TPanel
                Left = 0
                Top = 0
                Width = 1884
                Height = 592
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object PNLEstoque: TPanel
                  Left = 0
                  Top = 0
                  Width = 640
                  Height = 592
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object GBPosicao: TGroupBox
                    Left = 0
                    Top = 510
                    Width = 640
                    Height = 82
                    Align = alBottom
                    Caption = '  Posi'#231#245'es '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold, fsItalic]
                    ParentFont = False
                    TabOrder = 1
                    object DBGPosicao: TdxDBGrid
                      Left = 2
                      Top = 19
                      Width = 636
                      Height = 61
                      Bands = <
                        item
                          Caption = 'Qualidade A'
                          MinWidth = 100
                          Width = 129
                        end
                        item
                          Caption = 'Qualidade B'
                          MinWidth = 100
                          Width = 129
                        end
                        item
                          Caption = 'Qualidade C'
                          MinWidth = 100
                          Width = 130
                        end
                        item
                          Caption = 'Pilotagem'
                          MinWidth = 100
                          Width = 131
                        end>
                      DefaultLayout = False
                      HeaderPanelMaxRowCount = 2
                      HeaderPanelRowCount = 1
                      KeyField = 'ID'
                      PartialLoadBufferCount = 200
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
                      BandColor = clSilver
                      BandFont.Charset = ANSI_CHARSET
                      BandFont.Color = clWindowText
                      BandFont.Height = -13
                      BandFont.Name = 'Segoe UI Semibold'
                      BandFont.Style = [fsBold, fsItalic]
                      DataSource = DTSProdutos
                      Filter.Active = True
                      Filter.Criteria = {00000000}
                      FixedBandLineColor = clSilver
                      FixedBandLineWidth = 1
                      GridLineColor = clSilver
                      HeaderFont.Charset = ANSI_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Segoe UI'
                      HeaderFont.Style = [fsItalic]
                      HideFocusRect = True
                      HideSelection = True
                      HideSelectionColor = 14789952
                      HighlightColor = 14789952
                      IndentDesc = 5
                      LookAndFeel = lfUltraFlat
                      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                      OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoUseBitmap]
                      PreviewFont.Charset = ANSI_CHARSET
                      PreviewFont.Color = clHighlightText
                      PreviewFont.Height = -11
                      PreviewFont.Name = 'Segoe UI Semibold'
                      PreviewFont.Style = [fsBold, fsItalic]
                      ScrollBars = ssNone
                      ShowBands = True
                      ShowRowFooter = True
                      OnCustomDrawCell = DBGPosicaoCustomDrawCell
                      object DBGPosicaoEA_QTDE: TdxDBGridCurrencyColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 98
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'EA_QTDE'
                        DisplayFormat = ',##,0.00;-,##,0.00'
                        Nullable = False
                        DisableFilter = True
                      end
                      object DBGPosicaoEA_QTRL: TdxDBGridMaskColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 60
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'EA_QTRL'
                        DisableFilter = True
                      end
                      object DBGPosicaoEB_QTDE: TdxDBGridCurrencyColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 98
                        BandIndex = 1
                        RowIndex = 0
                        FieldName = 'EB_QTDE'
                        DisplayFormat = ',##,0.00;-,##,0.00'
                        Nullable = False
                        DisableFilter = True
                      end
                      object DBGPosicaoEB_QTRL: TdxDBGridMaskColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 60
                        BandIndex = 1
                        RowIndex = 0
                        FieldName = 'EB_QTRL'
                        DisableFilter = True
                      end
                      object DBGPosicaoEC_QTDE: TdxDBGridCurrencyColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 98
                        BandIndex = 2
                        RowIndex = 0
                        FieldName = 'EC_QTDE'
                        DisplayFormat = ',##,0.00;-,##,0.00'
                        Nullable = False
                        DisableFilter = True
                      end
                      object DBGPosicaoEC_QTRL: TdxDBGridMaskColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 60
                        BandIndex = 2
                        RowIndex = 0
                        FieldName = 'EC_QTRL'
                        DisableFilter = True
                      end
                      object DBGPosicaoEPI_QTDE: TdxDBGridCurrencyColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 98
                        BandIndex = 3
                        RowIndex = 0
                        FieldName = 'EPI_QTDE'
                        DisplayFormat = ',##,0.00;-,##,0.00'
                        Nullable = False
                        DisableFilter = True
                      end
                      object DBGPosicaoEPI_QTRL: TdxDBGridMaskColumn
                        Color = clWhite
                        HeaderAlignment = taRightJustify
                        Width = 60
                        BandIndex = 3
                        RowIndex = 0
                        FieldName = 'EPI_QTRL'
                        DisableFilter = True
                      end
                    end
                  end
                  object GBEstoque: TGroupBox
                    Left = 0
                    Top = 0
                    Width = 640
                    Height = 510
                    Align = alClient
                    Caption = '  Estoque  '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold, fsItalic]
                    ParentFont = False
                    TabOrder = 0
                    object DBGProdutos: TdxDBGrid
                      Left = 2
                      Top = 19
                      Width = 636
                      Height = 489
                      Bands = <
                        item
                          Caption = 'Produtos'
                        end
                        item
                          Alignment = taLeftJustify
                          Caption = 'Pronta Entrega'
                          MinWidth = 100
                          Width = 291
                        end
                        item
                          Alignment = taLeftJustify
                          Caption = 'Saldo Programado'
                        end
                        item
                          Caption = 'Estoque'
                        end
                        item
                          Caption = 'Nosso C'#243'digo'
                        end
                        item
                          Caption = 'Fornecedor'
                        end>
                      DefaultLayout = False
                      HeaderPanelMaxRowCount = 2
                      HeaderPanelRowCount = 1
                      KeyField = 'ID'
                      PartialLoadBufferCount = 200
                      ShowSummaryFooter = True
                      SummaryGroups = <>
                      SummarySeparator = ', '
                      Align = alClient
                      BorderStyle = bsNone
                      Color = clGray
                      Ctl3D = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 0
                      OnKeyDown = DBGConsultaKeyDown
                      AutoSearchColor = 9395
                      AutoSearchTextColor = clWhite
                      BandColor = clSilver
                      BandFont.Charset = ANSI_CHARSET
                      BandFont.Color = clBlack
                      BandFont.Height = -13
                      BandFont.Name = 'Tahoma'
                      BandFont.Style = [fsBold]
                      DataSource = DTSProdutos
                      Filter.Active = True
                      Filter.Criteria = {00000000}
                      FixedBandLineColor = clSilver
                      FixedBandLineWidth = 1
                      GridLineColor = clSilver
                      HeaderFont.Charset = ANSI_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Segoe UI'
                      HeaderFont.Style = [fsItalic]
                      HideFocusRect = True
                      HideSelectionColor = 14789952
                      HighlightColor = 14789952
                      IndentDesc = 0
                      LookAndFeel = lfUltraFlat
                      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                      OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                      PreviewFieldName = 'ECO_DECO'
                      PreviewFont.Charset = ANSI_CHARSET
                      PreviewFont.Color = clAqua
                      PreviewFont.Height = -12
                      PreviewFont.Name = 'Segoe UI Semibold'
                      PreviewFont.Style = [fsBold, fsItalic]
                      PreviewLines = 1
                      ShowBands = True
                      ShowGrid = False
                      ShowRowFooter = True
                      OnCustomDrawCell = DBGProdutosCustomDrawCell
                      object DBGProdutosRGCP: TdxDBGridMaskColumn
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
                        FieldName = 'RGCP'
                        SummaryFooterType = cstCount
                        SummaryFooterField = 'ID'
                        SummaryFooterFormat = '0'
                      end
                      object DBGProdutosDGCP: TdxDBGridMaskColumn
                        DisableEditor = True
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
                      object DBGProdutosEPE_QTDE: TdxDBGridCurrencyColumn
                        DisableEditor = True
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        HeaderAlignment = taRightJustify
                        Width = 80
                        BandIndex = 1
                        RowIndex = 0
                        FieldName = 'EPE_QTDE'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'EPE_QTDE'
                        SummaryFooterFormat = ',##,0.00;-,##,0.00'
                        DisplayFormat = ',##,0.00;-,##,0.00'
                        Nullable = False
                        DisableFilter = True
                      end
                      object DBGProdutosEPE_QTRL: TdxDBGridMaskColumn
                        DisableEditor = True
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        HeaderAlignment = taRightJustify
                        Width = 45
                        BandIndex = 1
                        RowIndex = 0
                        FieldName = 'EPE_QTRL'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'EPE_QTRL'
                        SummaryFooterFormat = '0'
                        DisableFilter = True
                      end
                      object DBGProdutosEEP_QTDE: TdxDBGridCurrencyColumn
                        DisableEditor = True
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        HeaderAlignment = taRightJustify
                        Width = 80
                        BandIndex = 2
                        RowIndex = 0
                        FieldName = 'EEP_QTDE'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'EEP_QTDE'
                        SummaryFooterFormat = ',##,0.00;-,##,0.00'
                        DisplayFormat = ',##,0.00;-,##,0.00'
                        Nullable = False
                        DisableFilter = True
                      end
                      object DBGProdutosEEP_QTRL: TdxDBGridMaskColumn
                        DisableEditor = True
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        HeaderAlignment = taRightJustify
                        Width = 45
                        BandIndex = 2
                        RowIndex = 0
                        FieldName = 'EEP_QTRL'
                        SummaryFooterType = cstSum
                        SummaryFooterField = 'EEP_QTRL'
                        SummaryFooterFormat = '0'
                        DisableFilter = True
                      end
                      object DBGProdutosDTEV: TdxDBGridDateColumn
                        DisableEditor = True
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        HeaderAlignment = taCenter
                        Width = 95
                        BandIndex = 3
                        RowIndex = 0
                        FieldName = 'DTEV'
                        DisableFilter = True
                      end
                      object DBGProdutosREST: TdxDBGridMaskColumn
                        DisableEditor = True
                        Visible = False
                        Width = 90
                        BandIndex = 4
                        RowIndex = 0
                        FieldName = 'REST'
                      end
                      object DBGProdutosDEST: TdxDBGridMaskColumn
                        DisableEditor = True
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 100
                        BandIndex = 4
                        RowIndex = 0
                        FieldName = 'DEST'
                      end
                      object DBGProdutosCEAN: TdxDBGridMaskColumn
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 110
                        BandIndex = 4
                        RowIndex = 0
                        FieldName = 'CEAN'
                        DisableFilter = True
                      end
                      object DBGProdutosCDCF: TdxDBGridMaskColumn
                        DisableEditor = True
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 100
                        BandIndex = 5
                        RowIndex = 0
                        FieldName = 'CDCF'
                        DisableFilter = True
                      end
                      object DBGProdutosCEANCF: TdxDBGridMaskColumn
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 120
                        BandIndex = 5
                        RowIndex = 0
                        FieldName = 'CEANCF'
                        DisableFilter = True
                      end
                    end
                  end
                end
                object PNLMovimentos: TPanel
                  Left = 640
                  Top = 0
                  Width = 1244
                  Height = 592
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 1
                  object GBMovimentos: TGroupBox
                    Left = 0
                    Top = 0
                    Width = 1244
                    Height = 592
                    Align = alClient
                    Caption = '  Movimenta'#231#245'es  '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold, fsItalic]
                    ParentFont = False
                    TabOrder = 0
                    object PCMOV: TdxPageControl
                      Left = 2
                      Top = 19
                      Width = 1240
                      Height = 571
                      ActivePage = TSLF
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
                      object TSLF: TdxTabSheet
                        Caption = 'F'#237'sico'
                        OnShow = TSLFShow
                        object DBGLF: TdxDBGrid
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          Bands = <
                            item
                              Alignment = taLeftJustify
                              Caption = 'Estoque F'#237'sico Dispon'#237'vel'
                              Fixed = bfLeft
                            end
                            item
                              Caption = 'Etiquetas'
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Romaneios'
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
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandColor = clSilver
                          BandFont.Charset = ANSI_CHARSET
                          BandFont.Color = clBlack
                          BandFont.Height = -13
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = [fsBold]
                          DataSource = DTSLF
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
                          IndentDesc = 10
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                          PreviewFont.Charset = ANSI_CHARSET
                          PreviewFont.Color = clRed
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Segoe UI Semibold'
                          PreviewFont.Style = [fsBold, fsItalic]
                          ShowBands = True
                          ShowGrid = False
                          OnCustomDrawCell = DBGLFCustomDrawCell
                          object DBGLFSKU: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clHighlightText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 60
                            Width = 60
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'SKU'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                          end
                          object DBGLFDGCP: TdxDBGridColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clHighlightText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 60
                            Width = 60
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'DGCP'
                          end
                          object DBGLFQTDE: TdxDBGridColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clHighlightText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Width = 90
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTDE'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'C_QTDE'
                            SummaryFooterFormat = ',##,0.00;-,##,0.00'
                          end
                          object DBGLFC_QTDE: TdxDBGridColumn
                            Visible = False
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'C_QTDE'
                          end
                          object DBGLFCDET: TdxDBGridColumn
                            Alignment = taRightJustify
                            Color = clGrayText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clHighlightText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 75
                            Width = 75
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CDET'
                          end
                          object DBGLFCTNR: TdxDBGridMaskColumn
                            Color = clGrayText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clHighlightText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 75
                            Visible = False
                            Width = 75
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR'
                          end
                          object DBGLFLOTE: TdxDBGridMaskColumn
                            Color = clGrayText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clHighlightText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 50
                            Visible = False
                            Width = 50
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'LOTE'
                          end
                          object DBGLFCDRO: TdxDBGridColumn
                            Alignment = taLeftJustify
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 75
                            Width = 75
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'CDRO'
                          end
                          object DBGLFDTET: TdxDBGridDateColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 95
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DTET'
                          end
                          object DBGLFD_DEOP: TdxDBGridMaskColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 80
                            Width = 80
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'D_DEOP'
                          end
                          object DBGLFDETP: TdxDBGridMaskColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 110
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DETP'
                          end
                          object DBGLFITDF: TdxDBGridMaskColumn
                            Visible = False
                            Width = 50
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'ITDF'
                          end
                          object DBGLFD_DEDF: TdxDBGridMaskColumn
                            Alignment = taLeftJustify
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 150
                            Width = 150
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'D_DEDF'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'ITDF'
                            SummaryFooterFormat = 'DEF 0'
                          end
                          object DBGLFDECE: TdxDBGridColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 150
                            Visible = False
                            Width = 150
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DECE'
                          end
                          object DBGLFLGET: TdxDBGridMaskColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 90
                            Width = 90
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'LGET'
                          end
                          object DBGLFDEPD: TdxDBGridMaskColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Visible = False
                            Width = 71
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DEPD'
                          end
                          object DBGLFDTPD: TdxDBGridDateColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Visible = False
                            Width = 71
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DTPD'
                          end
                          object DBGLFCDNF: TdxDBGridColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Visible = False
                            Width = 71
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'CDNF'
                          end
                          object DBGLFDTNF: TdxDBGridDateColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Visible = False
                            Width = 71
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DTNF'
                          end
                          object DBGLFCDI: TdxDBGridCheckColumn
                            Color = clHighlightText
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Visible = False
                            Width = 47
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'CDI'
                            ValueChecked = '1'
                            ValueUnchecked = '0'
                          end
                        end
                        object PNLLF_INFADCAD: TPanel
                          Left = 0
                          Top = 544
                          Width = 1240
                          Height = 0
                          Align = alBottom
                          BevelOuter = bvNone
                          Color = clInfoBk
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 1
                          object DBLF_INFDCAD: TdxDBMemo
                            Left = 0
                            Top = 0
                            Width = 1240
                            Align = alClient
                            Color = clInfoBk
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            ParentFont = False
                            Style.BorderColor = clBtnFace
                            Style.BorderStyle = xbsFlat
                            Style.ButtonStyle = btsFlat
                            Style.Shadow = False
                            TabOrder = 0
                            DataField = 'INFADCAD'
                            DataSource = DTSLF
                            Height = 0
                          end
                        end
                      end
                      object TSPR: TdxTabSheet
                        Caption = 'Reservados'
                        object DBGPR: TdxDBGrid
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          Bands = <
                            item
                              Alignment = taLeftJustify
                              Caption = 'Vendas Reservadas'
                              Fixed = bfLeft
                              Width = 532
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Pedidos'
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
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandColor = clSilver
                          BandFont.Charset = ANSI_CHARSET
                          BandFont.Color = clBlack
                          BandFont.Height = -13
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = [fsBold]
                          DataSource = DTSPR
                          Filter.Active = True
                          Filter.Criteria = {00000000}
                          GridLineColor = clSilver
                          HeaderFont.Charset = ANSI_CHARSET
                          HeaderFont.Color = clBlack
                          HeaderFont.Height = -13
                          HeaderFont.Name = 'Segoe UI'
                          HeaderFont.Style = [fsItalic]
                          HideFocusRect = True
                          HideSelectionColor = 14789952
                          HighlightColor = 14789952
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                          PreviewFont.Charset = ANSI_CHARSET
                          PreviewFont.Color = 12092957
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Segoe UI Semibold'
                          PreviewFont.Style = [fsBold, fsItalic]
                          ShowBands = True
                          ShowGrid = False
                          object DBGPRSKU: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 70
                            Width = 70
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'SKU'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                          end
                          object DBGPRDGCP: TdxDBGridMaskColumn
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
                          object DBGPRQTDE: TdxDBGridCurrencyColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
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
                            DisplayFormat = ',##,0.00'
                            Nullable = False
                            DisableFilter = True
                          end
                          object DBGPRQTRL: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
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
                          object DBGPRDEPK: TdxDBGridMaskColumn
                            Color = clBtnFace
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 80
                            Width = 80
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DEPK'
                          end
                          object DBGPRD_DTCA: TdxDBGridDateColumn
                            MinWidth = 145
                            Width = 145
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'D_DTCA'
                          end
                          object DBGPRDECD: TdxDBGridMaskColumn
                            MinWidth = 200
                            Width = 200
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DECD'
                          end
                          object DBGPRDECV: TdxDBGridMaskColumn
                            Width = 100
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DECV'
                          end
                          object DBGPRDECR: TdxDBGridMaskColumn
                            MinWidth = 150
                            Width = 150
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DECR'
                          end
                        end
                      end
                      object TSPS: TdxTabSheet
                        Caption = 'Separados'
                        object DBGPS: TdxDBGrid
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          Bands = <
                            item
                              Alignment = taLeftJustify
                              Caption = 'Vendas Separadas'
                              Fixed = bfLeft
                              Width = 532
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Pedidos'
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
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandColor = clSilver
                          BandFont.Charset = ANSI_CHARSET
                          BandFont.Color = clBlack
                          BandFont.Height = -13
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = [fsBold]
                          DataSource = DTSPS
                          Filter.Active = True
                          Filter.Criteria = {00000000}
                          GridLineColor = clSilver
                          HeaderFont.Charset = ANSI_CHARSET
                          HeaderFont.Color = clBlack
                          HeaderFont.Height = -13
                          HeaderFont.Name = 'Segoe UI'
                          HeaderFont.Style = [fsItalic]
                          HideFocusRect = True
                          HideSelectionColor = 14789952
                          HighlightColor = 14789952
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                          PreviewFont.Charset = ANSI_CHARSET
                          PreviewFont.Color = 12092957
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Segoe UI Semibold'
                          PreviewFont.Style = [fsBold, fsItalic]
                          ShowBands = True
                          ShowGrid = False
                          object DBGPSPRODUTO: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 70
                            Width = 70
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'PRODUTO'
                          end
                          object DBGPSDGCP: TdxDBGridMaskColumn
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
                          object DBGPSQTDE: TdxDBGridCurrencyColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
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
                            SummaryFooterFormat = ',##,0.00;-,##,0.00'
                            DisplayFormat = ',##,0.00;-,##,0.00'
                            Nullable = False
                            DisableFilter = True
                            StoredRowIndex = 1
                          end
                          object DBGPSQTRL: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 35
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTRL'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTRL'
                            SummaryFooterFormat = '0'
                            DisableFilter = True
                            StoredRowIndex = 1
                          end
                          object DBGPSCDET: TdxDBGridMaskColumn
                            Alignment = taRightJustify
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
                            FieldName = 'CDET'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                            DisableFilter = True
                            StoredRowIndex = 1
                          end
                          object DBGPSDTCA: TdxDBGridDateColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 100
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DTCA'
                            StoredRowIndex = 1
                          end
                          object DBGPSDESP: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 80
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DESP'
                            StoredRowIndex = 1
                          end
                          object DBGPSDEPS: TdxDBGridMaskColumn
                            Width = 80
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DEPS'
                          end
                          object DBGPSDTPV: TdxDBGridDateColumn
                            Width = 106
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DTPV'
                          end
                          object DBGPSCLPS: TdxDBGridMaskColumn
                            Width = 200
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CLPS'
                          end
                          object DBGPSCVPS: TdxDBGridMaskColumn
                            Width = 100
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CVPS'
                          end
                          object DBGPSCRPS: TdxDBGridMaskColumn
                            Width = 150
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CRPS'
                          end
                        end
                      end
                      object TSPP: TdxTabSheet
                        Caption = 'Programados'
                        object DBGPP: TdxDBGrid
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          Bands = <
                            item
                              Alignment = taLeftJustify
                              Caption = 'Programa'#231#245'es'
                              Fixed = bfLeft
                              Width = 532
                            end
                            item
                              Caption = 'Cont'#234'ineres Reservados'
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Pedidos Programados'
                            end
                            item
                              Caption = 'Vendedores'
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
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandColor = clSilver
                          BandFont.Charset = ANSI_CHARSET
                          BandFont.Color = clBlack
                          BandFont.Height = -13
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = [fsBold]
                          DataSource = DTSPP
                          Filter.Active = True
                          Filter.Criteria = {00000000}
                          GridLineColor = clSilver
                          HeaderFont.Charset = ANSI_CHARSET
                          HeaderFont.Color = clBlack
                          HeaderFont.Height = -13
                          HeaderFont.Name = 'Segoe UI'
                          HeaderFont.Style = [fsItalic]
                          HideFocusRect = True
                          HideSelectionColor = 14789952
                          HighlightColor = 14789952
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
                          PreviewFont.Charset = ANSI_CHARSET
                          PreviewFont.Color = 12092957
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Segoe UI Semibold'
                          PreviewFont.Style = [fsBold, fsItalic]
                          ShowBands = True
                          ShowGrid = False
                          OnCustomDrawCell = DBGPPCustomDrawCell
                          object DBGPPSKU: TdxDBGridMaskColumn
                            Color = clGray
                            DisableEditor = True
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 50
                            Width = 50
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'SKU'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                          end
                          object DBGPPDGCP: TdxDBGridMaskColumn
                            Color = clGray
                            DisableEditor = True
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 100
                            Width = 100
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'DGCP'
                          end
                          object DBGPPQTDE: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            HeaderAlignment = taRightJustify
                            MinWidth = 75
                            Width = 75
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTDE'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTDE'
                            SummaryFooterFormat = ',##,0.00'
                            DisableFilter = True
                          end
                          object DBGPPQTRL: TdxDBGridMaskColumn
                            Color = clGray
                            DisableEditor = True
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            MinWidth = 40
                            Width = 40
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTRL'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTRL'
                            SummaryFooterFormat = '0'
                            DisableFilter = True
                          end
                          object DBGPPCTNR: TdxDBGridPickColumn
                            Alignment = taLeftJustify
                            Color = clBlack
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 70
                            Width = 70
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR'
                            SummaryFooterType = cstMin
                            SummaryFooterField = 'CTNR_QTSD'
                            SummaryFooterFormat = 'SD ,##,0.00'
                            DropDownRows = 5
                            CanDeleteText = True
                            PopupBorder = pbFlat
                            Revertable = True
                            OnCloseUp = DBGPPCTNRCloseUp
                          end
                          object DBGPPCTNR_QTDE: TdxDBGridMaskColumn
                            Color = clBlack
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            MinWidth = 75
                            Width = 75
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR_QTDE'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'CTNR_QTDE'
                            SummaryFooterFormat = ',##,0.00'
                            DisableFilter = True
                          end
                          object DBGPPCTNR_QTRL: TdxDBGridMaskColumn
                            Color = clBlack
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            MinWidth = 40
                            Width = 40
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR_QTRL'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'CTNR_QTRL'
                            SummaryFooterFormat = '0'
                            DisableFilter = True
                          end
                          object DBGPPCTNR_QTSD: TdxDBGridMaskColumn
                            Color = clBlack
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Visible = False
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR_QTSD'
                            DisableFilter = True
                          end
                          object DBGPPDEPK: TdxDBGridMaskColumn
                            Color = clBtnFace
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 70
                            Width = 70
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DEPK'
                          end
                          object DBGPPD_DTCA: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 94
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'D_DTCA'
                          end
                          object DBGPPDECD: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 189
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DECD'
                          end
                          object DBGPPUF: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 40
                            Width = 40
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'UF'
                          end
                          object DBGPPDECV: TdxDBGridMaskColumn
                            MinWidth = 80
                            Width = 80
                            BandIndex = 3
                            RowIndex = 0
                            FieldName = 'DECV'
                          end
                          object DBGPPDECR: TdxDBGridMaskColumn
                            MinWidth = 80
                            Width = 80
                            BandIndex = 3
                            RowIndex = 0
                            FieldName = 'DECR'
                          end
                        end
                      end
                      object TSCO: TdxTabSheet
                        Caption = 'Compras'
                        object PCCO: TdxPageControl
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          ActivePage = TSCOA
                          Align = alClient
                          HideButtons = False
                          HotTrack = False
                          MultiLine = False
                          OwnerDraw = False
                          RaggedRight = False
                          ScrollOpposite = False
                          Style = dxtsFlatButtons
                          TabHeight = 0
                          TabOrder = 0
                          TabPosition = dxtpTop
                          TabWidth = 0
                          object TSCOA: TdxTabSheet
                            Caption = 'Compras Pendentes'
                            object DBGPCA: TdxDBGrid
                              Left = 0
                              Top = 0
                              Width = 1240
                              Height = 515
                              Bands = <
                                item
                                  Alignment = taLeftJustify
                                  Caption = 'Pedidos de Compras'
                                  Fixed = bfLeft
                                  Width = 532
                                end
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
                              BandColor = clSilver
                              BandFont.Charset = ANSI_CHARSET
                              BandFont.Color = clBlack
                              BandFont.Height = -12
                              BandFont.Name = 'Tahoma'
                              BandFont.Style = []
                              DataSource = DTSPCA
                              Filter.Active = True
                              Filter.Criteria = {00000000}
                              GridLineColor = clSilver
                              HeaderFont.Charset = ANSI_CHARSET
                              HeaderFont.Color = clBlack
                              HeaderFont.Height = -13
                              HeaderFont.Name = 'Segoe UI'
                              HeaderFont.Style = [fsItalic]
                              HideFocusRect = True
                              HideSelectionColor = 14789952
                              HighlightColor = 14789952
                              LookAndFeel = lfUltraFlat
                              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                              PreviewFont.Charset = ANSI_CHARSET
                              PreviewFont.Color = 12092957
                              PreviewFont.Height = -12
                              PreviewFont.Name = 'Segoe UI Semibold'
                              PreviewFont.Style = [fsBold, fsItalic]
                              ShowGrid = False
                              OnCustomDrawCell = DBGPCACustomDrawCell
                              object DBGPCAPRODUTO: TdxDBGridMaskColumn
                                Color = clGray
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clWhite
                                Font.Height = -12
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                MinWidth = 70
                                Width = 70
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'PRODUTO'
                                SummaryFooterType = cstCount
                                SummaryFooterField = 'ID'
                                SummaryFooterFormat = '0'
                              end
                              object DBGPCADGCP: TdxDBGridMaskColumn
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
                              object DBGPCAQTDE: TdxDBGridCurrencyColumn
                                Color = clGray
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clWhite
                                Font.Height = -12
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                HeaderAlignment = taRightJustify
                                Width = 85
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'QTDE'
                                SummaryFooterType = cstSum
                                SummaryFooterField = 'QTDE'
                                SummaryFooterFormat = ',##,0.00;-,##,0.00'
                                DisplayFormat = ',##,0.00;-,##,0.00'
                                Nullable = False
                                DisableFilter = True
                              end
                              object DBGPCAQTRL: TdxDBGridMaskColumn
                                Color = clGray
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clWhite
                                Font.Height = -12
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                HeaderAlignment = taRightJustify
                                Width = 50
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'QTRL'
                                SummaryFooterType = cstSum
                                SummaryFooterField = 'QTRL'
                                SummaryFooterFormat = '0'
                                DisableFilter = True
                              end
                              object DBGPCACTNR: TdxDBGridMaskColumn
                                Color = clBtnFace
                                Width = 75
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'CTNR'
                              end
                              object DBGPCADEPC: TdxDBGridMaskColumn
                                Width = 80
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DEPC'
                              end
                              object DBGPCADTCA: TdxDBGridDateColumn
                                Width = 100
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DTCA'
                              end
                              object DBGPCADTDE: TdxDBGridDateColumn
                                Width = 100
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DTDE'
                              end
                              object DBGPCADTPR: TdxDBGridDateColumn
                                Width = 100
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DTPR'
                              end
                              object DBGPCADEEP: TdxDBGridMaskColumn
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clBlack
                                Font.Height = -12
                                Font.Name = 'Tahoma'
                                Font.Style = [fsBold]
                                Width = 120
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DEEP'
                              end
                              object DBGPCAFOPC: TdxDBGridMaskColumn
                                Width = 120
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'FOPC'
                              end
                              object DBGPCACCPC: TdxDBGridMaskColumn
                                Width = 120
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'CCPC'
                              end
                              object DBGPCASTFI: TdxDBGridMaskColumn
                                Width = 120
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'STFI'
                              end
                            end
                          end
                          object TSCOF: TdxTabSheet
                            Caption = 'Compras Finalizadas'
                            object DBGPCF: TdxDBGrid
                              Left = 0
                              Top = 0
                              Width = 1060
                              Height = 351
                              Bands = <
                                item
                                  Alignment = taLeftJustify
                                  Caption = 'Pedidos de Compras'
                                  Fixed = bfLeft
                                  Width = 532
                                end
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
                              Color = clWhite
                              Ctl3D = True
                              Font.Charset = ANSI_CHARSET
                              Font.Color = clBlack
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentCtl3D = False
                              ParentFont = False
                              TabOrder = 0
                              AutoSearchColor = 9395
                              AutoSearchTextColor = clWhite
                              BandColor = clSilver
                              BandFont.Charset = ANSI_CHARSET
                              BandFont.Color = clBlack
                              BandFont.Height = -12
                              BandFont.Name = 'Tahoma'
                              BandFont.Style = [fsBold]
                              DataSource = DTSPCF
                              Filter.Active = True
                              Filter.Criteria = {00000000}
                              GridLineColor = clSilver
                              HeaderFont.Charset = ANSI_CHARSET
                              HeaderFont.Color = clBlack
                              HeaderFont.Height = -13
                              HeaderFont.Name = 'Segoe UI'
                              HeaderFont.Style = [fsItalic]
                              HideFocusRect = True
                              HideSelectionColor = 14789952
                              HighlightColor = 14789952
                              LookAndFeel = lfUltraFlat
                              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                              PreviewFont.Charset = ANSI_CHARSET
                              PreviewFont.Color = 12092957
                              PreviewFont.Height = -12
                              PreviewFont.Name = 'Segoe UI Semibold'
                              PreviewFont.Style = [fsBold, fsItalic]
                              ShowGrid = False
                              OnCustomDrawCell = DBGPCFCustomDrawCell
                              object DBGPCFPRODUTO: TdxDBGridMaskColumn
                                Color = clGray
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clWhite
                                Font.Height = -11
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                MinWidth = 70
                                Width = 70
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'PRODUTO'
                                SummaryFooterType = cstCount
                                SummaryFooterField = 'ID'
                                SummaryFooterFormat = '0'
                              end
                              object DBGPCFDGCP: TdxDBGridMaskColumn
                                Color = clGray
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clWhite
                                Font.Height = -11
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                MinWidth = 100
                                Width = 100
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'DGCP'
                              end
                              object DBGPCFQTDE: TdxDBGridCurrencyColumn
                                Color = clGray
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clWhite
                                Font.Height = -11
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                HeaderAlignment = taRightJustify
                                Width = 90
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'QTDE'
                                SummaryFooterType = cstSum
                                SummaryFooterField = 'QTDE'
                                SummaryFooterFormat = ',##,0.00;-,##,0.00'
                                DisplayFormat = ',##,0.00;-,##,0.00'
                                Nullable = False
                                DisableFilter = True
                              end
                              object DBGPCFQTRL: TdxDBGridMaskColumn
                                Color = clGray
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clWhite
                                Font.Height = -11
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                HeaderAlignment = taRightJustify
                                Width = 55
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'QTRL'
                                SummaryFooterType = cstSum
                                SummaryFooterField = 'QTRL'
                                SummaryFooterFormat = '0'
                                DisableFilter = True
                              end
                              object DBGPCFQTFI: TdxDBGridCurrencyColumn
                                Color = clInfoBk
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clBlack
                                Font.Height = -11
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                HeaderAlignment = taRightJustify
                                Width = 90
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'QTFI'
                                SummaryFooterType = cstSum
                                SummaryFooterField = 'QTFI'
                                SummaryFooterFormat = ',##,0.00;-,##,0.00'
                                DisplayFormat = ',##,0.00;-,##,0.00'
                                Nullable = False
                                DisableFilter = True
                              end
                              object DBGPCFRLFI: TdxDBGridMaskColumn
                                Color = clInfoBk
                                Font.Charset = ANSI_CHARSET
                                Font.Color = clBlack
                                Font.Height = -11
                                Font.Name = 'Tahoma'
                                Font.Style = []
                                HeaderAlignment = taRightJustify
                                Width = 55
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'RLFI'
                                SummaryFooterType = cstSum
                                SummaryFooterField = 'RLFI'
                                SummaryFooterFormat = '0'
                                DisableFilter = True
                              end
                              object DBGPCFCTNR: TdxDBGridMaskColumn
                                Color = clBtnFace
                                Width = 75
                                BandIndex = 0
                                RowIndex = 0
                                FieldName = 'CTNR'
                              end
                              object DBGPCFDEPC: TdxDBGridMaskColumn
                                Caption = 'Pedido'
                                Width = 80
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DEPC'
                              end
                              object DBGPCFDTCA: TdxDBGridDateColumn
                                Width = 100
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DTCA'
                              end
                              object DBGPCFDTDE: TdxDBGridDateColumn
                                Width = 100
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DTDE'
                              end
                              object DBGPCFDTBX: TdxDBGridDateColumn
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'DTBX'
                              end
                              object DBGPCFFOPC: TdxDBGridMaskColumn
                                Width = 200
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'FOPC'
                              end
                              object DBGPCFCCPC: TdxDBGridMaskColumn
                                Width = 100
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'CCPC'
                              end
                              object DBGPCFSTFI: TdxDBGridMaskColumn
                                Width = 100
                                BandIndex = 1
                                RowIndex = 0
                                FieldName = 'STFI'
                              end
                            end
                          end
                        end
                      end
                      object TSRV: TdxTabSheet
                        Caption = 'Revisados'
                        object DBGRV: TdxDBGrid
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          Bands = <
                            item
                              Alignment = taLeftJustify
                              Caption = 'Produtos Revisados'
                              Fixed = bfLeft
                              Width = 532
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Ficha T'#233'cnica'
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Pedidos'
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
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandColor = clSilver
                          BandFont.Charset = ANSI_CHARSET
                          BandFont.Color = clBlack
                          BandFont.Height = -13
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = [fsBold]
                          DataSource = DTSRV
                          Filter.Active = True
                          Filter.Criteria = {00000000}
                          GridLineColor = clSilver
                          HeaderFont.Charset = ANSI_CHARSET
                          HeaderFont.Color = clBlack
                          HeaderFont.Height = -13
                          HeaderFont.Name = 'Segoe UI'
                          HeaderFont.Style = [fsItalic]
                          HideFocusRect = True
                          HideSelectionColor = 14789952
                          HighlightColor = 14789952
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                          PreviewFont.Charset = ANSI_CHARSET
                          PreviewFont.Color = 12092957
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Segoe UI Semibold'
                          PreviewFont.Style = [fsBold, fsItalic]
                          ShowBands = True
                          ShowGrid = False
                          OnCustomDrawCell = DBGRVCustomDrawCell
                          object DBGRVSKU: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 70
                            Width = 70
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'SKU'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                          end
                          object DBGRVDGCP: TdxDBGridColumn
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
                          object DBGRVROLO: TdxDBGridColumn
                            Alignment = taRightJustify
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 75
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'ROLO'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTDE'
                            SummaryFooterFormat = ',##,0.00;-,##,0.00'
                            DisableFilter = True
                          end
                          object DBGRVQTDE: TdxDBGridColumn
                            Visible = False
                            Width = 75
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTDE'
                          end
                          object DBGRVCDET: TdxDBGridColumn
                            Alignment = taRightJustify
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            HeaderAlignment = taRightJustify
                            MinWidth = 70
                            Width = 75
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CDET'
                            DisableFilter = True
                          end
                          object DBGRVDETP: TdxDBGridMaskColumn
                            Color = clBtnFace
                            Width = 100
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DETP'
                          end
                          object DBGRVDEDF: TdxDBGridColumn
                            MinWidth = 70
                            Width = 70
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DEDF'
                          end
                          object DBGRVDECA: TdxDBGridColumn
                            Width = 97
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DECA'
                          end
                          object DBGRVDTCA: TdxDBGridColumn
                            Width = 72
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DTCA'
                          end
                          object DBGRVDEPK: TdxDBGridColumn
                            Width = 79
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DEPK'
                          end
                          object DBGRVLOTE: TdxDBGridColumn
                            Width = 46
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'LOTE'
                          end
                          object DBGRVCTNR: TdxDBGridColumn
                            Width = 77
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR'
                          end
                          object DBGRVDEPV: TdxDBGridMaskColumn
                            Width = 70
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DEPV'
                          end
                          object DBGRVDTPV: TdxDBGridDateColumn
                            Width = 70
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DTPV'
                          end
                          object DBGRVDECL: TdxDBGridMaskColumn
                            Width = 300
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DECL'
                          end
                          object DBGRVDECV: TdxDBGridMaskColumn
                            Width = 100
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DECV'
                          end
                          object DBGRVDECR: TdxDBGridMaskColumn
                            Width = 200
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DECR'
                          end
                          object DBGRVDEEP: TdxDBGridColumn
                            Width = 150
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DEEP'
                          end
                        end
                        object PNLINFADETQ: TPanel
                          Left = 0
                          Top = 544
                          Width = 1240
                          Height = 0
                          Align = alBottom
                          BevelOuter = bvNone
                          Color = clInfoBk
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 1
                          object DBINFADETQ: TdxDBMemo
                            Left = 0
                            Top = 0
                            Width = 1240
                            Align = alClient
                            Color = clInfoBk
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            ParentFont = False
                            Style.BorderColor = clBtnFace
                            Style.BorderStyle = xbsFlat
                            Style.ButtonStyle = btsFlat
                            Style.Shadow = False
                            TabOrder = 0
                            DataField = 'INFADETQ'
                            DataSource = DTSRV
                            Height = 0
                          end
                        end
                      end
                      object TSLE: TdxTabSheet
                        Caption = 'Entradas'
                        OnShow = TSLEShow
                        object PNLINFADETQLE: TPanel
                          Left = 0
                          Top = 544
                          Width = 1240
                          Height = 0
                          Align = alBottom
                          BevelOuter = bvNone
                          Color = clInfoBk
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 0
                          object DBINFADETQLE: TdxDBMemo
                            Left = 0
                            Top = 0
                            Width = 1240
                            Align = alClient
                            Color = clInfoBk
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            ParentFont = False
                            Style.BorderColor = clBtnFace
                            Style.BorderStyle = xbsFlat
                            Style.ButtonStyle = btsFlat
                            Style.Shadow = False
                            TabOrder = 0
                            DataField = 'INFADCAD'
                            DataSource = DTSLE
                            Height = 0
                          end
                        end
                        object DBGLE: TdxDBGrid
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          Bands = <
                            item
                              Alignment = taLeftJustify
                              Caption = 'Hist'#243'rico Geral de Entradas'
                              Fixed = bfLeft
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Romaneios de Estoque'
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
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 1
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandColor = clSilver
                          BandFont.Charset = ANSI_CHARSET
                          BandFont.Color = clBlack
                          BandFont.Height = -13
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = [fsBold]
                          DataSource = DTSLE
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
                          IndentDesc = 10
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                          PreviewFont.Charset = ANSI_CHARSET
                          PreviewFont.Color = clRed
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Segoe UI Semibold'
                          PreviewFont.Style = [fsBold, fsItalic]
                          ShowBands = True
                          ShowGrid = False
                          OnCustomDrawCell = DBGLECustomDrawCell
                          object DBGLED_SKU: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            MinWidth = 70
                            Width = 70
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'D_SKU'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                          end
                          object DBGLEDGCP: TdxDBGridColumn
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
                          object DBGLEQTDE: TdxDBGridColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 85
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTDE'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTDE'
                            SummaryFooterFormat = ',##,0.00;-,##,0.00'
                            DisableFilter = True
                          end
                          object DBGLEQTRL: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 50
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTRL'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTRL'
                            SummaryFooterFormat = '0'
                            DisableFilter = True
                          end
                          object DBGLECDET: TdxDBGridColumn
                            Color = clBtnFace
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            HeaderAlignment = taRightJustify
                            Width = 75
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'CDET'
                            DisableFilter = True
                          end
                          object DBGLEIDPK: TdxDBGridColumn
                            Visible = False
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'IDPK'
                          end
                          object DBGLECDRO: TdxDBGridColumn
                            Alignment = taLeftJustify
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Width = 80
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CDRO'
                          end
                          object DBGLEDTCA: TdxDBGridDateColumn
                            Width = 95
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DTCA'
                          end
                          object DBGLEDETP: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 110
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DETP'
                          end
                          object DBGLEDEOP: TdxDBGridMaskColumn
                            Visible = False
                            Width = 110
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DEOP'
                          end
                          object DBGLECTNR: TdxDBGridMaskColumn
                            Width = 80
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR'
                          end
                          object DBGLELOTE: TdxDBGridMaskColumn
                            Width = 50
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'LOTE'
                          end
                          object DBGLEDEDF: TdxDBGridMaskColumn
                            MinWidth = 80
                            Width = 80
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DEDF'
                          end
                          object DBGLEDECE: TdxDBGridColumn
                            Width = 150
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DECE'
                          end
                          object DBGLELGCA: TdxDBGridMaskColumn
                            Width = 100
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'LGCA'
                          end
                          object DBGLEDEPD: TdxDBGridMaskColumn
                            Width = 75
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DEPD'
                          end
                          object DBGLEDTPD: TdxDBGridDateColumn
                            Width = 75
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DTPD'
                          end
                          object DBGLECDNF: TdxDBGridColumn
                            Width = 75
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CDNF'
                          end
                          object DBGLEDTNF: TdxDBGridDateColumn
                            Width = 75
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DTNF'
                          end
                        end
                      end
                      object TSLS: TdxTabSheet
                        Caption = 'Sa'#237'das'
                        OnShow = TSLSShow
                        object DBGLS: TdxDBGrid
                          Left = 0
                          Top = 0
                          Width = 1240
                          Height = 544
                          Bands = <
                            item
                              Alignment = taLeftJustify
                              Caption = 'Hist'#243'rico Geral de Sa'#237'das'
                              Fixed = bfLeft
                            end
                            item
                              Caption = 'Etiquetas'
                              Visible = False
                            end
                            item
                              Alignment = taLeftJustify
                              Caption = 'Vendas'
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
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentCtl3D = False
                          ParentFont = False
                          TabOrder = 0
                          AutoSearchColor = 9395
                          AutoSearchTextColor = clWhite
                          BandColor = clSilver
                          BandFont.Charset = ANSI_CHARSET
                          BandFont.Color = clBlack
                          BandFont.Height = -13
                          BandFont.Name = 'Tahoma'
                          BandFont.Style = [fsBold]
                          DataSource = DTSLS
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
                          IndentDesc = 5
                          LookAndFeel = lfUltraFlat
                          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                          PreviewFont.Charset = ANSI_CHARSET
                          PreviewFont.Color = clRed
                          PreviewFont.Height = -12
                          PreviewFont.Name = 'Segoe UI Semibold'
                          PreviewFont.Style = [fsBold, fsItalic]
                          ShowBands = True
                          ShowGrid = False
                          object DBGLSPRODUTO: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            MinWidth = 70
                            Width = 70
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'PRODUTO'
                          end
                          object DBGLSDGCP: TdxDBGridColumn
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
                          object DBGLSQTDE: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 85
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTDE'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTDE'
                            SummaryFooterFormat = ',##,0.00;-,##,0.00'
                            DisableFilter = True
                          end
                          object DBGLSQTRL: TdxDBGridMaskColumn
                            Color = clGray
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clWhite
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 50
                            BandIndex = 0
                            RowIndex = 0
                            FieldName = 'QTRL'
                            SummaryFooterType = cstSum
                            SummaryFooterField = 'QTRL'
                            SummaryFooterFormat = '0'
                            DisableFilter = True
                          end
                          object DBGLSCDET: TdxDBGridColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 60
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CDET'
                            SummaryFooterType = cstCount
                            SummaryFooterField = 'ID'
                            SummaryFooterFormat = '0'
                            DisableFilter = True
                          end
                          object DBGLSCTNR: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 80
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'CTNR'
                          end
                          object DBGLSLOTE: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 50
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'LOTE'
                          end
                          object DBGLSDESP: TdxDBGridColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Visible = False
                            Width = 95
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DESP'
                          end
                          object DBGLSDTSP: TdxDBGridColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Visible = False
                            Width = 95
                            BandIndex = 1
                            RowIndex = 0
                            FieldName = 'DTSP'
                          end
                          object DBGLSDERO: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 80
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DERO'
                          end
                          object DBGLSDTEMI: TdxDBGridDateColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 70
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'DTEMI'
                          end
                          object DBGLSUNIT: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            HeaderAlignment = taRightJustify
                            Width = 70
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'UNIT'
                            SummaryFooterType = cstAvg
                            SummaryFooterField = 'UNIT'
                            SummaryFooterFormat = ',##,0.00;-,##,0.00'
                            DisableFilter = True
                          end
                          object DBGLSFAVORECIDO: TdxDBGridMaskColumn
                            Font.Charset = ANSI_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            Width = 250
                            BandIndex = 2
                            RowIndex = 0
                            FieldName = 'FAVORECIDO'
                          end
                        end
                        object PNLINFADETQLS: TPanel
                          Left = 0
                          Top = 544
                          Width = 1240
                          Height = 0
                          Align = alBottom
                          BevelOuter = bvNone
                          Color = clInfoBk
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 1
                          object DBINFADETQLS: TdxDBMemo
                            Left = 0
                            Top = 0
                            Width = 1240
                            Align = alClient
                            Color = clInfoBk
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Height = -12
                            Font.Name = 'Tahoma'
                            Font.Style = []
                            ParentFont = False
                            Style.BorderColor = clBtnFace
                            Style.BorderStyle = xbsFlat
                            Style.ButtonStyle = btsFlat
                            Style.Shadow = False
                            TabOrder = 0
                            DataSource = DTSLS
                            Height = 0
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            object PNLCabecalho: TPanel
              Left = 0
              Top = 0
              Width = 1884
              Height = 290
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object PNLAmostra: TPanel
                Left = 1584
                Top = 0
                Width = 300
                Height = 290
                Align = alRight
                BevelOuter = bvNone
                Color = clGray
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                object PCAmostra: TdxPageControl
                  Left = 0
                  Top = 0
                  Width = 300
                  Height = 290
                  ActivePage = TSIMG_PAD
                  Align = alClient
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsItalic]
                  HideButtons = False
                  HotTrack = False
                  MultiLine = True
                  OwnerDraw = False
                  ParentFont = False
                  ParentShowHint = False
                  RaggedRight = False
                  ScrollOpposite = False
                  ShowHint = True
                  TabHeight = 0
                  TabOrder = 0
                  TabPosition = dxtpBottom
                  TabWidth = 0
                  object TSIMG_PAD: TdxTabSheet
                    Caption = 'Amostra'
                    ParentShowHint = False
                    ShowHint = True
                    object PNLIMG_PAD: TPanel
                      Left = 10
                      Top = 10
                      Width = 282
                      Height = 242
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                      object IMG_PAD: TImage
                        Left = 5
                        Top = 5
                        Width = 270
                        Height = 231
                        Cursor = crHandPoint
                        Center = True
                        ParentShowHint = False
                        ShowHint = False
                        Stretch = True
                      end
                    end
                    object EDIMG_PAD: TdxEdit
                      Tag = 2
                      Left = 8
                      Top = 292
                      Width = 320
                      Hint = 'Referencia'
                      Color = clGray
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = False
                      Style.BorderColor = clGray
                      Style.BorderStyle = xbsNone
                      Style.ButtonStyle = btsFlat
                      Style.Shadow = False
                      TabOrder = 1
                      Alignment = taCenter
                      AutoSelect = False
                      AutoSize = False
                      MaxLength = 120
                      ReadOnly = True
                      Height = 18
                      StoredValues = 67
                    end
                  end
                  object TSILA: TdxTabSheet
                    Hint = 'Deixe a seta sob a imagem para visualizar instru'#231#227'o'
                    Caption = 'Instru'#231#245'es de Lavagem'
                    ParentShowHint = False
                    ShowHint = True
                    object PNLILA_BMP: TPanel
                      Left = 10
                      Top = 10
                      Width = 282
                      Height = 242
                      Hint = 'Deixe a seta sob a imagem para visualizar instru'#231#227'o'
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                      object BILA_BMP1: TBevel
                        Left = 4
                        Top = 22
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object BILA_BMP2: TBevel
                        Left = 59
                        Top = 22
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object BILA_BMP3: TBevel
                        Left = 114
                        Top = 22
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object BILA_BMP4: TBevel
                        Left = 169
                        Top = 22
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object BILA_BMP5: TBevel
                        Left = 225
                        Top = 22
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object BILA_BMP6: TBevel
                        Left = 4
                        Top = 91
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object BILA_BMP7: TBevel
                        Left = 59
                        Top = 91
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object BILA_BMP8: TBevel
                        Left = 4
                        Top = 161
                        Width = 50
                        Height = 54
                        Cursor = crHandPoint
                        ParentShowHint = False
                        ShowHint = True
                        Style = bsRaised
                      end
                      object DBILA_BMP1: TDBImage
                        Left = 8
                        Top = 26
                        Width = 42
                        Height = 46
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
                        Left = 63
                        Top = 26
                        Width = 42
                        Height = 46
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
                        Left = 118
                        Top = 26
                        Width = 42
                        Height = 46
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
                        Left = 173
                        Top = 26
                        Width = 42
                        Height = 46
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
                        Left = 229
                        Top = 26
                        Width = 42
                        Height = 46
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
                        Left = 8
                        Top = 95
                        Width = 42
                        Height = 46
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
                        Left = 63
                        Top = 95
                        Width = 42
                        Height = 46
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
                        Left = 8
                        Top = 165
                        Width = 42
                        Height = 46
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
              end
              object PNLMAINTOP: TPanel
                Left = 0
                Top = 0
                Width = 1584
                Height = 290
                Align = alClient
                BevelOuter = bvNone
                Caption = 'PNLMAINTOP'
                TabOrder = 0
                object PNLCME: TPanel
                  Left = 0
                  Top = 0
                  Width = 1584
                  Height = 290
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object GBArtigo: TGroupBox
                    Left = 0
                    Top = 0
                    Width = 1584
                    Height = 190
                    Align = alClient
                    Caption = '  Artigos  '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold, fsItalic]
                    ParentFont = False
                    TabOrder = 0
                    object DBGArtigos: TdxDBGrid
                      Left = 2
                      Top = 19
                      Width = 1580
                      Height = 169
                      Bands = <
                        item
                        end>
                      DefaultLayout = False
                      HeaderPanelRowCount = 2
                      KeyField = 'ID'
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
                      OnKeyDown = DBGConsultaKeyDown
                      AutoSearchColor = 9395
                      AutoSearchTextColor = clWhite
                      BandColor = 16048829
                      BandFont.Charset = ANSI_CHARSET
                      BandFont.Color = clBlack
                      BandFont.Height = -12
                      BandFont.Name = 'Tahoma'
                      BandFont.Style = []
                      DataSource = DTSArtigos
                      Filter.Active = True
                      Filter.Criteria = {00000000}
                      GridLineColor = clSilver
                      HeaderFont.Charset = ANSI_CHARSET
                      HeaderFont.Color = clBlack
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Segoe UI'
                      HeaderFont.Style = [fsItalic]
                      HideFocusRect = True
                      HideSelectionColor = 14789952
                      HighlightColor = 14789952
                      IndentDesc = 0
                      LookAndFeel = lfUltraFlat
                      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                      OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                      PreviewFieldName = 'D_ORIG'
                      PreviewFont.Charset = ANSI_CHARSET
                      PreviewFont.Color = 7434496
                      PreviewFont.Height = -12
                      PreviewFont.Name = 'Segoe UI Semibold'
                      PreviewFont.Style = [fsBold, fsItalic]
                      ScrollBars = ssVertical
                      ShowGrid = False
                      OnCustomDrawCell = DBGArtigosCustomDrawCell
                      object DBGArtigosARTIGO: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Width = 110
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'ARTIGO'
                      end
                      object DBGArtigosDECP: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Width = 474
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'DECP'
                      end
                      object DBGArtigosDECF: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 150
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'DECF'
                      end
                      object DBGArtigosDEEP: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Width = 380
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'DEEP'
                      end
                      object DBGArtigosFIN_CAD_NO: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 200
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'FIN_CAD_NO'
                      end
                      object DBGArtigosDECOL: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 110
                        BandIndex = 0
                        RowIndex = 1
                        FieldName = 'DECOL'
                        StoredRowIndex = 1
                      end
                      object DBGArtigosDESEG: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 158
                        BandIndex = 0
                        RowIndex = 1
                        FieldName = 'DESEG'
                        StoredRowIndex = 1
                      end
                      object DBGArtigosDEGRP: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 158
                        BandIndex = 0
                        RowIndex = 1
                        FieldName = 'DEGRP'
                        StoredRowIndex = 1
                      end
                      object DBGArtigosDESGP: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Width = 158
                        BandIndex = 0
                        RowIndex = 1
                        FieldName = 'DESGP'
                        StoredRowIndex = 1
                      end
                      object DBGArtigosDECAT: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Width = 150
                        BandIndex = 0
                        RowIndex = 1
                        FieldName = 'DECAT'
                        StoredRowIndex = 1
                      end
                      object DBGArtigosD_DESCT: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Width = 380
                        BandIndex = 0
                        RowIndex = 1
                        FieldName = 'D_DESCT'
                        StoredRowIndex = 1
                      end
                      object DBGArtigosFIN_EST_NO: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Width = 200
                        BandIndex = 0
                        RowIndex = 1
                        FieldName = 'FIN_EST_NO'
                        StoredRowIndex = 1
                      end
                      object DBGArtigosREST: TdxDBGridMaskColumn
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -12
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Visible = False
                        Width = 78
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'REST'
                      end
                    end
                  end
                  object PNLINFADCPL: TPanel
                    Left = 0
                    Top = 190
                    Width = 1584
                    Height = 100
                    Align = alBottom
                    BevelOuter = bvNone
                    TabOrder = 1
                    object GBFicha: TGroupBox
                      Left = 0
                      Top = 0
                      Width = 1070
                      Height = 100
                      Align = alClient
                      Caption = '  Ficha T'#233'cnica  '
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold, fsItalic]
                      ParentFont = False
                      TabOrder = 0
                      object DBGFicha: TdxDBGrid
                        Left = 2
                        Top = 19
                        Width = 1066
                        Height = 79
                        Cursor = crHandPoint
                        Hint = 'Ficha T'#233'cnica'
                        Bands = <
                          item
                            Caption = 'Classifica'#231#227'o Fiscal'
                            Width = 120
                          end
                          item
                            Caption = 'Unidade Comercial'
                            Width = 343
                          end
                          item
                            Caption = 'Pesagem'
                          end
                          item
                            Caption = 'Dimens'#245'es'
                            Width = 184
                          end
                          item
                            Caption = 'Largura'
                            Width = 519
                          end
                          item
                            Caption = 'Encolhimento'
                          end
                          item
                            Caption = 'Elasticidade'
                          end
                          item
                            Caption = 'Estoque'
                          end>
                        DefaultLayout = False
                        HeaderPanelRowCount = 1
                        KeyField = 'ID'
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
                        ParentShowHint = False
                        ShowHint = True
                        TabOrder = 0
                        OnKeyDown = DBGConsultaKeyDown
                        AutoSearchColor = 9395
                        AutoSearchTextColor = clWhite
                        BandColor = 14803425
                        BandFont.Charset = ANSI_CHARSET
                        BandFont.Color = clBlack
                        BandFont.Height = -12
                        BandFont.Name = 'Tahoma'
                        BandFont.Style = [fsBold]
                        DataSource = DTSProdutos
                        Filter.Criteria = {00000000}
                        GridLineColor = clSilver
                        HeaderFont.Charset = ANSI_CHARSET
                        HeaderFont.Color = clBlack
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Segoe UI'
                        HeaderFont.Style = [fsItalic]
                        HideFocusRect = True
                        HideSelection = True
                        HideSelectionColor = 14789952
                        HighlightColor = 14789952
                        LookAndFeel = lfUltraFlat
                        OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
                        PreviewFont.Charset = ANSI_CHARSET
                        PreviewFont.Color = 9395
                        PreviewFont.Height = -13
                        PreviewFont.Name = 'Segoe UI Semibold'
                        PreviewFont.Style = [fsBold]
                        PreviewLines = 1
                        ScrollBars = ssHorizontal
                        ShowBands = True
                        ShowGrid = False
                        ShowPreviewGrid = False
                        OnCustomDrawCell = DBGFichaCustomDrawCell
                        object DBGFichaNCM: TdxDBGridMaskColumn
                          Color = clGray
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          Width = 72
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'NCM'
                        end
                        object DBGFichaPIPI: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 45
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'PIPI'
                          DisableFilter = True
                        end
                        object DBGFichaUCOM: TdxDBGridMaskColumn
                          Color = clGray
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          Width = 60
                          BandIndex = 1
                          RowIndex = 0
                          FieldName = 'UCOM'
                        end
                        object DBGFichaUCON: TdxDBGridMaskColumn
                          Color = clGray
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          Width = 180
                          BandIndex = 1
                          RowIndex = 0
                          FieldName = 'UCON'
                        end
                        object DBGFichaPESO: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 2
                          RowIndex = 0
                          FieldName = 'PESO'
                          DisableFilter = True
                        end
                        object DBGFichaPSCN: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 50
                          BandIndex = 2
                          RowIndex = 0
                          FieldName = 'PSCN'
                          DisableFilter = True
                        end
                        object DBGFichaMETRO: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 65
                          BandIndex = 3
                          RowIndex = 0
                          FieldName = 'METRO'
                          DisableFilter = True
                        end
                        object DBGFichaGRAM: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 70
                          BandIndex = 3
                          RowIndex = 0
                          FieldName = 'GRAM'
                          DisableFilter = True
                        end
                        object DBGFichaREND: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 74
                          BandIndex = 3
                          RowIndex = 0
                          FieldName = 'REND'
                          DisableFilter = True
                        end
                        object DBGFichaLARU: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 45
                          BandIndex = 4
                          RowIndex = 0
                          FieldName = 'LARU'
                          DisableFilter = True
                        end
                        object DBGFichaLART: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 45
                          BandIndex = 4
                          RowIndex = 0
                          FieldName = 'LART'
                          DisableFilter = True
                        end
                        object DBGFichaENCL: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 46
                          BandIndex = 5
                          RowIndex = 0
                          FieldName = 'ENCL'
                          DisableFilter = True
                        end
                        object DBGFichaENCC: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 84
                          BandIndex = 5
                          RowIndex = 0
                          FieldName = 'ENCC'
                          DisableFilter = True
                        end
                        object DBGFichaELAL: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 46
                          BandIndex = 6
                          RowIndex = 0
                          FieldName = 'ELAL'
                          DisableFilter = True
                        end
                        object DBGFichaELAC: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 84
                          BandIndex = 6
                          RowIndex = 0
                          FieldName = 'ELAC'
                          DisableFilter = True
                        end
                        object DBGFichaUVEN_MUL: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 58
                          BandIndex = 7
                          RowIndex = 0
                          FieldName = 'UVEN_MUL'
                          DisableFilter = True
                        end
                        object DBGFichaUVEN_MIN: TdxDBGridMaskColumn
                          HeaderAlignment = taRightJustify
                          Width = 50
                          BandIndex = 7
                          RowIndex = 0
                          FieldName = 'UVEN_MIN'
                          DisableFilter = True
                        end
                      end
                    end
                    object GBPRC: TGroupBox
                      Left = 1070
                      Top = 0
                      Width = 514
                      Height = 100
                      Align = alRight
                      Caption = '  Pre'#231'os  '
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold, fsItalic]
                      ParentFont = False
                      TabOrder = 1
                      object DBGPRC: TdxDBGrid
                        Left = 2
                        Top = 19
                        Width = 510
                        Height = 79
                        Cursor = crHandPoint
                        Hint = 'Tabela de pre'#231'os diversos'
                        Bands = <
                          item
                            Caption = 'Compras'
                            Width = 95
                          end
                          item
                            Caption = 'Atacado'
                            Width = 192
                          end
                          item
                            Caption = 'Atacarejo'
                            Width = 192
                          end
                          item
                            Caption = 'Loja Virtual'
                          end
                          item
                            Caption = 'Varejo'
                            Width = 191
                          end
                          item
                            Caption = 'Representante'
                            Width = 207
                          end>
                        DefaultLayout = False
                        HeaderPanelRowCount = 1
                        KeyField = 'ID'
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
                        ParentShowHint = False
                        ShowHint = True
                        TabOrder = 0
                        OnKeyDown = DBGConsultaKeyDown
                        AutoSearchColor = 9395
                        AutoSearchTextColor = clWhite
                        BandColor = 14803425
                        BandFont.Charset = ANSI_CHARSET
                        BandFont.Color = clBlack
                        BandFont.Height = -12
                        BandFont.Name = 'Tahoma'
                        BandFont.Style = [fsBold]
                        DataSource = DTSProdutos
                        Filter.Criteria = {00000000}
                        GridLineColor = clSilver
                        HeaderFont.Charset = ANSI_CHARSET
                        HeaderFont.Color = clBlack
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Segoe UI'
                        HeaderFont.Style = [fsItalic]
                        HideFocusRect = True
                        HideSelection = True
                        HideSelectionColor = 14789952
                        HighlightColor = 14789952
                        IndentDesc = 10
                        LookAndFeel = lfUltraFlat
                        OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
                        PreviewFont.Charset = ANSI_CHARSET
                        PreviewFont.Color = clBlack
                        PreviewFont.Height = -12
                        PreviewFont.Name = 'Segoe UI Semibold'
                        PreviewFont.Style = [fsBold, fsItalic]
                        PreviewLines = 1
                        ScrollBars = ssHorizontal
                        ShowBands = True
                        ShowGrid = False
                        OnCustomDrawCell = DBGPRCCustomDrawCell
                        object DBGPRCVPRC_COM_NAC: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Visible = False
                          Width = 70
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'VPRC_COM_NAC'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_COM_IMP: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 70
                          BandIndex = 0
                          RowIndex = 0
                          FieldName = 'VPRC_COM_IMP'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_PAD: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 1
                          RowIndex = 0
                          FieldName = 'VPRC_PAD'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_PAD_PRZ: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 1
                          RowIndex = 0
                          FieldName = 'VPRC_PAD_PRZ'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_PAD_PRO: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 1
                          RowIndex = 0
                          FieldName = 'VPRC_PAD_PRO'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_ATV: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 2
                          RowIndex = 0
                          FieldName = 'VPRC_ATV'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_ATV_PRZ: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 2
                          RowIndex = 0
                          FieldName = 'VPRC_ATV_PRZ'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_ATV_PRO: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 2
                          RowIndex = 0
                          FieldName = 'VPRC_ATV_PRO'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_VAR: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 4
                          RowIndex = 0
                          FieldName = 'VPRC_VAR'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_VAR_PRZ: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 4
                          RowIndex = 0
                          FieldName = 'VPRC_VAR_PRZ'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_VAR_PRO: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 4
                          RowIndex = 0
                          FieldName = 'VPRC_VAR_PRO'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_REP: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 5
                          RowIndex = 0
                          FieldName = 'VPRC_REP'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_REP_PRZ: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 5
                          RowIndex = 0
                          FieldName = 'VPRC_REP_PRZ'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_REP_PRO: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 5
                          RowIndex = 0
                          FieldName = 'VPRC_REP_PRO'
                          DisableFilter = True
                        end
                        object DBGPRCVPRC_LJV: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 3
                          RowIndex = 0
                          FieldName = 'VPRC_LJV'
                          DisableFilter = True
                        end
                        object DBGPRCPMKP_LJV: TdxDBGridMaskColumn
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Height = -12
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          HeaderAlignment = taRightJustify
                          Width = 55
                          BandIndex = 3
                          RowIndex = 0
                          FieldName = 'PMKP_LJV'
                          DisableFilter = True
                        end
                      end
                    end
                  end
                end
                object PNLINFADCAD: TPanel
                  Left = 0
                  Top = 290
                  Width = 1584
                  Height = 0
                  Cursor = crHandPoint
                  Hint = 'Informa'#231#245'es Adicionais do Romaneio'
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Color = clInfoBk
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  object BVInfadPed: TBevel
                    Left = 0
                    Top = 0
                    Width = 1584
                    Height = 0
                    Align = alClient
                  end
                  object DBINFADCAD: TdxDBMemo
                    Left = 0
                    Top = 0
                    Width = 1584
                    Cursor = crHandPoint
                    Hint = 'Informa'#231#245'es Adicionais do Romaneio'
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
                    DataSource = DTSArtigos
                    HideSelection = False
                    ReadOnly = True
                    HideScrollBars = False
                    ScrollBars = ssVertical
                    WantTabs = True
                    Height = 0
                    StoredValues = 64
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited TConsulta: TIBTransaction
    Left = 1464
    Top = 128
  end
  inherited SQLConsulta: TIBSQL
    Left = 1496
    Top = 128
  end
  inherited QConsulta: TIBQuery
    Left = 1464
    Top = 160
  end
  inherited Consulta: TIBQuery
    Tag = 99
    SQL.Strings = (
      'SELECT ID FROM CAD_PRO'
      'WHERE ID = 0')
    Left = 1464
    Top = 192
  end
  inherited DTSConsulta: TDataSource
    Left = 1496
    Top = 192
  end
  inherited TEdicao: TIBTransaction
    Left = 1528
    Top = 128
  end
  inherited SQLEdicao: TIBSQL
    Left = 1560
    Top = 128
  end
  inherited SPEdicao: TIBStoredProc
    Left = 1592
    Top = 128
  end
  inherited TEvent: TIBTransaction
    Left = 1624
    Top = 128
  end
  inherited SPEvent: TIBStoredProc
    Left = 1656
    Top = 128
  end
  inherited EEvent: TIBEvents
    Left = 1688
    Top = 128
  end
  inherited ILEdicao: TImageList
    Left = 1064
    Top = 208
  end
  inherited ILMenu: TImageList
    Left = 1064
    Top = 176
    Bitmap = {
      494C010108000900040024002400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000900000006C000000010020000000000000F3
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B867F00443D2E00433A
      2F00000000000000000000000000AAA7A200484033003A332400ECEBEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000485B94003958B600365AC4003B5EC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006CAAE600F3F6
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002C74BB0065A4E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F800D7D7F000CACAEC00CACAEC00D7D7F000F1F1F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090898000514634005347
      3900000000000000000000000000AEA9A200544937003E332100EAE8E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000015349700265DFF003167FF003367FF003367FF003266FF002F63
      FF002259FF00295BEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B7AC80077C3FF003899F90060AD
      FB0096CAFC00FFFFFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002567A60085C9FF006BB7FF007EC0FF006BB5FF00609AD4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00A7A7E2007878DC005959DA006666
      E4007575EC007C7CF0007C7CF0007575EC006666E4005959DA007878DC00A8A8
      E200FFFFFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00000000000000000000000000F2FCFF00B4D9FF00C9E6
      FF00000000000000000000000000F2FAFF00B4D9FF00D0EBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000184BE7003469FF003466FF003466FF003466FF003365FF003466FF003466
      FF003466FF003164FF001952FF00000000000000000000000000000000000000
      000000000000000000002273C10082C7FF00A7D5FF008CC4FF003B9AF700A9D4
      FF0095C9FF0054A8FC008EC5FA00FFFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000205E
      990075C0FF00A5D6FF00A2D0FF0062AFFD0079BCFD00A0CFFF009ED0FF005FAD
      FA0070A5D9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9FB008383DA005959DC008686F6009090F9009292F9009191
      F8009090F8009090F7009090F7009090F8009191F8009292F9009090F9008686
      F6005959DC008383DA00F9F9FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600DEDEDE00E5E2DF00BBCEE60082B5F20085B5
      EE00C1D1E400E4E2E000E7E3DF0085B6F10086B7F1008BB9F000E8E3DD00DEDE
      DE00DDDEDE00F4F4F400FEFEFE00000000000000000000000000000000000000
      00003568FF003466FF003466FF003466FF002A5EFE00265CFF003365FF003466
      FF003466FF003466FF003365FF001D54FF000000000000000000000000000000
      00001864AF007AC5FF00A7D5FF009CCCFF009BCCFF0089C3FF003B9AF700A3D1
      FF0099CBFF009ECDFF0091C8FF0052A7FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020578F006AB8FF00A5D6
      FF009CCDFF0099CAFF009ECDFF0061AEFD0079BBFE009CCCFF0099CBFF009ECE
      FF009ED3FF0059A8F6007DADDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9DDF005959DD008F8FFA009292F9008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7009292F9008F8FFA005959DD009D9DDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00D4D4D300D2D0CC00B2C5DE0090BCF10096BD
      EC00D8D8D700CECDCD00D5D1CD00A8C5E80090BAEC008DBAEF00D2CCC600D5D4
      D300D1D1D100EDEDED0000000000000000000000000000000000000000000000
      00003466FF003466FF003466FF001F56FF0080A0FD00C4D3FC001751FE003365
      FF003466FF003466FF003466FF003365FF002159FF00000000002872B90072BC
      FF00A5D5FF009DCDFF0098CAFF0098CAFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF0099CBFF00A3D2FF0088C4FF0067B3FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026598B005FADFB00A4D6FF009ECEFF0099CB
      FF0099CBFF0099CBFF009ECDFF0062AFFD0079BBFD009CCCFF0099CBFF0098CA
      FD00708FAC00A2D5FF009CD4FF0056A5F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      D3008080F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7009292F9009191
      F9008F8FF9008E8EF9008E8EF9008F8FF9009191F9009292F9008F8FF7008F8F
      F7008F8FF7008F8FF7009393FA008080F3006262D30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100D3D3D300D4D2D000C7CDD3009BC0EC009ABC
      E700D5D0CA00D4D3D300D7D3D000ACC8EA009DBADB00A0B9D600C7C4C000D2D1
      D100CECECD00EFEFEF0000000000000000000000000000000000000000000000
      00003466FF003466FF001F56FF007699FD00FFFFFE0000000000ACC1FD001A53
      FF003365FF003466FF003466FF003466FF003162FF003A7BFF00ABDDFF009DCD
      FF0099CBFF0098CAFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF009BCFFF007B9EBF0097C7F600A0D1FF0085C2FF0058AA
      FB0000000000FFFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002B59850054A4F200A2D6FF009ECEFF0099CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF009ECDFF0062AFFD0079BBFD009CCCFF0099CCFF0091C2
      F20088B1DD008EBCE90060778D009BCAF90093CCFF0052A1EE00000000000000
      00000000000000000000000000000000000000000000FDFDFC005555D3009090
      FB009090F7008F8FF7008F8FF7008F8FF7009292FA008989F7006161E1006363
      DA007E7EDD008989DE008A8ADE007E7EDD006464DA006161E1008989F7009292
      FA008F8FF7008F8FF7008F8FF7009090F7009090FB005555D300FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D3D300D3D3D200CCCCCC00D4D1CF00C9CDD200C7CD
      D600D3D1D000CECDCD00D3D2D200D3D1CE00B6C3D200D3D0CC00CAC9C800D2D2
      D200CFCFCE00F0F0F00000000000000000000000000000000000000000000000
      00003466FF001F56FF007799FD00FFFFFE000000000000000000FFFFFE0098B1
      FD001C54FF003465FF003466FF003466FF003365FF002B5DFE009CCEFF009ACB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF009CD0FF007594B3008DBAE60081A6CF0096C5F400A7D9
      FF007BBDFF005CADFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003359
      7F004B9AE7009ED5FF00A0CFFF0099CBFF0099CBFF0099CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF009ECDFF0063AFFD007ABCFE009CCCFF009ACDFF0099CD
      FF0089B3E0009DD0FF007DA3C7006B87A3009BCDFF009DCCFC008DC9FF00519C
      E80000000000000000000000000000000000000000005454D3009393FC008F8F
      F7008F8FF7008F8FF7009292F8008585F5005B5BD8009F9FE000F4F4F9000000
      00000000000000000000000000000000000000000000F5F5F900A0A0E0005C5C
      D8008383F4009393F9008F8FF7008F8FF7008F8FF7009393FC005555D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE0000000000CDCCCC00CDCDCD00C6C6C500CDCCCD00CCCBCA00CCCA
      C900CCCBCB00CCCBCB00CDCCCC00CECDCD00CAC8C700D1D1D000C5C5C500D0CF
      CF00CFCECE00E1E1E10000000000000000000000000000000000000000000000
      00001F56FF007799FB00FFFFFE000000000000000000FFFFFE00000000000000
      000088A4F9001E56FF003466FF003466FF003465FF00295BFF0084B8FF009CCD
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF009CD0FF007698B8009FD3FF0097C9FB00536271005D73
      87009BCDFF00A1D1FF007ABDFF005FADF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000627B940088CE
      FF00A2D1FF0099CBFF0098CBFF0099CBFF0099CBFF0099CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF009ECDFF0063B0FD0079BCFD009ECEFF0090BEED003F46
      4C0093C2F3009FD5FF007BA0C6007A9CC000A2D9FF0056687A009DD0FF00A2D0
      FF00000000000000000000000000000000006262D3009090FB008F8FF7008F8F
      F7008F8FF7009191F8007575E9009292DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9FDF005D5DDF009595FB008F8FF7008F8FF7008F8FF7009090FB006262
      D300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000EAEAEA00F4F4F40000000000ECECEC00EAEAEA00000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EDED
      ED00F3F3F300FEFEFE00E2E2E100F8F7F700FEFEFE0000000000000000000000
      00007898F9000000000000000000000000009FB6FD0082A0FD00FFFFFE000000
      0000FFFFFE007598FB002157FF003466FF003466FF002A5DFF007CAFFF009DCE
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0099CBFF0097C9FB00A4DBFF007698B8009DD1FF0092C0F0007FA4C90082AB
      D40094C5F4008CB6E0009DCEFF009FCFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000778EA5008AC8
      FF009ACBFF0098CAFF0098CAFF0098CAFF0098CAFF0098CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF009ECDFF0062AFFD0079BCFD009CCCFF00A2D8FF005363
      720012030000789BBD008BB7E4007B9EC200A2D9FF0087B0D9009CD0FF009CCC
      FF000000000000000000000000009D9DDF008080F3009090F7008F8FF7008F8F
      F7008F8FF7008F8FF7009393FA005F5FD700FEFEFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EAEAF5005555D5009494FB008F8FF7008F8FF7009090F7008080
      F3009D9DDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E000F9F9F900F3F3F300E7E7E7000000000000000000F2F2F200D9D9
      D900E3E3E400E3E4E400E1E1E100E1E1E100D2D2D20000000000000000000000
      0000F5F5F500E4E4E40000000000E3E3E300FBFBFB00FEFEFE00FEFEFE00FEFE
      FE00FFFFFE000000000000000000AEC3FD001751FF001A53FF009DB5FD000000
      000000000000FFFFFE00658CFC00255AFF003466FF00295CFF007FB2FF009CCE
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0099CCFF0097C8FA00383A390080A5C900A6DFFF0093C2F2007D9FC3006F8F
      AE009FD5FF009DD0FF00434B50009DD1FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007891A9008DCF
      FF009ED3FF009CD2FF009CD2FF009CD2FF009CD2FF009CD1FF0099CBFF0099CB
      FF0099CBFF0099CBFF009ECDFF0062B0FD0079BCFE009CCCFF0099CBFF00A1D7
      FF008CB8E40092C0F000546575005E758B0084ADD50030302F00A1D8FF009DCD
      FF000000000000000000F9F9FB005959DD009393FA008F8FF7008F8FF7009191
      F8008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFB005555D5009595FB008F8FF7008F8FF7009393
      FA005959DD00F9F9FB0000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE0000000000000000000000000000000000F1F1
      F000FCFCFD00ECECEC00F4F5F500000000000000000000000000000000005250
      4E001D1915001F1D1A0002030300000000009897970000000000000000000000
      00000000000000000000DFDFDF0000000000F3F3F40000000000000000000000
      0000F9FBFC0000000000AAC0FD001952FE003365FF003365FF001952FE00AABF
      FC000000000000000000FFFFFE005681FD002D61FF002A5CFF0092C6FE009ACC
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF00A1D7FF00586C7E001A0E0100444B510093C2F10089B1DC006F8F
      AE009ED3FF00A2D9FF007496B7009DD1FF00000000004F4F4F004E4E4E004B4B
      4B0050505000525252004C4C4C004C4C4C0052525200525150003A434C006882
      9B006C8094006B7F94006B7F94006B7F94006A7E9200738BA3009BD1FF0099CB
      FF0099CBFF0099CBFF009ECDFF0062AFFD0079BCFD009CCCFF0099CBFF0099CB
      FF009BCEFF009ACDFF00A0D6FF0069849F007799BC001E14090080A7CD00A0D1
      FF0000000000000000008282DA008F8FFA008F8FF7008F8FF7009292F8007575
      EA009393FA008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAF5005D5DDF009393F9008F8FF7008F8F
      F7008F8FFA008282DA0000000000000000000000000000000000000000000000
      00000000000000000000000000009D9D9D00000000000000000000000000706F
      6F0000000000E0E0E000E1E1E100E1E1E100E1E1E100E1E1E100EAEAEA00AAA9
      A900524F4D00585655004646460035353500F1F1F100E2E2E200E1E1E100E1E1
      E100E1E1E100DEDEDE00000000006C6B6A004F4D4B0030302D0051514C003839
      35002A5FFE003F6EFC00255BFF003365FF003466FF003466FF003365FF001952
      FF00C0D1FA000000000000000000BFD0FC002359FF003567FE00A5D7FF0099CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF00A3D8FF0055667500637B8F006A85A0005E7387007DA3
      C800A5DDFF007A9FBF007495B4009FD4FF004C4C4C00B5B5B500EFEFEF00E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900ECEBE900E8E5
      E200E7E5E200E7E5E200E7E5E200E7E5E200ECE9E700BFB8B2006F8396009CD1
      FF0099CBFF0099CBFF009ECDFF0061AFFD0079BCFD009CCCFF0099CBFF0099CB
      FF0099CBFF0099CBFF0099CBFF00A1D6FF0084ADD5001F150B00799BBF00A0D2
      FF0000000000FFFFFE005959DC009292F9008F8FF7008F8FF7008585F5009292
      DA005F5FD7009494FC008F8FF7008F8FF7008F8FF7009393FC005454D400FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9FDF008282F4008F8FF7008F8F
      F7009292F9005959DC00FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000A09F9F00D3D3D300CECDCD00CFCFCF00908F
      8E00FBFBFB00BDBEBF00A5A6A700A8A9AA00A8A9AA00A8A9AA00A8A9AA00B0B1
      B100B8B9BA00B9BABB00BABBBC00BBBCBC00AAAAAB00A8A9AA00A8A9AA00A8A9
      AA00A8A9AA00A1A2A300F3F3F4004F4D4B008C8C8800706B7A00716B80006964
      77003265FF003063FF003365FF003466FF003466FF003466FF003466FF003365
      FF001952FF00B9CBFE00F0F3FB004171FE002558FF0073A7FD009ECFFF0098CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF0099CBFF00A0D5FF00A0D5FF0096C5F500789ABD003F43
      470082ACCF0041464C00231A110099CBFE0052525200EEEEEE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFCFA0063717F009DD3
      FF0099CBFF0099CBFF009ECDFF0063B0FD0079BCFD009CCCFF0099CBFF0099CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009CD0FF009BCFFF008DBAE6009ECE
      FF0000000000A7A7E2008686F6008F8FF7008F8FF7009292FA005B5BD8000000
      0000FEFEFC005454D4009494FC008F8FF7008F8FF7008F8FF7009393FC005454
      D400FDFDFC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5CD8009292FA008F8F
      F7008F8FF7008686F600A7A7E200000000000000000000000000000000000000
      0000000000000000000000000000A1A0A000B2B1B1009E9E9E00959595008C8B
      8B00000000006F6863001A110C00211812002118120021181200211812002118
      1200211812002118120021181200211812002118120021181200211812002118
      1200211812001D130E00D7D5D300605F5D00FFFFFE008C67FF00B299FF008963
      FF003466FF003466FF003466FF003466FF003466FF003466FF003466FF003466
      FF003365FF00235AFF001C55FF002C5EFF003B6EFE00A7D8FE0099CBFF0099CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF0099CBFF0099CBFF0098CAFF009ACDFF00A1D6FF00799B
      BA00A4DDFF0040454B00251F18007B9FC20050505000E9E9E900FFFFFF008DA9
      FC009DB4FD00FAFEFF00DECDBB0095612B009B6A38009B6A38009B6A38009B6A
      38009B6A38009B6A38009B6A380098663300B48E6700FFFFFF00647381009DD3
      FF0099CBFF0099CBFF009ECDFF0063B0FD0079BCFD009CCCFF0099CBFF0099CB
      FF0099CAFF009ACDFF0099CBFF0099CBFF0099CBFF0099CCFF009ACDFF009CCC
      FF00000000007878DC009090F9008F8FF7008F8FF7008989F700A0A0E0000000
      000000000000FDFDFC005454D4009393FC008F8FF7008F8FF7008F8FF7009393
      FC005454D400FDFDFC0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0E0008989F7008F8F
      F7008F8FF7009090F9007878DC00000000000000000000000000000000000000
      0000FEFEFE000000000000000000A5A5A400868686006E6D6D00636364008B89
      8300FEFCF7003A2E280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000948F8900BAB7B300605F5D00FBFBFB00F0FDF800D3D56800C4C7
      1A001A53FF003264FF003466FF003466FF003466FF003466FF003466FF003466
      FF003466FF003466FF002F60FF003164FE009BCDFF009ACCFF0098CAFF0099CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF0099CBFF0099CBFF0099CBFF0098CAFF0098CAFF009CD0
      FF00A2D8FF004E5B66001C110500799BBE004E4E4E00E9E9E900FFFFFF00819F
      FC00527DFC00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F5F300647381009DD3
      FF0099CAFF009ACBFF00A4D0FF005DADFD0076BAFE00A2CFFF0099CBFF0099CA
      FF0099CDFF0090BAE5009DD4FF009ACEFF0098CAFF0099CBFF0099CBFF009CCC
      FF00000000005959DA009292F9008F8FF7009292F9006161E100F5F5F9000000
      00000000000000000000FDFDFC005454D4009494FC008F8FF7008F8FF7008F8F
      F7009393FC005454D400FDFDFC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F9006161E1009292
      F9008F8FF7009292F9005959DA00000000000000000000000000000000000000
      000000000000ECEBE800DDDAD0009A999700B4B4B400A2A2A1009B9B9B008F8E
      8700F2EFE6003E332E0000000000F8F8F900F8F8F800F8F8F800FDFFF800A891
      F700AB95F700A891F700AB94F700D9D0F700FBFDF800F8F8F800F8F8F800F8F8
      F80000000000918C8600BCB8B40064636100CFCECE00B2BAC300D0CF6800B7B7
      0F0000000000245BFE00265CFF003063FF003465FF003365FF003465FF003365
      FF003063FF002A5DFF00477BFF009FD1FE009BCDFF0098CAFF0099CBFF0099CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF0099CBFF0099CBFF0099CBFF0099CBFF0098CBFF0098CA
      FF0099CAFF00A4DCFF007DA1C30080A6CC0051515100E9E9E900FFFFFF00E7ED
      FD00F8FAFD00F6F8FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F5F300647381009ED3
      FF009FCEFF0090C7FE006BB3FA006CB4FA006CB4FA006BB3FB0097CAFE009ECE
      FF009FD6FF005F5852006A6D710091BEE9009CD1FF0098CAFF0099CBFF009CCC
      FF00F1F1F8006666E4009191F8008F8FF7009191F9006363DA00000000000000
      0000000000000000000000000000FDFDFC005454D4009494FC008F8FF7008F8F
      F7008F8FF7009393FC005454D400FDFDFC000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006464DA009191
      F9008F8FF7009191F8006666E400F1F1F80000000000FEFEFE0000000000FEFE
      FE0000000000EDECE900DCDAD00087847D00D7D6D700C4C4C400C0C0C0009291
      8D00F3F2E900362A230000000000F7F7F700F7F7F700F7F7F700FFFFF700653E
      FF00977FFF00A996FF007553FF00BDAFFF00FDFFF700F7F7F700F7F7F700F7F7
      F70000000000908B8600BCB8B40063626100DAD9D900CAC9D300D5D48500C1C1
      390000000000FFFFFB00000000003566FB001651FE002A60FF00295CFF00285A
      FC004B7CFD006C95D20096C2E2009CD0FF0098CAFF0099CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF0089C3FF003B9AF700A3D1
      FF0098CAFF0099CBFF0099CBFF0099CBFF0098CAFF0099CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF009CD0FF009BCFFF0053535300E9E9E900FFFFFF009DB5
      FD00B1C4FD00F9FDFF00DECEBB0096622D009C6B3A009C6B3A009C6B3A009C6B
      3A009C6B3A009C6B3A009C6B3A0099673400B48F6900FFFFFF006774820099D2
      FF006AB3FA006BB3FA0050A7FE002A93FE002A94FE005AACFD006BB3FA006DB4
      FC00A1D9FF0064615D00646260005F5952008EB6DF009ACEFF0099CBFF009CCC
      FF00D6D6F0007575EC009090F8008F8FF7008F8FF9007E7EDD00000000000000
      000000000000000000000000000000000000FDFDFC005454D4009494FC008F8F
      F7008F8FF7008F8FF7009393FC005454D400FDFDFC0000000000000000000000
      00000000000000000000000000000000000000000000000000007E7EDD008F8F
      F9008F8FF7009090F8007575EC00D7D7F000E7E5E10000000000FEFEFE00FDFD
      FE00E9E8E300E9E8E400DFDED300938F8C0076807B00A9A8A9009F9F9F004C48
      4500EFECE3003528210000000000F8F8F800FDF8F900F7F7F700F8FEFF00E8AC
      1300E6AD2000E5AE2600E7AD1800F2DA9D00F8FBFF00F7F6F600F9F5F600F7F7
      F70000000000908B8600BCB8B40065646300D1D1D100CBCAD600D5D56E00D1D0
      650000000000000000000000000000000000000000008799AE0081C3FF0099C5
      E400687F8A007290A6007192AF0091C1F00099CCFF0099CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF0099CBFF0099CBFF009BCCFF008AC3FF003C9AF700A3D1
      FF0098CAFF0099CBFF0099CBFF0098CAFF009ACDFF009ACDFF0099CBFF0098CB
      FF0099CBFF0099CBFF0099CBFF0098CAFF004E4E4E00E9E9E900FFFFFF0084A3
      FD004C78FC00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAF7F400576C80006DBA
      FF0056AAFD002A93FE002F96FE003398FE003398FE002E96FE002C95FE005DB2
      FF0065BCFF0064615D0065656400605B56008EB6E0009ACDFF0098CAFE009CCC
      FE00CACAEC007B7BF0009090F7008F8FF7008E8EF9008A8ADE00000000000000
      00000000000000000000000000000000000000000000FDFDFC005454D4009494
      FC008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC00000000000000
      00000000000000000000000000000000000000000000000000008989DE008E8E
      F9008F8FF7009090F7007B7BF000CACAEC00D6D3CA00E0DED80000000000F1F0
      EE00D0CDC200D6D4CA00D7D4CE0099939200B6B4B400B2B1B000AFAEAD00DCDC
      DA008F8A860036291F0000000000FAFBFB00B3E6D80000000000F8FCFF00E3BA
      6000F3ECDA00EACE9100EDD7A600EFDFBB00FAFCFF00FFFDFE00B4E7D9000000
      000000000000908B8600BCB9B50061605F00AAA8AB009A989C00AFAF8300A2A2
      56000000000000000000000000000000000000000000798DA00083C7FF008FB8
      DF00789DBD005E73890094C5F4009DD1FF0099CBFF0099CBFF0099CBFF0099CB
      FF0099CBFF0099CBFF0099CAFF009ACBFF00A3D0FF0080BFFF002C92F600A7D2
      FF009DCDFF0099CBFF0099CBFF009ACDFF008CB3DB0092C1F0009DD3FF009BCF
      FF0098CAFF0099CBFF0099CBFF0099CBFF004F4F4F00E9E9E900FFFFFF00D0DC
      FF00E5ECFF00F2F5FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF7F3004E6881002A9A
      FF002F96FF003398FF003499FF003499FF003499FF00319BFF002D9FFF004182
      C40062605E006665630065666700615B540092B8DE009ED0FF0099CBFF009CCC
      FF00CACAEC007B7BF0009090F7008F8FF7008E8EF9008989DE00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFC005454
      D4009494FC008F8FF7008F8FF7008F8FF7009393FC005454D400FDFDFC000000
      00000000000000000000000000000000000000000000000000008A8ADE008E8E
      F9008F8FF7009090F7007B7BF000CACAEC00E5E2DE00D5D2CA00F5F5F3000000
      0000EDEBE700E2DBD2009E94900000000000DBD8D700FBFCFC00F8F9F900F7F7
      F600DCD9D7001003000000000000A9A8A8009F9A9B0092919100FDFFFF00E2B6
      5600EBD19A00E6C27600E7C57C00F1E0BA00E5E7EB00A9A9A8009E999A00A6A6
      A60000000000908B8600BFBCB70044414200314227003D455000717074006B6B
      73000000000000000000000000000000000000000000798DA20082C7FF008DB6
      E2005D7286007A9CBE003C40420083ABD1009BCEFF0099CBFF0099CBFF0099CB
      FF0099CBFF009ACBFF00A0CFFF0090C7FF005DADFE0070B6FA0086C2FF005FB0
      FD0071B7FE00A0CFFE009DCCFF009ACEFF008DB4DD005B514500676B70008BB0
      D4009ED7FF0098CAFF0099CBFF0099CBFF0052525200E9E9E900FFFFFF00E8E7
      9100FBFAE100FFFFFF00DECFBF009C6C3900A2744500A2744500A2744500A274
      4500A2744500A2744500A27445009F714000B9967200FFFFFF00456381002F9D
      FF003499FF003499FF003499FF00329AFF002D9FFF00408BD500646667006A61
      580066656400666563006A60560061666C0071B2F20077BBFF00A1CFFF00A0CE
      FF00D6D6F0007575EC009090F8008F8FF7008F8FF9007E7EDD00000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC005454D4009494FC008F8FF7008F8FF7008F8FF7009393FC005454D400FDFD
      FC000000000000000000000000000000000000000000000000007E7EDD008F8F
      F9008F8FF7009090F8007575EC00D7D7F000F3F2F200D3CEC500FBFCFC00F5F5
      F400E2DDD700E4DED600B1AAA500DCDBDB00F9FAFA009B928F00D8D7D600F4F4
      F300F5F1F10000000000000000009E9E9E00BCBCBC009E9E9E0000000000E9BE
      6500EAC26E00EAC37100E9BF6800F7E6C200EDEFF300A09F9F00B0B0B000BCBC
      BC0000000000938E8900B1ADA900DADADA00B5B2B400C4C2C100B6B5B500C3C4
      C0000000000000000000000000000000000000000000798DA20082C6FF0094C1
      EF004C5963003434320082A7CB009ED3FF0099CBFF0099CBFF0099CAFF0099CB
      FF009FCEFF0095CAFF005FAEFE006FB8FD0072B8FE003499FF002693FF004EA7
      FF007ABBFA0062B0FE0074B9FF00A3D2FF0091B7DE00615C5600646362005F5A
      55007C91A6009CD1FF0099CBFF0099CBFF0051515100EAEAEC00FCFDED00E6E6
      A000D2D34F00FDFDFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF9F400466481002F9D
      FF003499FF00329AFF002D9FFF003B91E500606B75006B605500666563006665
      640069615900666563004388CC002B9FFF00359BFF0069B3FB006BB3FA0080BE
      FE00F1F1F8006666E4009191F8008F8FF7009191F9006464DA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFC005454D4009494FC008F8FF7008F8FF7008F8FF7009393FC005454
      D400FDFDFC0000000000000000000000000000000000000000006363DA009191
      F9008F8FF7009191F8006666E400F1F1F800DBD6CE00E5E1DB00FBFCFC00E5E1
      DB00D9D0C700E3DCD400A3999600F9FBFB00EFEFEF00F6F7F800F1F1F200F1F1
      F000EDE9E9000B000000E3E4EA00E2DEDF00E3DFDC00D7D7D700CDCDCD00CED3
      DC00CED3DC00CED3DC00CED3DC00CDCFD300CFCFCF00D6D6D600D5D5D500D3D3
      D300DADADB007D787300AFABA60000000000FFF8F50000000000F7F8F500DFD3
      F1000000000000000000000000000000000000000000798DA20083C8FF007EA1
      C3007292B100A5DDFF009CD0FF0099CBFF0098CBFF0099CBFF009ECDFF009CCC
      FF0060B0FE006BB4FD0078BCFE00379BFF002B95FF003298FF003498FF003097
      FF002994FF0055A9FE007FBFFD005EB2FF0073ACE500645E5600666666006462
      60006E757E009DD4FF0099CBFF0099CBFF004E4E4E00E9E9E900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF8F300466481002F9E
      FF002E9EFF003695F4005B7085006C5F5200676461006665650069625B006962
      5B004982BC002D9FFF00319BFF003399FF003298FF002C95FF00389BFF0060AE
      FA00000000005959DA009292F9008F8FF7009292F9006060E100F5F5FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFC005454D4009494FC008F8FF7008F8FF7008F8FF7009393
      FC005454D400FDFDFC00000000000000000000000000F5F5F9006161E1009292
      F9008F8FF7009292F9005959DA0000000000EBE9E600F5F4F300FEFEFF00FBFB
      FB00F5F5F400E2DCD400C8C3BD00BFB9B800F8F9F900EDEDEC00F4F4F400FDFE
      FC009B918B0048393600605E1600366A5D0010376100B5B2AF00B2B3B300B1B2
      B300B1B2B300B1B2B300B1B2B300B1B2B300B1B2B300B1B2B300B1B2B300B5B6
      B7008F9091000F070400BBB6B100000000006FC5EA00EFF8FB00ECE9E800CDBE
      E4000000000000000000000000000000000000000000798DA20080C4FF009ED0
      FF009DD1FF0099CBFF0099CAFF0099CBFF009ECDFF009BCCFF0066B3FE0069B3
      FD007BBDFE003C9EFE002A94FF003298FF003498FF003499FF003499FF003498
      FF003398FF002F96FF002597FF005BB4FF006C88A30065615D00666666006462
      61006F7882009DD4FF0099CBFF0099CBFF0050505000E9E9E900FFFFFF00B5C7
      FC00CFDBFC00F4F9FF00E4D6C700A97C5100AE845B00AE845B00AE845B00AE84
      5B00AE845B00AE845B00AE845B00AC815700C2A28200FFFFFF00446688002D9D
      FF00557696006B5E5200676360006565650068635D006B6054004E7DAC002F9D
      FF00309CFF003399FF003498FF003498FF003297FE002793FF002E97FE0087C3
      FE00000000007878DC009090F9008F8FF7008F8FF7008989F700A1A1E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFC005454D4009393FC008F8FF7008F8FF7008F8F
      F7009393FC005454D400FDFDFC000000000000000000A0A0E0008989F7008F8F
      F7008F8FF7009090F9007878DC0000000000FEFEFF00FEFEFF00000000000000
      0000F7F6F500DAD2CA00E3DCD400BAB2AB00A49C9700B8B2B000BDB6B500948A
      8500E6E1D8003D2E2600160F12002614110022150E00140D0800130C0700130C
      0700130C0700130C0700130C0700130C0700130C0700130C0700130C0700130C
      070018110D0001000000C6B6AD0040C4FB00DAEFF70018AAE700FFFFFE00CBBB
      E3000000000000000000000000000000000000000000798DA20080C4FF009BCC
      FF0098CAFF0099CBFF009DCDFF00A2CFFF0068B4FE006AB5FE007EBDFE0042A0
      FE002A94FF003297FF003499FF003499FF003499FF003499FF003499FF003399
      FF00319BFF002DA0FF004682BE0063615F0066605B0066666600666666006462
      600071777D00A4D8FF009ACBFF0098CAFF0052525200E9E9E900FFFFFF0086A4
      FC004876FC00FFFFFF00FCFBF900F6F2ED00F7F3EF00F7F3EF00F7F3EF00F7F3
      EF00F7F3EF00F7F3EF00F7F3EF00F6F3EE00FAF7F300FBFBFA00505963006962
      5A0068635E006665650068635F006C5F520053779A00319AFF002F9CFF003399
      FF003498FF003499FF003298FF002893FE002D96FF007DBCFA00000000000000
      000000000000A7A7E2008686F6008F8FF7008F8FF7009292FA005C5CD8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFC005454D4009494FC008F8FF7008F8F
      F7008F8FF7009393FC005454D400FEFEFC00000000005B5BD8009292FA008F8F
      F7008F8FF7008686F600A7A7E20000000000FEFEFE000000000000000000FEFF
      FF00F5F4F300D9D5CF00E8E5E400E0DDD700E8E5E000C8C3BD00D4CFC900E3DD
      D500DFD8D000D8D3CD00E4D9D6009DCCC200E4DEDC00E2DDDA00DDDCD800DCDC
      D800DCDCD800DDDCD800DDDCD800DCDCD800DCDBD800DCDBD800E3DCD800E0DC
      D800DDDCD800D9D9D5000000000000ABF00088D4F50000A0F000FFFFFC000000
      00000000000000000000000000000000000000000000798DA20080C4FF009BCC
      FF009DCDFF009FCEFF0071B8FE005EAFFE0083C1FE0042A0FE002994FF003197
      FF003498FF003499FF003499FF003499FF003499FF003499FF00329AFF002F9F
      FF00428AD100666564006A61570066656400666666006666660068635F00685D
      5200718EAC005FB4FF008CC5FF00A1CEFF004F4F4F00E9E9E900FFFFFF00AEC2
      FF00C6D5FE00F2F5FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00555453006665
      6500676461006C5E520058718A003497F9002F9EFF003399FF003499FF003499
      FF003298FF002A94FF002893FE0073B8FD000000000000000000000000000000
      000000000000FFFFFD005959DC009292F9008F8FF7008F8FF7008282F400A0A0
      DF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC005454D4009494FC008F8F
      F7008F8FF7008F8FF7009393FC005E5ED7009292DA008585F5008F8FF7008F8F
      F7009292F9005959DD00FFFFFD00000000000000000000000000000000000000
      0000FEFEFE000000000000000000DBD8CE00DEDCD300E8E6E000DFDDD400E4E2
      DE00F2F0ED00E1D7D000E8FAF800009A730000AF8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000C7F4FF00EEFB
      FF000000000000000000FBF8F700DEE8EC0051C0EF00D0EDFA0000000000FEFF
      FF000000000000000000000000000000000000000000798DA20084C5FF00A5D0
      FF0075BAFE0062B0FE007FBEFD004EA7FE002993FF003197FF003498FF003499
      FF003499FF003499FF003499FF003398FF00329AFF002C9FFF003C8DDE006169
      70006B605500666563006666660066666500676461006C5E500058738C003697
      F600309EFF006DB6FE0077BBFD005DAEFE004E4E4E00E9E9E900FFFFFF00F7F5
      C300FFFFF900FFFFFF00E6DACE00B38D6700B7947100B7947100B7947100B794
      7100B7947100B7947100B7947100B5916D00C9AE9200FFFFFF00515151005F5A
      5500596A7B003992EB002D9EFF00339AFF003498FF003499FF003398FF002B94
      FF002591FE0068B4FD0000000000000000000000000000000000000000000000
      000000000000000000008282DA008F8FFA008F8FF7008F8FF7009393F9005D5D
      DF00EAEAF5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC005454D4009494
      FC008F8FF7008F8FF7008F8FF7009393FA007575E9009292F8008F8FF7008F8F
      F7008F8FFA008282DA0000000000000000000000000000000000000000000000
      0000FEFEFE00FEFEFE00FDFEFE00E9E7E200F2F1EF00FEFEFF00DDDAD100EFEE
      EB00F8F8F900FDFAFC00D5E6E30054CCB70000A9860000AC8B00ADE6DD000000
      000080E2F80022D2F70039D5F700D3F2FA00FFFFFC00BAEDF90000C4F50000C7
      F600FFFFFC00FEFEFF00E3E3E40000000000F1E7E300FFFDF800F2E5C700F2E4
      C500000000000000000000000000000000000000000077899D0061B5FF005BAD
      FD0080BFFE0052A9FE002994FF003097FF003398FF003499FF003499FF003499
      FF003499FF003498FF00339AFF002E9EFF003893EE005E6D7E006B6054006764
      62006666660066666600676462006B5F54005B6C7C003A95EF002E9FFF003299
      FF003398FF002C95FF003198FF0073BAFE0052525200E9E9EB00FDFEF100D9D9
      6B00D2D24C00FFFFFF00F8F5F300EAE0D500EBE3D900EBE3D900EBE3D900EBE3
      D900EBE3D900EBE3D900EBE3D900EBE2D700F1EBE300F8F8F900787674000000
      00004AAEFF002293FF002F96FF003398FF003398FF002D95FF002491FF005DAE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9FB005959DD009393FA008F8FF7008F8FF7009595
      FB005656D600FDFDFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFC005454
      D4009494FC008F8FF7008F8FF7008F8FF7009191F8008F8FF7008F8FF7009393
      FA005959DD00F9F9FB0000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFFFF00FEFEFF00FDFDFE0000000000D3D3
      D3009B9B9B00F5F5F500F9F6F700FFF0F4006FD6C5000091680084D6BF003ED7
      FE0000CFF80025DAF7001ED9F80000C6F700CCF0F900D9F2F90000C1F5000DD0
      F900FFFDFF00E4E2E000FEFFFF00FEFFFF0000000000ECDFC200C9CBD100DEE1
      E50000000000000000000000000000000000000000000000000073B8FE005CAE
      FF002190FF002F96FF003398FF003499FF003499FF003499FF003499FF003498
      FF003399FF002F9EFF003596F60058748F006C5F520067646000666565006666
      6600666563006B605500626A73003E8EDB002E9FFF00329AFF003498FF003499
      FF003499FF003498FF003398FF002893FF0051515100E9E9E900FFFFFF00FFFF
      FF00FCFCF700FDFDF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F4007E7E7E000000
      0000000000000000000046A2FE002291FF002391FF0054AAFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009D9DDF008080F3009090F7008F8FF7008F8F
      F7009494FB005555D500EAEAF500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FC005F5FD7009393FA008F8FF7008F8FF7008F8FF7008F8FF7009090F7008080
      F3009D9DDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8008B8A
      8A00A8A8A8008A8A8A0000000000FCFBFB00F9E8EB00C7ECE400D7F3FE0000CC
      F8002ED9F70006AFF10016C1F3002ADDF8000ECEF700FFFFFC00FAFCFD00F6F0
      F600DBBD7F00D4880000D5900000F2E3C50000000000EEE0C300ADAEB400A5A7
      AD00000000000000000000000000000000000000000000000000000000000000
      00005EAEFD002994FF002C95FF003398FF003499FF003498FF003399FF00309C
      FF00329CFF0054799F006A5F530068635F006665650066666600666564006A61
      580065636100428AD1002E9EFF00319BFF003399FF003499FF003499FF003499
      FF003398FF003197FF002592FF00399CFE004E4E4E00E9E9E900FFFFFF00F3F3
      D500FFFFFF00FFFFFF00E9E0D500BE9F8000C2A58700C2A58700C2A58700C2A5
      8700C2A58700C2A58700C2A58700C0A28400D2BBA400F8FBFD00818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006262D3009090FB008F8FF7008F8F
      F7008F8FF7009595FB005D5DDF00A0A0DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009292DA007575E9009191F8008F8FF7008F8FF7008F8FF7009090FB006262
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E6007474
      74009C9B9B00908F8F0000000000FEFEFE0000000000FFEFEC008EDBED0009D2
      F9002DDBF70007B1F10014C0F40032E0F80000C6F800FFF0E800FFE9E400FDFF
      FF00D99C1600ECD7AC00EDDBB100DAA1250000000000FBF6EE00EEE1C400F1E3
      C500000000000000000000000000000000000000000000000000000000000000
      0000FFFDF900000000005AACFD002792FF002D95FF00309CFF00309CFF004D80
      AF006A5F540068635D0066656500666666006665650069625A0067625D004884
      C0002E9FFF00319BFF003399FF003498FF003499FF003499FF003499FF003197
      FF002793FF00359AFF0000000000000000004F4F4F00EAEAEC00FEFEF400D5D4
      5800D2D35100FFFFFF00F4F0EB00DFCEBD00E1D2C200E1D2C200E1D2C200E1D2
      C200E1D2C200E1D2C200E1D2C200E0D0C000E9DED200F6F8F9007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005454D3009393FC008F8F
      F7008F8FF7008F8FF7009393F9008282F4005C5CD800A0A0E000F6F6FA000000
      00000000000000000000000000000000000000000000F5F5F900A0A0E0005B5B
      D8008585F5009292F8008F8FF7008F8FF7008F8FF7009393FC005454D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE0000000000C7C7
      C7009D9C9C00EBEBEB0000000000FFFFFD00C0EEF900BEEFFA00E1F4FA0000CA
      F70030DBF70004AEF1001BC7F40026DBF80029D3F70055DBF80006C9F7000000
      0000E2B45600DCA63600D0830000E8C9860000000000FEFFFF00FEFFFF00FEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFBFA00000000004DA9FF003E7CBA00666361006962
      5A0066656500666666006665650068635D006A6054004D7FB100309DFF00309C
      FF003399FF003499FF003499FF003499FF003499FF003298FF002793FF003097
      FE00000000000000000000000000000000004F4F4F00EBEBEB00FFFFFF00FFFF
      FF00F8F8E800FCFBF600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F6007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC005454D3009090
      FB009090F7008F8FF7008F8FF7008F8FF7009292FA008989F7006060E1006464
      DA007E7EDD008989DE008989DE007E7EDD006363DA006161E1008989F7009292
      FA008F8FF7008F8FF7008F8FF7009090F7009090FB005454D300FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      00000000000000000000FEFEFE00FFFFFB0000C1F50000BEF400FFFFF90044D7
      F70000CDF70023DBF9001BD8F90000C8FA00E9F6F9001DCEF60000C2F500FFFB
      FB0000000000EACD8F00EED8AB0000000000FEFEFE0000000000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000565453006161
      61006565650068635E006A60550053789B002F9CFF00309DFF003399FF003498
      FF003499FF003499FF003498FF003298FF002993FF002C95FE00000000000000
      0000000000000000000000000000000000005C5C5C00D7D7D700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E600818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      D3008080F3009393FA008F8FF7008F8FF7008F8FF7008F8FF7009292F9009191
      F9008F8FF9008E8EF9008E8EF9008F8FF9009191F9009292F9008F8FF7008F8F
      F7008F8FF7008F8FF7009393FA008080F3006262D30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE000000000000000000FFFFFD008DE6F8007EE2F800FFFFFC00FFFF
      FC00A8EBFF0046D9FC004FDAF700A1E4E00000000000FFFEFC00FFFCFA00FFFE
      FD00FEFEFF000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000057514D004C6F91003297FA002F9EFF003399FF003398FF003499FF003499
      FF003499FF003398FF002B95FF002A94FF000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300676767006565
      65006C6A680058636F002397FF002993FE002993FE002993FF002993FE002993
      FE002295FF00576F8700686461006A6A6A006969690068686800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9DDF005959DD008F8FFA009292F9008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7009292F9008F8FFA005959DD009D9DDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FFFFFD00FFFFFD00FEFEFE000000
      00007CD4C000009C700000A27800009D760000000000FFFEFE00FFFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003FA0FF002592FF003097FF003398FF003499FF003398
      FF002C95FF002692FF000000000000000000FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001288FE002692FF003098FF002898FF002F97FF002692
      FF000F88FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9FB008282DA005959DD008686F6009090F9009292F9009191
      F8009090F8009090F7009090F7009090F8009191F8009292F9009090F9008686
      F6005959DC008282DA00F9F9FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2E6DE0079D2C2009DE1D500CEF0EB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFB0000000000000000003D9EFF002793FF002D95FF002693
      FF0058AAFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000092C9FF002082E300B29880003393F1008EC4
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFD00A7A7E2007878DC005959DA006666
      E4007575EC007C7CF0007C7CF0007575EC006666E4005959DA007878DC00A7A7
      E200FFFFFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000000000000000000000000000FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE0000000000000000005DAEFF000000
      0000FFFFFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060ACF70000000000FFFF
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F800D6D6F000CACAEC00CACAEC00D6D6F000F1F1F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100ECECEC00E7E7E700E3E3E300DFDFDF00DBDBDB00D7D7D700D4D4D400D0D0
      D000CDCDCD00CBCBCB00CACACA00CFCDCE00D1CFD100CECECE00D1D1D100D4D4
      D400DBDBDB00E5E5E500EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F4F100A352
      1800A3511700F7F1EC0000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C009999990095959500969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      9600969696009696960096969600969696009696960096969600959595009B9B
      9B00A2A2A2000000000000000000000000000000000000000000000000000000
      000000000000B6B6B600B0B0B000AEAEAE00AAAAAA00A9A9A900A9A9A900A6A6
      A600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A4A4A400A3A3A300A3A3
      A300A3A3A300A3A3A300A3A3A300A4A4A400A4A4A400A4A4A400A4A4A400A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A6A6A600A9A9A900A9A9A900AAAA
      AA00AEAEAE00B0B0B000B6B6B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB00E6E6E600E1E1E100DEDEDE00D9D9D900D5D5D500D2D2D200CECE
      CE00CBCBCB00C8C8C800CBC9CB00A7B8AC0061886E00D6D2D500CFCFCF00D2D2
      D200DADADA00E4E4E400EEEEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDDDD200973C
      00009A4205009A4205009A4205009A4205009A4205009A4205009A4205009A42
      05009A4205009A4205009A4205009A4205009A4205009A4205009A4205009A42
      05009A4205009B4306009B4406009B4406009E4A0F009D470B0091310000973C
      0000973C00008D2A0000F0E3D900000000000000000000000000000000000000
      000000000000000000007D7D7D00A3A3A3007070700071717100717171007070
      70006F6F6F006E6E6E006E6E6E006D6D6D006C6C6C006B6B6B006B6B6B006A6A
      6A00696969006868680067676700666666006666660065656500646464006262
      6200A0A0A0008484840000000000000000000000000000000000000000000000
      0000E4E4E400DADADA00D5D5D500CDCDCD00CACACA00C8C8C800000000000000
      000000000000BEBEBE00B7B7B700B6B6B600B9B9B800C0BFBC00C1C0BC00C1C0
      BC00C1C0BC00C1C0BC00C1BFBC00C5C1BC00C0BDBA00C5C1BC00C8C3BD00C4C0
      BC00C1BEBB00BFBDBB00C5C4C200C9C7C500C8C7C500C9C8C600D2D1CE00D3D2
      D000D7D6D300DEDDDA00DDDDDC00E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000083B59000789D860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094370000FAFF
      FF00FCFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFF
      FF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFFFF00FBFF
      FF00FBFFFF00FBFFFF00FBFFFF00FFFFFF00F3F3F400973A0000993F00009A41
      0100993F0000A04A0D008E2B0000F7F0EC000000000000000000000000000000
      000000000000C1C1C100A2A2A2007C7E80008285870082858700818386008183
      8500808285007F8184007E8183007E8082007D7F82007C7E81007B7E80007B7D
      80007A7C7F00797B7E00787B7D00787A7D0077797C0076797B0075787A007477
      79006A6C6E0096969600D8D8D800000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ADB5CC00A7AFC900A5AE
      C800A5ADC800A4ADC800ACB3CA006A94BF003A70AC004679B1005E89B80081A1
      C3009BB3D000C0CEDD00CDD4E000C3CBDB00BFC5D700BCC0D300BFC3D600BFC4
      D700C0C5D800C4CADC00F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8CAB20084B990006F8F7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FDFF
      FF00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F9FEFF00EBE2DD008F2C0000983E00009A4101009A41
      010099400000973E0000B3693300A14E13000000000000000000000000000000
      000000000000A5A5A600ADB5BE00938475009585750095857500948474009383
      73009383730092827200928172009181710090807000907F70008F7F6F008E7E
      6E008E7E6E008D7D6D008D7C6D008C7C6C008B7B6B008B7A6B008A7A6A008A79
      690083796F0098A0A800BCBCBC00000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000008600000045E00000059000015
      670000176800001364000C3783002E6BAB00326BAA003069A8002D66A7002964
      A5002661A300235FA200215DA0001F5A9E001B549A00164D95000E418B000735
      8200002978000012680000035C00D4D9E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F7F60062A7740083BE920066776B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FCFF
      FF00F3F3F300F5F8F900F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FD
      FF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FDFF00F7FD
      FF00F7FDFF00FBFFFF00EBE2DD008F2C0000983E00009A4101009A4101009A41
      0100983E0000A24D1000B56C38009F4C10000000000000000000000000000000
      000000000000A8B1BA00C9762500E2924200E49B5200E49A5100E49A5100E49B
      5100E49B5100E49B5100E49B5100E49B5100E59B5100E59B5100E59B5100E59B
      5100E59B5200E59B5200E59B5200E59B5200E59B5200E59C5200E59C5200E69E
      5500E0852B00B47C4600BFC5CB00000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000102975000011650000136800AFB3BF00DAD7
      D000CECCC600CDC7BC00678AAF005081BC00326BAA00346CAA00346BA900336B
      A900336BA900326AA800326AA8003269A700326AA700336AA800336BA900346D
      AA00356EAB003772AD0017448B00112873000000000000000000000000000000
      00000000000000000000000000000000000000000000D9E3DC0082A78A006794
      700051825C00447A5000377143002F6B3D002663340012512000000000000000
      00000000000080B790006EB580007ABE8C0079B5890076AE850097BDA1006596
      7200B2C1B6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FDFF
      FF00F6F8FA00E7D2C300D2997100D49E7900D49E7900D49E7900D49F7900D4A0
      7900D49F7A00D49F7A00D4A07B00D4A17B00D5A17C00D5A17D00D5A27D00D5A2
      7E00D9AA8800D09D7900902F0000983E00009A4101009A4101009A4101009940
      0000993F0000B56D3A008E2B0000F7F0EB0000000000CFCFCF00828282008C8C
      8C00797A7B007E7B7900DE842B00FFF2E300F4D6BE00F4D8C000F4D8C000F4D8
      C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8
      C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F4D8C000F3D5
      BD00FFFCF000C15E0000838D96007A7A7A008B8B8B0082828200D4D4D4000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000000B6200000E65007380A400E2DFD700CACA
      C900C1C1C100C0BCB7006C8CB200608EC400316AA900356DAB00346DAB00346C
      AA00336BA900336BA900326AA800326AA8003168A6003268A6003269A7003269
      A7003269A7003269A7003873AE00012070000000000000000000000000000000
      0000000000000000000000000000000000002F6E3D0000240000002B0600003B
      0B00004C0F00005A120000611300005D130000581200003D0000000000000000
      0000D5E3D80057BB74006FBF860073BF88007AC78F007BC68F0097CEA500107F
      2E00003D0700003A0E00E3EAE600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099430600FDFF
      FF00F6F7F800ECDED400DDB89E00DFBCA300DFBCA300DFBCA300DFBCA300DFBC
      A400DFBCA400DFBDA500DFBDA500E0BDA500DFBEA500DFBEA600DFBEA600E4C8
      B300D7AD910091320000993F00009A4101009A4101009A41010099400000973C
      0000B26834008F2D0000F2E7E00000000000D5D5D5008E8E8E00ADADAD009494
      9400B1B2B200676C7100DD802400F9E2CD00E7BC9A00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE
      9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E8BE9E00E7BB
      9A00FFF0DC00B75C0400727B8400B3B3B30094949400AFAFAF0088888800DCDC
      DC00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000106600000C6500969FB600D8D7D300C9C9
      C900C1C1C100BFBBB7006E8EB300608FC500326BAA00356DAB00356DAB00346C
      AA00356CAA00336BA900346BA900326AA800326AA8003168A6003168A6003269
      A7003269A7003269A700356FAB000F3480000000000000000000000000000000
      0000000000000000000000000000397F48000014000004261300053117000544
      190004551C0004611D00046A1D0004691D0004631B0000480000000000000000
      000061C082006FD896006ECA8B006EC4860073CA8B0077CB8F007CC6900051AB
      6B0012752F0007491A0000461800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A430600FEFF
      FF00F5F5F500F6F8F900F8FCFF00F8FCFF00F8FCFF00F8FCFF00F8FCFF00F8FC
      FF00F8FCFF00F8FCFF00F8FCFF00F8FCFE00F8FCFE00F8FCFE00FDFFFF00EFEA
      E70091310000983F00009A4101009A4101009A41010099400000963B0000AE63
      2D00912F0000F2E7E000000000000000000090909000ADADAD00949494009595
      9500B3B3B300646E7800D16E0E00FFF3DE00F3C8A700F5CBAA00F5CBAA00F5CB
      AA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CB
      AA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F5CBAA00F3C9
      A900FFEBC900BB691A006B737B00B0B0B0009696960093939300B0B0B0009191
      9100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000126800000E6800929CB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB300608EC400326CAB00366EAC00356EAC00366D
      AB00346CAA00356CAA00336CAA00336AA800336AA800326AA8003169A7003168
      A6003269A7003269A700356EAB000F3580000000000000000000000000000000
      0000000000000000000097C8A500356F440000160B00052C1500053618000644
      1D0005551E0005632000066C2200056F210004681E00004C030000000000ABD1
      B80073EFB30075DFA6006DD292006AC987006DCB890071CF8C0075CB8E0064BA
      7D00188C3D0012662E00004615007C9F89000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A430600FEFF
      FF00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500FBFFFF00EDE4DE008F2B
      0000983E00009A4101009A4101009A4101009A410100973C0000A95B24009131
      0000EDDED400000000000000000000000000939393009F9F9F009F9F9F009F9F
      9F009B9B9B00BEBFC00084868700928A82008D8076008E8177008E8177008E81
      77008E8177008E8177008E8177008E8177008E8177008E8177008E8177008E81
      77008E8177008E8177008E8177008E8177008E8177008E8177008E8177008E81
      77009185790086848200BEBFC0009B9B9B009F9F9F009F9F9F009F9F9F009696
      9600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000146B0000106A00939DB500D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB4005F8EC500336CAB00376FAD00376FAD00356E
      AC00366DAB00346DAB00356CAA00346BA900346AA800336AA8003369A7003169
      A7003168A6003269A700356EAB000F3682000000000000000000000000000000
      00000000000000000000188F390073A07E0000130700062E170006391B000643
      1E000755220006622300066C240005712400066D2200005006000000000061D8
      AC0087F6D30079E3B1006DD5990065CC870067CC85006CD18A006ECE8B006EC6
      89001E9746001A843F000F602C00004110000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A430600FFFF
      FF00F7F7F700F8F9FA00F9FCFF00F9FCFE00F9FCFE00F9FCFE00F9FCFE00F9FC
      FE00F9FCFE00F9FCFE00F9FCFE00F9FCFE00FDFFFF00EEE5DF008F2C0000983E
      00009A4101009A4101009A4101009A410100983D0000A4531900993F0000A04D
      1400FCFAF70000000000000000000000000094949400A9A9A900A7A7A700A7A7
      A700A7A7A700A4A4A400B1B1B200C0C1C200BEC0C200BEC0C200BEC0C200BEC0
      C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0
      C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0C200BEC0
      C100C0C1C300B0B1B200A4A4A400A7A7A700A7A7A700A7A7A700A9A9A9009696
      9600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000166D0000126C00939DB600D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB500618FC500346DAC003770AE00376FAD00376E
      AC00366EAC00366EAC00356DAB00356CAA00346BA900346BA900336AA8003369
      A7003269A7003168A600356EAA00103783000000000000000000000000000000
      0000000000005EA974003CA95C0081C8930000180800072E1A00073B1D000746
      20000652230007622600066B26000670260006702500005208000000000082D0
      AC0085F6D80076E1B10068D3960060C9850062CC840067D1890069D18B0070CE
      8E0024A24F0021934B0016773C0005592600477B5C0000000000000000000000
      00000000000000000000000000000000000000000000000000009A430500FFFF
      FF00F8F9FA00F0E5DD00E3C6B100E5C9B600E5CAB600E5CAB700E5CAB700E5CB
      B800E5CBB800E5CBB800E5CBB800E7CEBD00E0C4B000902F0000983E00009A41
      01009A4101009A4101009A410100983E0000A14D110092320000F3F0ED00B06B
      3C00F8F2ED0000000000000000000000000093939300B2B2B200AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00AEAEAE00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ACABAC00B6AFB900B7B0BA00AEACAE00AFAFAF00B2B2B2009696
      9600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000186F0000146F00939DB700D8D6D300C9C9
      C900C1C1C100BFBBB7006E8FB5006190C600346EAD003871AF003770AE00376F
      AD00366FAD00366EAC00366EAC00356CAA00356CAA00346CAA00346BA900336B
      A9003369A7003269A700356EAA00103885000000000000000000000000000000
      0000D9E7DE0029984B0055B8740057C87A0007451B00062A1800073B1C000747
      220007522500085F270008692900076E28000670280000530A0000000000F1F1
      ED0058D19C006BDAA50060CA8D005AC27F005CC9810061CF860063D188006CD0
      8E002BAD5A00279C53001D894800136F3A0000491600D6DED900000000000000
      00000000000000000000000000000000000000000000000000009A430500FFFF
      FF00F9FCFE00E8D1C000CE916600D1976F00D1987000D1987000D1997100D199
      7200D19A7300D19A7400D19B7500D6A6820091300000983E00009A4101009A41
      01009A4101009A410100993F00009E480B0092310000ECE1D900FFFFFF00AC62
      3000F8F2ED0000000000000000000000000094949400BBBBBB00B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B4B3B500DBDBD9008DD370008DCB7000D5DDD000B5B3B600BBBBBB009595
      9500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000A4813100AC8D4600F0F0F0000019790000167100939EB700D8D6D300C9C9
      C900C1C1C100BFBBB7006F90B5006191C700356FAE003871AF003971AF003770
      AE003870AE00366FAD00366EAC00366DAB00356DAB00356DAB00346BA900336B
      A900336BA9003369A700356EAB00113986000000000000000000000000000000
      00003A98580067BC830046B66B0030BB5D00359D5300041F1300093C21000746
      210008512500075C270008652900066A2A00066B280000510B00000000000000
      00008CC5A20053C6880053BA7D0051B9770056C37D005ACC82005DCF860060CF
      880031B4630027A458001D904C00137C4100066530001D623B00000000000000
      00000000000000000000000000000000000000000000000000009B440600FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFF
      FF00FCFFFF00FCFFFF00FCFFFF00FFFFFF0093330000994000009A4101009A41
      01009A410100994000009C44060092310000EDE2DB00FEFFFF00FFFFFF00AC62
      3000F8F2ED0000000000000000000000000093939300C3C3C300BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBBBE00CEE4D3004CB92300269D0000C0D9B400BFBCC100C3C3C3009595
      9500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000B5965000A0782100B086270035436500000F7C00929EB900D8D6D300C9C9
      C900C1C1C100BFBBB6007091B6006291C700356FAE003A72B0003871AF003970
      AE003770AE00386FAD00366FAD00366EAC00356DAB00356DAB00346DAB00346B
      A900336BA900336BA900366EAB00113B8800000000000000000000000000A5CC
      B2004FAB6F006DC28A0032B25E003BBE69004ACF7600023E180000230A000031
      0C00003E1000004913000050130000561400005A160000470000000000000000
      000000000000349B5E0046A96D004BB2720063C0870059C3810063CD8A006CD3
      91006FDA97006AD0920060C2880055AD7B00388F610000521C00A2BAAB000000
      00000000000000000000000000000000000000000000000000009E490E00FFFF
      FF00D9BAA600BF876200B06B3B00AB633000B26F4000C28E6B00DEC5B500FFFF
      FF00FFFFFF00FAFBFC00FFFFFF00AF6A3B00953800009A4101009A4101009940
      0000994000009A420200922F0000EDE2DB00FEFFFF00F8F8F800FFFFFF00AC62
      3000F8F2ED0000000000000000000000000093939300CBCBCB00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C2C500C5E9D500B8EEAC0070CD5300CDE4C600C6C3C700CBCBCB009494
      9400C1A56900B4944B00B5954E00B5954E00B5954E00B5954E00B5954E00B797
      5100AC873700AA853200AA843200BE902A00665B440091A0C000D7D7D800C9C9
      C900C1C1C100BFBBB6007091B6006191C8003670AF003972B0003A72B0003872
      B0003970AE003870AE00386FAD00366FAD00366EAC00356DAB00356DAB00346D
      AB00346CAA00336BA9003770AC00123D8A000000000000000000000000003293
      560086C89E0048B671003CBA6A0040C1700046CE790012943D00C6D1CB00EAF6
      EE00000000000000000000000000000000000000000000000000000000000000
      000000000000A9CEB6002E9357004BB074006F8B7B00E1EFE500E5EFE800D4E6
      D900003913001149290021563900386D4D006C967D00B3D4C00055906F000000
      0000000000000000000000000000000000000000000000000000933500009130
      0000913000009131000091300000913000009130000091310000912F0000902F
      0000C4927100FFFFFF00B06B3C00923200009A4101009A400000994000009940
      000099400000912F0000EFE4DE00FFFFFF00FAFAFB00F9F9F900FFFFFF00AC63
      3000F8F2ED0000000000000000000000000093939300D3D3D300CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCCCD00D0CDCF00C7DDD500D9E0E300D1D1D300CDCCCC00D3D3D3009494
      9400AC843200AD863300AD863300AD863300AD863300AD863300AD863300AD86
      3300AF883700AF893800AF893800AF893800B68C3200B78F3D00C9C2B500CACD
      D500C1C1C200BFBBB6007091B6006292C8003671B0003B73B1003973B1003A72
      B0003972B0003971AF003870AE00386FAD00376FAD00366EAC00366EAC00356D
      AB00356CAA00346CAA003770AC00123F8B00000000000000000080B7950077BB
      920076C4940038B2680043BF740043C576003CC772005FD28B0063A377000000
      00000000000000000000CFDAD200E3EBE6000000000000000000000000000000
      0000000000000000000039925D003FA068008EA4970000000000000000006DA4
      83000058220009592C00074F2600044421000034160000210A003D715200C5D6
      CC0000000000000000000000000000000000DDC0AB008D2A0000973C00009232
      0000902F0000AF6A3900C28F6B00C7987800C08A6600AA602D008E2A00009333
      00009334000091310000963900009A4101009940000099400000983C00009639
      000092310000EADBD000FCFDFE00F6F1EE00F8F5F300FAFAFB00FFFFFF00AC63
      3000F8F2ED0000000000000000000000000092929200DBDBDB00D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D7D7D700D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700D4D4D400D4D3D400D4D2D300D4D2D300D3D3D300D4D4D400DBDBDB009393
      9300B48D3D00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D
      3C00B48D3C00B48D3C00B48D3C00B48D3C00B48D3C00B38C3900B2872E00BEA9
      7E00C1C5CD00BFBCBA007091B7006292C8003771B1003B74B2003B74B2003A73
      B1003972B0003971AF003971AF003870AE00386FAD00376FAD00376FAD00366E
      AC00366DAB00346CAA003871AD0013408E00000000000000000063AA7F0099CF
      AF0044B0710043B9740042C077005BCF8A008FDFB00096E2B50062BD8500D7E1
      DA00D5DFD7005C9A710078B28E00C9DDD1000000000000000000000000000000
      00000000000000000000CBE2D30022854E009EB3A50000000000000000000069
      20000A7736000C7237000B6A34000B612F000A562A00064822000031140098B8
      A300000000000000000000000000CB9D7D008B2600009437000094370000D5B3
      9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CA9E
      81008F2D0000973B000099400000994000009A41010095360000A6551C00DFBC
      A200DAB49700D4A88800D1A38100CF9F7C00E2C8B500FCFFFF00FFFFFF00AC63
      3000F8F2ED0000000000000000000000000093939300E2E2E200DADADA00DADA
      DA00DADADA00DADADA00DDDDDD00E6E7E800BFC1C200B9BBBC00B9BBBD00B9BC
      BD00B9BCBD00BABCBE00BABCBE00BABCBE00BABCBE00BABCBE00BABDBF00BABD
      BF00BABDBF00BABDBF00BABDC000BABDC000BABDC000BABDC000B9BDBF00C1C4
      C600E7E7E800DDDDDD00DADADA00DADADA00DADADA00DADADA00E2E2E2009494
      9400B9924000B9924000B9924000B9924000B9924000B9924000B9924000B992
      4000B9924000B9924000B9924000B9924000B9924000B9924000B9914000B78D
      3500B9964E00BEB7AF007092BA006392C9003872B1003C75B3003C75B3003B74
      B2003A73B1003972B0003972B0003971AF003870AE003870AE003770AE00376E
      AC00366EAC00356DAB003871AD0013418F00000000000000000090C4A50071BD
      93003BAC6D0047BB7B0075D29E0088DBAC0084DBAA0089DAAC00A1E3BE0056A5
      760066B28200B0DAC3009BC6AC00000000000000000000000000000000000000
      00000000000000000000000000004E976C00A0BCAB000000000061AA7D00007F
      33000B873E000C843E000C7F3B000B7738000B6C3300095E2D000044180091B2
      9C000000000000000000D8B79F008C27000092330000AC633100FFFFFF00FEFF
      FF00F9FAFA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FAFBFB00FFFF
      FF00FBFDFF009E490E00953800009B420200973A0000B26E4000F8F3EE00EFE1
      D700EEE0D600EEE1D600EEE1D700EEDFD400F4EBE500FBFCFD00FFFFFF00AC63
      3000F8F2ED0000000000000000000000000092929200E9E9E900E1E1E100E1E1
      E100E1E1E100E3E3E300D9DBDE0076767600B9A99E00BFAEA100BEADA000BEAD
      9F00BEAB9D00BEAA9B00BDA99A00BDA89800BCA69600BCA59400BCA49200BBA3
      9000BBA28F00BAA08D00BA9F8B00B99E8900B99D8700B89B8500B99B8400B298
      830076787900DCDDDF00E3E3E300E1E1E100E1E1E100E1E1E100E9E9E9009393
      9300BE954500BE954500BE954500BE954500BE954500BE954500BE954500BE95
      4500BE954500BE954500BE954500BE954500BE954500BE954500BE954500BB92
      4000C69E4C00D2A347006F95C2006493CA003873B2003F7BB8003D78B5003D78
      B5003A74B2003A73B1003973B1003971AF003871AF003871AF003770AE003770
      AE00376EAC00366EAC003972AE00144391000000000000000000A9D0B900379D
      67004DB37D0077CC9E007AD2A20081D7A80088D9AD008FD9B00093D6B100A1D9
      BA00A4D4BA0092C4A800E9F1EB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F6F500007727000B8E
      43000C9145000C9044000C8C41000B853C000A7D3900087032000A642F00B1C7
      B80000000000FBF8F6008C27000094360000AE683800FFFFFF00FBFCFC00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FCFEFF00FFFFFF009F4A0F00983C000092320000FFFFFF00FDFFFF00FCFE
      FF00FCFEFF00FCFEFF00FCFEFF00FCFEFF00FBFCFD00FBFBFB00FFFFFF00AC63
      3000F8F2ED000000000000000000000000009292920000000000E7E7E700E7E7
      E700E7E7E700F3F5F6006F645900FAC48D00FCEADC00FAE3D200F4D9C100F2D5
      BC00F2D4BA00F1D3B800F1D2B500F0D0B300F0CEB100EFCDAF00EFCCAD00EECA
      AA00EEC9A800EDC7A600ECC6A400ECC4A100ECC39F00EBC19C00EFC4A300F7D3
      B700EBA55E0076757500F2F3F300E7E7E700E7E7E700E7E7E700000000009393
      9300C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A4900C39A
      4900C39A4900C39A4900C39A4900C39A4900C39A4900C2994800BF954200D8B4
      6600DABC7C00BCB6AD007194BA006494CA003C78B600234F9500000257002958
      9C003E78B6003A73B1003B73B1003973B1003971AF003871AF003870AE003770
      AE003770AE00366EAC003A72AF00144493000000000000000000CDE3D400399A
      69006BBD940072C79C007BD0A40083D4AA008AD6AF0092D7B30098D6B7009DD4
      B800A1D0B800ADCEBA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A97600000873B000B92
      47000B9648000D9749000D9448000B8E44000C864000047835002B794A000000
      000000000000AF69370094360000993E0000FFFFFF00FAFBFC00F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900FCFEFF00FCFEFF00912E000094350000C5937100FFFFFF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FFFFFF00AB63
      3000F8F2ED0000000000000000000000000092929200F7F7F700ECECEC00ECEC
      EC00EEEEEE00E9ECEF008A6B4E00F2BD8500F6E7DC00F6E2D400E3C6A500E0BE
      9800E0BF9900E0BE9700DFBD9600DFBC9500DFBB9300DEBA9200DEB99100DDB9
      9000DDB88F00DDB78D00DDB68C00DCB58B00DCB58900DCB48800EBC4A700F3D5
      BD00E293450094969800EEEEEF00EDEDED00ECECEC00ECECEC00F7F7F7009292
      9200C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D4C00C79D
      4C00C79E4D00C89E4E00C89E4E00C89E4E00C69B4A00C99F4E00E4C17600CFB9
      8F00BEC0C600BEBBB9007193B8006594CA003D7BB800133D8A00002078001844
      8E003F7BB7003C75B3003A74B2003A73B1003A73B1003972B0003871AF003970
      AE003770AE003770AE003A73AF001546950000000000000000000000000058A6
      7D0068B7910073C29D007DCBA40085D1AC0092D7B8009EDCC400A7DECB00ABDE
      CD0093C7AF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1DACA00006C26000A8843000A91
      47000B974B000C994B000C974A000A9247000A8B4300007A330089AB94000000
      0000FCFAF8008C270000902E0000E1CABA00FEFFFF00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FFFFFF00CBA082009434000091300000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FBFBFB00FFFFFF00AC63
      3100F8F2ED000000000000000000000000008A8A8A00FFFFFF00F2F2F200F2F2
      F200F4F4F400E6E9EC008F765D00F0B77D00F8EBE100F5E3D400F7E5D900F7E5
      D900F7E3D600F6E1D300F6DFD000F5DDCE00F4DCCB00F4DAC800F3D8C500F3D6
      C300F2D4C000F2D3BD00F1D1BA00F0CFB800EFCDB500EFCBB100EBC5A800F6DC
      C500DD8A3800969FA800EEEEEE00F3F3F300F2F2F200F2F2F200FFFFFF008A8A
      8A00D4AD5D00CFA55500D0A65500D0A65500D0A65500D0A65500D0A65500D0A7
      5700CDA35300CCA25200CCA25200CA9D4C00E1B76500EAC98200CCC2B000C7CA
      D200C1C1C200BEBAB6007293B8006595CB003C77B600356EB100104AA0003771
      B1003E77B4003B75B3003C75B3003B74B2003B73B1003A72B0003A72B0003871
      AF003971AF003770AE003B74B00015479600000000000000000000000000A1CA
      B30063AF8D0072BD9B007DC6A5008FD3B700A2DECB00B3E6D900BCEAE000BAE9
      DE00C2DACB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008DBFA10000662200007C38000B8A
      47000B9149000D944C000C954D000C924A00048A4100217F4B00EDF1ED000000
      0000D4AE950092310000983F0000FFFFFF00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFCFD00FCFDFD00FFFFFF008F2B000094350000CA987400DEBB
      A400DBB79D00DBB89E00DBB89E00DAB49A00E9D4C500FEFFFF00FFFFFF00AB63
      3100F8F2ED00000000000000000000000000A5A5A500D2D2D200FFFFFF00FDFD
      FD00FFFFFF00EEF1F4008C745D00EFB47900F8EEE600F7E7DB00EAD1B600E6CA
      AC00E7CAAC00E6C9AA00E5C8A800E6C7A700E5C6A500E4C5A300E4C4A200E4C2
      A000E3C19E00E3C09D00E2BF9B00E2BE9A00E2BD9800E1BC9600ECC8AD00F9E1
      CC00DB8A3A008F979F00F7F7F700FEFEFE00FDFDFD00FFFFFF00CBCBCB00ACAC
      AC00F1E0BD00F0DDB000F1DDB100F1DDB100F1DDB100F1DDB100F1DDB100F3E1
      B800D7B06600CFA35200D0A25200FCD27C00988E760090A0BC00D5D6D600C9C9
      C900C1C1C100BEBAB6007294B9006695CC003B76B500407AB700427CB8003F78
      B6003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A72B0003A72
      B0003972B0003870AE003B74B00015499700000000000000000069A17C002B8B
      51006CAE920072B6980082C5AB009AD9C600B5E6DC00CAF0E900DCF8F400A8D2
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000439A69000072
      2C00048541000A8C46000A8C47000B8B4800007F390086AB9300000000000000
      0000BA7D530091300000BF886200FFFFFF00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FCFFFF00E8D0BF00FDFFFF00FFFFFF00AB612D0094350000B7754700E3C8
      B300DEBFA800DEBFA800DEBFA800DDBCA400EAD9CB00FDFFFF00FFFFFF00AB63
      3100F8F2ED00000000000000000000000000000000008686860098989800D3D3
      D300CFCFCF00C3C6C80088725E00EFB27500FAF1EA00F8E9DF00EDD6BF00E9D1
      B600EAD0B600E9CFB400E9CEB200E8CDB000E8CCAE00E8CAAD00E7C9AB00E6C8
      A800E6C6A700E5C5A400E4C3A300E4C2A100E4C19F00E3BF9D00EDCAB000FBE5
      D100D6873A0088909800CACACA00D3D3D300CACACA00959595008A8A8A000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000DBB46E00D9AD5C00F8D2830056657F00001F8F0093A3BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007294B9006595CC003B76B5003F79B7003F78B6003E78
      B6003E77B5003D77B5003D76B4003C75B3003C74B2003B74B2003B73B1003A73
      B1003A73B1003971AF003C75B100164A9A00C1D7C80010633100438768005694
      7D005C9D830068AA900080C4AE00A1DDD100C4EFE900E4FBF800D8F1EA00DEEB
      E20000000000D9E2DC0028663700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDEA
      E200148346000076330008824100068041001574410000000000000000000000
      0000AA5F2B00912F0000D5B29A00FFFFFF00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FFFFFF00D8AC8D00F9F7F500FFFFFF00C18C670092310000B4734500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FCFCFC00FFFFFF00AD64
      3100F8F2ED000000000000000000000000000000000000000000F2F2F2006B6B
      6B00A1A1A1009C9FA100B6A39200E9AB6B00FCF4EE00F8EBE100FAEEE600FAEE
      E600FAECE300F9EAE000F9E8DE00F8E6DB00F7E4D800F6E2D400F5DFD100F4DC
      CD00F2D9C900F1D6C500F0D4C100EED1BE00EFD1BD00EECFBA00EAC9B000FDE8
      D400C97C3100B7BFC7009FA0A0006E6E6E00C6C6C600ECECEC00000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EBCB8900E9C98700F0F0F000002E9300002E8E0095A5BF00D8D5D200C9C9
      C900C1C1C100BEBAB6007295BA006796CD003C77B6003F79B7003F79B7003E79
      B7003E78B6003D77B5003D76B4003D76B4003C76B4003C74B2003B74B2003A74
      B2003A73B1003A72B0003D76B200164C9C00C6DDCE00AFCBBD00ADCCBB00AFCE
      BD00B0D0BE00AED0BE00B3D5C300B3D6C500B9DACA00C1DECF00D5EAE0000000
      00004983580000470000004E03007DA38700000000009DC6AA0024813D002D87
      4300368C4B003B8F4F003B93520047A461004EB46D0054BE7A005EC98A0092C5
      A4000000000097C6AA00006D2D00006627008FAF9B0000000000000000000000
      0000A5561E00902F0000DDC0AF00FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFD
      FD00FCFCFB00CF997300F7EFEB00FFFFFF00C99A790092310000AD643100FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00AD64
      3100F8F2ED000000000000000000000000000000000000000000000000008787
      8700C5C5C500BFC1C300BAAA9B00E7A56400FDF6F200FBF1EA00E4CAAA00DEC0
      9A00DFC19A00DFC09900DFBF9800DFBE9800DEBD9600DEBC9400DDBB9300DBB9
      9000DAB78E00DAB58C00D9B48A00D9B38A00D8B38900D9B28800E9CAB500FBE5
      D000BE752F00BBC2C900C4C3C300888888000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F00000338F000030900095A6C000D8D5D100C9C9
      C900C1C1C100BEBAB6007395BA006697CD003C78B700417BB9003F79B7003F79
      B7003E78B6003E78B6003D78B6003D76B4003C76B4003C76B4003B75B3003B74
      B2003A73B1003A73B1003D77B300174D9D000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007EA68900004D
      0200005E130005681F0003691E000055050000000000000000007BB891002A99
      4B0016953700189639001D9D3F0027B5510036D26E0048E88F0055F8AB0038DF
      8C00E5DFDF000000000000000000619D7A000000000000000000000000000000
      0000A85C2800902F0000D7B6A000FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E4C9B500D1A07C00F9F7F400FFFFFF00C3906C0092310000B16C3C00FFFF
      FF00FEFEFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FFFFFF00AD65
      3200F8F2ED000000000000000000000000000000000000000000000000008686
      8600A9A9A900A5A7A900A6978A00E8A46100FEF9F600FAF0EA00F7EADF00F6E8
      DC00F5E7DA00F5E5D700F4E4D500F3E1D200F3DFCF00F0DBCA00ECD5C200E8CF
      BA00E5C9B400E2C5AE00E0C1AB00DFC0A900DFC0A800E1C1A900E5C7B100F5DA
      C000B2733600A3A8AE00A8A7A700878787000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003492000032930095A6C000D7D5D100C9C9
      C900C1C1C100BEBAB6007395BA006797CE003D78B800407BB900417BB9003F79
      B7003F79B7003E79B7003F78B6003D77B5003D77B5003C76B4003C75B3003B75
      B3003B74B2003A73B1003E77B300174E9F000000000000000000000000000000
      000000000000000000000000000000000000AAC2B10000551400005B1100046C
      230006712500057426000677270000741F0039854F000000000000000000D5E7
      DC0069B9850039AC5A0027A64C0030B259003CC56F0049D6880051E1940050EA
      9C0053B076000000000000000000000000000000000000000000000000000000
      0000B6764A0091300000C4926E00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFFFF00F8F3
      EF00D2A28000D5A98900FFFFFF00FFFFFF00B06A390092320000C0896300FFFF
      FF00F9F5F400F5EEEC00F6F0EE00F6F0EE00F6EFEE00F6F0EE00FDFDFF00A85C
      2600F7F0EB000000000000000000000000000000000000000000000000007C7C
      7C00B1B1B100ADAFB100ADA09500E5A15B00FFFCF900FBF4EF00F6E9DE00F4E6
      D800F4E5D700F4E3D500F3E2D200F2E0CF00F0DCCB00ECD7C300EBD5C600E6CD
      BE00E1C9BC00DDC6BC00DAC2B500DAC1B500DCC2B700DFC7BB00E3CCC000F0D1
      B400B47E4B00ABB0B400B1B0B000777777000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003695000034950096A7C100D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006897CE003E7AB900427CBA00407BB900417A
      B800407AB800407AB8003F79B7003E78B6003D78B6003D77B5003D76B4003C75
      B3003C75B3003B74B2003E77B3001850A1000000000000000000000000000000
      000000000000000000000000000033784900004B060002672200067027000677
      2A00077C2D0007802E00088330000785300000751600C0D1C500000000000000
      00008FC6A20036B75E0030B4580032B45B0038BB660041C6750048CD820048CE
      83002ABB6300C6D2C90000000000000000000000000000000000000000000000
      0000CFA5890092320000A04C1100FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFFFF00FEFEFF00D5A9
      8900D4A98900E7D0BF00FFFFFF00FFFFFF00912F000092310000DCBDA900FFFF
      FF00C08A6500882100008E2C00008E2B00008E2C00008F2D000089220000A14D
      1000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A6A7A900A69D9500E49D5400FFFEFD00FDF9F600E7D1B600E2C7
      A500E2C7A600E2C7A500E2C6A400E1C4A100DFC29F00DDBD9800E5CDB800E2CF
      C500D29C6E00C6640500C7630100C8670B00C96C1200C86D1500C76B1100C459
      0000B38D6900A4A6AA00A3A3A200000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003897000036970096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007495BB006798CF003E7AB900427DBB00427CBA00417B
      B900407BB900407AB800407AB8003E78B6003E78B6003E77B5003E77B5003D76
      B4003D76B4003B75B3003F78B4001951A2000000000000000000000000000000
      0000000000000000000000000000C2DACA0000571400056E2A0007782D00067E
      300008853300088B3400078C3600098B360006853300006F260000000000EFF2
      EF0044BB6E0033BC630039BD660038BB650039B965003BB86A003DB86D003DB4
      6D0035AA61002F8A4E0000000000000000000000000000000000000000000000
      0000F5ECE6008E2A00008F2C0000EEE1D800FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FEFEFE00FFFFFF00FAF7F400D6AA8B00D6AC
      8E00D5AB8D00FFFFFF00FFFFFF00D7B49D00933300008E2A0000FFFFFF00FFFF
      FF00C59573009335000099400000994000009A41010094360000A4541A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DA904700FFFFFF00FCF8F500FFFCFB00FFFC
      FC00FFFAF900FEF8F600FEF6F300FCF3EF00F8EDE700F2E3DC00E7D5CB00D9B3
      9700C45B0000C86A0F00CA6D1400C96E1700CA701900C8701B00C5640700CE8E
      5100000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003A990000389A0096A7C200D7D5D100C9C9
      C900C1C1C100BEBAB6007496BB006898CF003F7BBA00427DBB00427DBB00417C
      BA00417CBA00407BB900407AB8003F79B7003F79B7003F79B7003E77B5003E77
      B5003D77B5003C75B3004079B5001953A5000000000000000000000000000000
      00000000000000000000000000000000000059987000006C2400067D32000986
      3800088B3A00098D3B00098C3B000A873A000A80380000742D004987610097CF
      AA0059D0850058CD840051C97E0040C171003ABB6B003CB66A003BB0670039A6
      6300339A5A001D844400A3BEAD00000000000000000000000000000000000000
      000000000000A5561C0095380000A3511800FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00E9D2C200D3A58400D5AA8C00D5AA
      8C00FCFAF800FFFFFF00FFFFFF009537000094350000BB7F5500FFFFFF00FFFF
      FF00C5947300933500009A4101009A41010094360000A4541A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF7F100D98D4200FFFFFF00FFFDFD00F0E1CF00EBD9
      C300EBD9C200EBD8C100EAD6BE00EAD5BC00E7D0B700E3C9AD00E4D1C500D399
      6700C7650500C96D1400CA6F1800CA711C00CA721D00C5660A00CC8E53000000
      0000F7F5F4000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003C9B00003A9C0096A8C300D7D5D100C9C9
      C900C1C1C100BEBAB6007497BC006899CF003F7CBB00437EBC00427DBB00427C
      BA00417CBA00417CBA00407BB900407AB800407AB8003F79B7003F79B7003E78
      B6003E77B5003D77B5004079B5001A54A6000000000000000000000000000000
      000000000000000000000000000000000000FAFCFA0015763B00017D33000985
      3B0009873C000A873C000B853D000B813B000A7A3800086F330009622D0081DE
      A50065D391006FD5980076D69D007FD7A30075D09A0054BF800038AC68003BA5
      6700379960002F8C56001B703E00000000000000000000000000000000000000
      000000000000F0E4DB008C26000093330000C28C6800FFFFFF00FEFEFE00FEFE
      FE00FCFBFA00EBD6C700E0C0A900D1A17E00D2A48300D2A68600E4C8B500FFFF
      FF00FFFFFF00FFFFFF00AD64310095380000902C0000FFFFFF00FFFFFF00FFFF
      FF00C7967300943600009940000094360000A4541B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D78A3D00FFFFFF00FFFFFF00F1E5D600EEDE
      CA00EEDECA00EDDDC800ECDBC600ECD9C300E9D5BD00E3CDB300E5D3C900D49F
      7200C8670800CA6F1800CA711C00C9721D00C5660B00CB8D530000000000F5F2
      F100000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000003E9E00003C9E0098AAC500D7D5D100C9C9
      C900C1C1C100BEBAB6007597BC006999D000407DBC00437EBC00437EBC00427E
      BC00437CBA00417CBA00427CBA00407BB900407AB8003F79B7003F79B7003E79
      B7003E78B6003E77B500417AB6001A56A8000000000000000000000000000000
      00000000000000000000000000000000000000000000ADCAB60003733200087C
      39000A7F3B000A7E3A000B7D3A000C7838000B6E340000521F009ED3B10068D5
      990072D49D0077D6A1007DD6A40081D5A60088D4AA0092D5B0008ACDA80042A5
      6F00408A6000669578002B7D51007AA28B000000000000000000000000000000
      00000000000000000000C6937000912F0000902D0000C18C6800FFFFFF00FFFF
      FF00FFFFFF00FCF9F700F2E4DB00F0E2D700F4EAE300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AF693800943500008E290000DDBFAC00FFFFFF00FEFEFE00FFFF
      FF00C69673009436000094360000A6571E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6863700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFEFD00FEFCFB00FDF9F800FCF6F300F8F0EC00F1E5DF00E8DCD600D5A4
      7800C8690B00CA711C00CA721E00C5670B00CB8D530000000000F4F1EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000040A0000040A2007F97B900DDD9D300C9C9
      C900C1C1C100BEBAB6007597BE00699AD100407DBC00447FBD00437FBD00447E
      BC00427EBC00437CBA00417DBB00417BB900417BB900407AB800407AB8003F79
      B7003E79B7003E77B500427BB7001A57A9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063997700006B
      2B00097535000B7336000A6C32000B6432000045180093B4A00084DCAE006FD0
      9E0079D3A4007ED3A70084D3AA0088D3AC008DD2AE0091D0AF0097CFB2008FC4
      A60000000000000000007BA18800215D3C00EAEEEC0000000000000000000000
      0000000000000000000000000000B5734400912F000093330000A2511800EFE1
      D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3CB
      BC00993F00009639000092300000CFA48600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C89977008E2B0000A7592100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5843400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFD00FEFCFA00FDFAF800FCF7F300F8F0EC00F1E8E000EAE0DB00D9AB
      8400C8690C00CA721D00C5660A00CB8E550000000000F4F0EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000446A5000648A700154C9B00D3CFC900DAD6
      CE00CECAC400CBC3B9007A9CBF006999D100417EBD004580BE004580BE00437F
      BD00447EBC00427EBC00437DBB00417CBA00407AB9003E79B8003D78B7003B76
      B5003A76B500407AB700467EB8001150A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF6F100417F
      590000582100075A2B000A552B0000350E007E9A8A00C1EFD90069C5990079CB
      A4007FCDA70084CEAB008BCFAE0090D0B00096CFB3009BCFB60091C6AB00EAF2
      EB00000000000000000000000000C8DACE00D5E2D90000000000000000000000
      000000000000000000000000000000000000C69470008C260000953800008F2C
      0000A04C1100C5936F00D9B8A100DEC2B000D7B39B00C0896200993F00009230
      00009639000092300000B7784D00EBD9CE00DFC3B100DFC3B100DFC3B100E4CC
      BD00B36E4000A5551B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5833200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FCFAF900F9F5F200F4ECE800EFE6E500DCB1
      8B00C7680C00C5660800CC8F550000000000F3EFEE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0001D5BB100094DA9000348A900094395004C6C
      9B00516F9B004B6894004D7DB2007BA6D8003D7BBC00447FBE00417EBD00407D
      BC003F7BBB003F7CBB003E7AB900417CBA004F85C0005E90C7006A98CB00729E
      CE0079A2D0006090C6001556AB00225EB2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7E6
      DB004D7F610010492B0003361C0094A79D000000000076C1A00093CFB4009ED4
      BC00A8D8C300B3DCCA00BCDFD200C5E3D700CCE5DB00C5DED200E5F0E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0E4DB00A5551C008E2A
      0000933300009231000092310000913000009231000093330000943400008E29
      0000B5724200D1A98B00CB9D7B00C6936E00C6936E00C6936E00C6936E00C592
      6D00C99A77000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CA6D1300FFFEF400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFCF900FBF6F100F8F3F300E0B4
      8C00C25B0000CE91570000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000648EC900356EBC002461B5001154B0000C52
      AF000C51B000094FAF001F62B40099BAE1006597CD00538BC5006797CC00709E
      D000739FD10074A0D20076A1D200729DD0005B8CC700437ABE00306CB7001C5C
      AF000B4FA9001254AD003B72BE005282C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCDCD000C3DBCB00A7D1BC006FB1910081BBA00082BCA00088BF
      A4008DC1A80092C4AB0097C6AF009AC6B000B1D2C100EAF3ED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EC
      E600CFA48500B6764700A85B2500A5551E00AA5F2900BA7D5000D4AE9300FCFA
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8EDE300D07E2F00D5883C00D5883C00D588
      3C00D5883C00D5883C00D5883C00D4883C00D4873C00D2873D00D1884100CA76
      2400D59B650000000000F6F4F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00081A4D4004D80C4005988C8005988
      C8005988C8005988C8005484C600437DBF0076A0D2006E9ACF005387C500417A
      BE004178BE00477CC1004A7DC3004B7EC4004B7EC4004D80C5004F81C6005082
      C6005183C600497DC3006390CA00F0F0F000424D3E000000000000003E000000
      28000000900000006C0000000100010000000000700800000000000000000000
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
      FFFF8E1FFE1FFFCFFFFFFFFE7FFFFFE07FFF0000FFFF8E1FF803FF03FFFFFFF8
      1FFFFE0007FF0000FFFB8E3FF001FC00FFFFFFE007FFF80001FF0000FFFC0001
      F000F000FFFFFF8001FFF00000FF0000FFFC0003F00040003FFFFE0000FFE000
      007F0000FFFC0003F04000000BFFF800003F8000001F0000FFFC0003F0C00000
      03FFE000000F801F801F0000FFF40003F1B0000000FFC000000F00FFF00F0000
      FFE93FC07710000000FFC000000E007FF8070000FFF0C0720618000000FFC000
      000C003FFC030000FDE1E07D740C000000800000000C001FFE030000FE080002
      00060000000000000008000FFF010000FE000000000000000000000000081007
      FF810000FE080000000000000000000000081803FF810000F603FFF800000000
      0000000000081C01FF810000F8020008080000000000000000003E00FFC00000
      A80200080A0000000000000000003F007FC00000400200080F80000000000000
      00003F803FC00000200240180F8000000000000000003FC01FC0000011020008
      0F8000000000000000003FE00FC00000000220080F8000000000000000003FF0
      07C00000000000014F8000000000000000081FF803810000000000010F800000
      0000000000081FFC01810000300000000F8000000000000000381FFE00810000
      600000021F8000000000000000F80FFF00010000F6007FCC2F80000000000000
      03FC07FF80030000F00010010F800000000000100FFC03FFC0030000FC200000
      8FC000000000001C3FFE01FFE0070000FFC200008FF000000000001FFFFF00FF
      F00F0000FFC280008FF400000300001FFFFF801F801F0000FFA200108FFD0000
      0F00001FFFFF8000001F0000FFDC00095FFFC0003F00001FFFFFE000007F0000
      FFF60086FFFFF000FF80003FFFFFF00000FF0000FFFE109FFFFFFC037FFC07FF
      FFFFF80001FF0000FFFFF0FFFFFFFB07FFFE0FFFFFFFFE0007FF0000FFFFEF7F
      FFFFFED7FFFFAFFFFFFFFFE07FFF0000FFE00001FFFFFFFFC3FE000007F80000
      00010000FFF00001FFC0000001FC000003F0380000000000FFFFFE7FFFC00000
      00F8000001F0000000000000FFFFFC7FFFC0000000F8000001F0000000000000
      FFFFF87FFFC0000000F8000001F0000000000000FF803807FFC0000000800000
      0010000000000000FF003001FFC00000010000000000000000000000FE003001
      FFC00000030000000000000000000000FC002000FFC000000700000000000000
      00000000FC002000FFC00000070000000000000000000000F80020007FC00000
      070000000000000000000000F00020003FC00000070000000000000000000000
      F00030003FC00000070000000000000000000000E00038001FC0000007000000
      0000000000000000E00FF8001FC00000070000000000000000000000C01CFC60
      0F000000070000000000000000000000C000FC600E0000000700000000000000
      00000000C001FE400C000000070000000000000000000000C001FF8008000000
      074000000020000000000000C003FF8018000000070000000000000000000000
      E007FF0010000000070000000000000000000000E007FF001000000007000000
      0000000000000000C00FFFC0300000000780000000100000000000000009FFE0
      7000000007C000000030000000000000001080087000000007E0000000F00000
      00000000FFC0C006F000000007E0000000F0000000000000FF006007F0000000
      07E0000000F0000000000000FE003003F00000000FF0000001F0000000000000
      FE002003F00000001FFE00000FF0000000000000FF000001F80000003FFC0000
      17F0000000000000FF000001F80000007FFE00002FF0000000000000FF800000
      FC000000FFFE00005FF0000000000000FFC0000C7E000001FFFE0000BFF00000
      00000000FFC0000E7F000003FFFE00017FF0000000000000FFE0801FFF800007
      FFFE0003FFF0000000000000FFF8003FFFE00FFFFFFE0005FFF0000000000000
      00000000000000000000000000000000000000000000}
  end
  inherited BMMain: TdxBarManager
    Bars = <
      item
        AllowClose = False
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
        ItemLinks = <
          item
            Item = BLBRefresh
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBAtivo
            Visible = True
          end
          item
            Item = BLBInativo
            Visible = True
          end
          item
            Item = BLBPreCadastro
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBArmarinhos
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBRelatorios
            Visible = True
          end
          item
            BeginGroup = True
            Item = BLBSaida
            Visible = True
          end>
        Name = 'Toolbar'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Pesquisa'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 57
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemLinks = <
          item
            Item = BSPesquisa
            Visible = True
          end
          item
            BeginGroup = True
            Item = BEPesquisa
            Visible = True
          end>
        Name = 'Pesquisa'
        OneOnRow = True
        Row = 1
        SizeGrip = False
        UseOwnFont = True
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Bot'#245'es'
      'Relat'#243'rios'
      'Pesquisa')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    Left = 1688
    Top = 192
    DockControlHeights = (
      0
      0
      81
      0)
    inherited BLBPesquisa: TdxBarLargeButton
      Visible = ivNever
    end
    inherited BLBRelatorios: TdxBarLargeButton
      ImageIndex = -1
    end
    object BSPesquisa: TdxBarStatic
      Caption = 'Pesquisa R'#225'pida'
      Category = 2
      Hint = 'Pesquisa Registros'
      Visible = ivAlways
      Alignment = taLeftJustify
      AllowClick = True
      Glyph.Data = {
        660F0000424D660F000000000000360000002800000024000000240000000100
        180000000000300F000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF0F0F093939390909091919191919191919191919191919191919191
        9191919191919191909090888888FFFFFF7D7D7D1A1A1AFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE00000000000000000000000000000000
        0000000000000000000000000000000000000000000000333333D5D5D53F3F3F
        5F5F5FF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003F3F3FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0404040000005B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEDEDED000000C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC6C6C6BBBBBBCECECE000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED000000C4C4C4FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B10000006A6A6A8080802E2E2E4848
        48D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE000000
        C3C3C3FFFFFFC2C2C29A9A9A9E9E9E9E9E9E989898CCCCCCC9C9C91E1E1EFFFF
        FFFFFFFFFFFFFFFFFFFFAFAFAF383838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEEEEE000000C3C3C3FFFFFF0000000000000000000000000000
        00D6D6D6151515FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040DADADAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE000000C3C3C3FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A2A2AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB6B6B67C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EE000000C3C3C3FFFFFF9D9D9D717171767676767676686868FFFFFF2B2B2BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B37E7E7EFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEEE000000C3C3C3FFFFFF16161600000000000000
        0000000000D9D9D9141414FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF393939
        E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE000000C3C3C3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9171717FFFFFFFFFFFF
        FFFFFFFFFFFF9E9E9E3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEEEEEE000000C3C3C3FFFFFF7474744646464C4C4C4C4C4C4C4C4C444444
        A5A5A5D7D7D70202025C5C5C7171711A1A1A5C5C5CFAFAFAEBEBEBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE000000C3C3C3FFFFFF3E3E3E0F0F0F
        1515151515151515151515150303037B7B7BFFFFFFD6D6D6C2C2C2FFFFFFF0F0
        F0000000F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE000000
        C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB8B8B8000000F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEBEBEB000000C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1000000F4F4F4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000999999FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF909090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF3E3E3E0000004D4D4D5A5A5A59595959595959595959595959595959595959
        59595959595959595B5B5B4A4A4A000000484848FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D0A0A0A06060607070707070707
        07070707070707070707070707070707070707070606060B0B0B717171FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
    end
    object BEPesquisa: TdxBarEdit
      Align = iaClient
      Category = 2
      Visible = ivAlways
      OnKeyDown = BEPesquisaKeyDown
      Width = 100
    end
    object BLBArmarinhos: TdxBarLargeButton
      Action = ACTArmarinhos
      Category = 0
      AutoGrayScale = False
      HotImageIndex = 4
    end
    object BLBProduto_Estoque: TdxBarLargeButton
      Action = ACTProduto_Estoque
      Category = 1
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object BLBProduto_Estoque_Etiqueta: TdxBarLargeButton
      Action = ACTProduto_Estoque_Etiqueta
      Category = 0
      Hint = 'Estoque de Produtos Etiquetados'
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = ACTProduto_Ficha_Tecnica
      Category = 1
    end
    object BLBAtivo: TdxBarLargeButton
      Action = ACTAtivo
      Category = 0
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
      HotImageIndex = 5
    end
    object BLBInativo: TdxBarLargeButton
      Action = ACTInativo
      Category = 0
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
      HotImageIndex = 7
    end
    object BLBPreCadastro: TdxBarLargeButton
      Action = ACTPreCadastro
      Category = 0
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
      HotImageIndex = 6
    end
  end
  inherited PMMain: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Item = BLBProduto_Estoque
        Visible = True
      end
      item
        Item = BLBProduto_Estoque_Etiqueta
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarLargeButton1
        Visible = True
      end>
    Left = 1656
    Top = 192
  end
  inherited DMMain: TdxDockingManager
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer, doHideAutoHideIfActive]
    Left = 1656
    Top = 224
  end
  inherited SBSMain: TdxSideBarStore
    Left = 1688
    Top = 224
  end
  inherited SQLEvent: TIBSQL
    Left = 704
    Top = 232
  end
  inherited EEventAdmin: TIBEvents
    Left = 1720
    Top = 128
  end
  inherited ALPrincipal: TActionList
    Left = 1656
    Top = 256
    object ACTArmarinhos: TAction
      Category = 'Menu'
      Caption = 'e-armarinhos'
      Enabled = False
      Hint = 'Atualizar site de e-commerce'
      OnExecute = ACTArmarinhosExecute
    end
    object ACTProduto_Estoque: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Estoque de Produtos'
      OnExecute = ACTProduto_EstoqueExecute
    end
    object ACTProduto_Estoque_Etiqueta: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Estoque de Produtos Etiquetados'
      OnExecute = ACTProduto_Estoque_EtiquetaExecute
    end
    object ACTProduto_Ficha_Tecnica: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Ficha T'#233'cnica de Produtos'
      Hint = 'Ficha T'#233'cnica de Produtos'
      OnExecute = ACTProduto_Ficha_TecnicaExecute
    end
    object ACTAtivo: TAction
      Category = 'Menu'
      Caption = 'Ativo'
      Hint = 'Mostrar apenas produtos ativados'
      OnExecute = ACTAtivoExecute
    end
    object ACTInativo: TAction
      Category = 'Menu'
      Caption = 'Inativo'
      Hint = 'Mostrar apenas produtos inativados ou suspensos'
      OnExecute = ACTInativoExecute
    end
    object ACTPreCadastro: TAction
      Category = 'Menu'
      Caption = 'Pr'#233'-Cadastro'
      Hint = 'Mostrar apenas produtos pr'#233'-cadastrados'
      OnExecute = ACTPreCadastroExecute
    end
  end
  object Artigos: TIBQuery
    Tag = 1
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterClose = ArtigosAfterClose
    AfterOpen = ArtigosAfterOpen
    BeforeOpen = ArtigosBeforeOpen
    BeforeScroll = ArtigosBeforeScroll
    BufferChunks = 2500
    SQL.Strings = (
      'SELECT MAX(CP.ID)   AS ID  ,CP.IDEP,CP.DEEP,'
      '       MIN(CP.REST) AS REST,'
      '       CP.ARTIGO    ,CP.DECP,CP.IDAK,'
      '       CP.IDCF      ,CP.DECF,'
      
        '       CP.DECOL     ,CP.DESEG,CP.DEGRP,CP.DESGP,CP.DECAT   ,CP.D' +
        '_DESCT,'
      '       CP.FIN_CAD_NO,CP.FIN_EST_NO,'
      '       CP.D_ORIG || ASCII_CHAR(13) ||ASCII_CHAR(10) AS D_ORIG,'
      '       NULLIF(TRIM(CAST('
      
        '              TRIM(COALESCE(CP.CMP_PAD ,'#39#39')) || IIF(CP.CMP_PAD I' +
        'S NOT NULL,ASCII_CHAR(13) || ASCII_CHAR(10),'#39#39') ||'
      
        '              TRIM(COALESCE(CP.INFADCAD,'#39#39')) AS VARCHAR(1064))),' +
        #39#39') AS INFADCAD'
      'FROM VW_CAD_PRO AS CP'
      'WHERE CP.ID > 0'
      'AND ARTIGO = '#39'AU.199'#39
      'GROUP BY IDEP      ,DEEP,'
      '         ARTIGO    ,DECP,IDAK,NCM,PIPI,'
      '         IDCF      ,DECF,'
      '         UCOM      ,UCOM_LJV  ,UTRIB,UCON ,UVEN_MIN,UVEN_MUL,'
      '         PESO      ,PSCN      ,METRO,REND ,GRAM    ,'
      '         LARU      ,LART      ,ELAL ,ELAC ,ENCL    ,ENCC,'
      '         DECOL     ,DESEG     ,DEGRP,DESGP,DECAT   ,D_DESCT,'
      '         FIN_CAD_NO,FIN_EST_NO,'
      '         D_ORIG    ,INFADCAD'
      'ORDER BY ARTIGO')
    Left = 1464
    Top = 224
    object ArtigosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object ArtigosREST: TIBStringField
      FieldName = 'REST'
      ProviderFlags = []
      Size = 10
    end
    object ArtigosIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_CAD_PRO"."IDAK"'
    end
    object ArtigosIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO"."IDEP"'
    end
    object ArtigosDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      Origin = '"VW_CAD_PRO"."DEEP"'
      Size = 60
    end
    object ArtigosARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"VW_CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object ArtigosIDCF: TSmallintField
      FieldName = 'IDCF'
      Origin = '"VW_CAD_PRO"."IDCF"'
    end
    object ArtigosDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"VW_CAD_PRO"."DECP"'
      Size = 120
    end
    object ArtigosDECF: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'DECF'
      Origin = '"VW_CAD_PRO"."DECF"'
      Size = 60
    end
    object ArtigosDECOL: TIBStringField
      DisplayLabel = 'Cole'#231#227'o'
      FieldName = 'DECOL'
      Origin = '"VW_CAD_PRO"."DECOL"'
      Size = 60
    end
    object ArtigosDESEG: TIBStringField
      DisplayLabel = 'Segmento'
      FieldName = 'DESEG'
      Origin = '"VW_CAD_PRO"."DESEG"'
      Size = 60
    end
    object ArtigosDEGRP: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'DEGRP'
      Origin = '"VW_CAD_PRO"."DEGRP"'
      Size = 60
    end
    object ArtigosDESGP: TIBStringField
      DisplayLabel = 'Sub Grupo'
      FieldName = 'DESGP'
      Origin = '"VW_CAD_PRO"."DESGP"'
      Size = 60
    end
    object ArtigosDECAT: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'DECAT'
      Origin = '"VW_CAD_PRO"."DECAT"'
      Size = 60
    end
    object ArtigosD_DESCT: TIBStringField
      DisplayLabel = 'Sub Categorias'
      FieldName = 'D_DESCT'
      ProviderFlags = []
      Size = 304
    end
    object ArtigosFIN_CAD_NO: TIBStringField
      DisplayLabel = 'Finalidade'
      FieldName = 'FIN_CAD_NO'
      Origin = '"VW_CAD_PRO"."FIN_CAD_NO"'
      Size = 60
    end
    object ArtigosFIN_EST_NO: TIBStringField
      DisplayLabel = 'Estoque Vend'#225'vel'
      FieldName = 'FIN_EST_NO'
      Origin = '"VW_CAD_PRO"."FIN_EST_NO"'
      Size = 60
    end
    object ArtigosD_ORIG: TIBStringField
      FieldName = 'D_ORIG'
      ProviderFlags = []
      Size = 132
    end
    object ArtigosINFADCAD: TIBStringField
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 1064
    end
  end
  object DTSArtigos: TDataSource
    DataSet = Artigos
    OnDataChange = DTSArtigosDataChange
    Left = 1496
    Top = 224
  end
  object PMPesquisa: TdxBarPopupMenu
    BarManager = BMMain
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Item = dxBarLargeButton1
        Visible = True
      end>
    UseOwnFont = False
    UseRecentItems = True
    Left = 1688
    Top = 256
  end
  object Produtos: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterClose = ProdutosAfterClose
    AfterOpen = ProdutosAfterOpen
    AfterScroll = ProdutosAfterScroll
    BufferChunks = 2500
    DataSource = DTSArtigos
    SQL.Strings = (
      
        'SELECT    CP.ID ,CP.IDCP,CP.CDST,CP.REST,CP.DEST,EST.DTEV,CP.SKU' +
        '  ,CP.CEAN,'
      
        '          CP.NCM,CP.PIPI,CP.UCOM,CP.UCON,CP.PESO,CP.PSCN ,CP.MET' +
        'RO,CP.GRAM,CP.REND,'
      
        '          CP.LARU,CP.LART,CP.ENCL,CP.ENCC,CP.ELAL,CP.ELAC,CP.UVE' +
        'N_MUL,CP.UVEN_MIN,'
      
        '          IIF(CP.RGCP IS NOT NULL,CP.RGCP,CP.SKU) AS RGCP,CP.DGC' +
        'P,'
      '          CP.SISTEMA,CP.ESCALA,CP.CDCF,CP.CEANCF,'
      '          CP.VPRC_COM_NAC,CP.VPRC_COM_IMP,'
      '          CP.VPRC_PAD,CP.VPRC_PAD_PRZ,CP.VPRC_PAD_PRO,'
      '          CP.VPRC_ATV,CP.VPRC_ATV_PRZ,CP.VPRC_ATV_PRO,'
      '          CP.VPRC_VAR,CP.VPRC_VAR_PRZ,CP.VPRC_VAR_PRO,'
      '          CP.VPRC_REP,CP.VPRC_REP_PRZ,CP.VPRC_REP_PRO,'
      '          CP.VPRC_LJV,CP.PMKP_LJV,'
      
        '          COALESCE(EST.EPE_QTDE,0)  AS EPE_QTDE,COALESCE(EST.EPE' +
        '_QTRL,0) AS EPE_QTRL,'
      
        '          COALESCE(EST.EAA_QTDE,0)  AS EAA_QTDE,COALESCE(EST.EAA' +
        '_QTRL,0) AS EAA_QTRL,'
      
        '          COALESCE(EST.EA_QTDE ,0)  AS EA_QTDE ,COALESCE(EST.EA_' +
        'QTRL ,0) AS EA_QTRL ,'
      
        '          COALESCE(EST.EB_QTDE ,0)  AS EB_QTDE ,COALESCE(EST.EB_' +
        'QTRL ,0) AS EB_QTRL ,'
      
        '          COALESCE(EST.EC_QTDE ,0)  AS EC_QTDE ,COALESCE(EST.EC_' +
        'QTRL ,0) AS EC_QTRL ,'
      
        '          COALESCE(EST.EPI_QTDE,0)  AS EPI_QTDE,COALESCE(EST.EPI' +
        '_QTRL,0) AS EPI_QTRL,'
      
        '          COALESCE(EST.ESU_QTDE,0)  AS ESU_QTDE,COALESCE(EST.ESU' +
        '_QTRL,0) AS ESU_QTRL,'
      
        '          COALESCE(EST.EPP_QTDE,0)  AS EPP_QTDE,COALESCE(EST.EPP' +
        '_QTRL,0) AS EPP_QTRL,'
      
        '          COALESCE(EST.EPR_QTDE,0)  AS EPR_QTDE,COALESCE(EST.EPR' +
        '_QTRL,0) AS EPR_QTRL,'
      
        '          COALESCE(EST.EPS_QTDE,0)  AS EPS_QTDE,COALESCE(EST.EPS' +
        '_QTRL,0) AS EPS_QTRL,'
      
        '          COALESCE(EST.ECO_QTDE,0)  AS ECO_QTDE,COALESCE(EST.ECO' +
        '_QTRL,0) AS ECO_QTRL,'
      
        '          COALESCE(EST.EEP_QTDE,0)  AS EEP_QTDE,COALESCE(EST.EEP' +
        '_QTRL,0) AS EEP_QTRL,'
      '          COALESCE(EST.ECO_DECO,'#39#39') AS ECO_DECO'
      'FROM      VW_CAD_PRO AS CP'
      'JOIN      SP_CAD_PRO_EST_PSQ(:IDEP,CP.IDEK) AS EST ON (1=1)'
      'WHERE     CP.IDAK = :IDAK'
      'ORDER BY  EST.DTEV DESC')
    Left = 1464
    Top = 256
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object ProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProdutosIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO"."IDCP"'
    end
    object ProdutosCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"CAD_PRO"."CDST"'
    end
    object ProdutosREST: TIBStringField
      FieldName = 'REST'
      Origin = '"CAD_PRO"."REST"'
      Size = 10
    end
    object ProdutosDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"TAB_STA"."DESCRICAO"'
      Size = 60
    end
    object ProdutosSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"VW_CAD_PRO"."SKU"'
      Size = 30
    end
    object ProdutosDTEV: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldName = 'DTEV'
      Origin = '"SP_CAD_PRO_EST_PSQ"."DTEV"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object ProdutosCEAN: TIBStringField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'CEAN'
      Origin = '"CAD_PRO"."CEAN"'
    end
    object ProdutosRGCP: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'RGCP'
      ProviderFlags = []
      Size = 30
    end
    object ProdutosDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      ProviderFlags = []
      Size = 60
    end
    object ProdutosSISTEMA: TIBStringField
      DisplayLabel = 'Sistema'
      FieldName = 'SISTEMA'
      Origin = '"TAB_COR"."SISTEMA"'
      Size = 10
    end
    object ProdutosESCALA: TIBStringField
      DisplayLabel = 'Escala'
      FieldName = 'ESCALA'
      Origin = '"TAB_COR"."ESCALA"'
      Size = 40
    end
    object ProdutosCDCF: TIBStringField
      DisplayLabel = 'SKU'
      FieldName = 'CDCF'
      Origin = '"CAD_PRO"."CDCF"'
      Size = 30
    end
    object ProdutosCEANCF: TIBStringField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'CEANCF'
      Origin = '"CAD_PRO"."CEANCF"'
    end
    object ProdutosNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VW_CAD_PRO"."NCM"'
      Size = 8
    end
    object ProdutosPIPI: TIBBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'PIPI'
      Origin = '"VW_CAD_PRO"."PIPI"'
      Precision = 9
      Size = 2
    end
    object ProdutosUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"VW_CAD_PRO"."UCOM"'
      Size = 10
    end
    object ProdutosUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'UCON'
      Origin = '"VW_CAD_PRO"."UCON"'
      Size = 45
    end
    object ProdutosPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VW_CAD_PRO"."PESO"'
      Precision = 9
      Size = 2
    end
    object ProdutosPSCN: TIBBCDField
      DisplayLabel = 'Canudo'
      FieldName = 'PSCN'
      Origin = '"VW_CAD_PRO"."PSCN"'
      Precision = 9
      Size = 2
    end
    object ProdutosMETRO: TIBBCDField
      DisplayLabel = 'Metragem'
      FieldName = 'METRO'
      Origin = '"VW_CAD_PRO"."METRO"'
      Precision = 9
      Size = 2
    end
    object ProdutosGRAM: TIBBCDField
      DisplayLabel = 'Gramatura'
      FieldName = 'GRAM'
      Origin = '"VW_CAD_PRO"."GRAM"'
      Precision = 9
      Size = 2
    end
    object ProdutosREND: TIBBCDField
      DisplayLabel = 'Rendimento'
      FieldName = 'REND'
      Origin = '"VW_CAD_PRO"."REND"'
      Precision = 9
      Size = 2
    end
    object ProdutosLARU: TIBBCDField
      DisplayLabel = #218'til'
      FieldName = 'LARU'
      Origin = '"VW_CAD_PRO"."LARU"'
      Precision = 9
      Size = 2
    end
    object ProdutosLART: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'LART'
      Origin = '"VW_CAD_PRO"."LART"'
      Precision = 9
      Size = 2
    end
    object ProdutosENCL: TIBBCDField
      DisplayLabel = 'Lateral'
      FieldName = 'ENCL'
      Origin = '"VW_CAD_PRO"."ENCL"'
      Precision = 9
      Size = 2
    end
    object ProdutosENCC: TIBBCDField
      DisplayLabel = 'Comprimento'
      FieldName = 'ENCC'
      Origin = '"VW_CAD_PRO"."ENCC"'
      Precision = 9
      Size = 2
    end
    object ProdutosELAL: TIBBCDField
      DisplayLabel = 'Lateral'
      FieldName = 'ELAL'
      Origin = '"VW_CAD_PRO"."ELAL"'
      Precision = 9
      Size = 2
    end
    object ProdutosELAC: TIBBCDField
      DisplayLabel = 'Comprimento'
      FieldName = 'ELAC'
      Origin = '"VW_CAD_PRO"."ELAC"'
      Precision = 9
      Size = 2
    end
    object ProdutosUVEN_MUL: TSmallintField
      DisplayLabel = 'Muliplo'
      FieldName = 'UVEN_MUL'
      Origin = '"VW_CAD_PRO"."UVEN_MUL"'
    end
    object ProdutosUVEN_MIN: TSmallintField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'UVEN_MIN'
      Origin = '"VW_CAD_PRO"."UVEN_MIN"'
    end
    object ProdutosVPRC_COM_NAC: TFloatField
      DisplayLabel = 'Nacional'
      FieldName = 'VPRC_COM_NAC'
      Origin = '"VW_CAD_PRO"."VPRC_COM_NAC"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_COM_IMP: TFloatField
      DisplayLabel = 'Importado'
      FieldName = 'VPRC_COM_IMP'
      Origin = '"VW_CAD_PRO"."VPRC_COM_IMP"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_PAD: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_PAD'
      Origin = '"VW_CAD_PRO"."VPRC_PAD"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_PAD_PRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'VPRC_PAD_PRZ'
      Origin = '"VW_CAD_PRO"."VPRC_PAD_PRZ"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_PAD_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'VPRC_PAD_PRO'
      Origin = '"VW_CAD_PRO"."VPRC_PAD_PRO"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_ATV: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_ATV'
      Origin = '"VW_CAD_PRO"."VPRC_ATV"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_ATV_PRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'VPRC_ATV_PRZ'
      Origin = '"VW_CAD_PRO"."VPRC_ATV_PRZ"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_ATV_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'VPRC_ATV_PRO'
      Origin = '"VW_CAD_PRO"."VPRC_ATV_PRO"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_VAR: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_VAR'
      Origin = '"VW_CAD_PRO"."VPRC_VAR"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_VAR_PRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'VPRC_VAR_PRZ'
      Origin = '"VW_CAD_PRO"."VPRC_VAR_PRZ"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_VAR_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'VPRC_VAR_PRO'
      Origin = '"VW_CAD_PRO"."VPRC_VAR_PRO"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_REP: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_REP'
      Origin = '"VW_CAD_PRO"."VPRC_REP"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_REP_PRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'VPRC_REP_PRZ'
      Origin = '"VW_CAD_PRO"."VPRC_REP_PRZ"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_REP_PRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'VPRC_REP_PRO'
      Origin = '"VW_CAD_PRO"."VPRC_REP_PRO"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosVPRC_LJV: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'VPRC_LJV'
      Origin = '"VW_CAD_PRO"."VPRC_LJV"'
      DisplayFormat = ',##,0.00'
    end
    object ProdutosPMKP_LJV: TIBBCDField
      DisplayLabel = 'Markup'
      FieldName = 'PMKP_LJV'
      Origin = '"VW_CAD_PRO"."PMKP_LJV"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object ProdutosEPE_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPE_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEPE_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EPE_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEAA_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EAA_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEAA_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EAA_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEA_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EA_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEA_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EA_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEB_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EB_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEB_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EB_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEC_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EC_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEC_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EC_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEPI_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPI_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEPI_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EPI_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosESU_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ESU_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosESU_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'ESU_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEPP_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPP_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEPP_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EPP_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEPR_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPR_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEPR_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EPR_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEPS_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPS_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEPS_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EPS_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosECO_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ECO_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosECO_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'ECO_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosEEP_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EEP_QTDE'
      ProviderFlags = []
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosEEP_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'EEP_QTRL'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object ProdutosECO_DECO: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'ECO_DECO'
      ProviderFlags = []
      Size = 250
    end
  end
  object DTSProdutos: TDataSource
    DataSet = Produtos
    OnDataChange = DTSProdutosDataChange
    Left = 1496
    Top = 256
  end
  object PS: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = PSAfterOpen
    BufferChunks = 2500
    DataSource = DTSArtigos
    SQL.Strings = (
      
        'SELECT   PS.ID,CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PROD' +
        'UTO,'
      
        '         TRIM(COALESCE(CP.DEGRD,'#39#39')||'#39' '#39'||TRIM(COALESCE(CP.DECOR' +
        ','#39#39')||'#39' '#39'||TRIM(COALESCE(CP.CDGRD,'#39#39')||'#39' '#39'||TRIM(COALESCE(CP.REG' +
        'RD,'#39#39'))))) AS DGCP,'
      
        '         PS.EST_DOCU AS DEPS,PS.EST_DTPV AS DTPV,PS.EST_DFAV AS ' +
        'CLPS,PS.EST_DUSU AS CVPS,PS.EST_DREP AS CRPS,'
      '         PS.EST_CRED AS QTDE,PS.EST_PCRE AS QTRL,'
      
        '         PS.EST_CDET AS CDET,PS.EST_CDSP AS CDSP,PS.IDCA AS IDSP' +
        ',CS.USU_DUSU AS DESP,PS.EST_DTCA AS DTCA'
      'FROM     CAD_PRO_SEP AS PS'
      'JOIN     CAD_PRO     AS CP ON (CP.ID = PS.IDCP)'
      'JOIN     CAD_USU     AS CS ON (CS.ID = PS.IDCA)'
      'WHERE    PS.IDEP = :IDEP'
      'AND      CP.IDAK = :IDAK'
      'ORDER BY PS.DTCA DESC')
    Left = 1384
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDEP'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftUnknown
        Name = 'IDAK'
        ParamType = ptUnknown
      end>
    object PSID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_SEP"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PSIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"CAD_PRO"."IDAK"'
    end
    object PSARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object PSPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object PSDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      ProviderFlags = []
      Size = 93
    end
    object PSDEPS: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPS'
      Origin = '"CAD_PRO_SEP"."EST_DOCU"'
      Size = 30
    end
    object PSDTPV: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTPV'
      Origin = '"CAD_PRO_SEP"."EST_DTPV"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object PSCLPS: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLPS'
      Origin = '"CAD_PRO_SEP"."EST_DFAV"'
      Size = 60
    end
    object PSCVPS: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'CVPS'
      Origin = '"CAD_PRO_SEP"."EST_DUSU"'
      Size = 40
    end
    object PSCRPS: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'CRPS'
      Origin = '"CAD_PRO_SEP"."EST_DREP"'
      Size = 60
    end
    object PSQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"CAD_PRO_SEP"."EST_CRED"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object PSQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"CAD_PRO_SEP"."EST_PCRE"'
      DisplayFormat = '0'
    end
    object PSCDET: TIBStringField
      DisplayLabel = 'Etiqueta'
      FieldName = 'CDET'
      Origin = '"CAD_PRO_SEP"."EST_CDET"'
      Size = 10
    end
    object PSCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"CAD_PRO_SEP"."EST_CDSP"'
    end
    object PSIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"CAD_PRO_SEP"."EST_IDSP"'
    end
    object PSDESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'DESP'
      Origin = '"CAD_PRO_SEP"."EST_DSEP"'
      Size = 40
    end
    object PSDTCA: TDateTimeField
      DisplayLabel = 'Separado'
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_SEP"."EST_DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
  end
  object DTSPS: TDataSource
    DataSet = PS
    OnDataChange = DTSPSDataChange
    Left = 1600
    Top = 464
  end
  object PR: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = PRAfterOpen
    BufferChunks = 2500
    DataSource = DTSArtigos
    SQL.Strings = (
      
        'SELECT   PK.ID  ,PK.DTCA,TRIM(CAST(FTIMESTAMP(PK.DTCA)||'#39' '#39'||PK.' +
        'DECV AS VARCHAR(40))) AS D_DTCA,'
      '         PK.IDPK,PK.DEPK,PK.DECD,PK.DECV,PK.DECR,'
      
        '         PK.IDFK,PK.ITEM,PK.IDCP,PK.IDAK,PK.SKU ,PK.DGCP,PK.QTDE' +
        ',PK.QTRL,PK.VPRC_COM'
      'FROM     VW_CAD_PRO_EST_RES AS PK'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDAK = :IDAK'
      'ORDER BY PK.DTCA DESC')
    Left = 1464
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDEP'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftUnknown
        Name = 'IDAK'
        ParamType = ptUnknown
      end>
    object PRID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST_RES"."ID"'
    end
    object PRIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_CAD_PRO_EST_RES"."IDPK"'
    end
    object PRDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST_RES"."DTCA"'
    end
    object PRD_DTCA: TIBStringField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'D_DTCA'
      ProviderFlags = []
      Size = 40
    end
    object PRDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      Origin = '"VW_CAD_PRO_EST_RES"."DEPK"'
      Size = 30
    end
    object PRDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      Origin = '"VW_CAD_PRO_EST_RES"."DECD"'
      Size = 60
    end
    object PRDECV: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'DECV'
      Origin = '"VW_CAD_PRO_EST_RES"."DECV"'
      Size = 30
    end
    object PRDECR: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'DECR'
      Origin = '"VW_CAD_PRO_EST_RES"."DECR"'
      Size = 60
    end
    object PRIDFK: TLargeintField
      FieldName = 'IDFK'
      Origin = '"VW_CAD_PRO_EST_RES"."IDFK"'
    end
    object PRITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"VW_CAD_PRO_EST_RES"."ITEM"'
      DisplayFormat = '0'
    end
    object PRIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO_EST_RES"."IDCP"'
    end
    object PRSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"VW_CAD_PRO_EST_RES"."SKU"'
      Size = 30
    end
    object PRDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST_RES"."DGCP"'
      Size = 60
    end
    object PRQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST_RES"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object PRQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST_RES"."QTRL"'
      DisplayFormat = '0'
    end
    object PRVPRC_COM: TFloatField
      DisplayLabel = 'Pre'#231'o R$'
      FieldName = 'VPRC_COM'
      Origin = '"VW_CAD_PRO_EST_RES"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object PRIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_CAD_PRO_EST_RES"."IDAK"'
    end
  end
  object DTSPR: TDataSource
    DataSet = PR
    OnDataChange = DTSPRDataChange
    Left = 1496
    Top = 416
  end
  object PP: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = PPAfterOpen
    AfterScroll = PPAfterScroll
    DataSource = DTSArtigos
    SQL.Strings = (
      'SELECT   PK.ID    ,PK.IDEP,'
      '         PK.IDCA  ,PK.DTCA,FTIMESTAMP(PK.DTCA) AS D_DTCA,'
      '         CP.ARTIGO,CP.SKU ,PK.DGCP,'
      '         PK.IDPK  ,PK.DEPK,PK.DTPK,'
      '         PK.IDCD  ,CD.FANTASIA AS DECD,CD.UF,'
      '         PK.IDCV  ,CV.LOGIN    AS DECV,'
      '         PK.IDCR  ,CR.FANTASIA AS DECR,'
      '         PK.QTDE,PK.QTRL,'
      '         PK.CTNR,PK.CTNR_QTDE,PK.CTNR_QTRL,PK.CTNR_QTSD'
      'FROM     CAD_PRO_PRG AS PK'
      'JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)'
      'JOIN     CAD_CLI     AS CD ON (CD.ID = PK.IDCD)'
      'JOIN     CAD_REP     AS CR ON (CR.ID = PK.IDCR)'
      'JOIN     TAB_USER    AS CV ON (CV.ID = PK.IDCV)'
      ''
      'WHERE    PK.IDEP = :IDEP'
      'AND      CP.IDAK = :IDAK'
      ''
      'ORDER BY PK.DTCA DESC')
    Left = 1472
    Top = 712
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDEP'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object PPID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_PRG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PPIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_PRO_PRG"."IDEP"'
    end
    object PPIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_PRO_PRG"."IDCA"'
    end
    object PPDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_PRG"."DTCA"'
    end
    object PPD_DTCA: TIBStringField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'D_DTCA'
      ProviderFlags = []
      Size = 15
    end
    object PPARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object PPSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object PPDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"CAD_PRO_PRG"."DGCP"'
      Size = 60
    end
    object PPIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"CAD_PRO_PRG"."IDPK"'
    end
    object PPDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      Origin = '"CAD_PRO_PRG"."DEPK"'
      Size = 30
    end
    object PPDTPK: TDateField
      FieldName = 'DTPK'
      Origin = '"CAD_PRO_PRG"."DTPK"'
    end
    object PPIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"CAD_PRO_PRG"."IDCD"'
    end
    object PPDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      Origin = '"CAD_CLI"."FANTASIA"'
      Size = 60
    end
    object PPUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CAD_CLI"."UF"'
      FixedChar = True
      Size = 2
    end
    object PPIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"CAD_PRO_PRG"."IDCV"'
    end
    object PPDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'DECV'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object PPIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"CAD_PRO_PRG"."IDCR"'
    end
    object PPDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldName = 'DECR'
      Origin = '"CAD_REP"."FANTASIA"'
      Size = 60
    end
    object PPQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"CAD_PRO_PRG"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object PPQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"CAD_PRO_PRG"."QTRL"'
      DisplayFormat = '0'
    end
    object PPCTNR: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CTNR'
      Origin = '"CAD_PRO_PRG"."CTNR"'
      Size = 30
    end
    object PPCTNR_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'CTNR_QTDE'
      Origin = '"CAD_PRO_PRG"."CTNR_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object PPCTNR_QTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'CTNR_QTRL'
      Origin = '"CAD_PRO_PRG"."CTNR_QTRL"'
      DisplayFormat = '0'
    end
    object PPCTNR_QTSD: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'CTNR_QTSD'
      Origin = '"CAD_PRO_PRG"."CTNR_QTSD"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
  end
  object DTSPP: TDataSource
    DataSet = PP
    OnDataChange = DTSPPDataChange
    Left = 1504
    Top = 712
  end
  object PCA: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = PCAAfterOpen
    BufferChunks = 2500
    DataSource = DTSArtigos
    SQL.Strings = (
      'SELECT   PC.ID,PC.IDEP,EP.FANTASIA AS DEEP,'
      '         CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,PC.DGCP,'
      
        '         PC.EST_DOCU AS DEPC,PC.EST_CTNR AS CTNR,PC.EST_DTCA AS ' +
        'DTCA,PC.EST_DFAV AS FOPC,PC.EST_DUSU AS CCPC,'
      '         PC.EST_CRED AS QTDE,PC.EST_PCRE AS QTRL,'
      
        '         PC.EST_STFI AS STFI,PC.EST_RDES AS DTDE,PC.EST_DEXP AS ' +
        'DTPR'
      'FROM     CAD_PRO_PRC AS PC'
      'JOIN     CAD_PRO     AS CP ON (CP.ID = PC.IDCP)'
      'JOIN     TAB_PAR_SIS AS EP ON (EP.ID = PC.IDEP)'
      'WHERE    PC.IDEP = :IDEP'
      'AND      CP.IDAK = :IDAK'
      'ORDER BY PC.EST_DEXP DESC'
      '')
    Left = 1464
    Top = 512
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDEP'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftUnknown
        Name = 'IDAK'
        ParamType = ptUnknown
      end>
    object PCAID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_PRC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PCAIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_PRO_PRC"."IDEP"'
    end
    object PCADEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object PCAARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object PCAPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object PCADGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      ProviderFlags = []
      Size = 60
    end
    object PCADEPC: TIBStringField
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'DEPC'
      Origin = '"CAD_PRO_PRC"."EST_DOCU"'
      Size = 30
    end
    object PCACTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"CAD_PRO_PRC"."EST_CTNR"'
      Size = 30
    end
    object PCADTCA: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"CAD_PRO_PRC"."EST_DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object PCAFOPC: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FOPC'
      Origin = '"CAD_PRO_PRC"."EST_DFAV"'
      Size = 60
    end
    object PCACCPC: TIBStringField
      DisplayLabel = 'Comprador'
      FieldName = 'CCPC'
      Origin = '"CAD_PRO_PRC"."EST_DUSU"'
      Size = 40
    end
    object PCAQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"CAD_PRO_PRC"."EST_CRED"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object PCAQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"CAD_PRO_PRC"."EST_PCRE"'
      DisplayFormat = '0'
    end
    object PCASTFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STFI'
      Origin = '"CAD_PRO_PRC"."EST_STFI"'
      Size = 30
    end
    object PCADTDE: TDateField
      DisplayLabel = 'Dt. Desembarque'
      FieldName = 'DTDE'
      Origin = '"CAD_PRO_PRC"."EST_RDES"'
    end
    object PCADTPR: TDateField
      DisplayLabel = 'Dt. Prev. Chegada'
      FieldName = 'DTPR'
      Origin = '"CAD_PRO_PRC"."EST_DEXP"'
    end
  end
  object DTSPCA: TDataSource
    DataSet = PCA
    OnDataChange = DTSPCADataChange
    Left = 1496
    Top = 512
  end
  object LF: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = LFAfterOpen
    AfterScroll = LFAfterScroll
    BeforeOpen = LFBeforeOpen
    OnCalcFields = LFCalcFields
    BufferChunks = 4500
    DataSource = DTSArtigos
    SQL.Strings = (
      'SELECT   PK.ID    ,PK.IDEP,'
      '         PK.IDET  ,PK.DTET,PK.LGET,'
      
        '         PK.CDRO  ,PK.DTRO,PK.DEPD,PK.DTPD,PK.CDNF,PK.DTNF,PK.DE' +
        'CE,'
      '         PK.CDET  ,PK.CTNR,PK.LOTE,PK.CDI ,'
      '         PK.D_DEOP,PK.CDTP,PK.DETP,'
      '         PK.SKU   ,PK.DGCP,PK.QTDE,PK.QTRL,'
      
        '         COALESCE(CAST(IIF(PK.CDDF > 0,1,0) AS INTEGER),0) AS IT' +
        'DF,PK.D_DEDF,PK.INFADCAD'
      'FROM     VW_CAD_PRO_EST      AS PK'
      
        'JOIN     TAB_PAR_SIS_EST_EMP AS EP_EST_EMP ON (EP_EST_EMP.ID  = ' +
        ':IDEP AND EP_EST_EMP.IDEP_LOG = PK.IDEP)'
      
        'JOIN     TAB_PAR_SIS_EST     AS EP_EST     ON (EP_EST.ID      = ' +
        ':IDEP)'
      'JOIN     SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS FK ON (1 = 1)'
      'WHERE    PK.IDAK = :IDAK'
      'AND      PK.IDPK = 0'
      'AND      PK.REOP = '#39'E'#39
      'ORDER BY PK.DTET DESC')
    Left = 1464
    Top = 320
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object LFID: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object LFIDEP: TSmallintField
      DisplayLabel = 'CDI'
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO_EST"."IDEP"'
      DisplayFormat = '0'
    end
    object LFIDET: TSmallintField
      FieldName = 'IDET'
      Origin = '"VW_CAD_PRO_EST"."IDET"'
    end
    object LFDTET: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTET'
      Origin = '"VW_CAD_PRO_EST"."DTET"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object LFLGET: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'LGET'
      Origin = '"VW_CAD_PRO_EST"."LGET"'
      Size = 30
    end
    object LFCDRO: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'CDRO'
      Origin = '"VW_CAD_PRO_EST"."CDRO"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0'
    end
    object LFDTRO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTRO'
      Origin = '"VW_CAD_PRO_EST"."DTRO"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object LFDEPD: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPD'
      Origin = '"VW_CAD_PRO_EST"."DEPD"'
      Size = 30
    end
    object LFDTPD: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTPD'
      Origin = '"VW_CAD_PRO_EST"."DTPD"'
      DisplayFormat = 'dd/mm/yy'
    end
    object LFCDNF: TLargeintField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'CDNF'
      Origin = '"VW_CAD_PRO_EST"."CDNF"'
      DisplayFormat = '0'
    end
    object LFDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTNF'
      Origin = '"VW_CAD_PRO_EST"."DTNF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object LFDECE: TIBStringField
      DisplayLabel = 'Emitente'
      FieldKind = fkInternalCalc
      FieldName = 'DECE'
      Origin = '"VW_CAD_PRO_EST"."DECE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object LFCDET: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDET'
      Origin = '"VW_CAD_PRO_EST"."CDET"'
      DisplayFormat = '0'
    end
    object LFCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"VW_CAD_PRO_EST"."CTNR"'
      Size = 30
    end
    object LFLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"VW_CAD_PRO_EST"."LOTE"'
      Size = 30
    end
    object LFCDI: TSmallintField
      FieldName = 'CDI'
      Origin = '"VW_CAD_PRO_EST"."CDI"'
    end
    object LFD_DEOP: TIBStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'D_DEOP'
      Origin = '"VW_CAD_PRO_EST"."D_DEOP"'
      Size = 30
    end
    object LFCDTP: TSmallintField
      FieldName = 'CDTP'
      Origin = '"VW_CAD_PRO_EST"."CDTP"'
    end
    object LFDETP: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DETP'
      Origin = '"VW_CAD_PRO_EST"."DETP"'
      Size = 60
    end
    object LFSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"VW_CAD_PRO_EST"."SKU"'
      Size = 30
    end
    object LFDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST"."DGCP"'
      Size = 60
    end
    object LFQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST"."QTDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object LFQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST"."QTRL"'
      DisplayFormat = '0'
    end
    object LFD_DEDF: TIBStringField
      DisplayLabel = 'Defeitos'
      FieldKind = fkInternalCalc
      FieldName = 'D_DEDF'
      Origin = '"VW_CAD_PRO_EST"."D_DEDF"'
      ProviderFlags = []
      ReadOnly = True
      Size = 153
    end
    object LFINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_CAD_PRO_EST"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
    object LFITDF: TIntegerField
      FieldName = 'ITDF'
      ProviderFlags = []
    end
    object LFC_QTDE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_QTDE'
      Calculated = True
    end
    object LFC_QTRL: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_QTRL'
      Calculated = True
    end
  end
  object DTSLF: TDataSource
    DataSet = LF
    OnDataChange = DTSLFDataChange
    Left = 1496
    Top = 320
  end
  object DTSLS: TDataSource
    DataSet = LS
    OnDataChange = DTSLSDataChange
    Left = 1496
    Top = 384
  end
  object LS: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = LSAfterOpen
    AfterScroll = LSAfterScroll
    BufferChunks = 4500
    DataSource = DTSArtigos
    SQL.Strings = (
      'SELECT FIRST 100 * FROM VW_CAD_PRO_EST_LSP_TMP'
      'WHERE    IDEP  = :IDEP'
      'AND      IDAK  = :IDAK'
      'ORDER BY DTEMI DESC')
    Left = 1464
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDEP'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object LSID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST_LSP"."ID"'
    end
    object LSIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO_EST_LSP"."IDEP"'
    end
    object LSIDCA: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDCA'
      Origin = '"VW_CAD_PRO_EST_LSP_TMP"."IDCA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object LSDTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST_LSP_TMP"."DTCA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object LSDERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DERO'
      Origin = '"VW_CAD_PRO_EST_LSP"."DERO"'
      Size = 30
    end
    object LSCDRO: TIntegerField
      FieldName = 'CDRO'
      Origin = '"VW_CAD_PRO_EST_LSP"."CDRO"'
    end
    object LSDTEMI: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTEMI'
      Origin = '"VW_CAD_PRO_EST_LSP"."DTEMI"'
      DisplayFormat = 'dd/mm/yy'
    end
    object LSCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"VW_CAD_PRO_EST_LSP"."CTNR"'
    end
    object LSLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"VW_CAD_PRO_EST_LSP_TMP"."LOTE"'
      Size = 10
    end
    object LSFAVORECIDO: TIBStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'FAVORECIDO'
      Origin = '"VW_CAD_PRO_EST_LSP"."FAVORECIDO"'
      Size = 60
    end
    object LSIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO_EST_LSP"."IDCP"'
    end
    object LSIDAK: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'IDAK'
      Origin = '"VW_CAD_PRO_EST_LSP_TMP"."IDAK"'
      ProviderFlags = []
      ReadOnly = True
    end
    object LSARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"VW_CAD_PRO_EST_LSP"."ARTIGO"'
    end
    object LSPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VW_CAD_PRO_EST_LSP"."PRODUTO"'
    end
    object LSDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST_LSP"."GRADECOR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 93
    end
    object LSCDET: TLargeintField
      DisplayLabel = 'Etiqueta'
      FieldName = 'CDET'
      Origin = '"VW_CAD_PRO_EST_LSP"."CDET"'
    end
    object LSQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST_LSP"."QTDE"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object LSQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST_LSP"."QTRL"'
      DisplayFormat = '0'
    end
    object LSUNIT: TFloatField
      DisplayLabel = 'Vl. Unit'
      FieldKind = fkInternalCalc
      FieldName = 'UNIT'
      Origin = '"VW_CAD_PRO_EST_LSP"."UNIT"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00;-,##,0.00'
    end
    object LSDESP: TIBStringField
      DisplayLabel = 'Separador'
      FieldKind = fkInternalCalc
      FieldName = 'DESP'
      Origin = '"VW_CAD_PRO_EST_LSP_TMP"."DESP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object LSDTSP: TDateTimeField
      DisplayLabel = 'Data'
      FieldKind = fkInternalCalc
      FieldName = 'DTSP'
      Origin = '"VW_CAD_PRO_EST_LSP_TMP"."DTSP"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object LSSEPARADOR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SEPARADOR'
      Origin = '"VW_CAD_PRO_EST_LSP_TMP"."SEPARADOR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 56
    end
  end
  object PCF: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = PCFAfterOpen
    BufferChunks = 2500
    DataSource = DTSArtigos
    SQL.Strings = (
      
        'SELECT   PCFK.ID,CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PR' +
        'ODUTO,'
      '         PCFK.DGCP,'
      
        '         PC.ROM_DERO AS DEPC,PCFK.ROM_CTNR AS CTNR,PC.ROM_DTCA A' +
        'S DTCA,'
      '         CF.FOR_FANT AS FOPC,CC.USU_DUSU AS CCPC,'
      
        '         PCFK.ROM_QTDE AS QTDE,PCFK.ROM_QTRL AS QTRL,PCFK.ROM_QT' +
        'PD AS QTFI,PCFK.ROM_RLPD AS RLFI,'
      
        '         PC.ROM_STFI AS STFI,PCFK.ROM_RDES AS DTDE,PCFK.ROM_DBAI' +
        ' AS DTBX'
      'FROM     PED_COM_CAB AS PC'
      'JOIN     CAD_FOR     AS CF   ON (CF.ID = PC.IDCD)'
      'JOIN     CAD_USU     AS CC   ON (CC.ID = PC.IDCC)'
      'JOIN     PED_COM_ITE AS PCFK ON (PCFK.IDPK = PC.ID)'
      'JOIN     CAD_PRO     AS CP   ON (CP.ID = PCFK.IDCP)'
      'WHERE    PC.IDEP = :IDEP'
      'AND      CP.IDAK = :IDAK'
      'AND      PCFK.ROM_DBAI IS NOT NULL'
      'AND      PC.DEST <> '#39'CANCELADO'#39
      'ORDER BY PC.ROM_DBAI DESC')
    Left = 1464
    Top = 544
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDEP'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftUnknown
        Name = 'IDAK'
        ParamType = ptUnknown
      end>
    object PCFID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_COM_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PCFARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object PCFPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object PCFDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      ProviderFlags = []
      Size = 60
    end
    object PCFCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"PED_COM_ITE"."ROM_CTNR"'
    end
    object PCFDTCA: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"PED_COM_CAB"."ROM_DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object PCFFOPC: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FOPC'
      Origin = '"CAD_FOR"."FOR_FANT"'
      Size = 60
    end
    object PCFCCPC: TIBStringField
      DisplayLabel = 'Comprador'
      FieldName = 'CCPC'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object PCFQTDE: TIBBCDField
      DisplayLabel = 'Qt. Pedido'
      FieldName = 'QTDE'
      Origin = '"PED_COM_ITE"."ROM_QTDE"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object PCFQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"PED_COM_ITE"."ROM_QTRL"'
      DisplayFormat = '0'
    end
    object PCFQTFI: TIBBCDField
      DisplayLabel = 'Qt. Recebido'
      FieldName = 'QTFI'
      Origin = '"PED_COM_ITE"."ROM_QTPD"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object PCFRLFI: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'RLFI'
      Origin = '"PED_COM_ITE"."ROM_RLPD"'
      DisplayFormat = '0'
    end
    object PCFSTFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STFI'
      Origin = '"PED_COM_CAB"."ROM_STFI"'
      Size = 30
    end
    object PCFDTDE: TDateField
      DisplayLabel = 'Dt. Desembarque'
      FieldName = 'DTDE'
      Origin = '"PED_COM_ITE"."ROM_RDES"'
    end
    object PCFDTBX: TDateField
      DisplayLabel = 'Dt. Chegada'
      FieldName = 'DTBX'
      Origin = '"PED_COM_ITE"."ROM_DBAI"'
    end
    object PCFDEPC: TIBStringField
      FieldName = 'DEPC'
      Origin = '"PED_COM_CAB"."ROM_DERO"'
      Size = 30
    end
  end
  object DTSPCF: TDataSource
    DataSet = PCF
    OnDataChange = DTSPCFDataChange
    Left = 1496
    Top = 544
  end
  object RV: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    BufferChunks = 2500
    DataSource = DTSArtigos
    SQL.Strings = (
      'SELECT   PK.*,'
      '         PV.ROM_DERO AS DEPV,PV.ROM_DROM AS DTPV,'
      
        '         CL.CLI_FANT AS DECL,CV.LOGIN    AS DECV,CR.REP_FANT AS ' +
        'DECR'
      'FROM     VW_CAD_PRO_EST_REV AS PK'
      
        'LEFT     JOIN PED_VEN_CAB   AS PV ON (PV.IDEP = PK.IDEP AND PV.I' +
        'D = PK.CDPD)'
      'LEFT     JOIN CAD_CLI       AS CL ON (CL.ID   = PV.IDCD)'
      'LEFT     JOIN TAB_USER      AS CV ON (CV.ID   = PV.IDCV)'
      'LEFT     JOIN CAD_REP       AS CR ON (CR.ID   = PV.IDCR)'
      'WHERE    PK.IDEP = :IDEP'
      'AND      PK.IDAK = :IDAK'
      'ORDER BY PK.DTCA DESC')
    Left = 1464
    Top = 576
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftUnknown
        Name = 'IDAK'
        ParamType = ptUnknown
      end>
    object RVID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST_REV"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVIDEP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO_EST_REV"."IDEP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkInternalCalc
      FieldName = 'DEEP'
      Origin = '"VW_CAD_PRO_EST_REV"."DEEP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 123
    end
    object RVIDPK: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'IDPK'
      Origin = '"VW_CAD_PRO_EST_REV"."IDPK"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDEPK: TIBStringField
      DisplayLabel = 'Romaneio'
      FieldKind = fkInternalCalc
      FieldName = 'DEPK'
      Origin = '"VW_CAD_PRO_EST_REV"."DEPK"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object RVIDCA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IDCA'
      Origin = '"VW_CAD_PRO_EST_REV"."IDCA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDECA: TIBStringField
      DisplayLabel = 'Revisor'
      FieldKind = fkInternalCalc
      FieldName = 'DECA'
      Origin = '"VW_CAD_PRO_EST_REV"."DECA"'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object RVDTCA: TDateTimeField
      DisplayLabel = 'Revisado'
      FieldKind = fkInternalCalc
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST_REV"."DTCA"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object RVCDET: TLargeintField
      DisplayLabel = 'Etiqueta'
      FieldKind = fkInternalCalc
      FieldName = 'CDET'
      Origin = '"VW_CAD_PRO_EST_REV"."CDET"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldKind = fkInternalCalc
      FieldName = 'CTNR'
      Origin = '"VW_CAD_PRO_EST_REV"."CTNR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object RVLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldKind = fkInternalCalc
      FieldName = 'LOTE'
      Origin = '"VW_CAD_PRO_EST_REV"."LOTE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object RVIDCP: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IDCP'
      Origin = '"VW_CAD_PRO_EST_REV"."IDCP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"VW_CAD_PRO_EST_REV"."ARTIGO"'
    end
    object RVSKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SKU'
      Origin = '"VW_CAD_PRO_EST_REV"."SKU"'
    end
    object RVDECP: TIBStringField
      FieldName = 'DECP'
      Origin = '"VW_CAD_PRO_EST_REV"."DECP"'
      Size = 120
    end
    object RVDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST_REV"."DGCP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 93
    end
    object RVUCOM: TIBStringField
      FieldName = 'UCOM'
      Origin = '"VW_CAD_PRO_EST_REV"."UCOM"'
      Size = 10
    end
    object RVUCON: TIBStringField
      FieldName = 'UCON'
      Origin = '"VW_CAD_PRO_EST_REV"."UCON"'
      Size = 40
    end
    object RVQTDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST_REV"."QTDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 9
      Size = 2
    end
    object RVQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldKind = fkInternalCalc
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST_REV"."QTRL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0'
    end
    object RVROLO: TIBStringField
      DisplayLabel = 'Quantidade'
      FieldKind = fkInternalCalc
      FieldName = 'ROLO'
      Origin = '"VW_CAD_PRO_EST_REV"."ROLO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 23
    end
    object RVCDOP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'CDOP'
      Origin = '"VW_CAD_PRO_EST_REV"."CDOP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDEOP: TIBStringField
      FieldName = 'DEOP'
      Origin = '"VW_CAD_PRO_EST_REV"."DEOP"'
      Size = 60
    end
    object RVCDTP: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'CDTP'
      Origin = '"VW_CAD_PRO_EST_REV"."CDTP"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDETP: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'DETP'
      Origin = '"VW_CAD_PRO_EST_REV"."DETP"'
      Size = 60
    end
    object RVCDDF: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'CDDF'
      Origin = '"VW_CAD_PRO_EST_REV"."CDDF"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDEDF: TIBStringField
      DisplayLabel = 'Defeito'
      FieldKind = fkInternalCalc
      FieldName = 'DEDF'
      Origin = '"VW_CAD_PRO_EST_REV"."DEDF"'
      ProviderFlags = []
      ReadOnly = True
      Size = 151
    end
    object RVINFADETQ: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADETQ'
      Origin = '"VW_CAD_PRO_EST_REV"."INFADETQ"'
      ProviderFlags = []
      ReadOnly = True
      Size = 812
    end
    object RVCDPD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CDPD'
      Origin = '"VW_CAD_PRO_EST_REV"."CDPD"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVIDDV: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'IDDV'
      Origin = '"VW_CAD_PRO_EST_REV"."IDDV"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVCDDV: TLargeintField
      DisplayLabel = 'Pedido'
      FieldKind = fkInternalCalc
      FieldName = 'CDDV'
      Origin = '"VW_CAD_PRO_EST_REV"."CDDV"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDTDV: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTDV'
      Origin = '"VW_CAD_PRO_EST_REV"."DTDV"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVPK_CDET: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'PK_CDET'
      Origin = '"VW_CAD_PRO_EST_REV"."PK_CDET"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVPK_DTCA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'PK_DTCA'
      Origin = '"VW_CAD_PRO_EST_REV"."PK_DTCA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object RVDEPV: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPV'
      Origin = '"PED_VEN_CAB"."ROM_DERO"'
      Size = 30
    end
    object RVDTPV: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTPV'
      Origin = '"PED_VEN_CAB"."ROM_DROM"'
    end
    object RVDECL: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECL'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object RVDECV: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'DECV'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object RVDECR: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'DECR'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
  end
  object DTSRV: TDataSource
    DataSet = RV
    OnDataChange = DTSRVDataChange
    Left = 1496
    Top = 576
  end
  object LE: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AfterOpen = LEAfterOpen
    BufferChunks = 4500
    DataSource = DTSArtigos
    SQL.Strings = (
      'SELECT    PK.ID   ,PK.LGCA,PK.DTCA,PK.IDEP,'
      
        '         PK.CDRO ,PK.DTRO,PK.DECE,PK.DEPD,PK.DTPD,PK.CDNF,PK.DTN' +
        'F,'
      '         PK.CDET ,PK.CTNR,PK.LOTE,PK.CDI ,'
      
        '         PK.DEOP ,IIF(PK.CDTP <>  EP_EST.IDTIPO,PK.DETP,NULL) AS' +
        ' DETP,'
      '         PK.IDPK ,PK.DTPK,PK.DEPK,'
      '         PK.D_SKU,PK.DGCP,PK.QTDE,PK.QTRL,'
      '         PK.DEDF ,PK.INFADCAD'
      'FROM     VW_CAD_PRO_EST      AS PK'
      
        'JOIN     TAB_PAR_SIS_EST_EMP AS EP_EST_EMP ON (EP_EST_EMP.ID  = ' +
        ':IDEP AND EP_EST_EMP.IDEP_LOG = PK.IDEP)'
      
        'JOIN     TAB_PAR_SIS_EST     AS EP_EST     ON (EP_EST.ID      = ' +
        ':IDEP)'
      'JOIN     SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS FK ON (1 = 1)'
      'WHERE    PK.IDAK = :IDAK'
      'AND      PK.REOP = '#39'E'#39
      'ORDER BY PK.CDET DESC')
    Left = 1464
    Top = 352
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'IDEP'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'IDAK'
        ParamType = ptUnknown
        Size = 8
      end>
    object LEID: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_CAD_PRO_EST"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object LELGCA: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'LGCA'
      Origin = '"VW_CAD_PRO_EST"."LGCA"'
      Size = 30
    end
    object LEDTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTCA'
      Origin = '"VW_CAD_PRO_EST"."DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object LEIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_CAD_PRO_EST"."IDEP"'
    end
    object LECDRO: TLargeintField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkInternalCalc
      FieldName = 'CDRO'
      Origin = '"VW_CAD_PRO_EST"."CDRO"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0'
    end
    object LEDTRO: TDateField
      DefaultExpression = 'dd/mm/yy'
      FieldKind = fkInternalCalc
      FieldName = 'DTRO'
      Origin = '"VW_CAD_PRO_EST"."DTRO"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'Emiss'#227'o'
    end
    object LEDECE: TIBStringField
      DisplayLabel = 'Emissor'
      FieldKind = fkInternalCalc
      FieldName = 'DECE'
      Origin = '"VW_CAD_PRO_EST"."DECE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object LEDEPD: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPD'
      Origin = '"VW_CAD_PRO_EST"."DEPD"'
      Size = 30
    end
    object LEDTPD: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTPD'
      Origin = '"VW_CAD_PRO_EST"."DTPD"'
      DisplayFormat = 'dd/mm/yy'
    end
    object LECDNF: TLargeintField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'CDNF'
      Origin = '"VW_CAD_PRO_EST"."CDNF"'
      DisplayFormat = '0'
    end
    object LEDTNF: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTNF'
      Origin = '"VW_CAD_PRO_EST"."DTNF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object LECDET: TLargeintField
      DisplayLabel = 'Etiqueta'
      FieldName = 'CDET'
      Origin = '"VW_CAD_PRO_EST"."CDET"'
      DisplayFormat = '0'
    end
    object LECTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"VW_CAD_PRO_EST"."CTNR"'
      Size = 30
    end
    object LELOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"VW_CAD_PRO_EST"."LOTE"'
      Size = 30
    end
    object LECDI: TSmallintField
      FieldName = 'CDI'
      Origin = '"VW_CAD_PRO_EST"."CDI"'
    end
    object LEDEOP: TIBStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'DEOP'
      Origin = '"VW_CAD_PRO_EST"."DEOP"'
      Size = 60
    end
    object LEDETP: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DETP'
      Origin = '"VW_CAD_PRO_EST"."DETP"'
      Size = 60
    end
    object LEIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_CAD_PRO_EST"."IDPK"'
    end
    object LEDTPK: TDateTimeField
      FieldName = 'DTPK'
      Origin = '"VW_CAD_PRO_EST"."DTPK"'
    end
    object LEDEPK: TIBStringField
      FieldName = 'DEPK'
      Origin = '"VW_CAD_PRO_EST"."DEPK"'
      Size = 30
    end
    object LED_SKU: TIBStringField
      DisplayLabel = 'Produto'
      FieldKind = fkInternalCalc
      FieldName = 'D_SKU'
      Origin = '"VW_CAD_PRO_EST"."D_SKU"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object LEDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"VW_CAD_PRO_EST"."DGCP"'
      Size = 60
    end
    object LEQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      Origin = '"VW_CAD_PRO_EST"."QTDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object LEQTRL: TIntegerField
      DisplayLabel = 'Rolos'
      FieldName = 'QTRL'
      Origin = '"VW_CAD_PRO_EST"."QTRL"'
      DisplayFormat = '0'
    end
    object LEDEDF: TIBStringField
      DisplayLabel = 'Defeitos'
      FieldName = 'DEDF'
      Origin = '"VW_CAD_PRO_EST"."DEDF"'
      Size = 120
    end
    object LEINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_CAD_PRO_EST"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1064
    end
  end
  object DTSLE: TDataSource
    DataSet = LE
    OnDataChange = DTSLEDataChange
    Left = 1496
    Top = 352
  end
  object CAD_PRO_IMG: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    BufferChunks = 2500
    DataSource = DTSProdutos
    SQL.Strings = (
      'SELECT CDN.IMG_ID  ,CDN.IMG_NO  ,CDN.IMG_PAD   ,CDN.PDF_NO,'
      
        '       CDN.ILA_BMP1,CDN.ILA_INS1,CDN.D_ILA_INS1,CDN.ILA_BMP2,CDN' +
        '.ILA_INS2,CDN.D_ILA_INS2,CDN.ILA_BMP3,CDN.ILA_INS3,CDN.D_ILA_INS' +
        '3,'
      
        '       CDN.ILA_BMP4,CDN.ILA_INS4,CDN.D_ILA_INS4,CDN.ILA_BMP5,CDN' +
        '.ILA_INS5,CDN.D_ILA_INS5,CDN.ILA_BMP6,CDN.ILA_INS6,CDN.D_ILA_INS' +
        '6,'
      
        '       CDN.ILA_BMP7,CDN.ILA_INS7,CDN.D_ILA_INS7,CDN.ILA_BMP8,CDN' +
        '.ILA_INS8,CDN.D_ILA_INS8'
      'FROM   VW_CAD_PRO_IMG_CDN AS CDN'
      'WHERE  CDN.IDCP = :IDCP')
    Left = 1464
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
    object CAD_PRO_IMGPDF_NO: TIBStringField
      FieldName = 'PDF_NO'
      Origin = '"VW_CAD_PRO_IMG_CDN"."PDF_NO"'
      Size = 30
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
    Left = 1496
    Top = 288
  end
end
