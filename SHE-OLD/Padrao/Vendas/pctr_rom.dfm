inherited frmctr_rom: Tfrmctr_rom
  Left = -11
  Top = 1
  HelpType = htKeyword
  HelpKeyword = '3'
  AlphaBlendValue = 0
  Caption = 'Controle de Romaneios'
  ClientHeight = 993
  ClientWidth = 1923
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SpeedBar2: TSpeedBar
    Width = 1923
    inherited siPSQ: TSpeedItem [4]
    end
    inherited siREF: TSpeedItem [5]
      Hint = 'Atualiza Pedidos'
    end
    object siNFE: TSpeedItem [6]
      BtnCaption = 'Nota Fiscal'
      Cursor = crHandPoint
      Hint = 'Emiss'#227'o de Nota Fiscal'
      ImageIndex = 2
      Spacing = 0
      Left = 165
      Top = 5
      Visible = True
      OnClick = siNFEClick
      SectionName = 'Movimento'
    end
    object siCRO: TSpeedItem [7]
      BtnCaption = 'Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancelamento de Pedidos'
      ImageIndex = 3
      Spacing = 0
      Left = 245
      Top = 5
      Visible = True
      OnClick = siCROClick
      SectionName = 'Movimento'
    end
    object SICAD_CLI_EDI: TSpeedItem [8]
      BtnCaption = 'Cad. Cliente'
      Cursor = crHandPoint
      Hint = 'Atutaliza Cadastro do Cliente'
      ImageIndex = 4
      Spacing = 0
      Left = 325
      Top = 5
      Visible = True
      SectionName = 'Movimento'
    end
    object SICAD_CLI_CRD: TSpeedItem [9]
      BtnCaption = 'Info. Cliente'
      Cursor = crHandPoint
      Hint = 'Informa'#231#227'o Comercial do Cliente'
      ImageIndex = 5
      Spacing = 0
      Left = 405
      Top = 5
      Visible = True
      OnClick = SICAD_CLI_CRDClick
      SectionName = 'Movimento'
    end
    inherited siREL: TSpeedItem
      Hint = 'Imprime e Visualiza Relat'#243'rios'
      ImageIndex = 6
      Left = 485
    end
    inherited siSAIR: TSpeedItem
      ImageIndex = 7
      Left = 565
    end
  end
  inherited pnlbot: TPanel
    Top = 556
    Width = 1923
    Height = 411
    Visible = True
    object PNLItens: TPanel
      Left = 0
      Top = 0
      Width = 1923
      Height = 411
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object GBItens: TGroupBox
        Left = 0
        Top = 0
        Width = 1603
        Height = 411
        Align = alClient
        Caption = '  Itens  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object DBGItem: TdxDBGrid
          Left = 2
          Top = 19
          Width = 1599
          Height = 375
          Bands = <
            item
              Caption = 'Produtos'
              Fixed = bfLeft
              Width = 552
            end
            item
              Caption = 'Romaneio'
              Width = 365
            end
            item
              Caption = 'Classifica'#231#227'o Fiscal'
            end
            item
              Caption = 'Frete'
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
          DataSource = dtsrom_ite
          Filter.Active = True
          Filter.Criteria = {00000000}
          FixedBandLineWidth = 1
          GridLineColor = clSilver
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -13
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsItalic]
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlack
          PreviewFont.Height = -11
          PreviewFont.Name = 'Segoe UI Semibold'
          PreviewFont.Style = [fsBold, fsItalic]
          ShowBands = True
          object DBGItemROM_ITEM: TdxDBGridMaskColumn
            Tag = 40
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_ITEM'
            SummaryFooterType = cstCount
            SummaryFooterField = 'ID'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object DBGItemPRO_CPRO: TdxDBGridMaskColumn
            Tag = 80
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_CPRO'
          end
          object DBGItemDGCP: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            MinWidth = 100
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DGCP'
          end
          object DBGItemROM_DPRO: TdxDBGridMaskColumn
            Tag = 300
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 300
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_DPRO'
          end
          object DBGItemROM_DUNI: TdxDBGridMaskColumn
            Tag = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROM_DUNI'
          end
          object DBGItemROM_CDET: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'ROM_CDET'
            DisableFilter = True
          end
          object DBGItemROM_QTDE: TdxDBGridMaskColumn
            Tag = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'ROM_QTDE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'ROM_QTDE'
            SummaryFooterFormat = '#,0.00##'
            DisableFilter = True
          end
          object DBGItemROM_QTRL: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 40
            BandIndex = 1
            RowIndex = 0
            FieldName = 'ROM_QTRL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'ROM_QTRL'
            SummaryFooterFormat = '0'
            DisableFilter = True
          end
          object DBGItemROM_UNIT: TdxDBGridMaskColumn
            Tag = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'ROM_UNIT'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'ROM_UNIT'
            SummaryFooterFormat = 'R$ #,0.00'
            DisableFilter = True
          end
          object DBGItemPRO_PTABI: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_PTABI'
          end
          object DBGItemPRO_PTABF: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRO_PTABF'
          end
          object DBGItemROM_TOTA: TdxDBGridMaskColumn
            Tag = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 95
            BandIndex = 1
            RowIndex = 0
            FieldName = 'ROM_TOTA'
            SummaryFooterType = cstSum
            SummaryFooterField = 'ROM_TOTA'
            SummaryFooterFormat = 'R$ #,0.00'
            DisableFilter = True
          end
          object DBGItemNCM: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 70
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NCM'
          end
          object DBGItemPIPI: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 50
            BandIndex = 2
            RowIndex = 0
            FieldName = 'PIPI'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'PIPI'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemVIPI: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 95
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VIPI'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VIPI'
            SummaryFooterFormat = 'R$ #,0.00'
            DisableFilter = True
          end
          object DBGItemROM_PSBR: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 3
            RowIndex = 0
            FieldName = 'ROM_PSBR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'ROM_PSBR'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
          object DBGItemROM_PSLQ: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 3
            RowIndex = 0
            FieldName = 'ROM_PSLQ'
            SummaryFooterType = cstSum
            SummaryFooterField = 'ROM_PSLQ'
            SummaryFooterFormat = '#,0.00'
            DisableFilter = True
          end
        end
        object PNLInfAdProd: TPanel
          Left = 2
          Top = 394
          Width = 1599
          Height = 15
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 15329769
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 1
        end
      end
      object PNLIMG_PAD: TPanel
        Left = 1603
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
  end
  inherited pnldbg: TPanel
    Width = 1923
    Height = 491
    inherited DSConsulta: TdxDockSite
      Width = 1923
      Height = 491
      DockType = 0
      OriginalWidth = 768
      OriginalHeight = 448
      inherited LDSConsulta: TdxLayoutDockSite
        Width = 1923
        Height = 491
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 430
      end
      inherited DPConsulta: TdxDockPanel
        Width = 1923
        Height = 491
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 430
        inherited gbDET: TGroupBox
          Width = 1919
          Height = 487
          Caption = '  Romaneios  '
          inherited DBGConsulta: TdxDBGrid
            Width = 1915
            Height = 466
            KeyField = 'ID'
            ShowSummaryFooter = True
            Color = clBtnFace
            Filter.Active = True
            Filter.Criteria = {00000000}
            IndentDesc = 10
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
            PreviewLines = 3
            ShowRowFooter = True
            inherited DBGConsultaC_ID: TdxDBGridColumn
              Font.Color = clBlack
            end
            object dbgConsultaROM_DERO: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DERO'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object dbgConsultaID: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ID'
            end
            object dbgConsultaROM_DROM: TdxDBGridDateColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DROM'
            end
            object dbgConsultaROM_CDNF: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 57
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_CDNF'
            end
            object dbgConsultaROM_DNFS: TdxDBGridDateColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DNFS'
            end
            object DBGConsultaROM_CTNR: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_CTNR'
            end
            object DBGConsultaDECD: TdxDBGridMaskColumn
              Color = clWhite
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
            object dbgConsultaDECV: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DECV'
            end
            object dbgConsultaDECR: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DECR'
            end
            object dbgConsultaROM_TSDE: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_TSDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_TSDE'
              SummaryFooterFormat = '#,0.00'
              DisableFilter = True
            end
            object DBGConsultaROM_PDSC: TdxDBGridCurrencyColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_PDSC'
              SummaryFooterType = cstAvg
              SummaryFooterField = 'ROM_PDSC'
              SummaryFooterFormat = '#,0.00'
              DisplayFormat = ',##,0.00'
              Nullable = False
              DisableFilter = True
            end
            object DBGConsultaROM_VDSC: TdxDBGridCurrencyColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_VDSC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_VDSC'
              SummaryFooterFormat = '#,0.00'
              DisplayFormat = ',##,0.00'
              Nullable = False
              DisableFilter = True
            end
            object dbgConsultaROM_TCDE: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ROM_TCDE'
              SummaryFooterFormat = '#,0.00'
              DisableFilter = True
            end
            object DBGConsultaROM_STFI: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_STFI'
            end
            object DBGConsultaRECO: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 77
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RECO'
            end
            object dbgConsultaPAG_DPAG: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PAG_DPAG'
            end
            object dbgConsultaROM_STPD: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_STPD'
            end
            object DBGConsultaROM_DTRA: TdxDBGridMaskColumn
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 215
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ROM_DTRA'
            end
          end
          object PNLINFADCAD: TPanel
            Left = 2
            Top = 485
            Width = 1915
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais do romaneio ...'
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
              Width = 1911
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es adicionais do romaneio ...'
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
      end
    end
  end
  inherited PNLSBRodape: TPanel
    Top = 967
    Width = 1923
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
      Width = 1923
      inherited SBRodape: TdxStatusBar
        Width = 1923
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
    Left = 96
  end
  inherited imageOPC: TImageList
    Left = 192
    Top = 256
    Bitmap = {
      494C01010800090004003E002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000F1F1F100EFEFEF00DCDCDC00CFCFCF00D0D0D000D1D1D100D3D3
      D300D4D4D400D6D6D600D7D7D700D7D7D700D9D9D900DADADA00DADADA00DADA
      DA00DADADA00D9D9D900D8D8D800D7D7D700D6D6D600D4D4D400D3D3D300D1D1
      D100CFCFCF00D0D0D000DFDFDF0000000000F1F1F10000000000000000000000
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
      0000000000000000000000000000E5E5E500E1E1E100E0E0E000E2E2E200E4E4
      E400E6E6E600E8E8E800EAEAEA00EBEBEB00EDEDED00EEEEEE00EFEFEF00EFEF
      EF00EEEEEE00EDEDED00ECECEC00EAEAEA00E8E8E800E6E6E600E5E5E500E2E2
      E200E0E0E000E0E0E000E4E4E400EEEEEE00F1F1F10000000000000000000000
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
      00000000000000000000F1F1F100E9E9E900E3E3E300E1E1E100E3E3E300E6E6
      E600E8E8E800EAEAEA00EDEDED00EFEFEF00F1F1F100F2F2F200F3F3F300F3F3
      F300F2F2F200F1F1F100EFEFEF00EDEDED00EBEBEB00E9E9E900E7E7E700E3E3
      E300E2E2E200E3E3E300E9E9E900000000000000000000000000000000000000
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
      0000F2F2F200F3F3F300F5F5F500EBEBEB00DEDEDE00DADADA00DDDDDD00E0E0
      E000E3E3E300E6E6E600E9E9E900EBEBEB00EDEDED00EEEEEE00EFEFEF00EEEE
      EE00EEEEEE00EEEEEE00ECECEC00EAEAEA00E7E7E700E4E4E400E1E1E100DDDD
      DD00DBDBDB00DEDEDE00EBEBEB00F5F5F500F3F3F300F2F2F200000000000000
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
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700F8F8F800F4F4F400F4F5F50000000000D8D8D800CACACA00CCCCCC00CFCF
      CF00D3D3D300D6D6D600D7D7D700DADADA00DCDCDC00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DCDCDC00DBDBDB00D9D9D900D6D6D600D3D3D300CFCFCF00CDCD
      CD00CACACA00D4D4D400EDEDED00F5F6F600F4F5F500F8F8F800F8F8F8000000
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
      000000000000000000000000000000000000000000000000000000000000EBEB
      EC00C5C5C500A7A7A600A2A2A200A5A4A400A7A7A700ACADAD00AEAEAE00AFAF
      AF00B2B2B200B5B5B500B6B6B600B8B8B800BABABA00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00B9B9B900B8B8B800B7B7B700B5B5B500B3B3B300B1B1B100AFAF
      AF00ACACAC00A8A8A800A4A5A500A3A4A400A7A7A700C2C2C200E7E7E7000000
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
      000000000000000000000000000000000000000000000000000000000000C1C0
      C0007F7D7C006B6866005E5C5A00403F3F0054545400797A7A00808080008080
      800082828200878787008A8A8A008E8E8E009191910092929200939393009393
      930092929200909090008E8E8E008B8B8B008787870084848400808080008080
      80007B7B7B00595959003E3D3D00585755006B6967007B787700B0AFAF000000
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
      000000000000000000000000000000000000000000000000000000000000A6A5
      A30073706D00767270005C5957001715150016161600363535003A3A3A003939
      39003B3B3B003E3E3D0040404000444343004645450047464600474747004747
      4700474646004645450044434300414140003F3E3E003C3C3C00393938003A3A
      3A0037363600191919000F0E0D004D4A480077747100716C69008D8B89000000
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
      000000000000000000000000000000000000000000000000000000000000A8A6
      A500817F7C008683810062605F00191717000908080012121100121111001111
      1000111110001211100011101000111110001111100011111000111110001111
      1000111110001111100011111000111110001211100011111000111110001211
      1100131211000A0A0A00111010004F4D4C0087848100817E7B00908E8C000000
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
      000000000000000000000000000000000000000000000000000000000000AEAC
      AB00868482008A888500626160001F1E1E00100F0F0017161500161514001615
      1400161514001514140015141400151414001514140015141400151414001514
      1400151414001514140015141400151414001515140016151400161514001615
      14001716150012111000181717004F4D4D0086838100827F7D00999796000000
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
      000000000000000000000000000000000000000000000000000000000000B2B0
      AF008B898800908E8B00666362001E1D1C00100E0E0019181800181717001816
      1700181617001816170018161700181617001816170018161700181617001816
      1700181617001816170018161700181617001816170018161700181616001816
      16001918180012101000151514005351500098959300959291009E9C9A000000
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
      000000000000000000000000000000000000000000000000000000000000B6B5
      B400918E8C0094918F00696765001E1E1D001010100019191900181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      180019191900121212001515140057555300ABA9A700ABA9A800A3A19F000000
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
      000000000000000000000000000000000000000000000000000000000000C0BF
      BE00A29F9D00A6A4A200777675002B2A2A001D1D1D0028282800282829002A2A
      2A002C2C2B002D2D2C002E2E2E002F2F2F003030300031303000313030003231
      31003130300030303000303030002F2F2F002E2E2D002E2D2D002D2C2C002B2B
      2B002A2A2A00212122002524250066656400AEABAA00A9A7A600B2B1AF000000
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
      000000000000000000000000000000000000000000000000000000000000D3D2
      D100BBB9B800C1C0BE0092918F003C3C3C002C2C2C003A3A3A003B3A3B003E3D
      3D0040403F004141410044444300454445004646460047474700484848004847
      4700474646004646470045454500444445004242410040403F003E3F3D003C3C
      3C003A3A3A002F2E2F00343435007E7D7C00C3C0BF00B8B6B600C8C7C7000000
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
      000000000000000000000000000000000000000000000000000000000000D7D5
      D500B5B4B300B7B5B400939290003F3F3E002828280033323200323030003130
      3000303030002F2F2F002E2E2E002E2D2D002D2D2D002D2C2C002C2C2C002C2B
      2B002B2A2A002A2A2A0029292900292929002828280027272700272625002726
      2600262626001C1C1C00282727007B7A7900BAB9B700B3B2B000CBCAC9000000
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
      000000000000000000000000000000000000000000000000000000000000D9D8
      D800ADABA900AAA8A600979694005151500039393800403F3F003F3F3E003E3E
      3C003D3D3C003C3C3B003B3A3A003A3939003938380038373700373636003535
      34003434330033333200323232003232310031313000302F2F002F2E2E002F2D
      2E002E2E2D00242423003433320081807E00AEACAB00AAA9A700CAC9C8000000
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
      000000000000000000000000000000000000000000000000000000000000DFDF
      DF00B1AFAD00AAA8A600A1A09E00666564004B4B4B00504F4F0050504F004F4E
      4E004E4D4D004D4C4C004B4B4B004A4A4A004949480048484700474747004746
      46004545450044444400434343004242420041404000404040003F4040003F3F
      3E003E3E3D00343434004848480092908F00AEACAB00AEAEAC00D3D3D2000000
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
      000000000000000000000000000000000000000000000000000000000000E6E6
      E500BAB8B700AEACAB00ABAAA8007A7A79005F5E5E006161600062616100615F
      60005F5F5E005E5D5D005D5C5C005C5B5B005A5A5A005A595900585858005857
      5700565656005554550054545400535353005251520050515000505151005050
      4F004E4E4D00464646005E5E5E00A2A09F00B1AFAE00B4B2B100DEDDDD000000
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
      000000000000000000000000000000000000000000000000000000000000ECEC
      EB00C4C3C200B0AEAE00B1B0AE008E8D8C007575740076767500777776007574
      7400747473007372720072717100717070006F6F6E006E6D6D006D6C6C006B6B
      6A006A6969006967670067676600666665006564640064636300636161006161
      61005F5E5E005A59590074727200ACAAA900B4B2B000BBB9B700E6E5E5000000
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
      000000000000000000000000000000000000000000000000000000000000F3F3
      F300CCCCCA00B4B2B100B5B3B2009D9C9B008787870086868600878787008586
      8600858686008585850084848400838383008282810080808000807F7F007E7E
      7E007D7D7D007C7B7C007A7A7A00797978007878780077777700767575007575
      7500727272006E6D6D0087868600B4B2B000B5B3B100C5C3C300EBEBEB000000
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
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400D8D8D600BAB8B600B6B4B300A5A4A3009493930091919100909190009090
      8F008F8F8F008E8D8D008C8C8C008B8B8A008A8A8A0089888800888888008787
      8600868585008685850085858500848483008384830083838300828282008282
      8100808080007E7F7F0095949400B6B4B300B7B4B400CFCDCD00F2F3F2000000
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
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200EAE9E900CCCCCA00C0BFBE00AFAEAD009595940091909100959595009595
      9400959494009594940094949300949493009494940094939300939393009292
      92009191900091909000908F90008E8E8E008D8D8D008C8C8C008B8B8B008B8B
      8A008484840086858500A4A3A200C0BFBE00C7C5C400E1E1E100F3F4F3000000
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
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F2F2F200E9E9E900E8E8E700D1D0CF009A99980097969600ACACAD00ADAD
      AD00B0B0B000B4B4B400B7B8B800BBBBBC00C0BFC000C2C2C100C3C3C300C3C3
      C300C1C1C100BFBFBF00BBBABB00B7B7B700B3B3B300AFAFAF00ABABAB00A9AA
      AA0096959600918F8E00C4C4C200E8E8E800E7E7E60000000000F1F1F1000000
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
      0000F1F1F100F3F3F300FBFBFB00E5E4E300AAA9A800B0B0AF00CDCDCD00CECE
      CE00D3D3D300D8D8D800DDDDDE00E2E2E200E7E7E700E9E9EA00EBEBEB00ECEC
      EC00EAEAEA00E7E8E800E3E3E300DEDEDE00D9D9D900D4D4D400CFD0D000CECE
      CE00B3B3B400A5A3A100D7D7D500FCFCFC00F4F4F400F1F2F200000000000000
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
      00000000000000000000F4F4F400E2E2E200B9B8B700C8C9C800E2E3E300E2E2
      E200E6E6E600EAEAEA00EDEDED00F1F1F100F3F3F300F5F5F500F6F6F600F6F6
      F600F5F5F500F3F3F300F2F2F200EEEEEE00EAEAEA00E7E7E700E3E3E300E3E2
      E200C9C9C900B3B2B100D7D6D500F6F6F6000000000000000000000000000000
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
      00000000000000000000F3F3F300E8E8E800D0CFCE00DAD9D800E9E9E900EAEA
      EA00EDEDED0000000000F3F3F300F6F6F600F8F8F800FAFAFA00FBFBFB00FBFB
      FB00FAFAFA00F8F8F800F7F7F700F4F4F400F1F1F100EEEEEE00EBEBEB00E9E9
      E900D8D8D800CACACA00E0E0E000F3F3F3000000000000000000000000000000
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
      0000000000000000000000000000EFEFEF00EBEBEB00E6E5E600E5E5E500EAEA
      EA00EEEEEE0000000000F3F3F300F6F6F600F8F8F800F9F9F900FBFBFB00FBFB
      FB00F9F9F900F8F8F800F6F6F600F4F4F400F1F1F100EEEEEE00EBEBEB00E6E6
      E600E5E5E500EAEAEA00EEEEEE00000000000000000000000000000000000000
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
      0000000000000000000000000000F1F1F100F1F1F100E8E8E800E3E3E300E7E7
      E700EBEBEB00EEEEEE00F1F1F100F3F3F300F5F5F500F6F6F600F8F8F800F8F8
      F800F6F6F600F5F5F500F4F4F400F2F2F200EFEFEF00ECECEC00E8E8E800E4E4
      E400E9E9E900F1F1F100F1F1F100000000000000000000000000000000000000
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
      000000000000000000000000000000000000EEEEEE00E5E5E500E2E2E200E5E5
      E500E8E8E800EBEBEB00EEEEEE00EFEFEF00F1F1F100F3F3F300F3F3F300F3F3
      F300F3F3F300F2F2F200F1F1F100EFEFEF00ECECEC00E9E9E900E5E5E500E2E2
      E200E5E5E500EEEEEE00EFEFEF00000000000000000000000000000000000000
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
      000000000000000000000000000000000000EEEEEE00E3E3E300DFDFDF00E4E4
      E400E6E6E600E8E8E800EBEBEB00EDEDED00EEEEEE00EFEFEF00000000000000
      000000000000EFEFEF00EEEEEE00EBEBEB00E8E8E800E6E6E600E4E4E400E1E1
      E100E3E3E300ECECEC0000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000EDEDED00E5E5E500E3E3E300E6E6
      E600E7E7E700E9E9E900EBEBEB00EDEDED00EEEEEE0000000000000000000000
      000000000000EEEEEE00EDEDED00ECECEC00E9E9E900E7E7E700E6E6E600E3E3
      E300E5E5E500ECECEC00EFEFEF00000000000000000000000000000000000000
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
      000000000000000000000000000000000000EEEEEE00EAEAEA00E8E8E800E9E9
      E900EAEAEA00EBEBEB00EBEBEB00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00ECECEC00EBEBEB00EBEBEB00EAEAEA00E9E9E900E8E8
      E800E9E9E900EDEDED00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7AE980076673C00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C3E00766C
      3E00766C3E00766C3E00766C3E00766D3E00766D3E0000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFD
      F900F0D07700FCF6E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F0FFF6F6
      F1FFFCFCF2FFFFFFF3FFF7F8F1FFF2F3EFFFF3F4EFFFF2F3EFFFF7F8F1FFFFFF
      F3FFFCFCF2FFF6F6F1FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F0D300F6DC
      9C00F1B83100EEB62900FCF5E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F0FFFBFAF2FFFAFBF2FFDFE1
      EEFFA7ABE2FF7D7EDBFF5C5FDCFF4B50DBFF4D51DBFF4B50DBFF5C5FDCFF7B7D
      DCFFA7ABE3FFE2E3F0FFFCFCF4FFFBFBF3FFF1F1F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFC00F9EECE00F5D68700F6D2
      7B00FADC9700EFAF1E00F3D28400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFF0FFF7F6F2FFFFFFF9FFCACCEAFF6B6EDBFF2429
      D9FF0205DCFF0000DEFF0000E0FF0000E1FF0000E1FF0000E0FF0000DFFF0000
      DDFF0204DCFF2327D8FF6F72DFFFCDCFEDFFFFFFF5FFF6F6F1FFEFEFF0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000000000000000000000000000E2EED500BDD8B300BED9B300E2EB
      D000000000000000000000000000FEFFFF00F9F3DC00F6D48200F8D68600F8D9
      8F00F8DC9A00F6CC6B00EDB01300F5DFA9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFFBFBF2FFECEEF3FF7A7FDFFF0C12D9FF0000E1FF0000
      E6FF0000E4FF0000E3FF0000E2FF0000E2FF0000E2FF0000E2FF0000E1FF0000
      E2FF0000E4FF0000E4FF0000E0FF0F12DAFF747ADFFFEEF0F6FFFDFCF3FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      0000000000000000000000000000CBE1BE003E900600599F39007EB05E006AAE
      42008BBC6700D4E2BD000000000000000000FFFBF400F8E6B700F7D48400F8D7
      8A00F8D88E00F8DA9300F4C75A00EDAF2500FBF6E80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFFCFCF2FFCFD1EAFF3C41D9FF0000E1FF0000E9FF0000E5FF0000
      E4FF0000E4FF0000E5FF0000E5FF0000E7FF0000E7FF0000E6FF0000E5FF0000
      E4FF0000E4FF0000E4FF0000E4FF0000E7FF0000E0FF3B40DCFFCFD1ECFFFDFD
      F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000F5F9EF0061A33A0086B96D00F7F9ED00BBF0E6002DC5
      930038B9730063B14D0076BA5F00C2EDDB000000000000000000FAE9C100F7D6
      8600F8D88B00F8D88F00F9DB9700EFB92900F8E9BC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      EFFFFEFEF3FFC3C6E8FF252ADBFF0000E8FF0000E9FF0000E6FF0000E7FF0000
      E8FF0000EBFF0000EBFF0000E9FF0004EAFF0004EAFF0003EAFF0000E9FF0000
      EBFF0000E8FF0000E7FF0000E6FF0000E5FF0000E8FF0000E7FF282EE0FFC9CC
      EDFFFCFBF1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000DBEACC0065A52C00EDF2DE00E7FCFF003ECEAA009EE8
      DC00ECFFFF00E3F4E600B8D69D0055AD48006ACD9A00DFFAFA0000000000F9E3
      B000F7D58300F8D88E00F8DA9300F1BA3200F1C65A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFEFF0F0FFFCFC
      F4FFDADAF1FF252DDDFF0000EBFF0000EAFF0001E9FF0001EAFF0003EDFF0002
      EDFF0312E8FF3743E7FF7379E8FF8792E6FF8893E8FF8892E6FF6F75E6FF2833
      E8FF0009EEFF0002EAFF0001E9FF0001E9FF0000E8FF0000E9FF0000EAFF2A30
      E3FFD6D8EFFFFBFAF1FFEFEFF0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000D4E6C30082B64F00FDF8ED00B6EDE30060D6B800FDFE
      FE00000000000000000000000000E9EED40072B7580048BE7900D0F3EA00FFE3
      AE00F7D58600F8D88D00F9DA9300F7D38100EDAB1100F2D17A00FDFFFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF5F4F0FFF1F2
      F2FF4552E2FF0000ECFF0003ECFF0004EBFF0003EBFF0008F0FF000EECFF4A57
      E8FFBABDECFFECEDEFFFFEFEF3FFFFFEF1FFFEFDF1FFFFFEF1FFFFFFF3FFCAC9
      EFFF0C1EEAFF0004EEFF0003EBFF0004EBFF0003EBFF0002EAFF0001EAFF0000
      EAFF454BE4FFF8F8F6FFF4F4F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000E3EFD9008EBD6100F5F4E300AEECE00085DFC7000000
      000000000000000000000000000000000000FFFEF700A5D28D0091C26000FFDF
      9300FEDC9000F7D88D00F8D78D00F8DB9600F6CF7500EEB21C00EEBC4B00F1C7
      6100F3D47D00FDFCF60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFFEFDF2FF8E93
      E9FF0008EAFF0006EFFF0006EDFF0005EEFF000DF2FF061BEBFF8D93ECFFF9F9
      F5FFFFFFF2FFF4F4F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F0FFFCFAF2FF838D
      EFFF0318F0FF0006F0FF0007EFFF0007EEFF0006EEFF0006EDFF0005EBFF0003
      EEFF0000E9FF8C92ECFFFFFFF4FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000000000000FCFDFC008FBE6700DEE8C600C0F2EC008FE1CD000000
      000000000000000000000000000000000000F5F5F700DCDAD400929C36009FAC
      4400ECD39100FFE69600FBDB8E00F7D78C00F8DB9500F8D68800F6CB6C00F3C8
      6000EEB21A00EFBF4300FDFBF000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F6F0FFDEDEF0FF2438
      E8FF0006F2FF0007EFFF0006F0FF0010F3FF0724EEFF9EA2F0FFFFFFF7FFF4F4
      F0FFEFEFF0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4EFFFFBF9F2FF8894F2FF0529
      F3FF000FF4FF0007F1FF0009F1FF0009F0FF0008F0FF0007EFFF0007EFFF0006
      EDFF0001F0FF1D2BEAFFDDDFF4FFF7F7F0FFF0F0F0FF00000000000000000000
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
      000000000000000000000000000097C27600C9DCB100E1FAFA0092E3CF00F0FC
      F900000000000000000000000000F3F3F300C4C4C400918E8F007D7A85006D8E
      5E00556B2800AB926700FFE69400FCDC8F00F8D78C00F8D99200F8DB9400F9DB
      9700F8D88C00ECAE1100F4D48400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEF2FF8D95EDFF0013
      EFFF0008F2FF0007F1FF000DF3FF0022F3FF808DEEFFFFFFF4FFF3F3F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF4F4F0FFFFFEF7FF8998F3FF0230F5FF0013
      F6FF000AF4FF000CF3FF000CF3FF000AF3FF0007F2FF0007F1FF0008F1FF0008
      F0FF0007F1FF0004EFFF8D93F1FFFFFEF4FFF0F0EFFF00000000000000000000
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
      0000000000000000000000000000D7E8C600A4CA7F00FDFDFC008DE2CE00D1F3
      EA000000000000000000FEFEFE00F1F1F100F5F6F70000000000000000000000
      00009FC48A0019320A008A785F00FEE79400FBDA8D00F7D88D00F8D88D00F8D8
      8D00F9DD9900F3C45A00F0C26000FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F1EFFF3F55ECFF000F
      F4FF000AF3FF0009F3FF001CF7FF3759F0FFEDEBF2FFF6F6EFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF4F3EFFFFFFBF4FF8A9BF7FF0038F6FF0019F9FF000C
      F6FF000FF6FF000EF5FF000CF5FF0011F6FF0019F6FF0018F6FF000EF3FF0009
      F2FF0009F1FF0004F2FF3F51F0FFEEEEF2FFF4F4F0FF00000000000000000000
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
      00000000000000000000000000000000000089B95B00F9F8EB00A6E9DB00BEEE
      E2000000000000000000FDFDFD0000000000E8E1D100F2D79700F8DB9400F9E3
      B200FFFFFE00AAD18F0022341B00A68D6900FFE29300F8D88D00F8D88D00F8D8
      8D00F8DA9400F7D37D00ECAC1700F8E7C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D7EFFF0E34EFFF0012
      F6FF000BF5FF0011F7FF0130F6FF9BA8F2FFFFFEF1FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF4F4EFFFFAF5F2FF899BF5FF0045F8FF0023FAFF0010F8FF0013
      F8FF0013F8FF000DF7FF0018F9FF0032F8FF4968F6FF415DF4FF0025F7FF000F
      F5FF000BF4FF000CF5FF0F29F2FFCCCEF4FFF8F8F0FF00000000000000000000
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
      000000000000000000000000000000000000C4DCAC00B1CF8F00F2FEFF008CE0
      CB00FAFEFD00FFFEFF0000000000CCCED700B8A57A00FDDA8300F9D68500F8D3
      8000FBDEA300FFFFFB007EAA6C005E5C3800FFE09500F9D98D00F8D88D00F8D8
      8D00F8D88C00F9DE9D00F2BB4000F3D58D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADB6EEFF0028F5FF0012
      F8FF000CF7FF001DF9FF1A52F5FFDBDAF4FFF7F7F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF4F3EFFFFBF6F2FF889EF7FF0352FAFF0030FAFF001BF9FF001EF9FF001D
      F9FF0018F9FF0025FAFF0035F8FF6E84F4FFFAF7F4FFDEDEF4FF1947F5FF0018
      F9FF000BF6FF000CF6FF011EF5FF9DA9F2FFFDFBF0FF00000000000000000000
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
      000000000000000000000000000000000000F0F6EA0096C16F00F1F5E800A1E7
      D900D2F3EA000000000000000000A1A1A9009C925B00FFF69B00FFE19000FFE1
      8E00FFE18A00FFEEB600E7ECA500B0C74D00FEDC9000FAD88F00F8D88D00F8D8
      8D00F8D88C00F9DD9D00F3BF4900F5DC9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F9FECFF0027F7FF0012
      F8FF0012F8FF002EFAFF4676F7FFEEECF2FFF4F3F0FFF0F0F0FFF0F0F0FFF4F4
      F0FFFFFAF6FF899FF8FF025EFBFF0040FCFF002BFAFF002EFAFF002DFAFF0027
      F9FF0036FBFF0043FAFF6F86F6FFF4F1F2FFFBF9EFFFF3F1F1FF4C6FF7FF0020
      F9FF000FF7FF000EF7FF001BF7FF8390F1FFFFFDF0FF00000000000000000000
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
      00000000000000000000000000000000000000000000BED9A600B5D19400E9FD
      FF008FE4D600F8FBF600FFFEFD00B8B7BA005252480074746100756F5F00756F
      5F00756F5F00746C5600776B5C0052683800A1B24E00FEE19A00F9D88D00F8D8
      8D00F8D88C00F9DD9C00F0BB4300F7E1AC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008795ECFF002FF8FF001A
      F8FF001DF9FF003BFAFF6A89F8FFFAF7F3FFF1F1EFFFF0F0F0FFF4F3EFFFFFF8
      F4FF8AA2FAFF0066FBFF0050FEFF003BFCFF003FFCFF003FFCFF003AFCFF004A
      FDFF004FFBFF6E87F8FFF7F3F3FFF6F6EFFFF1F0F0FFFBF8F2FF6883F8FF002D
      FAFF0016F8FF0013F8FF001EF8FF7786F6FFFDFCF2FF00000000000000000000
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
      00000000000000000000000000000000000000000000F5F9F2009EC67C00E4EE
      D500BDE4C100CFD59300FFFAEC00F8F9FA00ECECEE00E7E7ED00E3E5EC00E3E5
      ED00E3E6ED00E4E6ED00E5E6EE00BAB9C6003F5F1700E2DB7800FFDB9500F8D8
      8D00F8D88D00F9DC9900F1BE4500F0C55E00FCF8EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008897EEFF003AFAFF0026
      FAFF002CFBFF0049FBFF6E8EF8FFFBF7F3FFF0F0EFFFF4F4EFFFFAF3F2FF89A3
      F8FF0070FCFF005FFEFF0048FDFF004DFDFF004DFDFF0049FDFF0059FEFF0060
      FCFF6E8AF9FFFCF7F5FFF6F6F0FFEFF0F0FFF0F0EFFFFEFBF2FF718CF9FF003B
      FBFF0022FAFF001DF9FF0025F9FF6B81F8FFFBF9F2FF00000000000000000000
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
      0000000000000000000000000000000000000000000000000000D1E6C400AAC2
      6600FBD37A00F6D48600FFFAED00FBFCFF0099999600EADEAD00FFF1BE00FEE8
      B900FEE9B800FDE8B600FFFFF600D3D1E1006A6D4A00AFC94E00F2D68B00FCD9
      9000F8D88D00F8D99000F7D58100EEB01E00F1C9670000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000889DEFFF0048FBFF0036
      FCFF003CFCFF0056FDFF5E8DFBFFF5F1F2FFF6F5EEFFFBF3F2FF88A5F9FF037B
      FDFF006AFFFF0055FFFF005AFFFF005AFFFF0056FFFF0068FFFF006DFDFF6E8F
      FAFFF5F0F3FFF6F5EEFFEFEFF0FFF0F0F0FFF2F2F0FFF7F3F1FF5E85FBFF0046
      FDFF0032FBFF002AFAFF0033FBFF7E90F6FFFFFCF0FF00000000000000000000
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
      00000000000000000000FDFBF300F0CC7900EFBF4900F7EABE00FFF2D600ABB8
      4600C9C86B00FFDA8D00F9E9C300000000006A6B720076683900FFE68B00FFE1
      8A00FFDA8200F9D48000FFFCE800CED1DA009D8A6600C8D36700B5BF5A00FFDC
      9600F8D88C00F8D88C00F9DC9900F6D37B00EBAA0B00F7E2A800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099AEF2FF0058FDFF0049
      FDFF0048FCFF0062FFFF3081FCFFF0EAF4FFFFFCF6FF89A6FAFF0284FDFF0077
      FFFF0061FFFF0065FFFF0066FFFF0063FFFF0077FFFF0079FEFF6F92FAFFF3EE
      F3FFF7F5EFFFEFF0F0FFF0F0F0FFF0F0F0FFF5F4F0FFEBE7F3FF3378FCFF0054
      FEFF0040FCFF003CFCFF0047FCFF89A0F5FFFFFBEFFF00000000000000000000
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
      000000000000F7EBC300F4D68900F6D27D00F2C14700EDB12B00F7C96600EAD8
      90009AB54300ECD38000FDDB9600FDFBF300F3F5FA00555355007A6F4700C1B6
      6F00D3B76B00EED9A600FDFFFF00C5C3BF00D8BB7600FBDF910099B54100EAD4
      8200FBDA9100F8D88D00F8D88D00F8DB9900F4C45400ECB02400FCF7EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1C6F4FF0365FCFF005B
      FEFF0054FEFF0068FFFF087DFCFFA3AEFCFF8BA9FCFF008DFDFF0080FFFF006B
      FFFF0071FFFF0072FFFF006FFFFF0083FFFF0085FEFF6E93FCFFF7F0F3FFF6F5
      EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFBF9EEFFC9CCF7FF0A6CFEFF005E
      FEFF004CFDFF004CFDFF0655FDFFB2BEF7FFFBF9EFFF00000000000000000000
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
      0000FBF4E200F3CC6800F5CE6D00F8DA9300F9DB9800F8D78B00F7D38000FFDD
      9800D5CC72009FB84800F4D78A00FBDFA500FFFFF900F5F7FC007A7D8400726F
      6B00A09A8E00E4E5E700FDFBF700DDC69100FDDC8A00FFDB9500CAC86900A5BA
      4C00FFDE9B00F7D88C00F8D88D00F8D99000F9DC9800F0B42B00F3D589000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E1F2FF2074FAFF006D
      FFFF0061FFFF0067FFFF0086FFFF038AFEFF0093FEFF008CFFFF0075FFFF007C
      FFFF007DFFFF007BFFFF0090FFFF0096FFFF6E9AFCFFFCF3F5FFF6F6EFFFEFF0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1EFFFFFF9F3FF6697FAFF0075FFFF005F
      FFFF0057FEFF005CFFFF1F69FDFFDFDDF8FFF7F6EFFF00000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FEFB
      F300FADD9500FAD88A00F8D99200F8D88C00F9D98E00FADB9000F8D99000FAD9
      8D00FFDF9900BCC35E00B3C05800FED88D00F8DD9E00FDF4DB00000000000000
      000000000000FEF8E900F7DEA400FCD98700F7D88C00FBDA9000F2D78B00A1B8
      4700DECF7A00FDDB9300F8D88D00F8D88C00F9DD9C00F5C95E00EFC654000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF4F1FF5F92FAFF007C
      FEFF006EFFFF0073FFFF0078FFFF008AFFFF0088FFFF0080FFFF0085FFFF0089
      FFFF0087FFFF009CFFFF00AFFFFF6EA9FDFFF5EDF3FFF6F5EEFFEFEFF0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFFFFAF0FFC7CEFBFF0A84FFFF007FFFFF0068
      FFFF0064FFFF0068FEFF6190FDFFF8F5F4FFF2F1EFFF00000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FDFD
      FB00FAE3A900FFDC8900F9D88E00F9D88C00FBD98A00FEDD8F00FDDB8E00F6D5
      8700FFDD9000FFDF9500A6B94D00C9C76900FFDA8F00F7D78B00F7DA9600F8DD
      9F00F7DB9800F7D78D00F8D68500F7D88C00F8D88D00F8D88C00FFDF9C00B2BF
      5700B7C05900FFDC9600F8D88E00F7D88B00F8D88E00F4C65600F5DFA0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDF9F0FFB3BDF8FF0583
      FEFF0087FFFF007CFFFF0084FFFF0086FFFF008AFFFF0090FFFF0093FFFF0093
      FFFF00A8FFFF00BAFFFF6FB3FDFFF3ECF3FFF7F5EFFFEFF0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFF0FFFDF9F1FFEAE7FBFF3B99FEFF0098FFFF007BFFFF0073
      FFFF0079FFFF0277FEFFB5C2FBFFFCF9F1FFF0F0F0FF00000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FCFE
      FF0092908D00A9925F00FDDC8A00FEE09100B5A173007F6F5100E7CD8800D4BD
      8400786B5000DCC08300EFE0910098B54300D9CC7300FFDC9400F8D68700F8D6
      8700F8D68800F8D78900F8D88D00F8D88D00F8D88D00F8D88D00FCDA9100ECD4
      850095B43F00ECD58800FFD98D00FAD58600F7DC9A00F7E4B100FDFCF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F2EFFFF5EDF4FF4D95
      FDFF009DFFFF008AFFFF0090FFFF0095FFFF0099FFFF009DFFFF009FFFFF00AD
      FFFF03C2FFFF6FB7FEFFF7EDF3FFF6F4EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF2F1EFFFFFF7EEFFE8E6FAFF4CADFFFF00ACFFFF0090FFFF0084FFFF0080
      FFFF0089FFFF4791FEFFF6F1F6FFF3F2EFFFF0F0F0FF00000000000000000000
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
      0000999BA300504E4800F1DA9000FFEBB200CFD0D0004D4F5A00A49A6F00ECEA
      E00054596B008D815200FFF1A200E7D4870094B33E00DACE7700FFDC9700F8D8
      8D00F8D88D00F8D88D00F8D88D00F8D88D00F8D88D00F8D88E00F8D78C00FFDE
      98008DB03600D9CB6F00EED68F00F0EAC700FCFAF10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFFDF9F1FFC5CB
      FCFF0C97FEFF00AFFFFF009AFFFF00A1FFFF00A6FFFF00A9FFFF00AAFFFF00C8
      FFFF35B6FFFFFFEDFAFFFFF9EEFFF5F2EFFFF5F2EFFFF5F2EFFFF7F3EFFFFEF5
      F0FFFBF2F5FFB7CFF9FF32B1FFFF00BBFFFF00A8FFFF0095FFFF0091FFFF009B
      FFFF0C92FFFFCDD8FFFFFDFAF2FFEFEFF0FFF0F0F0FF00000000000000000000
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
      0000F4F4F4004A4B4D00E2E0D200FFFCF1000000000095969C007C6E43000000
      00009EA2AC0075663E00FFF8A000FFEEA000FAE68E009CBB4200D8CC7400FFDD
      9700F8D88D00F8D88D00F8D88D00F8D88E00F8D88B00F8D58500F6D48300FFDC
      9800B5C25F00BFCD7F009EE2CB00BAEFE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF1F0EFFFFFF8
      F4FF8CB3FFFF00B0FFFF00BCFFFF00ABFFFF00B1FFFF00B5FFFF00B6FFFF01CB
      FFFF28D1FFFF97C8FEFFD5E1F8FFE2E4F3FFE3E5F4FFE3E4F3FFD7E2F7FFA7D4
      FCFF5DC4FFFF08C0FFFF00C8FFFF00B3FFFF00A7FFFF00A1FFFF00A9FFFF00A4
      FFFF8EBDFDFFFFFBF4FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000051515200C8C8CC0000000000F2F3F500A4A6AF0063523100FFFD
      EE00C0C2C900413A2D00928453009A8B5A009E8C6100BCB5710094B83F00CBC8
      6A00FFDE9A00FAD98F00FCD78900F9D37F00F7D58700F8DC9C00F9E5B600FFF8
      EC00D8E9CC0095BF6500A9EADE00A5E7D800FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF4F3
      EFFFFAF1F5FF6BACFDFF00C0FFFF00CBFFFF00BAFFFF00C0FFFF00C4FFFF00C5
      FFFF0EDCFFFF21D8FFFF48C7FFFF57CFFFFF53D5FFFF4CD0FFFF38CAFFFF0DD4
      FFFF00D4FFFF00CEFFFF00BDFFFF00B7FFFF00B2FFFF00BCFFFF00B4FFFF71B9
      FEFFF5F0F2FFF3F1EEFFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      00000000000072717400A09FA100E0E0E300C4C0B800C9CBCF005D544400E8DF
      B900F6F6F600A7A9AD0085889500878A940061626C008C775B00EADD8B0097B6
      4100AFBE5600FEDC9400ECDDA100F9EBC400FFF1D600FDFCF600000000000000
      0000E2EED90079AD4F00C3F0E6008DE1CE00F8FDFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFEFF0
      F0FFF6F4EFFFF1EAF1FF76B7FDFF0BCBFFFF07DCFFFF00CEFFFF00CEFFFF00D2
      FFFF00D2FFFF01DBFFFF0CE0FFFF0BE8FFFF08EAFFFF06E7FFFF05DEFFFF00D8
      FFFF00CFFFFF00CAFFFF00C6FFFF00C5FFFF00D0FFFF00C6FFFF75C2FEFFF4EF
      F2FFF6F3EFFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000B4B4B500E1E2E400A19D9700C8BA8B00FAFAF60059565500C6BB
      8B0000000000D0D0D300FFF6D500FFFFFE00FFFFE600F9DF9600FFDC8F00F2D5
      8800A6BD54009AAA260096C46E00A5F2F400F6FFFF0000000000000000000000
      0000C9E0B60074A94400BFEFE50077DCC300F7FDFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFEFF0F0FFF6F3EFFFFDF4F5FF9ECEFFFF37CBFFFF28E6FFFF1AE6FFFF00E0
      FFFF00E0FFFF00E1FFFF00E0FFFF00E0FFFF00DFFFFF00E0FFFF00DEFFFF00DC
      FFFF00DBFFFF00DAFFFF00DEFFFF00DEFFFF1CCCFFFF9CD5FFFFFEF6F7FFF5F2
      EEFFEFF0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE0000000000E9EAEE00A29B8E00EAE1C8000000000063636600A993
      5E000000000068686A005F460200A1A09500A2A19700B5B08D00EDD8A200FEDF
      9A00FCDC9800C8BD4A0086A720006ABF770067D0A400C4F4EE0000000000FAFB
      F20078AD400098BA57007DE0CB007ADDC4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF3F2EFFFFFF7F4FFCFE1FAFF7BCFFEFF5CDEFFFF55EC
      FFFF44F3FFFF25F4FFFF19F0FFFF0EF0FFFF0CF0FFFF0BEFFFFF12EEFFFF14F0
      FFFF17F0FFFF18EAFFFF1EDFFFFF63D7FFFFD1E5F9FFFFF8F4FFF3F1F0FFEFF0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      0000FDFDFD0000000000C3C2C300AEAEB000000000000000000087888E008877
      5200FFFCF200CBCBCD007C7D82007A7A7F0078787D0044455000AFB1B200FFFE
      F000F8E0A600FFDB9300F1E6B700AECB85006CB145002A9F3A006AB56D006BA5
      410036910A0058CB990033CDAB00C9F0E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0EFFFF9F4EFFFF4F0F1FFC6E2F7FFA1DD
      FEFF8EE3FFFF83E1FFFF85F3FFFF83FAFFFF78FAFFFF6AFAFFFF63F2FFFF5DE3
      FFFF61E5FFFF8DE1FEFFC9E7F8FFF8F1F3FFFAF3F0FFF0EFEFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF00000000000000000000
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
      0000FEFEFE00FDFDFD00F6F6F600F4F4F40000000000FDFDFD00F3F2F300EAE8
      E400FDFEF900FFFFFD00000000000000000000000000F4F4F400ECECED000000
      0000FEFCF500FCFCF8000000000000000000F5F6E900D7E3C100AECD9500A7CE
      990094DFC20083E2D100CEF2E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF2F1F0FFF8F2EFFFF9F3
      F1FFE7EBF1FFD8E9F5FFCAEBF7FFC5E9F7FFC5EAF7FFC2EAF7FFC9ECF7FFDAEB
      F5FFECECF1FFFDF3F1FFFAF2EFFFF2F0EFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
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
      00000000000000000000000000000000FFFE00000001FFFFFFF800000007FFFF
      FFF80000017FFFFFFFC00000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFE0000007FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFC000001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFF00000003FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFE10000001FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
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
      FFE00000005FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFF00000003FFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFC000000FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFC040000FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFE040001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFE000001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF000001FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF003803FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF007801FFFFFFFF800000007FFF00FFFE00000001FFFFFFF800000007FFFF
      FFFF000001FFFFFFFF800000007FFF00FFFFF001D00FFFFFFFFFFFFFF80FFFFF
      FFFFFFE3FFFFFFFFFF800000007FFF00FFFFE0000003FFFFFFFFFFFFE00FFFFF
      FFFFFFC1FFFFFFFFFF800000007FFF00FFFFE0000003FFFFFFFFFFFFC00FFFFF
      FFFFFF01FFFFFFFFFF800000007FFF00FFFF80000003FFFFFFFFFFFF800FFFFF
      FFFF0E00FFFFFFFFFF800000007FFF00FFFE00000001FFFFFFFFFFFF0007FFFF
      FFFE03007FFFFFFFFF800000007FFF00FFFE00000001FFFFFFFFFFFE000FFFFF
      FFFC00C07FFFFFFFFF800000007FFF00FFFE00000001FFFFFFFFFC1C001FFFFF
      FFFC00207FFFFFFFFF800000007FFF00FFFE00000001FFFFFFFFF800003FFFFF
      FFFC0E001FFFFFFFFF800000007FFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFFC1F0003FFFFFFFF800000007FFF00FFFE00000001FFFFFFFFF000003FFFFF
      FFFC1F0001FFFFFFFF800000007FFF00FFFE00000003FFFFFFFFE000007FFFFF
      FFFE0E0001FFFFFFFF800000007FFF00FFFE00000003FFFFFFFFE00000FFFFFF
      FFFE0C7000FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFC00000FFFFFF
      FFFF0D0000FFFFFFFF800000007FFF00FFFE00000007FFFFFFFF800001FFFFFF
      FFFF020000FFFFFFFF800000007FFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFFF060000FFFFFFFF800000007FFF00FFFE00000007FFFFFFFF0000001FFFFF
      FFFF800000FFFFFFFF800000007FFF00FFFE00000007FFFFFFFF0000000FFFFF
      FFFF8000007FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000000FFFFF
      FFFFC000007FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000001FFFFF
      FFFC0100003FFFFFFF800000007FFF00FFFE00000007FFFFFFFC0000001FFFFF
      FFF80000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFC0000003FFFFF
      FFF00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000003FFFFF
      FFE00038001FFFFFFF800000007FFF00FFFE00000007FFFFFFFE0000007FFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF000000FFFFFF
      FFE00000001FFFFFFF800000007FFF00FFFE00000007FFFFFFFF8000007FFFFF
      FFF00000007FFFFFFF800000007FFF00FFFE00000007FFFFFFFFE000007FFFFF
      FFF0900000FFFFFFFF800000007FFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFF90000007FFFFFFF800000007FFF00FFFE00000007FFFFFFFFF00000FFFFFF
      FFF80000307FFFFFFF800000007FFF00FFFE00000007FFFFFFFFF80001FFFFFF
      FFF80800707FFFFFFF800000007FFF00FFFF00000007FFFFFFFFF80003FFFFFF
      FFE4480020FFFFFFFF800000007FFF00FFFF00000007FFFFFFFFFC0007FFFFFF
      FFF4C00000FFFFFFFF800000007FFF00FFFF8000000FFFFFFFFFFE003FFFFFFF
      FFF0839301FFFFFFFF800000007FFF0000000000000000000000000000000000
      000000000000}
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT PK.ID,PK.IDPK,PK.IDEP,'
      
        '       PK.ROM_CDCX,PK.ROM_CDPR,PK.ROM_CDRD,PK.ROM_CDRO,PK.ROM_CD' +
        'NF,PK.ROM_CDBX,PK.ROM_CONC,'
      '       PK.ROM_DERO,PK.ROM_CTNR,'
      '       PK.ROM_DROM,PK.ROM_DNFS,PK.ROM_DBAI,PK.ROM_DCAN,'
      
        '       PK.IDCD,CD.FANTASIA AS DECD,CRD.CSCD AS FIN_CSPD,CRD.VCRD' +
        ',CD.CLI_ESTA,'
      '       PK.IDCV,CV.LOGIN    AS DECV,'
      '       PK.IDCR,CR.FANTASIA AS DECR,'
      
        '       PK.CDPG,PAG_DPAG,PAG_PARC,PAG_PRAZ,PAG_DPAG AS DEPG,PK.RE' +
        'CO,'
      
        '       PK.ROM_CTRA,PK.ROM_DTRA,PK.ROM_MFRT,PK.CFRT    ,PK.ROM_VF' +
        'RT,PK.ROM_RLVE,'
      
        '       PK.ROM_TSDE,PK.ROM_TDSC,PK.ROM_PDSC,PK.ROM_VDSC,PK.ROM_TC' +
        'DE,PK.ROM_VNF ,'
      '       PK.ROM_STPD,PK.ROM_STCO,PK.ROM_STFI,'
      '       VEN_FATU,VEN_QTSP,VEN_BEST,VEN_AGRP,VEN_CNA1,VEN_CNA2,'
      
        '       TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCH' +
        'AR(1064))) AS INFADCAD'
      ''
      '       FROM ROM_CAB AS PK'
      ''
      '       JOIN CAD_CLI     AS CD    ON (CD.ID    = PK.IDCD)'
      
        '       JOIN CAD_CLI_CRD AS CRD   ON (CRD.IDEP = PK.IDEP AND CRD.' +
        'IDCD = PK.IDCD)'
      
        '       JOIN CAD_REP     AS CR    ON (CAST(CR.ID AS SMALLINT) = P' +
        'K.IDCR)'
      ''
      '       JOIN TAB_USER    AS CV    ON (CV.ID    = PK.IDCV)'
      '       JOIN TAB_PED     AS TB_PD ON (TB_PD.ID = PK.CDPD)'
      
        '       JOIN TAB_PAG     AS TB_PG ON (CAST(TB_PG.ID AS SMALLINT) ' +
        '= PK.CDPG)'
      ''
      
        '       WHERE CAST(PK.DTCA AS DATE) BETWEEN (DATEADD(1 - EXTRACT(' +
        'DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTR' +
        'ACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1' +
        ' MONTH TO CURRENT_DATE)))'
      
        '       OR    CAST(PK.DTNF AS DATE) BETWEEN (DATEADD(1 - EXTRACT(' +
        'DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTR' +
        'ACT(DAY FROM DATEADD(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1' +
        ' MONTH TO CURRENT_DATE)))'
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      ')'
      'SELECT   DISTINCT PK.* FROM CTE_PSQ AS PK'
      'ORDER BY PK.ID DESC')
    Left = 64
    Top = 224
    object CadastroID: TIntegerField
      DisplayLabel = 'Roman'
      FieldName = 'ID'
      Origin = '"ROM_CAB"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"ROM_CAB"."IDPK"'
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"ROM_CAB"."IDEP"'
    end
    object CadastroROM_CDCX: TIntegerField
      FieldName = 'ROM_CDCX'
      Origin = '"ROM_CAB"."ROM_CDCX"'
    end
    object CadastroROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"ROM_CAB"."ROM_CDPR"'
    end
    object CadastroROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"ROM_CAB"."ROM_CDRD"'
    end
    object CadastroROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"ROM_CAB"."ROM_CDRO"'
    end
    object CadastroROM_CDNF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'ROM_CDNF'
      Origin = '"ROM_CAB"."ROM_CDNF"'
    end
    object CadastroROM_CDBX: TIntegerField
      FieldName = 'ROM_CDBX'
      Origin = '"ROM_CAB"."ROM_CDBX"'
    end
    object CadastroROM_CONC: TSmallintField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'ROM_CONC'
      Origin = '"ROM_CAB"."ROM_CONC"'
    end
    object CadastroROM_DERO: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'ROM_DERO'
      Origin = '"ROM_CAB"."ROM_DERO"'
      Size = 30
    end
    object CadastroROM_CTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'ROM_CTNR'
      Origin = '"ROM_CAB"."ROM_CTNR"'
    end
    object CadastroROM_DROM: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ROM_DROM'
      Origin = '"ROM_CAB"."ROM_DROM"'
    end
    object CadastroROM_DNFS: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ROM_DNFS'
      Origin = '"ROM_CAB"."ROM_DNFS"'
    end
    object CadastroROM_DBAI: TDateField
      FieldName = 'ROM_DBAI'
      Origin = '"ROM_CAB"."ROM_DBAI"'
    end
    object CadastroROM_DCAN: TDateField
      FieldName = 'ROM_DCAN'
      Origin = '"ROM_CAB"."ROM_DCAN"'
    end
    object CadastroCLI_ESTA: TIBStringField
      FieldName = 'CLI_ESTA'
      Origin = '"CAD_CLI"."CLI_ESTA"'
      Size = 2
    end
    object CadastroFIN_CSPD: TSmallintField
      FieldName = 'FIN_CSPD'
      Origin = '"CAD_CLI_CRD"."NAFA"'
    end
    object CadastroPAG_DPAG: TIBStringField
      DisplayLabel = 'Prazo'
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object CadastroPAG_PARC: TSmallintField
      FieldName = 'PAG_PARC'
      Origin = '"TAB_PAG"."PAG_PARC"'
    end
    object CadastroPAG_PRAZ: TSmallintField
      FieldName = 'PAG_PRAZ'
      Origin = '"TAB_PAG"."PAG_PRAZ"'
    end
    object CadastroROM_CTRA: TIntegerField
      FieldName = 'ROM_CTRA'
      Origin = '"ROM_CAB"."ROM_CTRA"'
    end
    object CadastroROM_DTRA: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'ROM_DTRA'
      Origin = '"ROM_CAB"."ROM_DTRA"'
      Size = 60
    end
    object CadastroCFRT: TIBStringField
      DisplayLabel = 'N'#186' Coleta'
      FieldName = 'CFRT'
      Origin = '"ROM_CAB"."CFRT"'
      Size = 10
    end
    object CadastroROM_MFRT: TSmallintField
      FieldName = 'ROM_MFRT'
      Origin = '"ROM_CAB"."ROM_MFRT"'
    end
    object CadastroROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"ROM_CAB"."ROM_VFRT"'
      Precision = 18
      Size = 2
    end
    object CadastroROM_RLVE: TIntegerField
      FieldName = 'ROM_RLVE'
      Origin = '"ROM_CAB"."ROM_RLVE"'
    end
    object CadastroROM_TSDE: TIBBCDField
      DisplayLabel = 'Sub total R$'
      FieldName = 'ROM_TSDE'
      Origin = '"ROM_CAB"."ROM_TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroROM_TDSC: TIBStringField
      FieldName = 'ROM_TDSC'
      Origin = '"ROM_CAB"."ROM_TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroROM_PDSC: TIBBCDField
      DisplayLabel = 'Desc %'
      FieldName = 'ROM_PDSC'
      Origin = '"ROM_CAB"."ROM_PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroROM_VDSC: TIBBCDField
      DisplayLabel = 'Desc R$'
      FieldName = 'ROM_VDSC'
      Origin = '"ROM_CAB"."ROM_VDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroROM_TCDE: TIBBCDField
      DisplayLabel = 'Total R$'
      FieldName = 'ROM_TCDE'
      Origin = '"ROM_CAB"."ROM_TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroROM_VNF: TIBBCDField
      FieldName = 'ROM_VNF'
      Origin = '"ROM_CAB"."ROM_VNF"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroROM_STPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ROM_STPD'
      Origin = '"ROM_CAB"."ROM_STPD"'
      Size = 30
    end
    object CadastroROM_STCO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'ROM_STCO'
      Origin = '"ROM_CAB"."ROM_STCO"'
      Size = 30
    end
    object CadastroROM_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ROM_STFI'
      Origin = '"ROM_CAB"."ROM_STFI"'
      Size = 30
    end
    object CadastroVEN_FATU: TIBStringField
      FieldName = 'VEN_FATU'
      Origin = '"TAB_PED"."VEN_FATU"'
      FixedChar = True
      Size = 1
    end
    object CadastroVEN_QTSP: TIBStringField
      FieldName = 'VEN_QTSP'
      Origin = '"TAB_PED"."VEN_QTSP"'
      FixedChar = True
      Size = 1
    end
    object CadastroVEN_BEST: TIBStringField
      FieldName = 'VEN_BEST'
      Origin = '"TAB_PED"."VEN_BEST"'
      FixedChar = True
      Size = 1
    end
    object CadastroVEN_AGRP: TIBStringField
      FieldName = 'VEN_AGRP'
      Origin = '"TAB_PED"."VEN_AGRP"'
      FixedChar = True
      Size = 1
    end
    object CadastroVEN_CNA1: TIBStringField
      FieldName = 'VEN_CNA1'
      Origin = '"TAB_PED"."VEN_CNA1"'
      Size = 10
    end
    object CadastroVEN_CNA2: TIBStringField
      FieldName = 'VEN_CNA2'
      Origin = '"TAB_PED"."VEN_CNA2"'
      Size = 10
    end
    object CadastroROM_TOTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ROM_TOTA'
      Calculated = True
    end
    object CadastroRECO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'RECO'
      Origin = '"ROM_CAB"."RECO"'
      Size = 3
    end
    object CadastroINFADCAD: TIBStringField
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 812
    end
    object CadastroDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object CadastroDECV: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'DECV'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 30
    end
    object CadastroDECR: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'DECR'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object CadastroDEPG: TIBStringField
      DisplayLabel = 'Prazo'
      FieldName = 'DEPG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object CadastroIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"ROM_CAB"."IDCD"'
    end
    object CadastroVCRD: TIBBCDField
      FieldName = 'VCRD'
      Origin = '"CAD_CLI_CRD"."VCRD"'
      Precision = 18
      Size = 2
    end
    object CadastroIDCV: TSmallintField
      FieldName = 'IDCV'
      Origin = '"ROM_CAB"."IDCV"'
    end
    object CadastroIDCR: TSmallintField
      FieldName = 'IDCR'
      Origin = '"ROM_CAB"."IDCR"'
    end
    object CadastroCDPG: TSmallintField
      FieldName = 'CDPG'
      Origin = '"ROM_CAB"."CDPG"'
    end
  end
  inherited TConsulta: TIBTransaction
    Left = 64
  end
  inherited SQLConsulta: TIBSQL
    Left = 96
  end
  inherited TEdicao: TIBTransaction
    Left = 160
  end
  inherited SQLEdicao: TIBSQL
    Left = 192
  end
  inherited SPEdicao: TIBStoredProc
    Left = 256
  end
  inherited TEvent: TIBTransaction
    Left = 288
  end
  inherited SPEvent: TIBStoredProc
    Left = 352
  end
  inherited ILDockIcons: TImageList
    Left = 160
    Top = 256
  end
  inherited DMMain: TdxDockingManager
    Left = 192
  end
  inherited BMMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 160
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited SQLEvent: TIBSQL
    Left = 320
  end
  inherited EEvent: TIBEvents
    Left = 384
  end
  inherited ALPrincipal: TActionList
    Left = 416
  end
  object SQLFKEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 224
    Top = 192
  end
  object SQLFKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 128
    Top = 192
  end
  object CAD_PRO_IMG: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    DataSource = dtsrom_ite
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
      'FROM   VW_CAD_PRO_IMG AS CDN'
      'WHERE  CDN.IDCP = :IDCP')
    Left = 64
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
    Left = 96
    Top = 288
  end
  object rom_ite: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AutoCalcFields = False
    AfterOpen = rom_iteAfterOpen
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT    PS.FANTASIA AS EMPRESA,'
      '          PK.*,'
      '          CP.ARTIGO AS PRO_CART,CP.PRO_CPRO,'
      '          CP.PRO_CCOR,'
      '          CP.PRO_QVOL,CP.PRO_ESP,'
      '          CP.PRO_PTABI,CP.PRO_PTABF'
      'FROM      ROM_ITE     AS PK'
      'JOIN      CAD_PRO     AS CP ON (CP.ID = PK.IDCP)'
      'JOIN      TAB_PAR_SIS AS PS ON (PS.ID = CP.IDEP)'
      'WHERE     PK.IDPK = 37138')
    Left = 64
    Top = 256
    object rom_iteID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROM_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rom_iteROM_CCAB: TIntegerField
      FieldName = 'ROM_CCAB'
      Origin = '"ROM_ITE"."ROM_CCAB"'
    end
    object rom_iteROM_CDOC: TIntegerField
      FieldName = 'ROM_CDOC'
      Origin = '"ROM_ITE"."ROM_CDOC"'
    end
    object rom_iteROM_CDPR: TIntegerField
      FieldName = 'ROM_CDPR'
      Origin = '"ROM_ITE"."ROM_CDPR"'
    end
    object rom_iteROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"ROM_ITE"."ROM_CDPD"'
    end
    object rom_iteROM_CDRO: TIntegerField
      FieldName = 'ROM_CDRO'
      Origin = '"ROM_ITE"."ROM_CDRO"'
    end
    object rom_iteROM_CDRD: TIntegerField
      FieldName = 'ROM_CDRD'
      Origin = '"ROM_ITE"."ROM_CDRD"'
    end
    object rom_iteROM_CDNF: TIntegerField
      FieldName = 'ROM_CDNF'
      Origin = '"ROM_ITE"."ROM_CDNF"'
    end
    object rom_iteROM_ITEM: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'ROM_ITEM'
      Origin = '"ROM_ITE"."ROM_ITEM"'
      Size = 5
    end
    object rom_iteROM_CPRO: TIntegerField
      FieldName = 'ROM_CPRO'
      Origin = '"ROM_ITE"."ROM_CPRO"'
    end
    object rom_iteROM_CPR2: TIntegerField
      FieldName = 'ROM_CPR2'
      Origin = '"ROM_ITE"."ROM_CPR2"'
    end
    object rom_iteROM_CDET: TIBStringField
      DisplayLabel = 'Etiqueta'
      FieldName = 'ROM_CDET'
      Origin = '"ROM_ITE"."ROM_CDET"'
      Size = 10
    end
    object rom_iteROM_QTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTDE'
      Origin = '"ROM_ITE"."ROM_QTDE"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_QTRL: TIntegerField
      DisplayLabel = 'PC'
      FieldName = 'ROM_QTRL'
      Origin = '"ROM_ITE"."ROM_QTRL"'
    end
    object rom_iteROM_QTSP: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTSP'
      Origin = '"ROM_ITE"."ROM_QTSP"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_RLSP: TIntegerField
      FieldName = 'ROM_RLSP'
      Origin = '"ROM_ITE"."ROM_RLSP"'
    end
    object rom_iteROM_QTPD: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ROM_QTPD'
      Origin = '"ROM_ITE"."ROM_QTPD"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 4
    end
    object rom_iteROM_RLPD: TIntegerField
      DisplayLabel = 'PC'
      FieldName = 'ROM_RLPD'
      Origin = '"ROM_ITE"."ROM_RLPD"'
    end
    object rom_iteROM_UNIT: TFloatField
      DisplayLabel = 'Vl. Unit'#225'rio'
      FieldName = 'ROM_UNIT'
      Origin = '"ROM_ITE"."ROM_UNIT"'
      DisplayFormat = ',##,0.00###'
    end
    object rom_iteROM_PREC: TFloatField
      DisplayLabel = 'Vl. Pedido'
      FieldName = 'ROM_PREC'
      Origin = '"ROM_ITE"."ROM_PREC"'
      DisplayFormat = ',##,0.00###'
    end
    object rom_iteROM_VDSC: TIBBCDField
      FieldName = 'ROM_VDSC'
      Origin = '"ROM_ITE"."ROM_VDSC"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_TOTA: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TOTA'
      Origin = '"ROM_ITE"."ROM_TOTA"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 18
      Size = 2
    end
    object rom_iteROM_FLAG: TIBStringField
      FieldName = 'ROM_FLAG'
      Origin = '"ROM_ITE"."ROM_FLAG"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ROM_DPRO'
      Origin = '"ROM_ITE"."ROM_DPRO"'
      Size = 120
    end
    object rom_iteROM_COMI: TIBBCDField
      FieldName = 'ROM_COMI'
      Origin = '"ROM_ITE"."ROM_COMI"'
      DisplayFormat = ',##,0.00;-,##,0.00'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_TPRC: TIBStringField
      FieldName = 'ROM_TPRC'
      Origin = '"ROM_ITE"."ROM_TPRC"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_ABCD: TIBStringField
      FieldName = 'ROM_ABCD'
      Origin = '"ROM_ITE"."ROM_ABCD"'
      FixedChar = True
      Size = 1
    end
    object rom_iteROM_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'ROM_DCOR'
      Origin = '"ROM_ITE"."ROM_DCOR"'
      Size = 30
    end
    object rom_iteROM_PCOR: TIBStringField
      FieldName = 'ROM_PCOR'
      Origin = '"ROM_ITE"."ROM_PCOR"'
      Size = 30
    end
    object rom_iteROM_DCO2: TIBStringField
      FieldName = 'ROM_DCO2'
      Origin = '"ROM_ITE"."ROM_DCO2"'
      Size = 30
    end
    object rom_iteROM_PCO2: TIBStringField
      FieldName = 'ROM_PCO2'
      Origin = '"ROM_ITE"."ROM_PCO2"'
      Size = 30
    end
    object rom_iteROM_DSEP: TIBStringField
      FieldName = 'ROM_DSEP'
      Origin = '"ROM_ITE"."ROM_DSEP"'
      Size = 40
    end
    object rom_iteROM_DUNI: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'ROM_DUNI'
      Origin = '"ROM_ITE"."ROM_DUNI"'
      Size = 6
    end
    object rom_iteROM_PESO: TIBBCDField
      FieldName = 'ROM_PESO'
      Origin = '"ROM_ITE"."ROM_PESO"'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_OBSE: TMemoField
      FieldName = 'ROM_OBSE'
      Origin = '"ROM_ITE"."ROM_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object rom_iteROM_PSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'ROM_PSBR'
      Origin = '"ROM_ITE"."ROM_PSBR"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 3
    end
    object rom_iteROM_PSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'ROM_PSLQ'
      Origin = '"ROM_ITE"."ROM_PSLQ"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 3
    end
    object rom_itePRO_CART: TIBStringField
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
    object rom_itePRO_QVOL: TIBBCDField
      FieldName = 'PRO_QVOL'
      Origin = '"CAD_PRO"."PRO_QVOL"'
      Precision = 9
      Size = 2
    end
    object rom_itePRO_ESP: TIBStringField
      FieldName = 'PRO_ESP'
      Origin = '"CAD_PRO"."PRO_ESP"'
      Size = 30
    end
    object rom_itePRO_PTABI: TFloatField
      FieldName = 'PRO_PTABI'
      Origin = '"CAD_PRO"."PRO_PTABI"'
      DisplayFormat = ',##,0.00;-,##,0.00'
    end
    object rom_itePRO_PTABF: TFloatField
      FieldName = 'PRO_PTABF'
      Origin = '"CAD_PRO"."PRO_PTABF"'
      DisplayFormat = ',##,0.00;-,##,0.00'
    end
    object rom_iteROM_CDSP: TIntegerField
      FieldName = 'ROM_CDSP'
      Origin = '"ROM_ITE"."ROM_CDSP"'
    end
    object rom_iteROM_IDSP: TIntegerField
      FieldName = 'ROM_IDSP'
      Origin = '"ROM_ITE"."ROM_IDSP"'
    end
    object rom_iteROM_DTSP: TDateTimeField
      FieldName = 'ROM_DTSP'
      Origin = '"ROM_ITE"."ROM_DTSP"'
    end
    object rom_iteROM_VUPC: TFloatField
      FieldName = 'ROM_VUPC'
      Origin = '"ROM_ITE"."ROM_VUPC"'
    end
    object rom_iteROM_VUPCIPI: TFloatField
      FieldName = 'ROM_VUPCIPI'
      Origin = '"ROM_ITE"."ROM_VUPCIPI"'
    end
    object rom_iteROM_VUCU: TFloatField
      FieldName = 'ROM_VUCU'
      Origin = '"ROM_ITE"."ROM_VUCU"'
    end
    object rom_iteROM_VULB: TFloatField
      FieldName = 'ROM_VULB'
      Origin = '"ROM_ITE"."ROM_VULB"'
    end
    object rom_iteROM_VUICMS: TFloatField
      FieldName = 'ROM_VUICMS'
      Origin = '"ROM_ITE"."ROM_VUICMS"'
    end
    object rom_iteROM_VUIPI: TFloatField
      FieldName = 'ROM_VUIPI'
      Origin = '"ROM_ITE"."ROM_VUIPI"'
    end
    object rom_iteROM_VUPIS: TFloatField
      FieldName = 'ROM_VUPIS'
      Origin = '"ROM_ITE"."ROM_VUPIS"'
    end
    object rom_iteROM_VUCOFINS: TFloatField
      FieldName = 'ROM_VUCOFINS'
      Origin = '"ROM_ITE"."ROM_VUCOFINS"'
    end
    object rom_iteROM_PUPCIPI: TFloatField
      FieldName = 'ROM_PUPCIPI'
      Origin = '"ROM_ITE"."ROM_PUPCIPI"'
    end
    object rom_iteROM_CTNR: TIBStringField
      FieldName = 'ROM_CTNR'
      Origin = '"ROM_ITE"."ROM_CTNR"'
      Size = 30
    end
    object rom_iteROM_VFRT: TIBBCDField
      FieldName = 'ROM_VFRT'
      Origin = '"ROM_ITE"."ROM_VFRT"'
      Precision = 9
      Size = 2
    end
    object rom_iteROM_NFCI: TIBStringField
      FieldName = 'ROM_NFCI'
      Origin = '"ROM_ITE"."ROM_NFCI"'
      Size = 40
    end
    object rom_iteEMPRESA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object rom_iteDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"ROM_ITE"."DGCP"'
      Size = 60
    end
    object rom_iteLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"ROM_ITE"."LOTE"'
      Size = 10
    end
    object rom_iteIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"ROM_ITE"."IDEP"'
    end
    object rom_iteIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"ROM_ITE"."IDCA"'
    end
    object rom_iteDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"ROM_ITE"."DTCA"'
    end
    object rom_iteIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"ROM_ITE"."IDED"'
    end
    object rom_iteDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"ROM_ITE"."DTED"'
    end
    object rom_iteIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"ROM_ITE"."IDPK"'
    end
    object rom_iteIDFK: TLargeintField
      FieldName = 'IDFK'
      Origin = '"ROM_ITE"."IDFK"'
    end
    object rom_iteITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = '"ROM_ITE"."ITEM"'
    end
    object rom_iteIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"ROM_ITE"."IDCP"'
    end
    object rom_iteCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"ROM_ITE"."CP_IDEP"'
    end
    object rom_iteIDCOL: TSmallintField
      FieldName = 'IDCOL'
      Origin = '"ROM_ITE"."IDCOL"'
    end
    object rom_iteIDSCT: TSmallintField
      FieldName = 'IDSCT'
      Origin = '"ROM_ITE"."IDSCT"'
    end
    object rom_iteARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = '"ROM_ITE"."ARTIGO"'
      Size = 30
    end
    object rom_iteSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"ROM_ITE"."SKU"'
      Size = 30
    end
    object rom_iteCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"ROM_ITE"."CEAN"'
    end
    object rom_iteDECP: TIBStringField
      FieldName = 'DECP'
      Origin = '"ROM_ITE"."DECP"'
      Size = 120
    end
    object rom_iteUCOM: TIBStringField
      FieldName = 'UCOM'
      Origin = '"ROM_ITE"."UCOM"'
      Size = 10
    end
    object rom_iteUCON: TIBStringField
      FieldName = 'UCON'
      Origin = '"ROM_ITE"."UCON"'
      Size = 40
    end
    object rom_iteQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"ROM_ITE"."QTDE"'
      Precision = 18
      Size = 4
    end
    object rom_iteQTRL: TIntegerField
      FieldName = 'QTRL'
      Origin = '"ROM_ITE"."QTRL"'
    end
    object rom_itePSBR: TIBBCDField
      FieldName = 'PSBR'
      Origin = '"ROM_ITE"."PSBR"'
      Precision = 18
      Size = 3
    end
    object rom_itePSLQ: TIBBCDField
      FieldName = 'PSLQ'
      Origin = '"ROM_ITE"."PSLQ"'
      Precision = 18
      Size = 3
    end
    object rom_iteVPRC_PAD_ORI: TIBStringField
      FieldName = 'VPRC_PAD_ORI'
      Origin = '"ROM_ITE"."VPRC_PAD_ORI"'
      Size = 2
    end
    object rom_iteVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"ROM_ITE"."VPRC_PAD_INI"'
    end
    object rom_iteVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"ROM_ITE"."VPRC_PAD_FIM"'
    end
    object rom_iteVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"ROM_ITE"."VPRC_PAD"'
    end
    object rom_itePDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"ROM_ITE"."PDSC"'
      Precision = 9
      Size = 2
    end
    object rom_iteVDSC: TIBBCDField
      FieldName = 'VDSC'
      Origin = '"ROM_ITE"."VDSC"'
      Precision = 18
      Size = 2
    end
    object rom_iteVPRC_COM: TFloatField
      FieldName = 'VPRC_COM'
      Origin = '"ROM_ITE"."VPRC_COM"'
    end
    object rom_iteTSDE: TIBBCDField
      FieldName = 'TSDE'
      Origin = '"ROM_ITE"."TSDE"'
      Precision = 18
      Size = 2
    end
    object rom_iteTCDE: TIBBCDField
      FieldName = 'TCDE'
      Origin = '"ROM_ITE"."TCDE"'
      Precision = 18
      Size = 2
    end
    object rom_iteNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"ROM_ITE"."NCM"'
      FixedChar = True
      Size = 8
    end
    object rom_iteORIG: TSmallintField
      FieldName = 'ORIG'
      Origin = '"ROM_ITE"."ORIG"'
    end
    object rom_itePIPI: TIBBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'PIPI'
      Origin = '"ROM_ITE"."PIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object rom_iteVIPI: TIBBCDField
      DisplayLabel = 'Total R$'
      FieldName = 'VIPI'
      Origin = '"ROM_ITE"."VIPI"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object rom_iteRCOM: TIBStringField
      FieldName = 'RCOM'
      Origin = '"ROM_ITE"."RCOM"'
      FixedChar = True
      Size = 1
    end
    object rom_itePCOM: TIBBCDField
      FieldName = 'PCOM'
      Origin = '"ROM_ITE"."PCOM"'
      Precision = 9
      Size = 2
    end
    object rom_iteVCOM: TIBBCDField
      FieldName = 'VCOM'
      Origin = '"ROM_ITE"."VCOM"'
      Precision = 18
      Size = 2
    end
    object rom_iteCDET: TLargeintField
      FieldName = 'CDET'
      Origin = '"ROM_ITE"."CDET"'
    end
    object rom_iteCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"ROM_ITE"."CTNR"'
      Size = 30
    end
    object rom_iteIDSP: TSmallintField
      FieldName = 'IDSP'
      Origin = '"ROM_ITE"."IDSP"'
    end
    object rom_iteCDSP: TLargeintField
      FieldName = 'CDSP'
      Origin = '"ROM_ITE"."CDSP"'
    end
    object rom_iteDTSP: TDateTimeField
      FieldName = 'DTSP'
      Origin = '"ROM_ITE"."DTSP"'
    end
    object rom_iteIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"ROM_ITE"."IDEV"'
    end
    object rom_iteIP: TIBStringField
      FieldName = 'IP'
      Origin = '"ROM_ITE"."IP"'
      Size = 30
    end
    object rom_iteHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"ROM_ITE"."HOST"'
      Size = 30
    end
    object rom_iteFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"ROM_ITE"."FLAG"'
    end
    object rom_iteINFADETQ: TMemoField
      FieldName = 'INFADETQ'
      Origin = '"ROM_ITE"."INFADETQ"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object rom_iteSCOM: TSmallintField
      FieldName = 'SCOM'
      Origin = '"ROM_ITE"."SCOM"'
    end
    object rom_iteTDSC: TIBBCDField
      FieldName = 'TDSC'
      Origin = '"ROM_ITE"."TDSC"'
      Precision = 18
      Size = 2
    end
    object rom_iteTIPI: TIBBCDField
      FieldName = 'TIPI'
      Origin = '"ROM_ITE"."TIPI"'
      Precision = 18
      Size = 2
    end
    object rom_iteTCOM: TIBBCDField
      FieldName = 'TCOM'
      Origin = '"ROM_ITE"."TCOM"'
      Precision = 18
      Size = 2
    end
  end
  object dtsrom_ite: TDataSource
    DataSet = rom_ite
    OnDataChange = dtsrom_iteDataChange
    Left = 96
    Top = 256
  end
end
