inherited FrmCAD_PRO_PSQ: TFrmCAD_PRO_PSQ
  Left = 409
  Top = 139
  Caption = 'FrmCAD_PRO_PSQ'
  ClientHeight = 769
  ClientWidth = 1154
  FormStyle = fsStayOnTop
  Position = poDesigned
  Visible = False
  PixelsPerInch = 96
  TextHeight = 15
  inherited DSPrincipal: TdxDockSite
    Width = 1130
    Height = 691
    DockType = 0
    OriginalWidth = 1130
    OriginalHeight = 691
    inherited LDSSubMenu5: TdxLayoutDockSite
      Width = 1130
      Height = 691
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited LDSSubMenu4: TdxLayoutDockSite
        Width = 1130
        Height = 691
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
        inherited LDSSubMenu3: TdxLayoutDockSite
          Width = 1130
          Height = 691
          DockType = 1
          OriginalWidth = 300
          OriginalHeight = 200
          inherited LDSSubMenu2: TdxLayoutDockSite
            Width = 1130
            Height = 691
            DockType = 1
            OriginalWidth = 300
            OriginalHeight = 200
            inherited LDSSubMenu1: TdxLayoutDockSite
              Width = 1130
              Height = 691
              DockType = 1
              OriginalWidth = 300
              OriginalHeight = 200
              inherited LDSMenu: TdxLayoutDockSite
                Width = 1130
                Height = 691
                DockType = 1
                OriginalWidth = 300
                OriginalHeight = 200
                inherited LDSPrincipal1: TdxLayoutDockSite
                  Width = 1130
                  Height = 691
                  DockType = 1
                  OriginalWidth = 300
                  OriginalHeight = 200
                end
                inherited TCDSPrincipal: TdxTabContainerDockSite
                  Width = 1130
                  Height = 691
                  DockType = 1
                  OriginalWidth = 185
                  OriginalHeight = 140
                  inherited DPPrincipal1: TdxDockPanel
                    Width = 1130
                    Height = 691
                    DockType = 1
                    OriginalWidth = 185
                    OriginalHeight = 140
                    inherited PNLPrincipal1: TPanel
                      Width = 1126
                      Height = 687
                      inherited DSPrincipal1: TdxDockSite
                        Width = 1126
                        Height = 687
                        DockType = 0
                        OriginalWidth = 1126
                        OriginalHeight = 687
                        inherited LDSPrincipal1Titulo: TdxLayoutDockSite
                          Width = 1126
                          Height = 687
                          DockType = 1
                          OriginalWidth = 300
                          OriginalHeight = 200
                          inherited LDSPrincipal1INFADCPL: TdxLayoutDockSite
                            Width = 1126
                            Height = 687
                            DockType = 1
                            OriginalWidth = 300
                            OriginalHeight = 200
                            inherited LDSPrincipal1LD: TdxLayoutDockSite
                              Width = 1126
                              Height = 687
                              DockType = 1
                              OriginalWidth = 300
                              OriginalHeight = 200
                              inherited LDSPrincipal1LE: TdxLayoutDockSite
                                Width = 1126
                                Height = 687
                                DockType = 1
                                OriginalWidth = 300
                                OriginalHeight = 200
                                inherited LDSPrincipal1ConsultaINFADCAD: TdxLayoutDockSite
                                  Tag = 394
                                  Top = 280
                                  Width = 1126
                                  Height = 407
                                  DockType = 1
                                  OriginalWidth = 300
                                  OriginalHeight = 200
                                  inherited LDSPrincipal1INFADCAD: TdxLayoutDockSite
                                    Width = 1126
                                    Height = 377
                                    DockType = 1
                                    OriginalWidth = 300
                                    OriginalHeight = 200
                                    inherited LDSPrincipal1Rodape1: TdxLayoutDockSite
                                      Tag = 1
                                      Left = 400
                                      Width = 726
                                      Height = 377
                                      DockType = 1
                                      OriginalWidth = 300
                                      OriginalHeight = 200
                                      inherited LDSPrincipal1RodapeTitulo: TdxLayoutDockSite
                                        Tag = 1
                                        Width = 726
                                        Height = 377
                                        DockType = 1
                                        OriginalWidth = 300
                                        OriginalHeight = 200
                                        inherited LDSPrincipal1RodapeLE: TdxLayoutDockSite
                                          Tag = 1
                                          Width = 726
                                          Height = 287
                                          DockType = 1
                                          OriginalWidth = 300
                                          OriginalHeight = 200
                                          inherited LDSPrincipal1Rodape2: TdxLayoutDockSite
                                            Width = 726
                                            Height = 287
                                            DockType = 1
                                            OriginalWidth = 300
                                            OriginalHeight = 200
                                          end
                                          inherited TCDSPrincipal1Rodape: TdxTabContainerDockSite
                                            Tag = 1
                                            Width = 726
                                            Height = 287
                                            ActiveChildIndex = 0
                                            DockType = 1
                                            OriginalWidth = 185
                                            OriginalHeight = 140
                                            inherited DPPrincipal1Rodape1: TdxDockPanel
                                              Tag = 1
                                              Width = 726
                                              Height = 287
                                              Caption = 'Ficha T'#233'cnica'
                                              DockType = 1
                                              OriginalWidth = 185
                                              OriginalHeight = 140
                                              object PNLDBGCAD_PRO_FIC: TPanel
                                                Left = 0
                                                Top = 0
                                                Width = 722
                                                Height = 258
                                                Align = alClient
                                                BevelOuter = bvNone
                                                BorderWidth = 10
                                                TabOrder = 0
                                                object DBGCAD_PRO_FIC: TdxDBGrid
                                                  Left = 10
                                                  Top = 10
                                                  Width = 702
                                                  Height = 238
                                                  Cursor = crHandPoint
                                                  Hint = 'Ficha t'#233'cnica de produtos'
                                                  Bands = <
                                                    item
                                                      Alignment = taLeftJustify
                                                      Caption = 'Dimens'#245'es'
                                                      Width = 95
                                                    end
                                                    item
                                                      Caption = 'Peso Unit'#225'rio'
                                                    end
                                                    item
                                                      Caption = 'Largura'
                                                      Width = 50
                                                    end
                                                    item
                                                      Caption = 'Encolhimento'
                                                    end
                                                    item
                                                      Caption = 'Elasticidade'
                                                    end
                                                    item
                                                      Alignment = taLeftJustify
                                                      Caption = 'Comercial'
                                                    end>
                                                  DefaultLayout = False
                                                  HeaderPanelRowCount = 2
                                                  KeyField = 'CP_ID'
                                                  SummaryGroups = <>
                                                  SummarySeparator = ', '
                                                  Align = alClient
                                                  BorderStyle = bsNone
                                                  Color = clHighlightText
                                                  Ctl3D = True
                                                  Font.Charset = ANSI_CHARSET
                                                  Font.Color = clGrayText
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
                                                  DataSource = DTSCAD_PRO_FIC
                                                  Filter.Criteria = {00000000}
                                                  GridLineColor = clSilver
                                                  HeaderFont.Charset = ANSI_CHARSET
                                                  HeaderFont.Color = clWindowText
                                                  HeaderFont.Height = -12
                                                  HeaderFont.Name = 'Segoe UI Symbol'
                                                  HeaderFont.Style = []
                                                  HideFocusRect = True
                                                  IndentDesc = 0
                                                  LookAndFeel = lfUltraFlat
                                                  OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                                                  OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
                                                  OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                                                  OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
                                                  PreviewFieldName = 'INFADCPL'
                                                  PreviewFont.Charset = ANSI_CHARSET
                                                  PreviewFont.Color = 8487297
                                                  PreviewFont.Height = -13
                                                  PreviewFont.Name = 'Calibri'
                                                  PreviewFont.Style = []
                                                  PreviewLines = 10
                                                  ScrollBars = ssVertical
                                                  ShowBands = True
                                                  ShowGrid = False
                                                  ShowPreviewGrid = False
                                                  object DBGCAD_PRO_FICMMETRO: TdxDBGridMaskColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clWindowText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = [fsBold]
                                                    HeaderAlignment = taRightJustify
                                                    Width = 65
                                                    BandIndex = 0
                                                    RowIndex = 0
                                                    FieldName = 'MMETRO'
                                                  end
                                                  object DBGCAD_PRO_FICMGRAMA: TdxDBGridMaskColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 80
                                                    BandIndex = 0
                                                    RowIndex = 0
                                                    FieldName = 'MGRAMA'
                                                  end
                                                  object DBGCAD_PRO_FICMREND: TdxDBGridMaskColumn
                                                    Alignment = taCenter
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clWindowText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = [fsBold]
                                                    HeaderAlignment = taCenter
                                                    Width = 80
                                                    BandIndex = 0
                                                    RowIndex = 1
                                                    FieldName = 'MREND'
                                                    StoredRowIndex = 1
                                                  end
                                                  object DBGCAD_PRO_FICMPESO: TdxDBGridMaskColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clWindowText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 60
                                                    BandIndex = 1
                                                    RowIndex = 0
                                                    FieldName = 'MPESO'
                                                  end
                                                  object DBGCAD_PRO_FICUPSCN: TdxDBGridMaskColumn
                                                    HeaderAlignment = taRightJustify
                                                    Width = 60
                                                    BandIndex = 1
                                                    RowIndex = 0
                                                    FieldName = 'UPSCN'
                                                  end
                                                  object DBGCAD_PRO_FICPPSBR: TdxDBGridMaskColumn
                                                    Alignment = taRightJustify
                                                    HeaderAlignment = taRightJustify
                                                    BandIndex = 1
                                                    RowIndex = 1
                                                    FieldName = 'PPSBR'
                                                    StoredRowIndex = 1
                                                  end
                                                  object DBGCAD_PRO_FICMLGRU: TdxDBGridMaskColumn
                                                    Caption = #218'til'
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 60
                                                    BandIndex = 2
                                                    RowIndex = 0
                                                    FieldName = 'MLGRU'
                                                  end
                                                  object DBGCAD_PRO_FICMLGRT: TdxDBGridMaskColumn
                                                    Caption = 'Total'
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 60
                                                    BandIndex = 2
                                                    RowIndex = 1
                                                    FieldName = 'MLGRT'
                                                    StoredRowIndex = 1
                                                  end
                                                  object DBGCAD_PRO_FICMENCC: TdxDBGridMaskColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 90
                                                    BandIndex = 3
                                                    RowIndex = 0
                                                    FieldName = 'MENCC'
                                                  end
                                                  object DBGCAD_PRO_FICMENCL: TdxDBGridMaskColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 90
                                                    BandIndex = 3
                                                    RowIndex = 1
                                                    FieldName = 'MENCL'
                                                    StoredRowIndex = 1
                                                  end
                                                  object DBGCAD_PRO_FICMELAC: TdxDBGridMaskColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 85
                                                    BandIndex = 4
                                                    RowIndex = 0
                                                    FieldName = 'MELAC'
                                                  end
                                                  object DBGCAD_PRO_FICMELAL: TdxDBGridMaskColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    HeaderAlignment = taRightJustify
                                                    Width = 85
                                                    BandIndex = 4
                                                    RowIndex = 1
                                                    FieldName = 'MELAL'
                                                    StoredRowIndex = 1
                                                  end
                                                  object DBGCAD_PRO_FICUCDBE_NO: TdxDBGridColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    Width = 110
                                                    BandIndex = 5
                                                    RowIndex = 0
                                                    FieldName = 'UCDBE_NO'
                                                  end
                                                  object DBGCAD_PRO_FICC_UQTDE: TdxDBGridColumn
                                                    Font.Charset = ANSI_CHARSET
                                                    Font.Color = clGrayText
                                                    Font.Height = -12
                                                    Font.Name = 'Tahoma'
                                                    Font.Style = []
                                                    Width = 110
                                                    BandIndex = 5
                                                    RowIndex = 1
                                                    FieldName = 'C_UQTDE'
                                                    StoredRowIndex = 1
                                                  end
                                                end
                                              end
                                            end
                                            inherited DPPrincipal1Rodape2: TdxDockPanel
                                              Width = 726
                                              Height = 287
                                              Visible = False
                                              DockType = 1
                                              OriginalWidth = 185
                                              OriginalHeight = 140
                                            end
                                            inherited DPPrincipal1Rodape3: TdxDockPanel
                                              Width = 726
                                              Height = 287
                                              Visible = False
                                              DockType = 1
                                              OriginalWidth = 185
                                              OriginalHeight = 140
                                            end
                                          end
                                        end
                                        inherited DPPrincipal1Rodape: TdxDockPanel
                                          Tag = 90
                                          Top = 287
                                          Width = 726
                                          Height = 90
                                          Caption = 'Informa'#231#245'es Adicionais'
                                          DockType = 5
                                          OriginalWidth = 185
                                          OriginalHeight = 90
                                          object DBCAD_PRO_INF: TdxDBMemo
                                            Tag = 90
                                            Left = 0
                                            Top = 0
                                            Width = 722
                                            Cursor = crHandPoint
                                            Hint = 'Previs'#245'es ...'
                                            Align = alClient
                                            Color = 16121855
                                            Font.Charset = ANSI_CHARSET
                                            Font.Color = clWindowText
                                            Font.Height = -12
                                            Font.Name = 'Segoe UI Semibold'
                                            Font.Style = [fsBold]
                                            ParentFont = False
                                            Style.BorderStyle = xbsNone
                                            Style.ButtonStyle = btsFlat
                                            Style.Edges = []
                                            Style.Shadow = False
                                            TabOrder = 0
                                            DataField = 'INFADCAD'
                                            DataSource = DTSCAD_PRO_FIC
                                            ReadOnly = True
                                            ScrollBars = ssBoth
                                            Height = 61
                                            StoredValues = 64
                                          end
                                        end
                                      end
                                      inherited DPPrincipal1RodapeTitulo: TdxDockPanel
                                        Width = 726
                                        DockType = 3
                                        OriginalWidth = 185
                                        OriginalHeight = 30
                                      end
                                    end
                                    inherited VCDSPrincipal1RodapeLE: TdxVertContainerDockSite
                                      Tag = 400
                                      Width = 400
                                      Height = 377
                                      DockType = 2
                                      OriginalWidth = 400
                                      OriginalHeight = 140
                                      inherited TCDSPrincipal1RodapeLE: TdxTabContainerDockSite
                                        Tag = 400
                                        Width = 400
                                        Height = 282
                                        ActiveChildIndex = 0
                                        DockType = 3
                                        OriginalWidth = 400
                                        OriginalHeight = 282
                                        inherited DPPrincipal1RodapeLE1: TdxDockPanel
                                          Tag = 400
                                          Width = 400
                                          Height = 282
                                          Caption = 'Imagem do Produto'
                                          DockType = 1
                                          OriginalWidth = 400
                                          OriginalHeight = 282
                                          object IMG_PAD: TImage
                                            Left = 0
                                            Top = 0
                                            Width = 396
                                            Height = 253
                                            Cursor = crHandPoint
                                            Hint = 'Amostragem do Produto'#13#10'Click para visualizar tela inteira'
                                            Align = alClient
                                            ParentShowHint = False
                                            ShowHint = True
                                            Stretch = True
                                          end
                                        end
                                        inherited DPPrincipal1RodapeLE2: TdxDockPanel
                                          Width = 400
                                          Height = 282
                                          Visible = False
                                          DockType = 1
                                          OriginalWidth = 350
                                          OriginalHeight = 282
                                        end
                                      end
                                      inherited DPPrincipal1RodapeLEB: TdxDockPanel
                                        Tag = 90
                                        Top = 282
                                        Width = 400
                                        Height = 95
                                        Caption = 'Instru'#231#245'es de Lavagem'
                                        DockType = 3
                                        OriginalWidth = 400
                                        OriginalHeight = 95
                                        object BVILA_BMP1: TBevel
                                          Left = 5
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object BVILA_BMP2: TBevel
                                          Left = 53
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object BVILA_BMP3: TBevel
                                          Left = 101
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object BVILA_BMP4: TBevel
                                          Left = 149
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object BVILA_BMP5: TBevel
                                          Left = 197
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object BVILA_BMP6: TBevel
                                          Left = 245
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object BVILA_BMP7: TBevel
                                          Left = 293
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object BVILA_BMP8: TBevel
                                          Left = 341
                                          Top = 5
                                          Width = 46
                                          Height = 45
                                          Cursor = crHandPoint
                                          ParentShowHint = False
                                          ShowHint = True
                                          Style = bsRaised
                                        end
                                        object DBILA_BMP1: TDBImage
                                          Left = 8
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                          Left = 56
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                          Left = 104
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                          Left = 152
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                          Left = 200
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                          Left = 248
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                          Left = 296
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                          Left = 344
                                          Top = 8
                                          Width = 40
                                          Height = 39
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
                                  inherited DPPrincipal1INFADCAD: TdxDockPanel
                                    Width = 1126
                                    DockType = 3
                                    OriginalWidth = 185
                                    OriginalHeight = 30
                                  end
                                end
                                inherited HCDSPrincipal1Consulta: TdxHorizContainerDockSite
                                  Tag = 280
                                  Width = 1126
                                  Height = 280
                                  DockType = 3
                                  OriginalWidth = 185
                                  OriginalHeight = 280
                                  inherited TCDSPrincipal1Consulta: TdxTabContainerDockSite
                                    Width = 1023
                                    Height = 280
                                    DockType = 2
                                    OriginalWidth = 1023
                                    OriginalHeight = 280
                                    inherited DPPrincipal1Consulta1: TdxDockPanel
                                      Width = 1023
                                      Height = 280
                                      DockType = 1
                                      OriginalWidth = 1023
                                      OriginalHeight = 280
                                      inherited PNLDBGConsulta: TPanel
                                        Width = 1019
                                        Height = 251
                                        inherited DBGConsulta: TdxDBGrid
                                          Width = 999
                                          Height = 231
                                          Bands = <
                                            item
                                              Alignment = taLeftJustify
                                              Caption = 'Produtos'
                                            end
                                            item
                                              Caption = 'Estoque'
                                            end>
                                          KeyField = 'ID'
                                          ShowSummaryFooter = True
                                          Filter.Criteria = {00000000}
                                          inherited DBGConsultaC_ID: TdxDBGridColumn
                                            DisableEditor = True
                                          end
                                          object DBGConsultaSKU: TdxDBGridMaskColumn
                                            DisableEditor = True
                                            Width = 72
                                            BandIndex = 0
                                            RowIndex = 0
                                            FieldName = 'SKU'
                                            SummaryFooterType = cstCount
                                            SummaryFooterField = 'ID'
                                            SummaryFooterFormat = ',##,0'
                                          end
                                          object DBGConsultaGRD_NO: TdxDBGridMaskColumn
                                            DisableEditor = True
                                            Width = 150
                                            BandIndex = 0
                                            RowIndex = 0
                                            FieldName = 'GRD_NO'
                                          end
                                          object DBGConsultaCP_NO: TdxDBGridMaskColumn
                                            DisableEditor = True
                                            Width = 250
                                            BandIndex = 0
                                            RowIndex = 0
                                            FieldName = 'CP_NO'
                                          end
                                          object DBGConsultaST_NO_ABREV: TdxDBGridMaskColumn
                                            DisableEditor = True
                                            Width = 100
                                            BandIndex = 0
                                            RowIndex = 0
                                            FieldName = 'ST_NO_ABREV'
                                          end
                                          object DBGConsultaUCOM: TdxDBGridMaskColumn
                                            DisableEditor = True
                                            Width = 67
                                            BandIndex = 1
                                            RowIndex = 0
                                            FieldName = 'UCOM'
                                          end
                                          object DBGConsultaC_EST_QTDE: TdxDBGridMaskColumn
                                            DisableEditor = True
                                            HeaderAlignment = taRightJustify
                                            Width = 90
                                            BandIndex = 1
                                            RowIndex = 0
                                            FieldName = 'C_EST_QTDE'
                                            SummaryFooterType = cstSum
                                            SummaryFooterField = 'C_EST_QTDE'
                                            SummaryFooterFormat = ',##,0.00'
                                            DisableFilter = True
                                          end
                                          object DBGConsultaC_EST_QTRL: TdxDBGridMaskColumn
                                            DisableEditor = True
                                            HeaderAlignment = taRightJustify
                                            Width = 50
                                            BandIndex = 1
                                            RowIndex = 0
                                            FieldName = 'C_EST_QTRL'
                                            SummaryFooterType = cstSum
                                            SummaryFooterField = 'C_EST_QTRL'
                                            SummaryFooterFormat = ',##,0'
                                            DisableFilter = True
                                          end
                                          object DBGConsultaEPE_QTDE: TdxDBGridCurrencyColumn
                                            BandIndex = 1
                                            RowIndex = 0
                                            FieldName = 'EPE_QTDE'
                                            Nullable = False
                                          end
                                          object DBGConsultaEPE_QTRL: TdxDBGridMaskColumn
                                            BandIndex = 1
                                            RowIndex = 0
                                            FieldName = 'EPE_QTRL'
                                          end
                                        end
                                      end
                                    end
                                    inherited DPPrincipal1Consulta2: TdxDockPanel
                                      Width = 1023
                                      Height = 280
                                      DockType = 1
                                      OriginalWidth = 1023
                                      OriginalHeight = 329
                                    end
                                  end
                                  inherited TCDSPrincipal1ConsultaLD: TdxTabContainerDockSite
                                    Left = 1023
                                    Width = 103
                                    Height = 280
                                    DockType = 2
                                    OriginalWidth = 103
                                    OriginalHeight = 280
                                    inherited DPPrincipal1ConsultaLD1: TdxDockPanel
                                      Width = 99
                                      Height = 220
                                      DockType = 1
                                      OriginalWidth = 103
                                      OriginalHeight = 280
                                    end
                                    inherited DPPrincipal1ConsultaLD2: TdxDockPanel
                                      Width = 99
                                      Height = 220
                                      DockType = 1
                                      OriginalWidth = 103
                                      OriginalHeight = 280
                                    end
                                  end
                                end
                              end
                              inherited DPPrincipal1LE: TdxDockPanel
                                Height = 687
                                DockType = 2
                                OriginalWidth = 60
                                OriginalHeight = 140
                              end
                            end
                            inherited DPPrincipal1LD: TdxDockPanel
                              Left = 1126
                              Height = 687
                              DockType = 4
                              OriginalWidth = 60
                              OriginalHeight = 140
                            end
                          end
                          inherited DPPrincipal1INFADCPL: TdxDockPanel
                            Top = 687
                            Width = 1126
                            DockType = 5
                            OriginalWidth = 185
                            OriginalHeight = 0
                          end
                        end
                        inherited DPPrincipal1Titulo: TdxDockPanel
                          Width = 1126
                          DockType = 3
                          OriginalWidth = 185
                          OriginalHeight = 30
                        end
                      end
                    end
                  end
                  inherited DPPrincipal2: TdxDockPanel
                    Width = 1130
                    Height = 691
                    DockType = 1
                    OriginalWidth = 185
                    OriginalHeight = 140
                  end
                end
              end
              inherited DPMenu: TdxDockPanel
                Height = 691
                DockType = 2
                OriginalWidth = 100
                OriginalHeight = 140
                inherited SBPrincipal: TdxSideBar
                  Height = 662
                  Groups = <
                    item
                      Caption = 'Edi'#231#227'o'
                      Index = 0
                      Items = <
                        item
                          Caption = 'Incluir'
                          Hint = '[ins] - Inclus'#227'o de Registros'
                          Index = 0
                          LargeImage = 0
                          SmallImage = 0
                          StoredItem = FrmSHE_DEF_PSQ.SSIEAppend
                        end
                        item
                          Caption = 'Alterar'
                          Hint = '[Enter] - Edi'#231#227'o de Registros'
                          Index = 1
                          LargeImage = 1
                          SmallImage = 1
                          StoredItem = FrmSHE_DEF_PSQ.SSIEEdit
                        end
                        item
                          Caption = 'Excluir'
                          Hint = '[Del] - Exclus'#227'o de Registros'
                          Index = 2
                          LargeImage = 2
                          SmallImage = 2
                          StoredItem = FrmSHE_DEF_PSQ.SSIEDelete
                        end
                        item
                          Caption = 'Salvar'
                          Hint = 'Salva Edi'#231#227'o'
                          Index = 3
                          LargeImage = 3
                          SmallImage = 3
                          StoredItem = FrmSHE_DEF_PSQ.SSIEPost
                        end
                        item
                          Caption = 'Cancelar'
                          Hint = 'Cancela Edi'#231#227'o'
                          Index = 4
                          LargeImage = 4
                          SmallImage = 4
                          StoredItem = FrmSHE_DEF_PSQ.SSIECancel
                        end>
                    end
                    item
                      Caption = 'Menu'
                      Index = 1
                      Items = <
                        item
                          Caption = 'Incluir'
                          Hint = '[ins] - Inclus'#227'o de Registros'
                          Index = 0
                          LargeImage = 0
                          SmallImage = 0
                          StoredItem = FrmSHE_DEF_PSQ.SSIMAppend
                        end
                        item
                          Caption = 'Alterar'
                          Hint = '[Enter] - Edi'#231#227'o de Registros'
                          Index = 1
                          LargeImage = 1
                          SmallImage = 1
                          StoredItem = FrmSHE_DEF_PSQ.SSIMEdit
                        end
                        item
                          Caption = 'Excluir'
                          Hint = '[Del] - Exclus'#227'o de Registros'
                          Index = 2
                          LargeImage = 2
                          SmallImage = 2
                          StoredItem = FrmSHE_DEF_PSQ.SSIMDelete
                        end>
                    end>
                end
              end
            end
            inherited DPSubMenu1: TdxDockPanel
              Left = 1130
              Height = 691
              DockType = 4
              OriginalWidth = 120
              OriginalHeight = 140
            end
          end
          inherited DPSubMenu2: TdxDockPanel
            Left = 1130
            Height = 691
            DockType = 4
            OriginalWidth = 120
            OriginalHeight = 140
          end
        end
        inherited DPSubMenu3: TdxDockPanel
          Left = 1130
          Height = 691
          DockType = 4
          OriginalWidth = 120
          OriginalHeight = 140
        end
      end
      inherited DPSubMenu4: TdxDockPanel
        Left = 1130
        Height = 691
        DockType = 4
        OriginalWidth = 120
        OriginalHeight = 140
      end
    end
    inherited DPSubMenu5: TdxDockPanel
      Left = 1130
      Height = 691
      DockType = 4
      OriginalWidth = 120
      OriginalHeight = 140
    end
  end
  inherited BMPrincipal: TdxBarManager
    Bars = <
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Menu Principal'
        Color = clHighlightText
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 0
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        IsMainMenu = True
        ItemLinks = <>
        MultiLine = True
        Name = 'Menu Principal'
        OneOnRow = True
        Row = 0
        UseOwnFont = True
        UseRestSpace = True
        Visible = False
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Menu Sistema'
        Color = clHighlightText
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        ItemLinks = <
          item
            Item = BLBRefresh
            Visible = True
          end
          item
            Item = BLBSaida
            Visible = True
          end>
        Name = 'Menu Sistema'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Sub Menu'
        DockedDockingStyle = dsLeft
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsLeft
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        ItemLinks = <>
        Name = 'Sub Menu'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = True
      end
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Pesquisa Cadastro'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 34
        DockingStyle = dsTop
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Symbol'
        Font.Style = []
        ItemLinks = <
          item
            Item = BLBPSQ_CAD_MENU
            Visible = True
          end
          item
            Item = BEPSQ_CAD
            UserDefine = [udWidth]
            UserWidth = 701
            Visible = True
          end>
        Name = 'Pesquisa Cadastro'
        OneOnRow = False
        Row = 1
        UseOwnFont = True
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Pesquisa Per'#237'odo'
        DockedDockingStyle = dsTop
        DockedLeft = 855
        DockedTop = 34
        DockingStyle = dsTop
        FloatLeft = 532
        FloatTop = 262
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Symbol'
        Font.Style = []
        ItemLinks = <
          item
            Item = BBPSQ_PER_MENU
            Visible = True
          end
          item
            Item = BDPSQ_PER_INI
            Visible = True
          end
          item
            Item = BDPSQ_PER_FIM
            Visible = True
          end>
        Name = 'Pesquisa Per'#237'odo'
        OneOnRow = False
        Row = 1
        UseOwnFont = True
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'ProgressBar'
        DockedDockingStyle = dsBottom
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsBottom
        FloatLeft = 724
        FloatTop = 370
        FloatClientWidth = 24
        FloatClientHeight = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemLinks = <
          item
            Item = BSProgresso
            Visible = True
          end
          item
            Item = BPProcesso
            Visible = True
          end>
        Name = 'ProgressBar'
        OneOnRow = True
        Row = 0
        UseOwnFont = True
        UseRestSpace = True
        Visible = True
        WholeRow = True
      end>
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    DockControlHeights = (
      24
      0
      58
      20)
    inherited BLBMAppend: TdxBarLargeButton
      ImageIndex = -1
    end
  end
  inherited Consulta: TIBQuery
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT PK.*'
      'FROM   VW_PSQ_CAD_PRO AS PK'
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      'WHERE PK.SKU LIKE '#39'ZN.03%'#39
      ')'
      'SELECT DISTINCT PK.*,'
      '       -- Estoque Pronta Entrega'
      
        '       COALESCE(CAST(SUM(TB_EST.EPE_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EPE_QTDE,COALESCE(CAST(SUM(TB_EST.' +
        'EPE_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPE_QTRL' +
        ','
      
        '       COALESCE(CAST(SUM(TB_EST.EST_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EST_QTDE,COALESCE(CAST(SUM(TB_EST.' +
        'EST_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EST_QTRL' +
        ','
      '       -- Estoque Antecipado'
      
        '       COALESCE(CAST(SUM(TB_EST.EAT_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EAT_QTDE,COALESCE(CAST(SUM(TB_EST.' +
        'EAT_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAT_QTRL' +
        ','
      '       -- Estoque Revisado'
      
        '       COALESCE(CAST(SUM(TB_EST.ERV_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS ERV_QTDE,COALESCE(CAST(SUM(TB_EST.' +
        'ERV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ERV_QTRL' +
        ','
      
        '       COALESCE(CAST(SUM(TB_EST.EAA_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EAA_QTDE,COALESCE(CAST(SUM(TB_EST.' +
        'EAA_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAA_QTRL' +
        ','
      
        '       COALESCE(CAST(SUM(TB_EST.EA_QTDE ) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EA_QTDE ,COALESCE(CAST(SUM(TB_EST.' +
        'EA_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EA_QTRL ' +
        ','
      
        '       COALESCE(CAST(SUM(TB_EST.EB_QTDE ) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EB_QTDE ,COALESCE(CAST(SUM(TB_EST.' +
        'EB_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EB_QTRL ' +
        ','
      
        '       COALESCE(CAST(SUM(TB_EST.EC_QTDE ) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EC_QTDE ,COALESCE(CAST(SUM(TB_EST.' +
        'EC_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EC_QTRL ' +
        ','
      '       -- Pilotagem'
      
        '       COALESCE(CAST(SUM(TB_EST.EPI_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EPI_QTDE,COALESCE(CAST(SUM(TB_EST.' +
        'EPI_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPI_QTRL' +
        ','
      '       -- Estoque Substituto'
      
        '       COALESCE(CAST(SUM(TB_EST.ESU_QTDE_ENT) OVER(PARTITION BY ' +
        'PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_ENT,COALESCE(CAST(SUM' +
        '(TB_EST.ESU_QTRL_ENT) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0)' +
        ' AS ESU_QTRL_ENT,'
      
        '       COALESCE(CAST(SUM(TB_EST.ESU_QTDE_SAI) OVER(PARTITION BY ' +
        'PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_SAI,COALESCE(CAST(SUM' +
        '(TB_EST.ESU_QTRL_SAI) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0)' +
        ' AS ESU_QTRL_SAI,'
      '       -- Compras'
      
        '       COALESCE(CAST(SUM(TB_EST.EPC_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EPC_QTDE,COALESCE(CAST(SUM(TB_EST.' +
        'EPC_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPC_QTRL' +
        ','
      
        '       MAX(TB_EST.EPC_CTNR) OVER(PARTITION BY PK.CP_ID) AS EPC_C' +
        'TNR,'
      '       -- Vendas Programadas'
      
        '       COALESCE(CAST(SUM(TB_EST.EPP_QTDE     ) OVER(PARTITION BY' +
        ' PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE     ,COALESCE(CAST(S' +
        'UM(TB_EST.EPP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER)' +
        ',0) AS EPP_QTRL     ,'
      
        '       COALESCE(CAST(SUM(TB_EST.EPP_QTDE_CTNR) OVER(PARTITION BY' +
        ' PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE_CTNR,COALESCE(CAST(S' +
        'UM(TB_EST.EPP_QTRL_CTNR) OVER(PARTITION BY PK.CP_ID) AS INTEGER)' +
        ',0) AS EPP_QTRL_CTNR,'
      
        '       COALESCE(CAST(SUM(TB_EST.EEP_QTDE     ) OVER(PARTITION BY' +
        ' PK.CP_ID) AS NUMERIC(12,2)),0) AS EEP_QTDE     ,COALESCE(CAST(S' +
        'UM(TB_EST.EEP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER)' +
        ',0) AS EEP_QTRL     ,'
      '       -- Vendas Pronta Entrega'
      
        '       COALESCE(CAST(SUM(TB_EST.EPV_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS EPV_QTDE,'
      
        '       COALESCE(CAST(SUM(TB_EST.EPV_QTRL) OVER(PARTITION BY PK.C' +
        'P_ID) AS INTEGER      ),0) AS EPV_QTRL,'
      '       -- Vendas Separadas'
      
        '       COALESCE(CAST(SUM(TB_EST.ESP_QTDE) OVER(PARTITION BY PK.C' +
        'P_ID) AS NUMERIC(12,2)),0) AS ESP_QTDE,'
      
        '       COALESCE(CAST(SUM(TB_EST.EPV_QTRL) OVER(PARTITION BY PK.C' +
        'P_ID) AS INTEGER      ),0) AS ESP_QTRL '
      'FROM CTE_PSQ AS PK'
      
        'LEFT JOIN VW_PSQ_CAD_PRO_EST_SLD AS TB_EST ON (TB_EST.CP_ID = PK' +
        '.CP_ID AND TB_EST.EP_LG = :EP_LG)'
      'ORDER BY PK.EP_NO')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EP_LG'
        ParamType = ptUnknown
      end>
    object ConsultaID: TLargeintField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object ConsultaEP_ID: TSmallintField
      FieldName = 'EP_ID'
      ProviderFlags = []
    end
    object ConsultaEP_NO: TIBStringField
      FieldName = 'EP_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaEP_NO_ABREV: TIBStringField
      FieldName = 'EP_NO_ABREV'
      ProviderFlags = []
    end
    object ConsultaEP_NO_SIGLA: TIBStringField
      FieldName = 'EP_NO_SIGLA'
      ProviderFlags = []
      Size = 5
    end
    object ConsultaEP_GP_NO: TIBStringField
      FieldName = 'EP_GP_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaEP_GC: TSmallintField
      FieldName = 'EP_GC'
      ProviderFlags = []
    end
    object ConsultaEP_GV: TSmallintField
      FieldName = 'EP_GV'
      ProviderFlags = []
    end
    object ConsultaEP_GE: TSmallintField
      FieldName = 'EP_GE'
      ProviderFlags = []
    end
    object ConsultaEP_GR: TSmallintField
      FieldName = 'EP_GR'
      ProviderFlags = []
    end
    object ConsultaEP_GF: TSmallintField
      FieldName = 'EP_GF'
      ProviderFlags = []
    end
    object ConsultaCF_ID: TSmallintField
      FieldName = 'CF_ID'
      ProviderFlags = []
    end
    object ConsultaCF_NO: TIBStringField
      FieldName = 'CF_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaCF_NO_ABREV: TIBStringField
      FieldName = 'CF_NO_ABREV'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaCF_NO_SIGLA: TIBStringField
      FieldName = 'CF_NO_SIGLA'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaCF_RZ_NO: TIBStringField
      FieldName = 'CF_RZ_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaCF_GP_NO: TIBStringField
      FieldName = 'CF_GP_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaIDEV: TLargeintField
      FieldName = 'IDEV'
      ProviderFlags = []
    end
    object ConsultaCDEV: TSmallintField
      FieldName = 'CDEV'
      ProviderFlags = []
    end
    object ConsultaDTEV: TDateTimeField
      FieldName = 'DTEV'
      ProviderFlags = []
    end
    object ConsultaDEEV: TIBStringField
      FieldName = 'DEEV'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaIDCA: TSmallintField
      FieldName = 'IDCA'
      ProviderFlags = []
    end
    object ConsultaIDED: TSmallintField
      FieldName = 'IDED'
      ProviderFlags = []
    end
    object ConsultaIDST: TSmallintField
      FieldName = 'IDST'
      ProviderFlags = []
    end
    object ConsultaCDST: TSmallintField
      FieldName = 'CDST'
      ProviderFlags = []
    end
    object ConsultaREST: TIBStringField
      FieldName = 'REST'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaDEST: TIBStringField
      FieldName = 'DEST'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaST_NO_ABREV: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ST_NO_ABREV'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaAK_ID: TLargeintField
      FieldName = 'AK_ID'
      ProviderFlags = []
    end
    object ConsultaARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaCP_ID: TLargeintField
      FieldName = 'CP_ID'
      ProviderFlags = []
    end
    object ConsultaIMG_ID: TLargeintField
      FieldName = 'IMG_ID'
      ProviderFlags = []
    end
    object ConsultaEK_ID: TLargeintField
      FieldName = 'EK_ID'
      ProviderFlags = []
    end
    object ConsultaSKU: TIBStringField
      FieldName = 'SKU'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaCEAN: TIBStringField
      FieldName = 'CEAN'
      ProviderFlags = []
    end
    object ConsultaCF_SKU: TIBStringField
      FieldName = 'CF_SKU'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaCF_CEAN: TIBStringField
      FieldName = 'CF_CEAN'
      ProviderFlags = []
    end
    object ConsultaFIS_NCM: TIBStringField
      FieldName = 'FIS_NCM'
      ProviderFlags = []
      Size = 8
    end
    object ConsultaFIS_PIPI: TIBBCDField
      FieldName = 'FIS_PIPI'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaFIS_EXTIPI: TIBStringField
      FieldName = 'FIS_EXTIPI'
      ProviderFlags = []
      Size = 3
    end
    object ConsultaFIS_CEST: TIBStringField
      FieldName = 'FIS_CEST'
      ProviderFlags = []
      Size = 7
    end
    object ConsultaCP_NO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CP_NO'
      ProviderFlags = []
      Size = 120
    end
    object ConsultaCP_NO_TLO: TIBStringField
      FieldName = 'CP_NO_TLO'
      ProviderFlags = []
      Size = 120
    end
    object ConsultaCMP_NO: TIBStringField
      FieldName = 'CMP_NO'
      ProviderFlags = []
      Size = 120
    end
    object ConsultaGRD_ID: TLargeintField
      DisplayLabel = 'Grade'
      FieldName = 'GRD_ID'
      ProviderFlags = []
    end
    object ConsultaGRD_NO: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRD_NO'
      ProviderFlags = []
      Size = 120
    end
    object ConsultaGRD_NO_SIGLA: TIBStringField
      FieldName = 'GRD_NO_SIGLA'
      ProviderFlags = []
      Size = 40
    end
    object ConsultaCOR_ID: TSmallintField
      FieldName = 'COR_ID'
      ProviderFlags = []
    end
    object ConsultaCOR_CD: TIBStringField
      FieldName = 'COR_CD'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaCOR_RF: TIBStringField
      FieldName = 'COR_RF'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaCOR_NO: TIBStringField
      FieldName = 'COR_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaCOR_NO_SIGLA: TIBStringField
      FieldName = 'COR_NO_SIGLA'
      ProviderFlags = []
      Size = 40
    end
    object ConsultaCOR_SISTEMA: TIBStringField
      FieldName = 'COR_SISTEMA'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaCOR_ESCALA: TIBStringField
      FieldName = 'COR_ESCALA'
      ProviderFlags = []
      Size = 40
    end
    object ConsultaVAR_ID: TSmallintField
      FieldName = 'VAR_ID'
      ProviderFlags = []
    end
    object ConsultaVAR_CD: TIBStringField
      FieldName = 'VAR_CD'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaVAR_RF: TIBStringField
      FieldName = 'VAR_RF'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaVAR_NO: TIBStringField
      FieldName = 'VAR_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaVAR_NO_SIGLA: TIBStringField
      FieldName = 'VAR_NO_SIGLA'
      ProviderFlags = []
      Size = 40
    end
    object ConsultaUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaUTRIB: TIBStringField
      FieldName = 'UTRIB'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaUCON: TIBStringField
      FieldName = 'UCON'
      ProviderFlags = []
      Size = 45
    end
    object ConsultaUCDBE: TIBStringField
      FieldName = 'UCDBE'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object ConsultaUCDBE_NO: TIBStringField
      FieldName = 'UCDBE_NO'
      ProviderFlags = []
    end
    object ConsultaUQTDE: TIBBCDField
      FieldName = 'UQTDE'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaUQTDE_EST_MIN: TSmallintField
      FieldName = 'UQTDE_EST_MIN'
      ProviderFlags = []
    end
    object ConsultaUQTDE_VEN_MIN: TSmallintField
      FieldName = 'UQTDE_VEN_MIN'
      ProviderFlags = []
    end
    object ConsultaUQTDE_VEN_MUL: TSmallintField
      FieldName = 'UQTDE_VEN_MUL'
      ProviderFlags = []
    end
    object ConsultaUQVOL: TSmallintField
      FieldName = 'UQVOL'
      ProviderFlags = []
    end
    object ConsultaUESP: TIBStringField
      FieldName = 'UESP'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaUPSBR: TIBBCDField
      FieldName = 'UPSBR'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaUPSLQ: TIBBCDField
      FieldName = 'UPSLQ'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaUPSCN: TIBBCDField
      FieldName = 'UPSCN'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaPPSBR: TIBBCDField
      FieldName = 'PPSBR'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaMPESO: TIBBCDField
      FieldName = 'MPESO'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMMETRO: TIBBCDField
      FieldName = 'MMETRO'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMMETRO2: TIBBCDField
      FieldName = 'MMETRO2'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMMETRO3: TIBBCDField
      FieldName = 'MMETRO3'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMGRAMA: TIBBCDField
      FieldName = 'MGRAMA'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMGRAMA_NO: TIBStringField
      FieldName = 'MGRAMA_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaMREND: TIBBCDField
      FieldName = 'MREND'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMLGRU: TIBBCDField
      FieldName = 'MLGRU'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMLGRT: TIBBCDField
      FieldName = 'MLGRT'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMELAL: TIBBCDField
      FieldName = 'MELAL'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMELAC: TIBBCDField
      FieldName = 'MELAC'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMELA_NO: TIBStringField
      FieldName = 'MELA_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaMENCL: TIBBCDField
      FieldName = 'MENCL'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMENCC: TIBBCDField
      FieldName = 'MENCC'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMENC_NO: TIBStringField
      FieldName = 'MENC_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaMABNT_NO: TIBStringField
      FieldName = 'MABNT_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaMESP: TIBBCDField
      FieldName = 'MESP'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMESP_NO: TIBStringField
      FieldName = 'MESP_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaMCALT: TIBBCDField
      FieldName = 'MCALT'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMCLGR: TIBBCDField
      FieldName = 'MCLGR'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMCCTO: TIBBCDField
      FieldName = 'MCCTO'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaMCPVM: TIBBCDField
      FieldName = 'MCPVM'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_UCOM: TIBStringField
      FieldName = 'LJV_UCOM'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaLJV_UCON: TIBStringField
      FieldName = 'LJV_UCON'
      ProviderFlags = []
      Size = 45
    end
    object ConsultaLJV_UCDBE: TIBStringField
      FieldName = 'LJV_UCDBE'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object ConsultaLJV_UCDBE_NO: TIBStringField
      FieldName = 'LJV_UCDBE_NO'
      ProviderFlags = []
    end
    object ConsultaLJV_UQTDE: TIBBCDField
      FieldName = 'LJV_UQTDE'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaLJV_UQTDE_EST_MIN: TSmallintField
      FieldName = 'LJV_UQTDE_EST_MIN'
      ProviderFlags = []
    end
    object ConsultaLJV_UQTDE_VEN_MIN: TSmallintField
      FieldName = 'LJV_UQTDE_VEN_MIN'
      ProviderFlags = []
    end
    object ConsultaLJV_UQTDE_VEN_MUL: TSmallintField
      FieldName = 'LJV_UQTDE_VEN_MUL'
      ProviderFlags = []
    end
    object ConsultaLJV_UQVOL: TIBBCDField
      FieldName = 'LJV_UQVOL'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaLJV_UESP: TIBStringField
      FieldName = 'LJV_UESP'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaLJV_UPSBR: TIBBCDField
      FieldName = 'LJV_UPSBR'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_UPSLQ: TIBBCDField
      FieldName = 'LJV_UPSLQ'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_UPSCN: TIBBCDField
      FieldName = 'LJV_UPSCN'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MPESO: TIBBCDField
      FieldName = 'LJV_MPESO'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MMETRO: TIBBCDField
      FieldName = 'LJV_MMETRO'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MMETRO2: TIBBCDField
      FieldName = 'LJV_MMETRO2'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MMETRO3: TIBBCDField
      FieldName = 'LJV_MMETRO3'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MGRAMA: TIBBCDField
      FieldName = 'LJV_MGRAMA'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MGRAMA_NO: TIBStringField
      FieldName = 'LJV_MGRAMA_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaLJV_MREND: TIBBCDField
      FieldName = 'LJV_MREND'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MLGRU: TIBBCDField
      FieldName = 'LJV_MLGRU'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MLGRT: TIBBCDField
      FieldName = 'LJV_MLGRT'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MELAL: TIBBCDField
      FieldName = 'LJV_MELAL'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MELAC: TIBBCDField
      FieldName = 'LJV_MELAC'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MELA_NO: TIBStringField
      FieldName = 'LJV_MELA_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaLJV_MENCL: TIBBCDField
      FieldName = 'LJV_MENCL'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MENCC: TIBBCDField
      FieldName = 'LJV_MENCC'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MENC_NO: TIBStringField
      FieldName = 'LJV_MENC_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaLJV_MABNT_NO: TIBStringField
      FieldName = 'LJV_MABNT_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaLJV_MESP: TIBBCDField
      FieldName = 'LJV_MESP'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MESP_NO: TIBStringField
      FieldName = 'LJV_MESP_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaLJV_MCALT: TIBBCDField
      FieldName = 'LJV_MCALT'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MCLGR: TIBBCDField
      FieldName = 'LJV_MCLGR'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MCCTO: TIBBCDField
      FieldName = 'LJV_MCCTO'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaLJV_MCPVM: TIBBCDField
      FieldName = 'LJV_MCPVM'
      ProviderFlags = []
      Precision = 9
      Size = 3
    end
    object ConsultaVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      ProviderFlags = []
    end
    object ConsultaVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      ProviderFlags = []
    end
    object ConsultaVPRC_ORIG: TIBStringField
      FieldName = 'VPRC_ORIG'
      ProviderFlags = []
      Size = 3
    end
    object ConsultaVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      ProviderFlags = []
    end
    object ConsultaVPRC_PRZ: TFloatField
      FieldName = 'VPRC_PRZ'
      ProviderFlags = []
    end
    object ConsultaVPRC_PRO: TFloatField
      FieldName = 'VPRC_PRO'
      ProviderFlags = []
    end
    object ConsultaVPRC_MKP: TIBBCDField
      FieldName = 'VPRC_MKP'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaVPRC_DSC: TIBBCDField
      FieldName = 'VPRC_DSC'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaVPRC_ACR: TIBBCDField
      FieldName = 'VPRC_ACR'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaATJ_VPRC_PAD: TFloatField
      FieldName = 'ATJ_VPRC_PAD'
      ProviderFlags = []
    end
    object ConsultaATJ_VPRC_PRZ: TFloatField
      FieldName = 'ATJ_VPRC_PRZ'
      ProviderFlags = []
    end
    object ConsultaATJ_VPRC_PRO: TFloatField
      FieldName = 'ATJ_VPRC_PRO'
      ProviderFlags = []
    end
    object ConsultaATJ_VPRC_MKP: TIBBCDField
      FieldName = 'ATJ_VPRC_MKP'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaATJ_VPRC_DSC: TIBBCDField
      FieldName = 'ATJ_VPRC_DSC'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaATJ_VPRC_ACR: TIBBCDField
      FieldName = 'ATJ_VPRC_ACR'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaLJV_VPRC_PAD: TFloatField
      FieldName = 'LJV_VPRC_PAD'
      ProviderFlags = []
    end
    object ConsultaLJV_VPRC_PRZ: TFloatField
      FieldName = 'LJV_VPRC_PRZ'
      ProviderFlags = []
    end
    object ConsultaLJV_VPRC_PRO: TFloatField
      FieldName = 'LJV_VPRC_PRO'
      ProviderFlags = []
    end
    object ConsultaLJV_VPRC_MKP: TIBBCDField
      FieldName = 'LJV_VPRC_MKP'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaLJV_VPRC_DSC: TIBBCDField
      FieldName = 'LJV_VPRC_DSC'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaLJV_VPRC_ACR: TIBBCDField
      FieldName = 'LJV_VPRC_ACR'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaREP_VPRC_PAD: TFloatField
      FieldName = 'REP_VPRC_PAD'
      ProviderFlags = []
    end
    object ConsultaREP_VPRC_PRZ: TFloatField
      FieldName = 'REP_VPRC_PRZ'
      ProviderFlags = []
    end
    object ConsultaREP_VPRC_PRO: TFloatField
      FieldName = 'REP_VPRC_PRO'
      ProviderFlags = []
    end
    object ConsultaREP_VPRC_MKP: TIBBCDField
      FieldName = 'REP_VPRC_MKP'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaREP_VPRC_DSC: TIBBCDField
      FieldName = 'REP_VPRC_DSC'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaREP_VPRC_ACR: TIBBCDField
      FieldName = 'REP_VPRC_ACR'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaVAR_VPRC_PAD: TFloatField
      FieldName = 'VAR_VPRC_PAD'
      ProviderFlags = []
    end
    object ConsultaVAR_VPRC_PRZ: TFloatField
      FieldName = 'VAR_VPRC_PRZ'
      ProviderFlags = []
    end
    object ConsultaVAR_VPRC_PRO: TFloatField
      FieldName = 'VAR_VPRC_PRO'
      ProviderFlags = []
    end
    object ConsultaVAR_VPRC_MKP: TIBBCDField
      FieldName = 'VAR_VPRC_MKP'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaVAR_VPRC_DSC: TIBBCDField
      FieldName = 'VAR_VPRC_DSC'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaVAR_VPRC_ACR: TIBBCDField
      FieldName = 'VAR_VPRC_ACR'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaCF_VPRC_ORIG: TIBStringField
      FieldName = 'CF_VPRC_ORIG'
      ProviderFlags = []
      Size = 3
    end
    object ConsultaCF_VPRC_PAD: TFloatField
      FieldName = 'CF_VPRC_PAD'
      ProviderFlags = []
    end
    object ConsultaCF_VPRC_MKP: TIBBCDField
      FieldName = 'CF_VPRC_MKP'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object ConsultaCOL_ID: TSmallintField
      FieldName = 'COL_ID'
      ProviderFlags = []
    end
    object ConsultaCOL_NO: TIBStringField
      FieldName = 'COL_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaSEG_ID: TSmallintField
      FieldName = 'SEG_ID'
      ProviderFlags = []
    end
    object ConsultaSEG_NO: TIBStringField
      FieldName = 'SEG_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaGRP_ID: TSmallintField
      FieldName = 'GRP_ID'
      ProviderFlags = []
    end
    object ConsultaGRP_NO: TIBStringField
      FieldName = 'GRP_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaSGP_ID: TSmallintField
      FieldName = 'SGP_ID'
      ProviderFlags = []
    end
    object ConsultaSGP_NO: TIBStringField
      FieldName = 'SGP_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaCAT_ID: TSmallintField
      FieldName = 'CAT_ID'
      ProviderFlags = []
    end
    object ConsultaCAT_NO: TIBStringField
      FieldName = 'CAT_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaSCT_ID: TSmallintField
      FieldName = 'SCT_ID'
      ProviderFlags = []
    end
    object ConsultaSCT_NO: TIBStringField
      FieldName = 'SCT_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaMKP_MLV_ID: TSmallintField
      FieldName = 'MKP_MLV_ID'
      ProviderFlags = []
    end
    object ConsultaMKP_MSP_ID: TSmallintField
      FieldName = 'MKP_MSP_ID'
      ProviderFlags = []
    end
    object ConsultaMKP_MPG_ID: TSmallintField
      FieldName = 'MKP_MPG_ID'
      ProviderFlags = []
    end
    object ConsultaMKP_SHP_ID: TSmallintField
      FieldName = 'MKP_SHP_ID'
      ProviderFlags = []
    end
    object ConsultaMKP_AMZ_ID: TSmallintField
      FieldName = 'MKP_AMZ_ID'
      ProviderFlags = []
    end
    object ConsultaMKP_BLG_ID: TSmallintField
      FieldName = 'MKP_BLG_ID'
      ProviderFlags = []
    end
    object ConsultaMKP_TRY_ID: TSmallintField
      FieldName = 'MKP_TRY_ID'
      ProviderFlags = []
    end
    object ConsultaCDNS_NO: TIBStringField
      FieldName = 'CDNS_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaCTFI_NO: TIBStringField
      FieldName = 'CTFI_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaCACB_NO: TIBStringField
      FieldName = 'CACB_NO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaFIN_CAD_ID: TSmallintField
      FieldName = 'FIN_CAD_ID'
      ProviderFlags = []
    end
    object ConsultaFIN_EST_ID: TSmallintField
      FieldName = 'FIN_EST_ID'
      ProviderFlags = []
    end
    object ConsultaFIS_ORIG: TSmallintField
      FieldName = 'FIS_ORIG'
      ProviderFlags = []
    end
    object ConsultaFIS_XORIG: TIBStringField
      FieldName = 'FIS_XORIG'
      ProviderFlags = []
      Size = 120
    end
    object ConsultaFIS_FPAIS: TIBStringField
      FieldName = 'FIS_FPAIS'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaFIS_CPAIS: TSmallintField
      FieldName = 'FIS_CPAIS'
      ProviderFlags = []
    end
    object ConsultaFIS_XPAIS: TIBStringField
      FieldName = 'FIS_XPAIS'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaINFADCAD: TIBStringField
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 512
    end
    object ConsultaINFADTEC: TIBStringField
      FieldName = 'INFADTEC'
      ProviderFlags = []
      Size = 512
    end
    object ConsultaINFADPRN: TIBStringField
      FieldName = 'INFADPRN'
      ProviderFlags = []
      Size = 512
    end
    object ConsultaINFADETQ: TIBStringField
      FieldName = 'INFADETQ'
      ProviderFlags = []
      Size = 512
    end
    object ConsultaIP: TIBStringField
      FieldName = 'IP'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaHOST: TIBStringField
      FieldName = 'HOST'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaEPE_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPE_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEPE_QTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'EPE_QTRL'
      ProviderFlags = []
    end
    object ConsultaEST_QTDE: TIBBCDField
      FieldName = 'EST_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEST_QTRL: TIntegerField
      FieldName = 'EST_QTRL'
      ProviderFlags = []
    end
    object ConsultaEAT_QTDE: TIBBCDField
      FieldName = 'EAT_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEAT_QTRL: TIntegerField
      FieldName = 'EAT_QTRL'
      ProviderFlags = []
    end
    object ConsultaERV_QTDE: TIBBCDField
      FieldName = 'ERV_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaERV_QTRL: TIntegerField
      FieldName = 'ERV_QTRL'
      ProviderFlags = []
    end
    object ConsultaEAA_QTDE: TIBBCDField
      FieldName = 'EAA_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEAA_QTRL: TIntegerField
      FieldName = 'EAA_QTRL'
      ProviderFlags = []
    end
    object ConsultaEA_QTDE: TIBBCDField
      FieldName = 'EA_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEA_QTRL: TIntegerField
      FieldName = 'EA_QTRL'
      ProviderFlags = []
    end
    object ConsultaEB_QTDE: TIBBCDField
      FieldName = 'EB_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEB_QTRL: TIntegerField
      FieldName = 'EB_QTRL'
      ProviderFlags = []
    end
    object ConsultaEC_QTDE: TIBBCDField
      FieldName = 'EC_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEC_QTRL: TIntegerField
      FieldName = 'EC_QTRL'
      ProviderFlags = []
    end
    object ConsultaEPI_QTDE: TIBBCDField
      FieldName = 'EPI_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEPI_QTRL: TIntegerField
      FieldName = 'EPI_QTRL'
      ProviderFlags = []
    end
    object ConsultaESU_QTDE_ENT: TIBBCDField
      FieldName = 'ESU_QTDE_ENT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaESU_QTRL_ENT: TIntegerField
      FieldName = 'ESU_QTRL_ENT'
      ProviderFlags = []
    end
    object ConsultaESU_QTDE_SAI: TIBBCDField
      FieldName = 'ESU_QTDE_SAI'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaESU_QTRL_SAI: TIntegerField
      FieldName = 'ESU_QTRL_SAI'
      ProviderFlags = []
    end
    object ConsultaEPC_QTDE: TIBBCDField
      FieldName = 'EPC_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEPC_QTRL: TIntegerField
      FieldName = 'EPC_QTRL'
      ProviderFlags = []
    end
    object ConsultaEPC_CTNR: TIBStringField
      FieldName = 'EPC_CTNR'
      ProviderFlags = []
      Size = 250
    end
    object ConsultaEPP_QTDE: TIBBCDField
      FieldName = 'EPP_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEPP_QTRL: TIntegerField
      FieldName = 'EPP_QTRL'
      ProviderFlags = []
    end
    object ConsultaEPP_QTDE_CTNR: TIBBCDField
      FieldName = 'EPP_QTDE_CTNR'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEPP_QTRL_CTNR: TIntegerField
      FieldName = 'EPP_QTRL_CTNR'
      ProviderFlags = []
    end
    object ConsultaEEP_QTDE: TIBBCDField
      FieldName = 'EEP_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEEP_QTRL: TIntegerField
      FieldName = 'EEP_QTRL'
      ProviderFlags = []
    end
    object ConsultaEPV_QTDE: TIBBCDField
      FieldName = 'EPV_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaEPV_QTRL: TIntegerField
      FieldName = 'EPV_QTRL'
      ProviderFlags = []
    end
    object ConsultaESP_QTDE: TIBBCDField
      FieldName = 'ESP_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ConsultaESP_QTRL: TIntegerField
      FieldName = 'ESP_QTRL'
      ProviderFlags = []
    end
    object ConsultaC_EST_QTDE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldKind = fkCalculated
      FieldName = 'C_EST_QTDE'
      DisplayFormat = ',##,0.00'
      Calculated = True
    end
    object ConsultaC_EST_QTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkCalculated
      FieldName = 'C_EST_QTRL'
      DisplayFormat = ',##,0'
      Calculated = True
    end
    object ConsultaEP_RZ_NO: TIBStringField
      FieldName = 'EP_RZ_NO'
      ProviderFlags = []
      Size = 60
    end
    object ConsultaCF_CNPJ: TIBStringField
      FieldName = 'CF_CNPJ'
      ProviderFlags = []
      Size = 14
    end
    object ConsultaCF_IE: TIBStringField
      FieldName = 'CF_IE'
      ProviderFlags = []
    end
    object ConsultaCF_ISUF: TIBStringField
      FieldName = 'CF_ISUF'
      ProviderFlags = []
    end
    object ConsultaCF_IM: TIBStringField
      FieldName = 'CF_IM'
      ProviderFlags = []
    end
    object ConsultaCF_CDST: TSmallintField
      FieldName = 'CF_CDST'
      ProviderFlags = []
    end
    object ConsultaCF_REST: TIBStringField
      FieldName = 'CF_REST'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaCF_DEST: TIBStringField
      FieldName = 'CF_DEST'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaDTCA: TDateTimeField
      FieldName = 'DTCA'
      ProviderFlags = []
    end
    object ConsultaDTED: TDateTimeField
      FieldName = 'DTED'
      ProviderFlags = []
    end
    object ConsultaDTST: TDateTimeField
      FieldName = 'DTST'
      ProviderFlags = []
    end
  end
  object CAD_PRO_FIC: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    DataSource = DTSConsulta
    SQL.Strings = (
      'SELECT FIRST 1'
      '       CP.CP_ID,CP.UCOM,'
      ''
      
        '       NULLIF(CP.MPESO ,0) AS MPESO ,NULLIF(CP.UPSCN ,0) AS UPSC' +
        'N ,NULLIF(CP.PPSBR,0) AS PPSBR,'
      
        '       NULLIF(CP.MMETRO,0) AS MMETRO,NULLIF(CP.MGRAMA,0) AS MGRA' +
        'MA,NULLIF(CP.MREND,0) AS MREND,'
      
        '       NULLIF(CP.MLGRT ,0) AS MLGRT ,NULLIF(CP.MLGRU ,0) AS MLGR' +
        'U ,'
      
        '       NULLIF(CP.MELAL ,0) AS MELAL ,NULLIF(CP.MELAC ,0) AS MELA' +
        'C ,'
      
        '       NULLIF(CP.MENCL ,0) AS MENCL ,NULLIF(CP.MENCC ,0) AS MENC' +
        'C ,'
      ''
      '       '#39'('#39' || CP.UCOM || '#39') '#39' || CP.UCDBE_NO AS UCDBE_NO,'
      
        '       NULLIF(CP.UQTDE,0) AS UQTDE,NULLIF(CP.UQTDE_VEN_MUL,0) AS' +
        ' UQTDE_VEN_MUL,'
      '       CP.MABNT_NO,'
      ''
      '       NULLIF(TRIM(CAST('
      ''
      '       ASCII_CHAR(13) || ASCII_CHAR(10) ||'
      ''
      
        '       '#39'Composi'#231#227'o T'#234'xtil ...: '#39' || COALESCE(CP.CMP_NO   ,'#39#39') ||' +
        ' ASCII_CHAR(13) || ASCII_CHAR(10) || ASCII_CHAR(13)  || ASCII_CH' +
        'AR(10) ||'
      ''
      
        '       '#39'Gramatura ...: '#39'         || COALESCE(CP.MGRAMA_NO,'#39#39') ||' +
        ' ASCII_CHAR(13) || ASCII_CHAR(10) ||'
      
        '       '#39'Encolhimento ...: '#39'      || COALESCE(CP.MENC_NO  ,'#39#39') ||' +
        ' ASCII_CHAR(13) || ASCII_CHAR(10) ||'
      
        '       '#39'Norma T'#233'cnica ...: '#39'     || COALESCE(CP.MABNT_NO ,'#39#39') ||' +
        ' ASCII_CHAR(13) || ASCII_CHAR(10) || ASCII_CHAR(13)  || ASCII_CH' +
        'AR(10) ||'
      ''
      '       '#39'Conte'#250'do ...: '#39'          || COALESCE(CP.UCON     ,'#39#39')'
      ''
      '       AS VARCHAR(512))),'#39#39') AS INFADCPL,'
      '       CP.INFADCAD'
      ''
      'FROM   VW_PSQ_CAD_PRO  AS CP'
      'WHERE  CP.AK_ID = :AK_ID')
    Left = 304
    Top = 232
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'AK_ID'
        ParamType = ptUnknown
        Size = 8
      end>
    object CAD_PRO_FICCP_ID: TLargeintField
      FieldName = 'CP_ID'
      Origin = '"VW_PSQ_CAD_PRO"."CP_ID"'
    end
    object CAD_PRO_FICUCOM: TIBStringField
      FieldName = 'UCOM'
      Origin = '"CAD_PRO"."UCOM"'
      Size = 10
    end
    object CAD_PRO_FICMPESO: TIBBCDField
      DisplayLabel = 'Pe'#231'a'
      FieldName = 'MPESO'
      Origin = '"CAD_PRO"."MPESO"'
      DisplayFormat = ',##,0.00 kg'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICUPSCN: TIBBCDField
      DisplayLabel = 'Canudo'
      FieldName = 'UPSCN'
      ProviderFlags = []
      DisplayFormat = ',##,0.00# kg'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICPPSBR: TIBBCDField
      DisplayLabel = 'Adicional %'
      FieldName = 'PPSBR'
      ProviderFlags = []
      DisplayFormat = ',##,0.00# %'
      Precision = 9
      Size = 2
    end
    object CAD_PRO_FICMMETRO: TIBBCDField
      DisplayLabel = 'Metragem'
      FieldName = 'MMETRO'
      Origin = '"CAD_PRO"."MMETRO"'
      DisplayFormat = ',##,0.00# m'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMGRAMA: TIBBCDField
      DisplayLabel = 'Gramatura'
      FieldName = 'MGRAMA'
      Origin = '"CAD_PRO"."MGRAMA"'
      DisplayFormat = ',##,0.00# g/mt'#178
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMREND: TIBBCDField
      DisplayLabel = 'Rendimento'
      FieldName = 'MREND'
      Origin = '"CAD_PRO"."MREND"'
      DisplayFormat = ',##,0.00# m/kg'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMLGRU: TIBBCDField
      DisplayLabel = 'Largura '#218'til'
      FieldName = 'MLGRU'
      Origin = '"CAD_PRO"."MLGRU"'
      DisplayFormat = ',##,0.00# m'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMLGRT: TIBBCDField
      DisplayLabel = 'Largura Total'
      FieldName = 'MLGRT'
      Origin = '"CAD_PRO"."MLGRT"'
      DisplayFormat = ',##,0.00# m'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMELAL: TIBBCDField
      DisplayLabel = 'Largura'
      FieldName = 'MELAL'
      Origin = '"CAD_PRO"."MELAL"'
      DisplayFormat = ',##,0.00# m'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMELAC: TIBBCDField
      DisplayLabel = 'Comprimento'
      FieldName = 'MELAC'
      Origin = '"CAD_PRO"."MELAC"'
      DisplayFormat = ',##,0.00# m'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMENCL: TIBBCDField
      DisplayLabel = 'Largura'
      FieldName = 'MENCL'
      Origin = '"CAD_PRO"."MENCL"'
      DisplayFormat = ',##,0.00# %'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICMENCC: TIBBCDField
      DisplayLabel = 'Comprimento'
      FieldName = 'MENCC'
      Origin = '"CAD_PRO"."MENCC"'
      DisplayFormat = ',##,0.00# %'
      Precision = 9
      Size = 3
    end
    object CAD_PRO_FICUCDBE_NO: TIBStringField
      DisplayLabel = 'Estoque Vend'#225'vel'
      FieldKind = fkInternalCalc
      FieldName = 'UCDBE_NO'
      Origin = '"VW_PSQ_CAD_PRO"."UCDBE_NO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CAD_PRO_FICUQTDE: TIBBCDField
      FieldName = 'UQTDE'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object CAD_PRO_FICUQTDE_VEN_MUL: TSmallintField
      FieldName = 'UQTDE_VEN_MUL'
      ProviderFlags = []
    end
    object CAD_PRO_FICMABNT_NO: TIBStringField
      FieldName = 'MABNT_NO'
      Origin = '"VW_PSQ_CAD_PRO"."MABNT_NO"'
      Size = 50
    end
    object CAD_PRO_FICINFADCAD: TIBStringField
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 512
    end
    object CAD_PRO_FICINFADCPL: TIBStringField
      FieldName = 'INFADCPL'
      ProviderFlags = []
      Size = 512
    end
    object CAD_PRO_FICC_UQTDE: TStringField
      DisplayLabel = 'Volume'
      FieldKind = fkCalculated
      FieldName = 'C_UQTDE'
      Size = 15
      Calculated = True
    end
  end
  object DTSCAD_PRO_FIC: TDataSource
    AutoEdit = False
    DataSet = CAD_PRO_FIC
    Left = 336
    Top = 232
  end
  object CAD_PRO_IMG: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    DataSource = DTSConsulta
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
      'WHERE  CDN.CP_ID = :CP_ID')
    Left = 304
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CP_ID'
        ParamType = ptUnknown
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
    Left = 336
    Top = 264
  end
end
