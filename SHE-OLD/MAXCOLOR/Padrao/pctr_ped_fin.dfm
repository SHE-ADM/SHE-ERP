inherited frmctr_ped_fin: Tfrmctr_ped_fin
  Left = 264
  Caption = 'Sum'#225'rio de Pedido'
  ClientHeight = 492
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Height = 224
    inherited PaintBox: TPaintBox
      Width = 504
      Height = 159
    end
    inherited SBMenuPrincipal: TSpeedBar
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 65
      Width = 504
      Height = 159
      Align = alClient
      Caption = 'Sobre o Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label8: TLabel
        Left = 8
        Top = 72
        Width = 81
        Height = 14
        Caption = 'Representante'
      end
      object Label4: TLabel
        Left = 8
        Top = 48
        Width = 54
        Height = 14
        Caption = 'Vendedor'
      end
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 37
        Height = 14
        Caption = 'Cliente'
      end
      object edcdrd: TdxEdit
        Left = 96
        Top = 67
        Width = 201
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 8
        Text = '0'
        Visible = False
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object edqtsp: TdxEdit
        Left = 96
        Top = 67
        Width = 201
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 7
        Text = '0'
        Visible = False
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object edcdro: TdxEdit
        Left = 96
        Top = 67
        Width = 201
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 6
        Text = '0'
        Visible = False
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object edDBAI: TdxDateEdit
        Left = 400
        Top = 18
        Width = 90
        Color = 16644596
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.Shadow = True
        TabOrder = 5
        Visible = False
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object edcdcx: TdxEdit
        Left = 96
        Top = 43
        Width = 155
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 3
        Text = '0'
        Visible = False
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object edcdbx: TdxEdit
        Left = 192
        Top = 43
        Width = 54
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 0
        Visible = False
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 2
      end
      object edvend: TdxEdit
        Left = 96
        Top = 43
        Width = 201
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 1
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object eddrep: TdxEdit
        Left = 96
        Top = 67
        Width = 201
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 2
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object eddcli: TdxEdit
        Left = 96
        Top = 19
        Width = 401
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 4
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
    end
    object gbPED: TGroupBox
      Left = 504
      Top = 65
      Width = 248
      Height = 159
      Align = alRight
      Caption = 'Sum'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 69
        Height = 14
        Caption = 'Total Pedido'
      end
      object Label6: TLabel
        Left = 8
        Top = 50
        Width = 82
        Height = 14
        Caption = 'Total Recebido'
      end
      object Label2: TLabel
        Left = 8
        Top = 74
        Width = 57
        Height = 14
        Caption = 'Diferen'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtotr: TdxEdit
        Left = 97
        Top = 19
        Width = 140
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 0
        Text = '0,00'
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object edtotb: TdxEdit
        Left = 97
        Top = 45
        Width = 140
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 1
        Text = '0,00'
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
      object edtotd: TdxEdit
        Left = 97
        Top = 69
        Width = 140
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        Style.Shadow = True
        TabOrder = 2
        Text = '0,00'
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        StoredValues = 3
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 473
  end
  object pclan: TdxPageControl [2]
    Left = 0
    Top = 224
    Width = 752
    Height = 249
    ActivePage = tslan
    Align = alBottom
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 2
    TabPosition = dxtpTop
    TabWidth = 0
    object tslan: TdxTabSheet
      Caption = 'Lan'#231'amentos'
      object dbgprz1: TdxDBGrid
        Left = 49
        Top = 0
        Width = 703
        Height = 225
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
        Color = 10789888
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = dbgprz1KeyDown
        AutoSearchColor = 9395
        AutoSearchTextColor = clWhite
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clBlack
        BandFont.Height = -12
        BandFont.Name = 'Tahoma'
        BandFont.Style = []
        DataSource = dtsfin_rec_bai
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
        OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlack
        PreviewFont.Height = -12
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        RowFooterTextColor = clBlack
        object dbgprz1FIN_TIPO: TdxDBGridImageColumn
          Alignment = taLeftJustify
          MinWidth = 16
          Width = 175
          BandIndex = 0
          RowIndex = 0
          OnChange = dbgprz1FIN_TIPOChange
          FieldName = 'FIN_TIPO'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          PopupBorder = pbFlat
          ShowDescription = True
        end
        object dbgprz1FIN_PRAZ: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_PRAZ'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'FIN_PRAZ'
          SummaryFooterFormat = '0'
        end
        object dbgprz1FIN_DVEN: TdxDBGridDateColumn
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DVEN'
          UseEditMask = True
        end
        object dbgprz1FIN_VALO: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 0
          RowIndex = 0
          OnValidate = dbgprz1FIN_VALOValidate
          FieldName = 'FIN_VALO'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VALO'
          SummaryFooterFormat = '#,0.00'
        end
        object dbgprz1FIN_BANC: TdxDBGridMaskColumn
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_BANC'
        end
        object dbgprz1FIN_AGEN: TdxDBGridMaskColumn
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_AGEN'
        end
        object dbgprz1FIN_CONT: TdxDBGridMaskColumn
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_CONT'
        end
        object dbgprz1FIN_NCHQ: TdxDBGridMaskColumn
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_NCHQ'
        end
        object dbgprz1FIN_OBSE: TdxDBGridBlobColumn
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_OBSE'
        end
      end
      object sblan: TSpeedBar
        Left = 0
        Top = 0
        Width = 49
        Height = 225
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        BoundLines = [blTop, blBottom, blLeft, blRight]
        Align = alLeft
        Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
        BtnOffsetHorz = 2
        BtnOffsetVert = 2
        BtnWidth = 45
        BtnHeight = 45
        BevelOuter = bvNone
        TabOrder = 1
        InternalVer = 1
        object SpeedbarSection1: TSpeedbarSection
          Caption = 'Movimento'
        end
        object SpeedbarSection2: TSpeedbarSection
          Caption = 'Edicao'
        end
        object SpeedbarSection3: TSpeedbarSection
          Caption = 'Confirmacao'
        end
        object SpeedbarSection4: TSpeedbarSection
          Caption = 'Utilitarios'
        end
        object b1I: TSpeedItem
          Caption = 'Incluir'
          Enabled = False
          Cursor = crHandPoint
          Hint = '[Ins] - Inclui'
          ImageIndex = 2
          Spacing = 1
          Left = 2
          Top = 2
          Visible = True
          OnClick = b1IClick
          SectionName = 'Movimento'
        end
        object b1A: TSpeedItem
          Caption = 'Alterar'
          Enabled = False
          Cursor = crHandPoint
          Hint = '[Enter] - Altera'
          ImageIndex = 0
          Spacing = 1
          Left = 2
          Top = 47
          Visible = True
          OnClick = b1AClick
          SectionName = 'Movimento'
        end
        object b1D: TSpeedItem
          Caption = 'Excluir'
          Enabled = False
          Cursor = crHandPoint
          Hint = '[Del] - Exclui'
          ImageIndex = 3
          Spacing = 1
          Left = 2
          Top = 92
          Visible = True
          OnClick = b1DClick
          SectionName = 'Movimento'
        end
        object b1S: TSpeedItem
          Caption = 'Salvar'
          Enabled = False
          Cursor = crHandPoint
          Hint = '[Ctrl+S] - Salva'
          ImageIndex = 1
          Spacing = 1
          Left = 2
          Top = 137
          Visible = True
          OnClick = b1SClick
          SectionName = 'Movimento'
        end
        object b1C: TSpeedItem
          Caption = 'Cancelar'
          Enabled = False
          Cursor = crHandPoint
          Hint = '[Esc] - Cancela'
          ImageIndex = 4
          Spacing = 1
          Left = 2
          Top = 182
          Visible = True
          OnClick = b1CClick
          SectionName = 'Movimento'
        end
      end
    end
    object tscar: TdxTabSheet
      Caption = 'Carteira'
      object dbgprz2: TdxDBGrid
        Left = 49
        Top = 0
        Width = 703
        Height = 225
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
        Color = 14803200
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
        BandFont.Color = clWindowText
        BandFont.Height = -12
        BandFont.Name = 'Tahoma'
        BandFont.Style = []
        DataSource = dtsfin_rec_bai
        Filter.Criteria = {00000000}
        GridLineColor = clSilver
        HeaderFont.Charset = ANSI_CHARSET
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
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -12
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        object dbgprz2FIN_TIPO: TdxDBGridImageColumn
          Alignment = taLeftJustify
          MinWidth = 16
          Width = 190
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_TIPO'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
          ShowDescription = True
        end
        object dbgprz2FIN_PRAZ: TdxDBGridMaskColumn
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_PRAZ'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'FIN_PRAZ'
          SummaryFooterFormat = '0'
        end
        object dbgprz2FIN_DVEN: TdxDBGridDateColumn
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_DVEN'
        end
        object dbgprz2FIN_VALO: TdxDBGridMaskColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_VALO'
          SummaryFooterType = cstSum
          SummaryFooterField = 'FIN_VALO'
          SummaryFooterFormat = '#,0.00'
        end
        object dbgprz2FIN_BANC: TdxDBGridMaskColumn
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_BANC'
        end
        object dbgprz2FIN_AGEN: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_AGEN'
        end
        object dbgprz2FIN_CONT: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_CONT'
        end
        object dbgprz2FIN_NCHQ: TdxDBGridMaskColumn
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_NCHQ'
        end
        object dbgprz2FIN_OBSE: TdxDBGridBlobColumn
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIN_OBSE'
        end
      end
      object SpeedBar3: TSpeedBar
        Left = 0
        Top = 0
        Width = 49
        Height = 225
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        BoundLines = [blTop, blBottom, blLeft, blRight]
        Align = alLeft
        Options = [sbAllowDrag, sbAllowResize, sbFlatBtns, sbTransparentBtns, sbStretchBitmap]
        BtnOffsetHorz = 2
        BtnOffsetVert = 2
        BtnWidth = 45
        BtnHeight = 45
        BevelOuter = bvNone
        TabOrder = 1
        InternalVer = 1
        object SpeedbarSection9: TSpeedbarSection
          Caption = 'Movimento'
        end
        object SpeedbarSection10: TSpeedbarSection
          Caption = 'Edicao'
        end
        object SpeedbarSection11: TSpeedbarSection
          Caption = 'Confirmacao'
        end
        object SpeedbarSection12: TSpeedbarSection
          Caption = 'Utilitarios'
        end
        object c1I: TSpeedItem
          Caption = 'Incluir'
          Cursor = crHandPoint
          Hint = '[Ins] - Inclui'
          ImageIndex = 2
          Spacing = 1
          Left = 2
          Top = 2
          Visible = True
          OnClick = c1IClick
          SectionName = 'Movimento'
        end
        object c1A: TSpeedItem
          Caption = 'Alterar'
          Cursor = crHandPoint
          Hint = '[Enter] - Altera'
          ImageIndex = 0
          Spacing = 1
          Left = 2
          Top = 47
          Visible = True
          OnClick = c1AClick
          SectionName = 'Movimento'
        end
        object c1D: TSpeedItem
          Caption = 'Excluir'
          Cursor = crHandPoint
          Hint = '[Del] - Exclui'
          ImageIndex = 3
          Spacing = 1
          Left = 2
          Top = 92
          Visible = True
          OnClick = c1DClick
          SectionName = 'Movimento'
        end
        object c1S: TSpeedItem
          Caption = 'Salvar'
          Enabled = False
          Cursor = crHandPoint
          Hint = '[Ctrl+S] - Salva'
          ImageIndex = 1
          Spacing = 1
          Left = 2
          Top = 137
          Visible = True
          OnClick = c1SClick
          SectionName = 'Movimento'
        end
        object c1C: TSpeedItem
          Caption = 'Cancelar'
          Enabled = False
          Cursor = crHandPoint
          Hint = '[Esc] - Cancela'
          ImageIndex = 4
          Spacing = 1
          Left = 2
          Top = 182
          Visible = True
          OnClick = c1CClick
          SectionName = 'Movimento'
        end
      end
    end
  end
  inherited Consulta: TIBQuery
    BufferChunks = 2500
  end
  object fin_rec_bai: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    AfterCancel = fin_rec_baiAfterCancel
    AfterDelete = fin_rec_baiAfterDelete
    AfterEdit = fin_rec_baiAfterEdit
    AfterInsert = fin_rec_baiAfterEdit
    AfterPost = fin_rec_baiAfterPost
    BeforeCancel = fin_rec_baiBeforeCancel
    BeforePost = fin_rec_baiBeforePost
    OnNewRecord = fin_rec_baiNewRecord
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
      '   ID, RECO, TPCO)'
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
      '   :ID, :RECO, :TPCO)')
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
      '  FIN_DTST,'
      '  TPCO,'
      '  RECO'
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
      '  ID = :ID,'
      '  RECO = :RECO,'
      '  TPCO = :TPCO'
      'where'
      '  ID = :OLD_ID')
    Left = 488
    Top = 8
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
    object fin_rec_baiFIN_DFIN: TIBStringField
      FieldName = 'FIN_DFIN'
      Origin = '"FIN_REC_BAI"."FIN_DFIN"'
      Size = 40
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
  end
  object dtsfin_rec_bai: TDataSource
    DataSet = fin_rec_bai
    Left = 520
    Top = 8
  end
  object fin_rec: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    AfterPost = fin_recAfterPost
    BeforePost = fin_recBeforePost
    DeleteSQL.Strings = (
      'delete from FIN_REC'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FIN_REC'
      
        '  (FIN_ATRA, FIN_CBCO, FIN_CCLI, FIN_CCUS, FIN_CDBX, FIN_CDCX, F' +
        'IN_CDNF, '
      
        '   FIN_CDPD, FIN_CDRD, FIN_CDRO, FIN_COBR, FIN_CONC, FIN_CPF, FI' +
        'N_CPPL, '
      
        '   FIN_CREP, FIN_CTNR, FIN_CVEN, FIN_DATR, FIN_DBAI, FIN_DCAD, F' +
        'IN_DCLI, '
      
        '   FIN_DCUS, FIN_DERD, FIN_DMED, FIN_DNFE, FIN_DOCT, FIN_DPAG, F' +
        'IN_DPPL, '
      
        '   FIN_DPRA, FIN_DREP, FIN_DROM, FIN_DTCO, FIN_DTST, FIN_DVEN, F' +
        'IN_IPPL, '
      
        '   FIN_OBSE, FIN_PCOM, FIN_PDES, FIN_PJUR, FIN_PMUL, FIN_PORT, F' +
        'IN_PRAZ, '
      
        '   FIN_RCLI, FIN_RREP, FIN_STA, FIN_STCO, FIN_STDO, FIN_STFI, FI' +
        'N_STPD, '
      
        '   FIN_VALO, FIN_VCHQ, FIN_VDES, FIN_VENC, FIN_VEND, FIN_VJUR, F' +
        'IN_VMUL, '
      '   FIN_VPAG, FIN_VPEN, ID, RECO, TPCO)'
      'values'
      
        '  (:FIN_ATRA, :FIN_CBCO, :FIN_CCLI, :FIN_CCUS, :FIN_CDBX, :FIN_C' +
        'DCX, :FIN_CDNF, '
      
        '   :FIN_CDPD, :FIN_CDRD, :FIN_CDRO, :FIN_COBR, :FIN_CONC, :FIN_C' +
        'PF, :FIN_CPPL, '
      
        '   :FIN_CREP, :FIN_CTNR, :FIN_CVEN, :FIN_DATR, :FIN_DBAI, :FIN_D' +
        'CAD, :FIN_DCLI, '
      
        '   :FIN_DCUS, :FIN_DERD, :FIN_DMED, :FIN_DNFE, :FIN_DOCT, :FIN_D' +
        'PAG, :FIN_DPPL, '
      
        '   :FIN_DPRA, :FIN_DREP, :FIN_DROM, :FIN_DTCO, :FIN_DTST, :FIN_D' +
        'VEN, :FIN_IPPL, '
      
        '   :FIN_OBSE, :FIN_PCOM, :FIN_PDES, :FIN_PJUR, :FIN_PMUL, :FIN_P' +
        'ORT, :FIN_PRAZ, '
      
        '   :FIN_RCLI, :FIN_RREP, :FIN_STA, :FIN_STCO, :FIN_STDO, :FIN_ST' +
        'FI, :FIN_STPD, '
      
        '   :FIN_VALO, :FIN_VCHQ, :FIN_VDES, :FIN_VENC, :FIN_VEND, :FIN_V' +
        'JUR, :FIN_VMUL, '
      '   :FIN_VPAG, :FIN_VPEN, :ID, :RECO, :TPCO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FIN_CDBX,'
      '  FIN_CDCX,'
      '  FIN_CDRD,'
      '  FIN_CDPD,'
      '  FIN_CDRO,'
      '  FIN_CDNF,'
      '  FIN_CCLI,'
      '  FIN_DCLI,'
      '  FIN_RCLI,'
      '  FIN_CVEN,'
      '  FIN_VEND,'
      '  FIN_CREP,'
      '  FIN_DREP,'
      '  FIN_RREP,'
      '  FIN_DPRA,'
      '  FIN_IPPL,'
      '  FIN_CPPL,'
      '  FIN_DPPL,'
      '  FIN_CCUS,'
      '  FIN_DCUS,'
      '  FIN_CBCO,'
      '  FIN_PRAZ,'
      '  FIN_ATRA,'
      '  FIN_CONC,'
      '  FIN_DBAI,'
      '  FIN_DCAD,'
      '  FIN_DROM,'
      '  FIN_DNFE,'
      '  FIN_DVEN,'
      '  FIN_DPAG,'
      '  FIN_DTCO,'
      '  FIN_DMED,'
      '  FIN_DATR,'
      '  FIN_STDO,'
      '  FIN_DOCT,'
      '  FIN_PORT,'
      '  FIN_STCO,'
      '  FIN_STPD,'
      '  FIN_STFI,'
      '  FIN_VALO,'
      '  FIN_VPAG,'
      '  FIN_VPEN,'
      '  FIN_VMUL,'
      '  FIN_PMUL,'
      '  FIN_VJUR,'
      '  FIN_PJUR,'
      '  FIN_VDES,'
      '  FIN_PDES,'
      '  FIN_PCOM,'
      '  FIN_VENC,'
      '  FIN_CPF,'
      '  FIN_CTNR,'
      '  FIN_VCHQ,'
      '  FIN_STA,'
      '  FIN_COBR,'
      '  FIN_DERD,'
      '  FIN_OBSE,'
      '  FIN_DTST,'
      '  TPCO,'
      '  RECO'
      'from FIN_REC '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM FIN_REC')
    ModifySQL.Strings = (
      'update FIN_REC'
      'set'
      '  FIN_ATRA = :FIN_ATRA,'
      '  FIN_CBCO = :FIN_CBCO,'
      '  FIN_CCLI = :FIN_CCLI,'
      '  FIN_CCUS = :FIN_CCUS,'
      '  FIN_CDBX = :FIN_CDBX,'
      '  FIN_CDCX = :FIN_CDCX,'
      '  FIN_CDNF = :FIN_CDNF,'
      '  FIN_CDPD = :FIN_CDPD,'
      '  FIN_CDRD = :FIN_CDRD,'
      '  FIN_CDRO = :FIN_CDRO,'
      '  FIN_COBR = :FIN_COBR,'
      '  FIN_CONC = :FIN_CONC,'
      '  FIN_CPF = :FIN_CPF,'
      '  FIN_CPPL = :FIN_CPPL,'
      '  FIN_CREP = :FIN_CREP,'
      '  FIN_CTNR = :FIN_CTNR,'
      '  FIN_CVEN = :FIN_CVEN,'
      '  FIN_DATR = :FIN_DATR,'
      '  FIN_DBAI = :FIN_DBAI,'
      '  FIN_DCAD = :FIN_DCAD,'
      '  FIN_DCLI = :FIN_DCLI,'
      '  FIN_DCUS = :FIN_DCUS,'
      '  FIN_DERD = :FIN_DERD,'
      '  FIN_DMED = :FIN_DMED,'
      '  FIN_DNFE = :FIN_DNFE,'
      '  FIN_DOCT = :FIN_DOCT,'
      '  FIN_DPAG = :FIN_DPAG,'
      '  FIN_DPPL = :FIN_DPPL,'
      '  FIN_DPRA = :FIN_DPRA,'
      '  FIN_DREP = :FIN_DREP,'
      '  FIN_DROM = :FIN_DROM,'
      '  FIN_DTCO = :FIN_DTCO,'
      '  FIN_DTST = :FIN_DTST,'
      '  FIN_DVEN = :FIN_DVEN,'
      '  FIN_IPPL = :FIN_IPPL,'
      '  FIN_OBSE = :FIN_OBSE,'
      '  FIN_PCOM = :FIN_PCOM,'
      '  FIN_PDES = :FIN_PDES,'
      '  FIN_PJUR = :FIN_PJUR,'
      '  FIN_PMUL = :FIN_PMUL,'
      '  FIN_PORT = :FIN_PORT,'
      '  FIN_PRAZ = :FIN_PRAZ,'
      '  FIN_RCLI = :FIN_RCLI,'
      '  FIN_RREP = :FIN_RREP,'
      '  FIN_STA = :FIN_STA,'
      '  FIN_STCO = :FIN_STCO,'
      '  FIN_STDO = :FIN_STDO,'
      '  FIN_STFI = :FIN_STFI,'
      '  FIN_STPD = :FIN_STPD,'
      '  FIN_VALO = :FIN_VALO,'
      '  FIN_VCHQ = :FIN_VCHQ,'
      '  FIN_VDES = :FIN_VDES,'
      '  FIN_VENC = :FIN_VENC,'
      '  FIN_VEND = :FIN_VEND,'
      '  FIN_VJUR = :FIN_VJUR,'
      '  FIN_VMUL = :FIN_VMUL,'
      '  FIN_VPAG = :FIN_VPAG,'
      '  FIN_VPEN = :FIN_VPEN,'
      '  ID = :ID,'
      '  RECO = :RECO,'
      '  TPCO = :TPCO'
      'where'
      '  ID = :OLD_ID')
    Left = 488
    Top = 40
    object fin_recID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_REC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fin_recFIN_CCLI: TIntegerField
      FieldName = 'FIN_CCLI'
      Origin = '"FIN_REC"."FIN_CCLI"'
    end
    object fin_recFIN_CVEN: TIntegerField
      FieldName = 'FIN_CVEN'
      Origin = '"FIN_REC"."FIN_CVEN"'
    end
    object fin_recFIN_CREP: TIntegerField
      FieldName = 'FIN_CREP'
      Origin = '"FIN_REC"."FIN_CREP"'
    end
    object fin_recFIN_CDPD: TIntegerField
      FieldName = 'FIN_CDPD'
      Origin = '"FIN_REC"."FIN_CDPD"'
    end
    object fin_recFIN_CDRO: TIntegerField
      DisplayLabel = 'Documento'
      FieldName = 'FIN_CDRO'
      Origin = '"FIN_REC"."FIN_CDRO"'
    end
    object fin_recFIN_CDNF: TIntegerField
      FieldName = 'FIN_CDNF'
      Origin = '"FIN_REC"."FIN_CDNF"'
    end
    object fin_recFIN_IPPL: TIntegerField
      FieldName = 'FIN_IPPL'
      Origin = '"FIN_REC"."FIN_IPPL"'
    end
    object fin_recFIN_CPPL: TIBStringField
      DisplayLabel = 'Plano de Contas'
      FieldName = 'FIN_CPPL'
      Origin = '"FIN_REC"."FIN_CPPL"'
      Size = 15
    end
    object fin_recFIN_DPPL: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DPPL'
      Origin = '"FIN_REC"."FIN_DPPL"'
      Size = 60
    end
    object fin_recFIN_CCUS: TIntegerField
      FieldName = 'FIN_CCUS'
      Origin = '"FIN_REC"."FIN_CCUS"'
    end
    object fin_recFIN_DCUS: TIBStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'FIN_DCUS'
      Origin = '"FIN_REC"."FIN_DCUS"'
      Size = 40
    end
    object fin_recFIN_DROM: TDateField
      DisplayLabel = 'Dt Lancto'
      FieldName = 'FIN_DROM'
      Origin = '"FIN_REC"."FIN_DROM"'
    end
    object fin_recFIN_DNFE: TDateField
      FieldName = 'FIN_DNFE'
      Origin = '"FIN_REC"."FIN_DNFE"'
    end
    object fin_recFIN_DVEN: TDateField
      DisplayLabel = 'Dt Vencto'
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC"."FIN_DVEN"'
    end
    object fin_recFIN_DTCO: TDateField
      FieldName = 'FIN_DTCO'
      Origin = '"FIN_REC"."FIN_DTCO"'
    end
    object fin_recFIN_VEND: TIBStringField
      FieldName = 'FIN_VEND'
      Origin = '"FIN_REC"."FIN_VEND"'
      Size = 40
    end
    object fin_recFIN_DREP: TIBStringField
      FieldName = 'FIN_DREP'
      Origin = '"FIN_REC"."FIN_DREP"'
      Size = 40
    end
    object fin_recFIN_VALO: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC"."FIN_VALO"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_DCLI: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'FIN_DCLI'
      Origin = '"FIN_REC"."FIN_DCLI"'
      Size = 40
    end
    object fin_recFIN_CONC: TSmallintField
      FieldName = 'FIN_CONC'
      Origin = '"FIN_REC"."FIN_CONC"'
    end
    object fin_recFIN_STCO: TIBStringField
      FieldName = 'FIN_STCO'
      Origin = '"FIN_REC"."FIN_STCO"'
    end
    object fin_recFIN_STPD: TIBStringField
      FieldName = 'FIN_STPD'
      Origin = '"FIN_REC"."FIN_STPD"'
    end
    object fin_recFIN_STDO: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'FIN_STDO'
      Origin = '"FIN_REC"."FIN_STDO"'
      Size = 3
    end
    object fin_recFIN_DOCT: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'FIN_DOCT'
      Origin = '"FIN_REC"."FIN_DOCT"'
    end
    object fin_recFIN_COBR: TIBStringField
      FieldName = 'FIN_COBR'
      Origin = '"FIN_REC"."FIN_COBR"'
      FixedChar = True
      Size = 1
    end
    object fin_recFIN_CDBX: TIntegerField
      FieldName = 'FIN_CDBX'
      Origin = '"FIN_REC"."FIN_CDBX"'
    end
    object fin_recFIN_CDCX: TIntegerField
      FieldName = 'FIN_CDCX'
      Origin = '"FIN_REC"."FIN_CDCX"'
    end
    object fin_recFIN_CBCO: TIntegerField
      FieldName = 'FIN_CBCO'
      Origin = '"FIN_REC"."FIN_CBCO"'
    end
    object fin_recFIN_PRAZ: TSmallintField
      FieldName = 'FIN_PRAZ'
      Origin = '"FIN_REC"."FIN_PRAZ"'
    end
    object fin_recFIN_ATRA: TSmallintField
      FieldName = 'FIN_ATRA'
      Origin = '"FIN_REC"."FIN_ATRA"'
    end
    object fin_recFIN_DCAD: TDateField
      FieldName = 'FIN_DCAD'
      Origin = '"FIN_REC"."FIN_DCAD"'
    end
    object fin_recFIN_DPAG: TDateField
      FieldName = 'FIN_DPAG'
      Origin = '"FIN_REC"."FIN_DPAG"'
    end
    object fin_recFIN_DMED: TDateField
      FieldName = 'FIN_DMED'
      Origin = '"FIN_REC"."FIN_DMED"'
    end
    object fin_recFIN_DATR: TDateField
      FieldName = 'FIN_DATR'
      Origin = '"FIN_REC"."FIN_DATR"'
    end
    object fin_recFIN_PORT: TIBStringField
      FieldName = 'FIN_PORT'
      Origin = '"FIN_REC"."FIN_PORT"'
    end
    object fin_recFIN_STFI: TIBStringField
      FieldName = 'FIN_STFI'
      Origin = '"FIN_REC"."FIN_STFI"'
    end
    object fin_recFIN_VPAG: TIBBCDField
      FieldName = 'FIN_VPAG'
      Origin = '"FIN_REC"."FIN_VPAG"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_VPEN: TIBBCDField
      FieldName = 'FIN_VPEN'
      Origin = '"FIN_REC"."FIN_VPEN"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_VMUL: TIBBCDField
      FieldName = 'FIN_VMUL'
      Origin = '"FIN_REC"."FIN_VMUL"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_PMUL: TIBBCDField
      FieldName = 'FIN_PMUL'
      Origin = '"FIN_REC"."FIN_PMUL"'
      Precision = 9
      Size = 2
    end
    object fin_recFIN_VJUR: TIBBCDField
      FieldName = 'FIN_VJUR'
      Origin = '"FIN_REC"."FIN_VJUR"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_PJUR: TIBBCDField
      FieldName = 'FIN_PJUR'
      Origin = '"FIN_REC"."FIN_PJUR"'
      Precision = 9
      Size = 2
    end
    object fin_recFIN_VDES: TIBBCDField
      FieldName = 'FIN_VDES'
      Origin = '"FIN_REC"."FIN_VDES"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_PDES: TIBBCDField
      FieldName = 'FIN_PDES'
      Origin = '"FIN_REC"."FIN_PDES"'
      Precision = 9
      Size = 2
    end
    object fin_recFIN_OBSE: TMemoField
      FieldName = 'FIN_OBSE'
      Origin = '"FIN_REC"."FIN_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object fin_recFIN_STA: TIBStringField
      FieldName = 'FIN_STA'
      Origin = '"FIN_REC"."FIN_STA"'
      FixedChar = True
      Size = 1
    end
    object fin_recFIN_DPRA: TIBStringField
      FieldName = 'FIN_DPRA'
      Origin = '"FIN_REC"."FIN_DPRA"'
      Size = 50
    end
    object fin_recFIN_RCLI: TIBStringField
      FieldName = 'FIN_RCLI'
      Origin = '"FIN_REC"."FIN_RCLI"'
      Size = 60
    end
    object fin_recFIN_RREP: TIBStringField
      FieldName = 'FIN_RREP'
      Origin = '"FIN_REC"."FIN_RREP"'
      Size = 60
    end
    object fin_recFIN_PCOM: TIBBCDField
      FieldName = 'FIN_PCOM'
      Origin = '"FIN_REC"."FIN_PCOM"'
      Precision = 9
      Size = 2
    end
    object fin_recFIN_DBAI: TDateField
      FieldName = 'FIN_DBAI'
      Origin = '"FIN_REC"."FIN_DBAI"'
    end
    object fin_recFIN_VENC: TIBBCDField
      FieldName = 'FIN_VENC'
      Origin = '"FIN_REC"."FIN_VENC"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_CPF: TIBStringField
      FieldName = 'FIN_CPF'
      Origin = '"FIN_REC"."FIN_CPF"'
      Size = 14
    end
    object fin_recFIN_CTNR: TIBStringField
      FieldName = 'FIN_CTNR'
      Origin = '"FIN_REC"."FIN_CTNR"'
    end
    object fin_recFIN_CDRD: TIntegerField
      FieldName = 'FIN_CDRD'
      Origin = '"FIN_REC"."FIN_CDRD"'
    end
    object fin_recFIN_VCHQ: TIBBCDField
      FieldName = 'FIN_VCHQ'
      Origin = '"FIN_REC"."FIN_VCHQ"'
      Precision = 18
      Size = 2
    end
    object fin_recFIN_DERD: TIBStringField
      FieldName = 'FIN_DERD'
      Origin = '"FIN_REC"."FIN_DERD"'
      Size = 30
    end
    object fin_recFIN_DTST: TDateTimeField
      FieldName = 'FIN_DTST'
      Origin = '"FIN_REC"."FIN_DTST"'
    end
    object fin_recTPCO: TSmallintField
      FieldName = 'TPCO'
      Origin = '"FIN_REC"."TPCO"'
    end
    object fin_recRECO: TIBStringField
      FieldName = 'RECO'
      Origin = '"FIN_REC"."RECO"'
      FixedChar = True
      Size = 3
    end
  end
  object dtsfin_rec: TDataSource
    DataSet = fin_rec
    Left = 520
    Top = 40
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 336
    Top = 136
  end
  object ibSHEILD: TIBStoredProc
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 408
    Top = 128
  end
  object consulta_s: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 552
    Top = 8
  end
  object aux_S: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 552
    Top = 40
  end
  object tab_pag: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM TAB_PAG'
      'WHERE DESCRICAO = :DESCRICAO')
    Left = 488
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        ParamType = ptUnknown
      end>
    object tab_pagID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_PAG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tab_pagPAG_DPAG: TIBStringField
      FieldName = 'PAG_DPAG'
      Origin = '"TAB_PAG"."PAG_DPAG"'
      Size = 50
    end
    object tab_pagPAG_D001: TIntegerField
      FieldName = 'PAG_D001'
      Origin = '"TAB_PAG"."PAG_D001"'
    end
    object tab_pagPAG_D002: TIntegerField
      FieldName = 'PAG_D002'
      Origin = '"TAB_PAG"."PAG_D002"'
    end
    object tab_pagPAG_D003: TIntegerField
      FieldName = 'PAG_D003'
      Origin = '"TAB_PAG"."PAG_D003"'
    end
    object tab_pagPAG_D004: TIntegerField
      FieldName = 'PAG_D004'
      Origin = '"TAB_PAG"."PAG_D004"'
    end
    object tab_pagPAG_D005: TIntegerField
      FieldName = 'PAG_D005'
      Origin = '"TAB_PAG"."PAG_D005"'
    end
    object tab_pagPAG_D006: TIntegerField
      FieldName = 'PAG_D006'
      Origin = '"TAB_PAG"."PAG_D006"'
    end
    object tab_pagPAG_D007: TIntegerField
      FieldName = 'PAG_D007'
      Origin = '"TAB_PAG"."PAG_D007"'
    end
    object tab_pagPAG_D008: TIntegerField
      FieldName = 'PAG_D008'
      Origin = '"TAB_PAG"."PAG_D008"'
    end
    object tab_pagPAG_D009: TIntegerField
      FieldName = 'PAG_D009'
      Origin = '"TAB_PAG"."PAG_D009"'
    end
    object tab_pagPAG_D010: TIntegerField
      FieldName = 'PAG_D010'
      Origin = '"TAB_PAG"."PAG_D010"'
    end
    object tab_pagPAG_STA: TIBStringField
      FieldName = 'PAG_STA'
      Origin = '"TAB_PAG"."PAG_STA"'
      FixedChar = True
      Size = 1
    end
    object tab_pagPAG_PARC: TSmallintField
      FieldName = 'PAG_PARC'
      Origin = '"TAB_PAG"."PAG_PARC"'
    end
  end
  object aux: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 640
  end
end
