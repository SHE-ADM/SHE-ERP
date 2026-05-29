inherited frmfin_rec_bai: Tfrmfin_rec_bai
  Left = 192
  Top = 168
  HelpContext = 1
  AlphaBlendValue = 0
  Caption = 'Recebimento Banc'#225'rio'
  ClientHeight = 676
  ClientWidth = 1534
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 1534
    Height = 592
    inherited PaintBox: TPaintBox
      Left = 54
      Width = 1480
      Height = 532
    end
    object pnlBOT: TPanel
      Left = 0
      Top = 532
      Width = 1534
      Height = 60
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object PNLSumario: TPanel
        Left = 0
        Top = 0
        Width = 1534
        Height = 60
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GBInfoAdicional: TGroupBox
          Left = 0
          Top = 0
          Width = 890
          Height = 60
          Align = alLeft
          Caption = '  Informa'#231#245'es Adicionais  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          object DBGInfoAdicional: TdxDBGrid
            Left = 2
            Top = 19
            Width = 886
            Height = 39
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Color = clHighlightText
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -12
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = DTSCadastro
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HideSelectionColor = 14789952
            HighlightColor = 14789952
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            PreviewFieldName = 'FIN_RCLI'
            PreviewFont.Charset = ANSI_CHARSET
            PreviewFont.Color = clBlack
            PreviewFont.Height = -11
            PreviewFont.Name = 'Segoe UI Semibold'
            PreviewFont.Style = [fsBold, fsItalic]
            ScrollBars = ssNone
            object DBGInfoAdicionalFIN_DCLI: TdxDBGridMaskColumn
              Sizing = False
              Width = 250
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FIN_DCLI'
            end
            object DBGInfoAdicionalFIN_RCLI: TdxDBGridMaskColumn
              Width = 350
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FIN_RCLI'
            end
            object DBGInfoAdicionalFIN_VEND: TdxDBGridMaskColumn
              Sizing = False
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FIN_VEND'
            end
            object DBGInfoAdicionalFIN_DREP: TdxDBGridMaskColumn
              Sizing = False
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FIN_DREP'
            end
          end
        end
        object GBInfoComplementar: TGroupBox
          Left = 890
          Top = 0
          Width = 644
          Height = 60
          Align = alClient
          Caption = '  Informa'#231#245'es Adicionais  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          object DBInfoComplementar: TdxDBMemo
            Left = 2
            Top = 19
            Width = 640
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Shadow = True
            TabOrder = 0
            DataField = 'FIN_OBSE'
            DataSource = DTSCadastro
            Height = 39
          end
        end
      end
    end
    object GBContas: TGroupBox
      Left = 54
      Top = 0
      Width = 1480
      Height = 532
      Align = alClient
      Caption = '  Contas  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      object DBGConsulta: TdxDBGrid
        Left = 2
        Top = 19
        Width = 1476
        Height = 511
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
        Color = 14869218
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBGConsultaKeyDown
        AutoSearchColor = 9395
        AutoSearchTextColor = clWhite
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -12
        BandFont.Name = 'Tahoma'
        BandFont.Style = []
        DataSource = DTSCadastro
        Filter.Active = True
        Filter.Criteria = {00000000}
        GridLineColor = clSilver
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideSelectionColor = 14789952
        HighlightColor = 14789952
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        OnCustomDrawCell = DBGConsultaCustomDrawCell
        object DBGConsultaFIN_COBR: TdxDBGridCheckColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_COBR'
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBGConsultaFIN_STFI: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 180
          BandIndex = 0
          RowIndex = 0
          OnValidate = DBGConsultaFIN_STFIValidate
          FieldName = 'FIN_STFI'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object DBGConsultaFIN_TITU: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          DisableEditor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_TITU'
        end
        object DBGConsultaFIN_STDO: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          DisableEditor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_STDO'
        end
        object DBGConsultaFIN_DCAD: TdxDBGridDateColumn
          CharCase = ecUpperCase
          DisableEditor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DCAD'
        end
        object DBGConsultaFIN_DVEN: TdxDBGridDateColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DVEN'
        end
        object DBGConsultaFIN_VALO: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VALO'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VALO'
          SummaryFooterFormat = 'R$ ,##,0.00'
          DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
          Nullable = False
          DisableFilter = True
        end
        object DBGConsultaFIN_VJUR: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 85
          BandIndex = 0
          RowIndex = 0
          OnValidate = DBGConsultaFIN_VJURValidate
          FieldName = 'FIN_VJUR'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VJUR'
          SummaryFooterFormat = 'R$ ,##,0.00'
          DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
          Nullable = False
          DisableFilter = True
        end
        object DBGConsultaFIN_VMUL: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 85
          BandIndex = 0
          RowIndex = 0
          OnValidate = DBGConsultaFIN_VMULValidate
          FieldName = 'FIN_VMUL'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VMUL'
          SummaryFooterFormat = 'R$ ,##,0.00'
          DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
          Nullable = False
          DisableFilter = True
        end
        object DBGConsultaFIN_VDES: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 85
          BandIndex = 0
          RowIndex = 0
          OnValidate = DBGConsultaFIN_VDESValidate
          FieldName = 'FIN_VDES'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VDES'
          SummaryFooterFormat = 'R$ ,##,0.00'
          DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
          Nullable = False
          DisableFilter = True
        end
        object DBGConsultaFIN_VPAG: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 100
          BandIndex = 0
          RowIndex = 0
          OnValidate = DBGConsultaFIN_VPAGValidate
          FieldName = 'FIN_VPAG'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VPAG'
          SummaryFooterFormat = 'R$ ,##,0.00'
          DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
          Nullable = False
          DisableFilter = True
        end
        object DBGConsultaFIN_DPAG: TdxDBGridDateColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DPAG'
        end
        object DBGConsultaFIN_VPEN: TdxDBGridCurrencyColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VPEN'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VPEN'
          SummaryFooterFormat = 'R$ ,##,0.00'
          DisplayFormat = 'R$ ,##,0.00;-R$ ,##,0.00'
          Nullable = False
          DisableFilter = True
        end
        object DBGConsultaFIN_TIPO: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          DisableEditor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_TIPO'
        end
        object DBGConsultaFIN_DCLI: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          DisableEditor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 230
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DCLI'
        end
        object DBGConsultaFIN_STA: TdxDBGridMaskColumn
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_STA'
        end
      end
    end
    object GBMenuEdicao: TGroupBox
      Left = 0
      Top = 0
      Width = 54
      Height = 532
      Align = alLeft
      Caption = ' Edi'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
      object SBMenuEdicao: TSpeedBar
        Left = 2
        Top = 19
        Width = 50
        Height = 511
        Cursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsItalic]
        Position = bpCustom
        Align = alClient
        Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
        BtnOffsetHorz = 8
        BtnOffsetVert = 2
        BtnWidth = 34
        BtnHeight = 32
        Images = ILMenuEdicao
        BevelOuter = bvNone
        TabOrder = 0
        InternalVer = 1
        object SSMenuEdicao: TSpeedbarSection
          Caption = 'Edi'#231#227'o'
        end
        object SIMEAppend: TSpeedItem
          Caption = 'SIMEAppend'
          Enabled = False
          Cursor = crHandPoint
          Hint = 'Inclus'#227'o de Registros'
          ImageIndex = 0
          Spacing = 1
          Left = 8
          Top = 2
          OnClick = SIMEAppendClick
          SectionName = 'Edi'#231#227'o'
        end
        object SIMEEdit: TSpeedItem
          Tag = 1
          Caption = 'SIMEEdit'
          Cursor = crHandPoint
          Hint = 'Edi'#231#227'o de Registros'
          ImageIndex = 1
          Spacing = 1
          Left = 8
          Top = 2
          Visible = True
          OnClick = SIMEEditClick
          SectionName = 'Edi'#231#227'o'
        end
        object SIMEDelete: TSpeedItem
          Tag = 1
          Caption = 'SIMEDelete'
          Cursor = crHandPoint
          Hint = 'Exclus'#227'o de Registros'
          ImageIndex = 2
          Spacing = 1
          Left = 8
          Top = 34
          Visible = True
          OnClick = SIMEDeleteClick
          SectionName = 'Edi'#231#227'o'
        end
        object SIMEPost: TSpeedItem
          Tag = 2
          Caption = 'SIMEPost'
          Enabled = False
          Cursor = crHandPoint
          Hint = 'Salva Edi'#231#227'o'
          ImageIndex = 3
          Spacing = 1
          Left = 8
          Top = 66
          Visible = True
          OnClick = SIMEPostClick
          SectionName = 'Edi'#231#227'o'
        end
        object SIMECancel: TSpeedItem
          Tag = 2
          Caption = 'SIMECancel'
          Enabled = False
          Cursor = crHandPoint
          Hint = 'Cancela Edi'#231#227'o'
          ImageIndex = 4
          Spacing = 1
          Left = 8
          Top = 98
          Visible = True
          OnClick = SIMECancelClick
          SectionName = 'Edi'#231#227'o'
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 657
    Width = 1534
  end
  inherited PNLMenu: TPanel
    Width = 1534
    inherited SpeedBar2: TSpeedBar
      Width = 1534
      inherited siSAIR: TSpeedItem [4]
        Left = 405
      end
      inherited siSAV: TSpeedItem [5]
        Left = 112
        Visible = False
      end
      inherited siCAN: TSpeedItem
        Left = 224
        Visible = False
      end
      inherited siVAL: TSpeedItem [7]
        BtnCaption = 'Validar'
        Caption = ''
        Hint = 'Valida Edi'#231#227'o'
        Left = 165
        Visible = True
      end
      object SIMPesquisa: TSpeedItem
        BtnCaption = 'Pesquisar'
        Cursor = crHandPoint
        Hint = 'Pesquisa Avan'#231'ada'
        ImageIndex = 3
        Spacing = 0
        Left = 5
        Top = 5
        Visible = True
        OnClick = SIMPesquisaClick
        SectionName = 'Movimento'
      end
      object SIMTPagos: TSpeedItem
        BtnCaption = 'Pago'
        Cursor = crHandPoint
        Hint = 'Altera todos os lan'#231'amentos para PAGO'
        ImageIndex = 6
        Spacing = 0
        Left = 245
        Top = 5
        Visible = True
        OnClick = SIMTPagosClick
        SectionName = 'Movimento'
      end
      object SIMTPendentes: TSpeedItem
        BtnCaption = 'Pendente'
        Cursor = crHandPoint
        Hint = 'Altera todos os lan'#231'amentos para PAGO'
        ImageIndex = 7
        Spacing = 0
        Left = 325
        Top = 5
        Visible = True
        OnClick = SIMTPendentesClick
        SectionName = 'Movimento'
      end
      object SIMImportaCNAB: TSpeedItem
        BtnCaption = 'CNAB'
        Cursor = crHandPoint
        Hint = 'Importa registros banc'#225'rios'
        ImageIndex = 5
        Spacing = 0
        Left = 245
        Top = 5
        OnClick = SIMImportaCNABClick
        SectionName = 'Movimento'
      end
      object SIMNovo: TSpeedItem
        BtnCaption = 'Novo'
        Cursor = crHandPoint
        Hint = 'Limpa os lan'#231'amentos registrados e reinicia'
        ImageIndex = 4
        Spacing = 0
        Left = 85
        Top = 5
        Visible = True
        OnClick = SIMNovoClick
        SectionName = 'Movimento'
      end
    end
  end
  inherited Consulta: TIBQuery
    Left = 784
  end
  inherited IBTra: TIBTransaction
    Left = 784
  end
  inherited ibSP: TIBStoredProc
    Left = 816
  end
  inherited TEvent: TIBTransaction
    Left = 848
  end
  inherited SPEvent: TIBStoredProc
    Left = 880
  end
  inherited EEvent: TIBEvents
    Left = 912
  end
  inherited SQLEvent: TIBSQL
    Left = 616
    Top = 160
  end
  inherited ALPrincipal: TActionList
    Left = 584
    Top = 160
  end
  inherited ILMenuPrincipal: TImageList
    Bitmap = {
      494C01010800090004003E002000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000F4F4F4FFF3F3
      F3FFDFDFDFFFC6C6C6FFB5B5B5FFAFAFAFFFB0B0B0FFB0B0B0FFB0B0B0FFB0B0
      B0FFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAEAEAEFFAFAFAFFFBCBC
      BCFFCECECEFFDCDCDCFFEDEDEDFFF5F5F5FFF3F3F3FFF0F0F0FFF0F0F0FFF0F0
      F0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000602A3300611B1F00713B33007B534300815B42008763
      42008D6B430092734400977A43009C824300A0884500A4904A00A7954700AC9C
      4600B0A34700B4A84800B7AD4700B9B04500BDB64900BEB74B00C0BA4C00C7BD
      4500CABF3600C6C34900F2F4E100F0F0F000F0F0F000F0F0F000F0F0F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E0037373700C2C2
      C200FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D9D9D9008B8B8B004949490024242400232323004545
      450086868600D4D4D40000000000000000000000000000000000000000000000
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
      00000000000000000000642E3700591417008D5F5900B3989100B49A8A00B8A0
      8900BAA48800BEA88800C0AC8500C4B38400C4B68300C6BC8700C9BF8300CBC3
      8000CEC88300D1CA8500D3CE8200D4D08000D6D18100D7D38000D7D77B00CCCA
      5500BDB72900C9C64800F3F5E800F0F0F000F0F0F000F0F0F000F0F0F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA002221210056332300130C
      0800ACACAC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEA005C5C5C000C1200004E71000080BA000093D6000094D7000082BD
      0000527700000F17000054545400E3E3E3000000000000000000000000000000
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
      00000000000000000000612B3400631F23006F382D006D381F006B3919007343
      1C00794C1F0081562100865E22008E68250091702200957921009B812100A189
      2300A6921F00AA9A1C00AFA11E00B1A51E00B7AB1D00B8AE2100BAAF2800C6B4
      2A00C5BB2400C2C03C00F3F1D900F8F7E700F0F0F000F0F0F000F0F0F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8B8B8002C1A1300BC714F001308
      020067676700EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D9002323230045630000A8F0000097DE00005888000036590000355700005484
      000093D90000AAF400004D6F00001B1B1B00CFCFCF0000000000000000000000
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
      000000000000000000005F2A3200722F330081493D0088503500794322007C49
      1F00835421008A5E20008F662100966F23009B7624009F7D2600A5852600AA8D
      2600AC932600B29B2800B6A12900B9A52900BDAA2600C0B02800C1B32900CAB7
      2200C3BB2000CAC84300CCC49500A89B5900B5A65600BDB47700F4F2D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000058585800764732007C462C001A23
      29004C555B001C1C1C00818181009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00A2A2A200CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDEDED002020
      20005D870000B6FF04003F6000000F100B0049424E00797178007B737A004D46
      520011100E0036550000B2FB00006896000017171700E4E4E400000000000000
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
      000000000000000000005F2C340066282B006E403700865F4E007F553B00855B
      37008C65360090703700957739009B7D3D009E843900A4903700A9953900AD9B
      3A00B1A03800B6A63700BAAC3700BDB13800BEB73600BCBB3800BEBE3B00C3BD
      3000C1BF1F00CEC84A00C9C08200A78A2900AB982D00A6912900B9AB6E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F30014111000AD684900280F01006C7E
      9000E9FFFF009EB0C300525B66004A525C004A525C004A525C004A525C004B54
      5C00454D53001B1E210044444400D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5B004A61
      2000CAFF4F001E2D040040394800DCDADB0000000000FFFFFD00FFFFF500FFFF
      F100E2DFD0004B424E0012210000B2FF00004D7100004B4B4B00000000000000
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
      00000000000000000000602C34005A171A008E645F00B19D9600B2988600B7A1
      8500BAA58200BDAB8300C0B08200C3B68200C5B98400C8BD8700CBC08500CDC4
      8300D1C58500D4C68800D7CB8700D8CE8400D7CF8700D8D18900D9D88200CFCB
      5B00BCB92200CFC64A00CAC18300A98B2600B0982D00B1952500A08C3F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFAFAF0044291D00A46040000F0F1000B6CD
      E500D1E9FF00D5EDFF00D9F2FF00D9F1FF00D9F1FF00D9F1FF00D9F1FF00D9F2
      FF00DAF2FF00CBE2F600707D8A0014141400D2D2D20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D8000E110700C6F9
      6F00455B25003A334100FFFFFE0000000000FFFBF300FFFBF400FFFBF200FEF8
      E800FFFFE900FFFFF0004B4050002A470000AEFD0000121A0000D4D4D4000000
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
      00000000000000000000622C3500621B200062271F00602D19006B3E1F007850
      2700785223007C562200825F22008868220090732200947B20009A8323009F89
      2500A5912500A9982300AD9E2400B1A42500B6AA2300B8AE2400B9B02600C3B6
      2500C4BD2100CEC54E00CAC18300A4882100A9912400B1951F00A8953F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003434340090563C0065372000212B3300DAF3
      FF00CFE6FF00C9E0FB00CAE1FB00CAE1FB00CAE2FC00D5EEFF00D7F0FF00D7F0
      FF00D7F0FF00DCF5FF00ECFFFF00808E9E0019191900DADADA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCBCBC0067676700575757005959
      5900595959005858580059595900B1B7B800E9F8FC0065656500575757005959
      590059595900595959005959590059595900595959002F2F2F005B733300AFDF
      5F0006040800E7E3DE00FFFFFD00FFFBF100FFFBF200FFFBF200FFFBF200FFFB
      F400FEF9EB00FFFEE700F0EAD7000C0715008BCE0000598200007A7A7A000000
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
      00000000000000000000632B3400651B20006A2A210071331D00794123008554
      2B008B5D2B008B5C21009166200097711F009D7A1F00A07F1F00A6872100AC8E
      2300B0962200B59E2100B8A22000BBA72000BDAD2200BCB12700BEB32900C8B8
      2600C5BC2200CEC54F00CAC28200A58A2000A9922700AD952000A6983F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004343430029191100170D090017181800545E
      6900D6EEFF00D0E8FF00C9E0FB00CBE2FC00C8DEF80090A1B3008F9FB20091A1
      B4008B9BAD008392A50097A8BC00E9FFFF00788694001F1F1F00E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B7B7B700081012003D737E00488796004684
      950046849500468495004684950065BFD90078E2FD004B8DA000468395004684
      95004684950046849500478495003D7F9500357C960005121C0096BB4D005F7E
      2D00504A530000000000FFFBF200FFFBF200FFFBF100FFFFF900000000000000
      000000000000FFFAEA00FFFFF20062586300416900008CCD0000303030000000
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
      00000000000000000000622C3500611B20006E392E00794F37007D533800855D
      3E00936D48009B774C00977643009A7B40009E824000A48B4400A8914400AC97
      4200AF9F4300B1A64300B4AA4300B8AE4300BBB54100BBB84200BEB84200C8B9
      3B00C2B82800CEC84800C9C28100A5872600A7942400B0942400A69339000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0060606000E2E2E2004646
      460048505A00D2EAFD00D2EAFF00CDE4FD00C7DDF4002F343900000000000000
      00000C0D0F003C424300131618005F6A7500EEFFFF00717E8B0026262600E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002424240055A0B50088FFFF0081F3FF0081F3
      FF0081F3FF0081F3FF0081F3FF007CEAFF0079E4FF0080F2FF0081F3FF0081F3
      FF0081F3FF0080F3FF0083F5FF006FECFF005DDBFF000B1C2500ABD45600374C
      17008A84890000000000FFFBF200FFFBF200FFFDF700E0DCD4009D9A9500918E
      88009C9A9400F8F4EC00FFFFF6009C929200233C00009BE30000070806000000
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
      00000000000000000000622C35005C1619008E645C00AD9A8F00AE9B8800B2A0
      8700B6A58900BFB19200C1B48E00BEB38500C1B98700C4BE8700C4C08300C5C4
      7F00CCC98300CFCA8700D0CD8300D2D18100D6CF8800D9CF8D00DBD78300D1CA
      5C00BDB62900CFC84600C9C18000A5872600A7942400B1932400A8943A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900515151003C434C00CCE3F600D7F0FF00D0E8FF00D1E8FF009DAEBF004D55
      5D001C1F23004D565A009DAFC300191C2000515B6500ECFFFF006A7683002E2E
      2E00EDEDED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010202006FD2EE007CEAFF0077E1FF0077E1
      FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1
      FF0076E0FF007BE8FF0081F1FF006DE9FF0056CBFC000A171C00AED85A003346
      1500928C900000000000FFFBF200FFFBF2000000000076757000080808003A3A
      3A0049484600F0EDE70000000000A49A9800213800009DE40000020300000000
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
      00000000000000000000602B3300601D210061291F0068301B00703C1F007644
      1E007C4F1E00835D1F008F6B26009573270094742200977921009E822300A389
      2300A9912200AE972000B49F2300B8A42300BBAA2300BAAE2700BAB12B00C1B6
      2700C3BB2500CEC84800CAC28200A5862500A7942400B1932400A8943A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5F0031373E00B0C4D400C6DCF400D4ECFF00E6FFFF00EAFF
      FF00C5DCEE00555F6B0030363C00CDE4FC001C1F2300464E5700E7FFFF00626E
      790036363600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000048484800437E8F0082F6FF0077E0FF0077E1
      FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1
      FF007BE8FF006BCAE30022494B0021525C0058CAF4000A1F2E00A0C54F004C65
      22006A636B0000000000FFFBF100FFFBF200000000006A686400605F5B000000
      000000000000FFFDF500000000007C727A003253000095D900001D1D1D000000
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
      00000000000000000000602A3300601C2000652C220070342100773F21007D49
      1F0082542000865D21008E6724009F7B3100A3802E00A07E2400A6862600AB8D
      2500AE962300B09D2100B5A32200B9A92300C2B02600C1B12700BEB22900C5B9
      2600C3BC2300CEC74800CAC18200A5872500A7942400B1932400A9943A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757575001C1C1D001A1D1F0032373D004F586100717E
      8B009FB2C00091A2B400000000006C788600D6EFFF0025292E0040474F00E2FB
      FF00626E7A005858580000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D9D900070B0C0068C5DD007DEDFF0077E0
      FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1
      FF0080F1FF001E4447003F1B5700310F3B00296D7F00184969006E832D0092BC
      4D001A161F00FFFDF800FFFEF600FFFBF200000000006C6A66005B5A56000000
      0000FFFCF200FFFDF500F8F6F200231A30006FA8000070A400005D5D5D000000
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
      00000000000000000000622C35005F1A1E006D372F00784939007C5036008359
      35008A643600916E3700947338009A7C3B00AC8E4900A88C4100A88F3C00AE97
      3C00B29D3B00B5A43B00BAAA3B00BDAF3C00C2B53D00BEB63D00C0BB3C00C4BC
      3000C2BB2500CFC84900C9C18100A5872600A8942400B1932400A89339000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00CECECE00A5A5A5007C7C
      7C005151510039393900979797003A3A3A00636E7800DBF3FF0023272C004249
      520099ABBF000F0F0F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B001E3941007EEEFF0078E3
      FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1
      FF0080F1FF00265157003111410024082C002E778D003C95C0001E1E0100CEFF
      720015210500807A7E0000000000FFFDF40000000000615F5C004F4E4B000000
      0000FFFCF30000000000D7CFD30024370100ABFB0000283B0000B5B5B5000000
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
      00000000000000000000612B34005C16190091645F00B0989100B19A8800B5A1
      8600B8A68500BCAB8800C0AF8800C2B38500C6B88900C9BC8A00CABF8600CCC3
      8200CFC68500D1C78800D2CA8500D3CD8300D5CC8900D7CF9000D7D68500CDCB
      5C00BAB52700CEC84600C9C18100A5872600A8942400B0932400A8933A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E400A9A9A900848484007A7A7A008989
      8900ACACAC00E7E7E70000000000F8F8F8003F3F3F003D444A0022262A004A4A
      4A002A2A2A00ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB002B2B2B004683960082F6
      FF0077E0FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1
      FF007AE6FF0072D6F000336B72003B77810062D6FC005CD6FE00011124007C97
      3800B1DD610000000000948F91000000000000000000B3B0A900A8A69F000000
      000000000000C9C5C900D1E8A400BBFF0B0071A600001F1F1F00FBFBFB000000
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
      00000000000000000000602A3300601C20006129200069311D00703B1E007746
      1F007E511E00845B1C008C642100926C2400967125009C7A2700A2832700A789
      2700AB912600B1992600B59E2700B8A32700B8AB2300B6B12400B7B22900C2B6
      2900C4BB2600CFC84900CAC28200A5862500A8942500B1932400A79339000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDF005E5E5E001016190022465100336C80003F839A003D7D
      9200264F5C00141A1D0065656500EBEBEB00000000009E9E9E00C3C3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9C9C900050A0B006AC8
      E0007DEDFF0077E0FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1
      FF0076E0FF007FEFFF006DD1EB0072D9F30076E9FF005EDCFF00409AC0000000
      0000AAD05900A7CD5B000E1504003F3A4200A39FA300DDD9D700DFDBD900A8A3
      A7004540480013180C00B9ED510097D707000B110000B5B5B500000000000000
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
      00000000000000000000612C3500611D2100662C220070341F00793F21007F49
      2100865420008B5E1D0091662000986E24009E772400A27F2000A7882100AD8F
      2200B0952100B69D2200BAA22300BDA72300C0AF1F00BFB42000C0B52600CAB8
      2400C5BA2200CDC74800CAC28200A5862500A8942500B0932400A89339000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B7B7B70013131400326677005CC3E5006BE1FF0077F0FF004C9CB900326E
      84004EA5C2005FC4E100346C7C0019191900C5C5C50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000076767600203D
      45007EEFFF0078E3FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1FF0077E1
      FF007EEFFF004B90A1000A080F000B0D14005BACBE006CE2FF0061E2FF002F75
      95000603000096B44C00C9F76F0066833200212E0C00151B0D00151B0D001F2B
      0B005F7C2E00C5F2700096BD42000E1700008B8B8B0000000000000000000000
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
      00000000000000000000612C34005F1A1E006C372E00764737007D5039008359
      390088613A008D6B3A0091713A00997B3C009D843B009F8B3900A3913A00A897
      3B00AC9C3D00B1A23F00B5A73F00B8AD3F00BBAF4000BEB44300BEB64000C3B9
      3400C1BB2400CEC84900CAC18600A5872400A8952300B1932400A8943A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00080D0F004B9CB7006DE7FF0077DFFF0089E0FB009CF3FF0077B5C3003A54
      570017212400122A310056B3CC0050A5C0000C0E0F00CACACA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F9002828
      280048889B0082F6FF0077E0FF0077E1FF0077E1FF0077E1FF0077E1FF0077E2
      FF007EEFFF0013333100693E99004F2970002452540081F4FF0061D5FF0061E2
      FF003888A700020B1200434D1600A1C55100C0F16900BBED6700BBED6700C1F3
      6B00A9D35E0051652D00111112009F9F9F000000000000000000000000000000
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
      00000000000000000000612B34005A14170092676200B09C9800B09D9100B3A2
      8E00B8A79100BBA99000BEAF8E00C0B38A00C3B88E00C3B79000C7BD9100CAC1
      8F00CBC48E00CFC98E00CFCA8A00D1CE8900D5CB8E00D9CD9200DBD68500CECA
      5C00BBB72600CFC74700CAC08500A5872400A8952300B1932400A79239000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDEDED001717
      17004895B2006FE7FF0083DEFB009AE7FC00A3F5FF0095E2F7005E909D00A6FD
      FF00A1F6FF005C899200050608004898B3004B9BB80021212100F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      C500060C0D006CCBE3007DECFF0077E1FF0077E1FF0077E1FF0077E1FF0077E2
      FF007DEDFF00153736007A4CB2005E3788002354540082F4FF0077E1FF0063D6
      FF0060E0FF0052BFE7001F567400081B2700182115002B3618002C361800161C
      0C002424240074747400E1E1E100000000000000000000000000000000000000
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
      00000000000000000000622C3500601C2000622B220069332100703D24007747
      26007F512700855B23008C642500916C2500967525009B7E2400A2862800A78D
      2A00A9922800AD992800B19E2800B7A42A00B9AD2900B7B12B00B8B32D00C0B5
      2800C2BB2200CEC84900CAC08500A5882500A8952300B1942400A79238000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000757575002954
      63006DE6FF0083DEFC009CE9FC009EF1FF0086CEDD001E2F3400000000002337
      3D008DD8E800ADFFFF0077B3C1000100000059BADD0028536200858585000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007171710022404A007FF0FF0078E3FF0077E1FF0077E1FF0077E1FF0077E2
      FF007DEDFF0016383700764AAD005B3584002455560080F3FF0078E2FF0078E2
      FF006BD9FF0060D9FF0062E5FF0058CDF700071621007D7D7D00BFBFBF00D5D5
      D500FAFAFA000000000000000000000000000000000000000000000000000000
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
      00000000000000000000632C3600611B2000672D210072371C0079411F00804A
      2200865521008B601D0090681E0096701F009C792100A0802300A5882500AA8E
      2600AE952600B29B2500B5A02500BEAA2B00C1B42800B8B52100BBB82500C3BB
      2200C4BE2200CEC74900C9BF8400A5882500A8952300B0932400A79339000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F2001518190056B6
      DA0077E1FF009AE8FC0099EAFE009AECFA00162328002B434A001F3034002A41
      4700273C43009EF1FE00A9FFFF005178820016343F0059B8DA001F202100F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700242424004A8CA00082F5FF0077E0FF0077E1FF0077E1FF0077E2
      FF007DEDFF0016383700764AAD005B3584002455560080F3FF0077E1FF0077E1
      FF0079E2FF0075E0FF0075EFFF0030697F004040400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000632C3500651B20006E332C0071423400774B35007D53
      3500865C38008F653800936B3700997439009F7E3800A1863400A68D3400AB95
      3300B09B3800B4A03B00B7A43B00BDAB3D00C2B34500BEB54500BAB53D00BFB6
      3400C0BA2500CEC74800CAC08600A5872400A8952300B1932400A69238000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC0018323C0068DB
      FF0087E1FD009BE9FC0099EBFE008DD9EE00476D760082C7DA002131360082C7
      D9000F181B008DD8EE009EF1FF0094E2F60011191B0054B0D100172F3800CACA
      CA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1C1C100070E0F006DCEE6007DEBFF0077E1FF0077E1FF0077E2
      FF007DEDFF0016383700764AAD005B3584002455560080F3FF0077E1FF0077E1
      FF0077E0FF0080F0FF0062B7CD000C0B0B00DDDDDD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000005E2B3300551618008E666000B39D9700B39E9000B5A2
      8C00B8A58B00BDA88D00C3B08E00C4B48A00C7B88D00C8BA8F00CBC08C00CDC3
      8700CFC58A00D2C88F00D3CB8D00D5CE8C00D8D08900DCD19200DFD68F00D0CE
      5A00BAB92000CEC74800CAC08500A5872400A8952300B1932400A69238000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000909090002B5A6C0074ED
      FF0097EEFF0098E7FC0097E7FC0097E7FD00AAFFFF0091DEF2001C2B2F004468
      72001A292E009BEDFB0098E9FE00A3FAFF00263639003A7D97002F6071009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006C6C6C0024444E007FF1FF0078E2FF0077E1FF0077E2
      FF007DEDFF0016383700764AAD005B3584002455560080F3FF0077E1FF0077E1
      FF0079E5FF007AE7FC00162A2F00919191000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000602D35005B1D2100602E23006D372200744024007A49
      2500815325008A5E250092692800956F2600997628009D7D2B00A2842C00A78C
      2C00AC942B00B19B2B00B5A12C00B7A42B00B8AC2800BAB03400C0B54000C6B8
      3700C1BA2300CFC94900CAC18600A5872400A8952300B0932400A69138000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E00377288005AB8
      D0007ABBCC009CEEFD0097E7FC009CEEFE008FDCEB002F495000020404001019
      1B0078B9C7009FF3FF0097E7FC00A0F4FE00598793004999B100346B7F008D8D
      8D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500212121004C90A40082F5FF0076E0FF0077E2
      FF007DEDFF0016383700764AAD005B3584002455560080F3FF0077E1FF0077E1
      FF007EEFFF003A6D7D003C3C3C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000612A3300651C21006A2C22006E361D00764020007D49
      2300855423008C601F0091672000977020009B7823009F7E2500A4852600A98D
      2500AF952500B49E2600B8A32600BAA62500BCAD2800BAB52300BCBC2200C9BC
      3000C9BF2F00CCC74800CAC08600A4872500A8952300B0932400A79238000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000868686003A778D002E65
      7B0038505500A5FCFF0098E8FD009EF1FE00294047001F2F3400162225008AD3
      E600AAFFFF0097E7FD0097E7FC0098E7FC0097EFFF0073EBFF00295666009797
      9700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00081012006FD1E9007CEBFF0077E2
      FF007DEDFF0016383700764AAD005B3584002455560080F3FF0077E1FF0079E5
      FF007DEDFF003C4B4F00DADADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000652F3800601A1E006A322B0073423200794B32008055
      3100875E2F008F672E00946F2F009C7932009F803300A1883400A68F3400AC96
      3300AF9C3200B3A13300B6A73300BAAC3400BFB03400C0B43600BFB83800C6BB
      3700CABF3600CDCE5200CBBF86009E882600AB942400B0932500A79438000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA0027505F004796
      B300202D3000A0F4FF009CEEFF0087CEE30010191C007FC3D5001D2C30008FDB
      EF0073B0BF0093E1F70098E9FD009BE9FC0089E2FD0069DCFF001A364000B9B9
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000676767002648530080F2FF0078E3
      FF007DEDFF0016383700764AAD005B3584002455560080F3FF0078E3FF007DEC
      FF0087D3E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000622E3600581417008D615B00B09C9400B59F8C00BAA6
      8800BBAA8B00BDAD8F00BFB28C00C2B78800C5BC8C00C6BF8E00C8C38A00CAC8
      8600CCC98800CECB8D00D0CE8A00D2D28A00D6D28D00D9D48D00DBDA8200D3CD
      5900BFB82A00CDCF5200CDC382009C8A1F00AA922400B0922700A79339000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2E2E2000E181C005DC0
      E4000915190079B6C700A4FBFF0092E0F200121C1F0055828F00263A3F004F7A
      86000E171A0098E9F90099EAFE009BE9FC007AE1FF005ABFE50011161700ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F3001E1E1E004E94A90082F5
      FF007CECFF00153635007B4DB5005F388A002353530080F3FF0082F6FF004079
      88005D5D5D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000005D2B33005F1F22006E392F00703A2700713E21007A4A
      22007E542300825C2500896526008F6E280094772900987F2A009C852900A18D
      2900A7962900AC9C2A00AFA12A00B3A72B00B3AD2900B3B12B00B8B23000C5B4
      2D00C6BC2400C6C55100C8BF7A009F8F1F00B49A3300B1922900A8923B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C4C4C00448B
      A5003B7F9800171D1E009CEEFB00A8FFFF006399A60005090A0000000000080C
      0E006CA6B300A0F5FF009CE9FC008BE1FB006FE7FF00346D81005C5C5C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B9B9000912140070D4
      EC0083F8FF00153535005F368800462262002555590089FFFF0064BDD5000709
      0900D0D0D0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000A57C840056161B00754036007E4933006D3B1D007042
      1A007A4D1A00845819008A601A00916A1C0096731E00997B1F009E821E00A389
      1F00A9921D00AD991B00B2A01D00B6A61E00BCAC1800BCB01900BBB12000C2B4
      2100B9B21F00D9D67500B6AC6600AE9A3000BDA04000BB9C3400A6903B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC000912
      160063CBF1001D424F00222F33008FD9E500B1FFFF0082C7D9002C4349007FC2
      D500A3F8FF009CE8FC008FE3FB0070E3FF0057B7D900080E0F00D8D8D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063636300284C
      570087FCFF0055A1B3000A1115000E1A1E0063BBCE0081F2FF001A3037008787
      8700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000F0F0F000A8888E00845D5E00926F63008D6E5C009779
      5B00A0835F00A3896300A8906300AB956200B09D6300B4A36200B9A96500BBAC
      6600BFB16600C1B56500C5B96600C7BC6800CDC26700CFC66400CAC96400C7CD
      6300D4D88200C7C277009B8A2E00B4953400B49A3500BA9E3300A39139000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      820018323B0067D3F6002C5F6E000D1317004464690072ACB70090D9EA00A2F4
      FF0095E6FC0082DFFC0070E5FF005EC6E70012242B0091919100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F1001B1B
      1B005098AE0087FFFF006DD0EB0070D6F20088FFFF003F788A0035353500FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000B9AC
      8500B9A27100BCA27B00BDA37800BDA57500BFA87500C0A97500C0AA7400C1AC
      7300C0AB7200C2AC7400C2AD7100C2AE7000C4AE7500C3AD7600C0AF7400BFB2
      7600B4A35A009C872B00A48F2600AC932900AE972E00B0942900A4923B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F0013272E0059B6D00056B3CD0028596B00132B35004B8A9F0082F2
      FF0072E5FF006AE0FF004DA0BA000E1D23007C7C7C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B4B4
      B4000B14170072D8F00084F9FF0086FDFF0066C0D90006090900D2D2D2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000987F
      4300946C1500936F1A0093701A0095721C0096731D0097741D0098761C009A79
      1C009A791D009B7A1F009C7C1E009D7E1D009E7F1C009D801B009E831B009D85
      1A00A2852300AB8D2900AA922300A7932200A6922700AD912600A9973F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C001A1A1A00264F5B004B9BB40056B2D10056B5D60050AB
      CB0040879D001F3F490020202000A6A6A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000061616100203C450067C3D20062B8C80015282D0085858500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0009D81
      4B00A2782400967727009777280099782C009A7A2C009B7C2A009C7E29009E80
      29009E8229009F822800A0842800A1862700A1882800A1882700A48A2700A58B
      2600A48A2800A78F2800A8922400A8922500AA922900AD912500A6953C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500AAAAAA005C5C5C0027272700161616002A2A
      2A0060606000AFAFAF00F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD007B7B7B00131313001B1B1B009191910000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00F7F7F700FFFF
      FF00FFFFFF00FCFFFC00EFF3EF00F0EFF0000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00F2F2F200FAFAFA00FAFAFA009D9D
      9C0071717100D9CADA00FFE9FF00EFF3EF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF00F2F2F200FCFCFC00F2F2F200C4C4C4003231
      31000000000012031200AA9AAA00FAFFFA000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00F3F3F300FBFBFB00E9E9E900C8C8C800757474001917
      170027262500080B07009C779C00FFFCFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00F8F8F800FBFBFB00E4E4E400BEBEBE009E9E9E003B3A39002724
      24002220200045454500F7E7F700F6F5F600EFF0EF0000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00F7F7F700FAFAFA00E0E0E000BABABA00A9A9A90072717000242322003C3B
      39001B1A1A00B1B1B100FFFFFF00EFEFEF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300F4F4
      F400F6F6F600F1F1F100EFEFEF00000000000000000000000000EFEFEF00F6F6
      F600F9F9F900DEDEDE00BBBBBB00A9AAAA009E9D9D003E3C3C00393636003433
      3100504F4F00F7F7F700F3F3F300000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400DFDFE000CDCD
      CD00D2D1D100F0F1F200F9F9FA00F1F1F100EFEFEF00EFEFEF00F7F7F700F8F8
      F800DEDEDE00BFBFBF00AEAEAE00B1B2B200797878002D2A2A00534F4E002826
      2600B1B0B000FEFEFE0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100ECECEC00D7D7D700D6D6
      D600A79B9100AEA7A000D4D3D200F0F1F300F8F8F900FCFCFC00F6F6F600DEDE
      DE00C5C5C500B7B7B700B6B6B600B4B4B300444140004B474600434140005C5C
      5B00F7F7F700F2F2F20000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F300DBDBDB00EBEDEE00D1CC
      C600D5BEAB00C0AC9C00A9998C00AFA7A000D5D4D400F2F4F500E4E4E400CBCB
      CB00BFBFBF00BCBCBC00D0D0D0008C8B8A003633310065605F0033313000BCBC
      BB00FDFDFD00EFEFEF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200E6E6E600DCDDDD00E1E2E200CEBD
      AD00DAC2AF00CDB7A500C0AB9800AB9786009C8C7F009D958E00B0AFAF00C6C8
      C900CACBCB00D4D4D400D9D9D800494645005C5755004E4A490065646400F6F7
      F700F2F2F1000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100D6D6D600E9EAEC00C2BBB600B9A5
      9500B29F9000AF9B8B00AF9A8A00AC968600A5907F00917D6B0078685A00867E
      7800B7B6B500F5F7F700969493003D393800716D6B003B393800C0BFBF00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300E2E2E200E3E4E400D7D7D700A5988E00AF9D
      8F00B4A19200B8A49400BBA49300BAA39000B59E8A00AA9380009A836F008B74
      610098857500A9A19900434141006B656300514D4C006C6B6B00FAFAFA00F2F2
      F200000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100EFEFEF00DADADA00ECEDEE00B2ACA800BCAA9D00CFBB
      AC00D9C4B100DDC3B100DDC2AC00DEC0A900DDC0A800DBBBA400CBAD9600BA9E
      8700C2A38A007263560045424300807A78003E3D3D00CACBCC00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400DEDEDD00E3E4E400CBCBCB00C4B7AB00E4D1C200E9D5
      C400EAD4C100E9CEB900EFD0B800E9CAB200CBB09A00AD978400947F6F00816D
      5E008D7663009C8D8400AFABAA006765650061585000CCBFB400E1E0E000F4F6
      F900F4F5F6000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100ECECEC00D8D8D800DEDFE000C2BCB600ECDCCE00EEDDCF00ECD9
      C800F1DBC800EBD0BA00B19C8C006F665F0056535000605F6100636668005457
      59004B4D500097959500F3F5F600A29A9200D0AE9100C8A88C00B29A8400BEB3
      A500E0DFDE00F4F6F900F1F1F100000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400D9D9D900E2E2E200C4C3C300E1D5CB00F4E6D900EDDED000F6E4
      D300DDCBBB00716760004A48490082818200B5B0AD00D9CABF00E2CEBF00E4CF
      BF00E4D0C000DACABE00CDC8C4008182820092827300DEB89900D5AF9200BF9C
      7800B3966F00CABCAB00F0F1F200F1F1F1000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200E8E8E800D9D9D900D5D6D700C6C2BE00F8EBE200F0E3D900F9E9DB00D3C6
      B90055504E0065626400C7C3C100E8D3C100E2BFA400DAB39500D7B09100D7AE
      8F00D8B09000DBB29200DDB99B00E4CFBE00A8AAAC0099887B00DFB69500D8B3
      9400CFA27000C79B7300EEEEF000F1F2F2000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200D9D9D900E1E1E200BCBBBA00E8E1D900F6ECE300F8ECE100E4D9CE005C58
      56007D797900EAE2DE00F5E3D300DAB69A00D2AC8D00D6B09200D5B09200D6AF
      9200D5AF9100D5AF9100D4AD8D00D5A98600E6C9B400AEB0B300B0957E00DEB4
      8D00D8A86B00E6D3C000F2F5F800000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000F3F3F300E1E1
      E100DEDEDE00CBCBCC00C6C2BF00FBF3EC00F5ECE400FBF1E800847E7B007470
      6F00F2EDE900F6E7D900EBD9C900DFC2AC00D2AB8D00D4AE9000D4AE9000D4AD
      8F00D3AD8F00D3AC8E00D2AB8C00D1A98A00C6997600DCCDC100B3ABA800D1A0
      6A00DBB58B00F0F1F400F0F1F200000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000F2F2F200E8E8
      E800D9D9D900B1B0B000E5DFDB00FAF2EC00FCF3ED00CDC6C100635F5D00DAD6
      D500FBF1E900F0E1D500ECDDCF00E4CBB800D1AA8B00D2AC8D00D2AB8C00D1AB
      8C00D2AB8C00D2AA8B00D0A88800CAA28200B48D6B00BB9D8500CDCDCE00BA93
      6700ECDBCD00F3F5F90000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F4F4
      F400D2D2D200B6B4B100EDE8E300F8F1EC00FFFCF5009993900099949300FEF9
      F600F5ECE400F1E4DA00ECDED000EAD7C700D5B29600CFA68700D0A88A00D0A8
      8A00D1A88800CEA58400C79E7E00B7927000A07B5A009E7B6000E1DBD900D1C2
      B400F1F1F100F0F1F10000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200EBEBEB00CECBC700DFDBD600F8F2ED00F6F0EA008A838000CFCCCA00FDF9
      F500F7EFE800F2E7DE00EEE0D400EBDBCC00E0C5B000CCA38300CEA68700CEA4
      8600C8A08000C0987700B18B6900A07C5B00936D4D00A17D6000E8E1DE00E2E3
      E400F0F1F1000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F2F200F0EFEF00E6E4E200F1ECE900E6E1DC007C757300ECE9E900FCF9
      F600F5EFEA00F2E9E200EFE2D700EADBCC00E7D4C500D2B19800C2987800BE98
      7700B38E6E00A68261009A755500936E5000956C4A00BA9B7E00EFEBEA00EDEE
      EE00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100F1F2F200F3F2F200E0DEDD008B848200E8E6E500FAF8
      F600F4EFEC00EFE9E300EBE1D900E6D8CC00DFCEC000D7C2B300B6977B009E79
      580099755700936F5100936C4E009B735300A5774E00D6C0AD00E5E4E500E9E9
      EA00F2F2F2000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100EFF0F000A8A3A200E1DFDE00FBFA
      F900F6F2EF00EEE9E500E7E0D900E0D5CB00D6C7BC00CEBCAF00C1AE9E00A285
      6D00916A4C00956E4E00A1795600AA7C5300C1997500EBE3E000E2E0E000E8E9
      E900F1F2F2000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F8F800BBB8B700D9D6D600FDFD
      FD00FAF7F500F2EEEA00EAE4DF00E2D9D000D9CCC100D0BFB300C8B5A600C4AE
      9B00B8987F00B1886600B3855A00B7865A00E2D2C600EBE9E900E4E4E400F1F2
      F100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400DBDADA00C3BFBD00F7F6
      F600FFFFFD00F8F4F100F3ECE700EBE3DC00E5D8CE00DFCEC000D8C3B200D4BA
      A600D3B49D00CEA88A00C49B7800DDC9BA00EEEAEA00E6E4E400ECEDED00F1F1
      F100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F3F300CFCCCC00D7D5
      D300F1F0F000FFFFFC00FAF4F000F4EBE500EEE3D900EADACC00E6CFBC00E3C6
      B000D7B59B00CAAE9700E5D9D000F6F2F000E4E2E200E5E6E600F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200EEEEEE00D5D5
      D400D7D5D400E3E1DF00F1EEEB00F3EEEA00EBE2DB00E2D5CA00DBCBBC00C2B0
      A400BDB2AB00EBE7E500FAF5F400ECEAEA00E6E6E600F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F200EEEE
      EE00E3E2E100D2CFCE00D6D3D100D4D2D000CFCAC900C7C2C000ADA9A900B9B5
      B500E9E7E700F3F1EF00E9E9E800EFEFEF00F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F100F2F2F200EAEAEA00E7E6E600EAE9E700D1CDCC00D0CDCB00D9D5D400F8F7
      F600E9EAEA00EAEAEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF87FFFFFFFFFFFFFFFFFC03FFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF07FFFFFFFFFFFFFFFFF000FFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF03FFFFFFFFFFFFFFFFE0007FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF0003FFFFFFFFFFFFFFC0003FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFE0000FFFFFFFFFFFFFFC0803FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFE00007FFFFFFFFFFFFF81001FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFE00003FFFFFFFFF000000001FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFE00001FFFFFFFFE000004381FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF00000FFFFFFFFE000004001FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFE00007FFFFFFFE000004821FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFF80003FFFFFFFE0000049A1FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFFC0003FFFFFFFE000000901FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFFF0003FFFFFFFF000002941FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFFE0203FFFFFFFF000001981FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFF8009FFFFFFFFF800000003FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFF0007FFFFFFFFFC00000007FFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFE0003FFFFFFFFFC0000000FFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFC0001FFFFFFFFFE0000001FFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFC0001FFFFFFFFFF0000007FFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF80000FFFFFFFFFF000007FFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF80000FFFFFFFFFF800007FFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF80000FFFFFFFFFFC0000FFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF80000FFFFFFFFFFC0001FFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF80000FFFFFFFFFFE0001FFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF80000FFFFFFFFFFF0007FFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFF80000FFFFFFFFFFF0007FFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFC0001FFFFFFFFFFF8007FFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFC0001FFFFFFFFFFFC00FFFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFE0003FFFFFFFFFFFC00FFFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFF0007FFFFFFFFFFFE01FFFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFF800FFFFFFFFFFFFF03FFFFFFF00FFFFC000000FFFFFFFFC0000001FFFFF
      FFFFFC01FFFFFFFFFFFFF07FFFFFFF00FFFF00000003FFFFFFFC00000007FFFF
      FFF00000001FFFFFFFFFFFFF80FFFF00FFFE00000001FFFFFFF8038C0007FFFF
      FFE00000001FFFFFFFFFFFFE00FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFFFFFC00FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFFFFF800FFFF00FFFE00000401FFFFFFF004000007FFFF
      FFE00000001FFFFFFFFFFFF0007FFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFFFFE000FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFFC1C001FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFF800003FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFF000003FFFF00FFFE00C02001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFF000003FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFE000007FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFE00000FFFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFC00000FFFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFF800001FFFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFF8000007FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFF0000001FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFF0000000FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFE0000000FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFE0000001FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFC0000001FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFC0000003FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFE0000003FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFE0000007FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFF000000FFFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFF8000007FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFE000007FFFF00FFFE00000001FFFFFFF000000007FFFF
      FFE00000001FFFFFFFFF00000FFFFF00FFFE00000001FFFFFFF00000000FFFFF
      FFE00000001FFFFFFFFF00000FFFFF00FFFE00000001FFFFFFF00000000FFFFF
      FFE00000001FFFFFFFFF80001FFFFF00FFFE00000001FFFFFFF00000001FFFFF
      FFE00000001FFFFFFFFF80003FFFFF00FFFE00000003FFFFFFF80000003FFFFF
      FFE00000001FFFFFFFFFC0007FFFFF00FFFF00000007FFFFFFFC0000007FFFFF
      FFE00000001FFFFFFFFFE003FFFFFF00}
  end
  object DTSCadastro: TDataSource
    DataSet = Cadastro
    OnStateChange = DTSCadastroStateChange
    Left = 976
    Top = 72
  end
  object FATConsulta: TIBQuery
    Database = FBird.DBERP
    Transaction = IBTra
    SQL.Strings = (
      'SELECT   FIN_REC_CAR_BAI.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT'
      
        'FROM     FIN_REC_CAR_BAI_004 "FIN_REC_CAR_BAI",CAD_CLI,CAD_USU,C' +
        'AD_REP'
      'WHERE    FIN_REC_CAR_BAI.FIN_CCLI = CAD_CLI.ID'
      'AND      FIN_REC_CAR_BAI.FIN_CVEN = CAD_USU.USU_CUSU'
      'AND      FIN_REC_CAR_BAI.FIN_CREP = CAD_REP.ID'
      'ORDER BY CLI_FANT,FIN_REC_CAR_BAI.ID')
    Left = 784
    Top = 104
    object FATConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_CAR_BAI_004"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FATConsultaFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDBX"'
    end
    object FATConsultaFIN_DOCT: TIBStringField
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DOCT"'
      Size = 30
    end
    object FATConsultaFIN_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'FIN_TITU'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_TITU"'
      Size = 30
    end
    object FATConsultaFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CCLI"'
    end
    object FATConsultaFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CVEN"'
    end
    object FATConsultaFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CREP"'
    end
    object FATConsultaFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CONC"'
    end
    object FATConsultaFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DCAD"'
    end
    object FATConsultaFIN_DVEN: TDateField
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DVEN"'
    end
    object FATConsultaFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DPAG"'
    end
    object FATConsultaFIN_STDO: TIBStringField
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_STDO"'
      Size = 3
    end
    object FATConsultaFIN_TIPO: TIBStringField
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_TIPO"'
      Size = 60
    end
    object FATConsultaFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_STFI"'
      Size = 60
    end
    object FATConsultaFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
    object FATConsultaFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object FATConsultaFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object FATConsultaFIN_DCAN: TDateField
      FieldName = 'FIN_DCAN'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DCAN"'
    end
    object FATConsultaFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object FATConsultaFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object FATConsultaFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object FATConsultaFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DBAI"'
    end
    object FATConsultaFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CTNR"'
      Size = 30
    end
    object FATConsultaFIN_CDDP: TIBStringField
      FieldName = 'FIN_CDDP'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDDP"'
      FixedChar = True
      Size = 2
    end
    object FATConsultaFIN_DTDP: TDateTimeField
      FieldName = 'FIN_DTDP'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DTDP"'
    end
    object FATConsultaFIN_CDBC: TIBStringField
      FieldName = 'FIN_CDBC'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDBC"'
      FixedChar = True
      Size = 3
    end
    object FATConsultaFIN_DTBC: TDateTimeField
      FieldName = 'FIN_DTBC'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_DTBC"'
    end
    object FATConsultaFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object FATConsultaFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_CAR_BAI_004"."FIN_CDCX"'
    end
    object FATConsultaCLI_FANT: TIBStringField
      FieldName = 'CLI_FANT'
      Origin = '"CAD_CLI"."CLI_FANT"'
      Size = 60
    end
    object FATConsultaCLI_RAZA: TIBStringField
      FieldName = 'CLI_RAZA'
      Origin = '"CAD_CLI"."CLI_RAZA"'
      Size = 60
    end
    object FATConsultaUSU_DUSU: TIBStringField
      FieldName = 'USU_DUSU'
      Origin = '"CAD_USU"."USU_DUSU"'
      Size = 40
    end
    object FATConsultaREP_FANT: TIBStringField
      FieldName = 'REP_FANT'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
  end
  object Cadastro: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSheild
    AfterDelete = CadastroAfterDelete
    AfterEdit = CadastroAfterEdit
    AfterInsert = CadastroAfterInsert
    AfterPost = CadastroAfterPost
    BeforeCancel = CadastroBeforeCancel
    BeforeDelete = CadastroBeforeDelete
    BeforePost = CadastroBeforePost
    OnNewRecord = CadastroNewRecord
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
      'SELECT * FROM FIN_REC_BAI'
      'ORDER BY ID')
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
    Left = 944
    Top = 72
    object CadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC_BAI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroFIN_CCAB: TIntegerField
      FieldName = 'FIN_CCAB'
      Origin = '"FIN_REC_BAI"."FIN_CCAB"'
    end
    object CadastroFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC_BAI"."FIN_CDBX"'
    end
    object CadastroFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC_BAI"."FIN_CDCX"'
    end
    object CadastroFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC_BAI"."FIN_CCLI"'
    end
    object CadastroFIN_DCLI: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC_BAI"."FIN_DCLI"'
      Size = 60
    end
    object CadastroFIN_RCLI: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC_BAI"."FIN_RCLI"'
      Size = 60
    end
    object CadastroFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC_BAI"."FIN_CVEN"'
    end
    object CadastroFIN_VEND: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC_BAI"."FIN_VEND"'
      Size = 60
    end
    object CadastroFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC_BAI"."FIN_CREP"'
    end
    object CadastroFIN_DREP: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC_BAI"."FIN_DREP"'
      Size = 60
    end
    object CadastroFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC_BAI"."FIN_RREP"'
      Size = 60
    end
    object CadastroFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC_BAI"."FIN_PRAZ"'
    end
    object CadastroFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC_BAI"."FIN_ATRA"'
    end
    object CadastroFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC_BAI"."FIN_CONC"'
    end
    object CadastroFIN_DCAD: TDateField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC_BAI"."FIN_DCAD"'
    end
    object CadastroFIN_DVEN: TDateField
      DisplayLabel = 'Dt Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAI"."FIN_DVEN"'
    end
    object CadastroFIN_DPAG: TDateField
      DisplayLabel = 'Dt Pagto'
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC_BAI"."FIN_DPAG"'
      EditMask = '!99/99/00;1;'
    end
    object CadastroFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC_BAI"."FIN_DMED"'
    end
    object CadastroFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC_BAI"."FIN_DATR"'
    end
    object CadastroFIN_STDO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC_BAI"."FIN_STDO"'
      Size = 3
    end
    object CadastroFIN_DOCT: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC_BAI"."FIN_DOCT"'
      Size = 30
    end
    object CadastroFIN_BANC: TIBStringField
      FieldName = 'FIN_BANC'
      Origin = '"FIN_REC_BAI"."FIN_BANC"'
      Size = 4
    end
    object CadastroFIN_DBAN: TIBStringField
      FieldName = 'FIN_DBAN'
      Origin = '"FIN_REC_BAI"."FIN_DBAN"'
      Size = 50
    end
    object CadastroFIN_AGEN: TIBStringField
      FieldName = 'FIN_AGEN'
      Origin = '"FIN_REC_BAI"."FIN_AGEN"'
      Size = 10
    end
    object CadastroFIN_CONT: TIBStringField
      FieldName = 'FIN_CONT'
      Origin = '"FIN_REC_BAI"."FIN_CONT"'
      Size = 15
    end
    object CadastroFIN_NCHQ: TIBStringField
      FieldName = 'FIN_NCHQ'
      Origin = '"FIN_REC_BAI"."FIN_NCHQ"'
      Size = 10
    end
    object CadastroFIN_MCHQ: TSmallintField
      FieldName = 'FIN_MCHQ'
      Origin = '"FIN_REC_BAI"."FIN_MCHQ"'
    end
    object CadastroFIN_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO'
      Origin = '"FIN_REC_BAI"."FIN_TIPO"'
      Size = 60
    end
    object CadastroFIN_STFI: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC_BAI"."FIN_STFI"'
      Size = 60
    end
    object CadastroFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC_BAI"."FIN_STCO"'
      Size = 60
    end
    object CadastroFIN_VALO: TIBBCDField
      DisplayLabel = 'Vl. T'#237'tulo'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAI"."FIN_VALO"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_VPAG: TIBBCDField
      DisplayLabel = 'Vl. Pagto'
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC_BAI"."FIN_VPAG"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_VPEN: TIBBCDField
      DisplayLabel = 'Vl. Pendente'
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC_BAI"."FIN_VPEN"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC_BAI"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object CadastroFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC_BAI"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object CadastroFIN_COBR: TIBStringField
      DisplayLabel = '...'
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC_BAI"."FIN_COBR"'
      FixedChar = True
      Size = 1
    end
    object CadastroFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC_BAI"."FIN_DBAI"'
    end
    object CadastroFIN_VENC: TIBBCDField
      DisplayLabel = 'Total Encargos'
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC_BAI"."FIN_VENC"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_BAI"."FIN_DFIN"'
      Size = 40
    end
    object CadastroFIN_CPPL: TIntegerField
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC_BAI"."FIN_CPPL"'
    end
    object CadastroFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC_BAI"."FIN_CCUS"'
    end
    object CadastroFIN_CDCO: TIntegerField
      FieldName = 'FIN_CDCO'
      Origin = '"FIN_REC_BAI"."FIN_CDCO"'
    end
    object CadastroFIN_CDBA: TIBStringField
      FieldName = 'FIN_CDBA'
      Origin = '"FIN_REC_BAI"."FIN_CDBA"'
      Size = 4
    end
    object CadastroFIN_DEBA: TIBStringField
      FieldName = 'FIN_DEBA'
      Origin = '"FIN_REC_BAI"."FIN_DEBA"'
      Size = 50
    end
    object CadastroFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC_BAI"."FIN_CTNR"'
    end
    object CadastroFIN_VMUL: TIBBCDField
      DisplayLabel = 'Vl. Multa'
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC_BAI"."FIN_VMUL"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_PMUL: TIBBCDField
      DisplayLabel = '(%)'
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC_BAI"."FIN_PMUL"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroFIN_VJUR: TIBBCDField
      DisplayLabel = 'Vl. Juros'
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC_BAI"."FIN_VJUR"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_PJUR: TIBBCDField
      DisplayLabel = '(%)'
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC_BAI"."FIN_PJUR"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroFIN_VDES: TIBBCDField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC_BAI"."FIN_VDES"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_PDES: TIBBCDField
      DisplayLabel = '(%)'
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC_BAI"."FIN_PDES"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC_BAI"."FIN_CDRD"'
    end
    object CadastroFIN_VCHQ: TIBBCDField
      FieldName = 'FIN_VCHQ'
      Origin = '"FIN_REC_BAI"."FIN_VCHQ"'
      Precision = 18
      Size = 2
    end
    object CadastroFIN_CPF: TIBStringField
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC_BAI"."FIN_CPF"'
      Size = 14
    end
    object CadastroFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC_BAI"."FIN_DERD"'
      Size = 30
    end
    object CadastroFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC_BAI"."FIN_DTST"'
    end
    object CadastroFIN_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'FIN_TITU'
      Origin = '"FIN_REC_BAI"."FIN_TITU"'
      Size = 30
    end
  end
  object consulta_S: TIBQuery
    Database = FBird.DBEDI
    Transaction = TSheild
    Left = 944
    Top = 40
  end
  object openARQ: TOpenDialog
    Filter = 'Arquivos Ret|*.ret'
    InitialDir = 'C:\Sheild\Documentos'
    Left = 872
    Top = 56
  end
  object TSheild: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBEDI
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 944
    Top = 8
  end
end
