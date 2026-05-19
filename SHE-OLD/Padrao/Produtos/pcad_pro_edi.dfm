inherited FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI
  Left = 324
  Top = 78
  ActiveControl = EDArtigo
  AlphaBlendValue = 0
  ClientHeight = 677
  ClientWidth = 1011
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLCadastro: TPanel
    Width = 1011
    Height = 593
    inherited PaintBox: TPaintBox
      Width = 1011
      Height = 188
      Visible = False
    end
    object PNLPrincipal: TPanel
      Left = 0
      Top = 188
      Width = 1011
      Height = 405
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object PCPrincipal: TdxPageControl
        Left = 0
        Top = 0
        Width = 1011
        Height = 405
        ActivePage = TSGrade
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
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
        object TSGrade: TdxTabSheet
          Caption = 'Produtos'
          object GBMenuEdicao: TGroupBox
            Left = 0
            Top = 0
            Width = 54
            Height = 381
            Align = alLeft
            Caption = ' Edi'#231#227'o '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            object SBMenuEdicao: TSpeedBar
              Left = 2
              Top = 19
              Width = 50
              Height = 360
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
                Cursor = crHandPoint
                Hint = 'Inclus'#227'o de Registros'
                ImageIndex = 0
                Spacing = 1
                Left = 8
                Top = 2
                Visible = True
                OnClick = SIMEAppendClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMEEdit: TSpeedItem
                Tag = 1
                Cursor = crHandPoint
                Hint = 'Edi'#231#227'o de Registros'
                ImageIndex = 1
                Spacing = 1
                Left = 8
                Top = 34
                Visible = True
                OnClick = SIMEEditClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMEDelete: TSpeedItem
                Tag = 1
                Cursor = crHandPoint
                Hint = 'Exclus'#227'o de Registros'
                ImageIndex = 2
                Spacing = 1
                Left = 8
                Top = 66
                Visible = True
                OnClick = SIMEDeleteClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMEPost: TSpeedItem
                Tag = 2
                Enabled = False
                Cursor = crHandPoint
                Hint = 'Salva Edi'#231#227'o'
                ImageIndex = 3
                Spacing = 1
                Left = 8
                Top = 98
                Visible = True
                OnClick = SIMEPostClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMECancel: TSpeedItem
                Tag = 2
                Enabled = False
                Cursor = crHandPoint
                Hint = 'Cancela Edi'#231#227'o'
                ImageIndex = 4
                Spacing = 1
                Left = 8
                Top = 130
                Visible = True
                OnClick = SIMECancelClick
                SectionName = 'Edi'#231#227'o'
              end
            end
          end
          object GBConsulta: TGroupBox
            Left = 54
            Top = 0
            Width = 957
            Height = 381
            Align = alClient
            Caption = '  Consulta  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            object DBGGrade: TdxDBGrid
              Left = 2
              Top = 19
              Width = 953
              Height = 360
              Bands = <
                item
                  Caption = 'SKU'
                  Fixed = bfLeft
                end
                item
                  Caption = 'Grade de Cores'
                end
                item
                  Caption = 'Grade de Variantes'
                end
                item
                  Caption = 'Fornecedor'
                end
                item
                  Caption = 'Categoriza'#231#245'es'
                end
                item
                  Caption = 'Pre'#231'o Atacado'
                end
                item
                  Caption = 'Loja Virtual'
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyDown = DBGGradeKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandColor = 14065456
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWhite
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSCAD_PRO_GRD
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -12
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              OnCustomDrawCell = DBGGradeCustomDrawCell
              object DBGGradeGRD_CPRO: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 80
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GRD_CPRO'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGGradeGRD_CDST: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Visible = False
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GRD_CDST'
              end
              object DBGGradeGRD_REST: TdxDBGridMaskColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Visible = False
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GRD_REST'
              end
              object DBGGradeGRD_DEST: TdxDBGridPickColumn
                Color = clGray
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                MinWidth = 100
                Width = 100
                BandIndex = 0
                RowIndex = 0
                OnValidate = DBGGradeGRD_DESTValidate
                FieldName = 'GRD_DEST'
              end
              object DBGGradeGRD_DCOR: TdxDBGridPickColumn
                MinWidth = 150
                Width = 150
                BandIndex = 1
                RowIndex = 0
                OnValidate = DBGGradeGRD_DCORValidate
                FieldName = 'GRD_DCOR'
              end
              object DBGGradeGRD_PCOR: TdxDBGridPickColumn
                MinWidth = 100
                Width = 100
                BandIndex = 1
                RowIndex = 0
                FieldName = 'GRD_PCOR'
              end
              object DBGGradeGRD_DGRD: TdxDBGridMaskColumn
                MinWidth = 150
                Width = 150
                BandIndex = 2
                RowIndex = 0
                FieldName = 'GRD_DGRD'
              end
              object DBGGradeGRD_CGRD: TdxDBGridMaskColumn
                MinWidth = 50
                Width = 50
                BandIndex = 2
                RowIndex = 0
                FieldName = 'GRD_CGRD'
              end
              object DBGGradeGRD_RGRD: TdxDBGridMaskColumn
                MinWidth = 80
                Width = 80
                BandIndex = 2
                RowIndex = 0
                FieldName = 'GRD_RGRD'
              end
              object DBGGradeGRD_CFOR: TdxDBGridMaskColumn
                Width = 100
                BandIndex = 3
                RowIndex = 0
                FieldName = 'GRD_CFOR'
              end
              object DBGGradeGRD_FBAR: TdxDBGridMaskColumn
                Width = 100
                BandIndex = 3
                RowIndex = 0
                FieldName = 'GRD_FBAR'
              end
              object DBGGradeGRD_ISCT: TdxDBGridMaskColumn
                Visible = False
                Width = 100
                BandIndex = 4
                RowIndex = 0
                FieldName = 'GRD_ISCT'
              end
              object DBGGradeGRD_DSCT: TdxDBGridPickColumn
                Width = 300
                BandIndex = 4
                RowIndex = 0
                OnValidate = DBGGradeGRD_DSCTValidate
                FieldName = 'GRD_DSCT'
              end
              object DBGGradeGRD_PSBR: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 70
                BandIndex = 4
                RowIndex = 0
                FieldName = 'GRD_PSBR'
              end
              object DBGGradeGRD_PREC: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 61
                BandIndex = 5
                RowIndex = 0
                FieldName = 'GRD_PREC'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'GRD_PREC'
                SummaryFooterFormat = ',##,0.00'
              end
              object DBGGradeGRD_PPRZ: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                BandIndex = 5
                RowIndex = 0
                FieldName = 'GRD_PPRZ'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'GRD_PPRZ'
                SummaryFooterFormat = ',##,0.00'
              end
              object DBGGradeGRD_PPRO: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 62
                BandIndex = 5
                RowIndex = 0
                FieldName = 'GRD_PPRO'
                SummaryFooterType = cstAvg
                SummaryFooterField = 'GRD_PPRO'
                SummaryFooterFormat = ',##,0.00'
                DisableFilter = True
              end
              object DBGGradeGRD_TITU: TdxDBGridMaskColumn
                Width = 300
                BandIndex = 6
                RowIndex = 0
                OnValidate = DBGGradeGRD_TITUValidate
                FieldName = 'GRD_TITU'
              end
            end
          end
        end
        object TSMedidas: TdxTabSheet
          Caption = 'Medidas'
          OnShow = TSMedidasShow
          object PNLMEDBOT: TPanel
            Left = 0
            Top = 135
            Width = 1011
            Height = 171
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object GBMEDPRI: TGroupBox
              Left = 0
              Top = 0
              Width = 500
              Height = 171
              Align = alLeft
              Caption = '  Medidas Principais  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object BMEDPRI: TBevel
                Left = 2
                Top = 19
                Width = 496
                Height = 150
                Align = alClient
                Style = bsRaised
              end
              object LAGramatura: TLabel
                Left = 25
                Top = 101
                Width = 56
                Height = 14
                Caption = 'Gramatura'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAMetros: TLabel
                Left = 44
                Top = 77
                Width = 37
                Height = 14
                Caption = 'Metros'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LARendimento: TLabel
                Left = 15
                Top = 149
                Width = 66
                Height = 14
                Caption = 'Rendimento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAPeso: TLabel
                Left = 55
                Top = 29
                Width = 26
                Height = 14
                Caption = 'Peso'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAPSCN: TLabel
                Left = 10
                Top = 53
                Width = 71
                Height = 14
                Caption = 'Peso Canudo'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LADGramatura: TLabel
                Left = 29
                Top = 125
                Width = 52
                Height = 14
                Caption = 'Dimens'#227'o'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object PEDGramatura: TdxPickEdit
                Left = 87
                Top = 120
                Width = 370
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 4
                Items.Strings = (
                  ''
                  'Toler'#226'ncia +/- 5% (NBR 10591)')
              end
              object CEPeso: TdxCurrencyEdit
                Left = 87
                Top = 24
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEPesoValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEPSCN: TdxCurrencyEdit
                Left = 87
                Top = 48
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEGramatura: TdxCurrencyEdit
                Left = 87
                Top = 96
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEGramaturaValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEMetros: TdxCurrencyEdit
                Left = 87
                Top = 72
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEMetrosValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEREND: TdxCurrencyEdit
                Left = 87
                Top = 144
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CERENDValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
            object GBMEDOUT: TGroupBox
              Left = 500
              Top = 0
              Width = 511
              Height = 171
              Align = alClient
              Caption = '  Outras Medidas  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
              object BMEDOUT: TBevel
                Left = 2
                Top = 19
                Width = 507
                Height = 150
                Align = alClient
                Style = bsRaised
              end
              object LALARG_T: TLabel
                Left = 335
                Top = 29
                Width = 72
                Height = 14
                Caption = 'Largura Total'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LALARG_U: TLabel
                Left = 67
                Top = 29
                Width = 61
                Height = 14
                Caption = 'Largura '#218'til'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAELAS_T: TLabel
                Left = 268
                Top = 101
                Width = 139
                Height = 14
                Caption = 'Elasticidade Comprimento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAELAS_U: TLabel
                Left = 26
                Top = 101
                Width = 102
                Height = 14
                Caption = 'Elasticidade Lateral'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAENCO_U: TLabel
                Left = 14
                Top = 53
                Width = 114
                Height = 14
                Caption = 'Encolhimento Lateral'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAENCO_T: TLabel
                Left = 256
                Top = 53
                Width = 151
                Height = 14
                Caption = 'Encolhimento Comprimento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAEspessura: TLabel
                Left = 75
                Top = 125
                Width = 53
                Height = 14
                Caption = 'Espessura'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label71: TLabel
                Left = 76
                Top = 77
                Width = 52
                Height = 14
                Caption = 'Dimens'#227'o'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object IEEspessura: TdxImageEdit
                Tag = 1
                Left = 189
                Top = 120
                Width = 60
                Hint = 'Unidade'
                Color = clWhite
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
                Text = '(mm)'
                Descriptions.Strings = (
                  '('#181')'
                  '(cm)'
                  '(mm)')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2')
                Values.Strings = (
                  '('#181')'
                  '(cm)'
                  '(mm)')
              end
              object PEDENCO: TdxPickEdit
                Left = 133
                Top = 72
                Width = 340
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 4
                Items.Strings = (
                  ''
                  'Toler'#226'ncia +/- 5% (Trama e Urdume)')
              end
              object CELARG_U: TdxCurrencyEdit
                Left = 133
                Top = 24
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CELARG_T: TdxCurrencyEdit
                Left = 412
                Top = 24
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEGramaturaValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEENCO_L: TdxCurrencyEdit
                Left = 133
                Top = 48
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEENCO_C: TdxCurrencyEdit
                Left = 412
                Top = 48
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEELAS_L: TdxCurrencyEdit
                Left = 133
                Top = 96
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEELAS_C: TdxCurrencyEdit
                Left = 412
                Top = 96
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEEspessura: TdxCurrencyEdit
                Left = 133
                Top = 120
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
          end
          object PNLMEDTOP: TPanel
            Left = 0
            Top = 0
            Width = 1011
            Height = 135
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object GBMEDVEN: TGroupBox
              Left = 0
              Top = 0
              Width = 500
              Height = 135
              Align = alLeft
              Caption = '  Controle de Vendas  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object BMEDVEN: TBevel
                Left = 2
                Top = 19
                Width = 496
                Height = 114
                Align = alClient
                Style = bsRaised
              end
              object LAUCOM: TLabel
                Left = 15
                Top = 42
                Width = 44
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Unidade'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAUESP: TLabel
                Left = 18
                Top = 66
                Width = 41
                Height = 14
                Caption = 'Esp'#233'cie'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAUQVOL: TLabel
                Left = 5
                Top = 90
                Width = 54
                Height = 14
                Caption = 'Conte'#250'do'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAUQTDE_VEN_MIN: TLabel
                Left = 22
                Top = 114
                Width = 37
                Height = 14
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                Caption = 'M'#237'nimo'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label72: TLabel
                Left = 69
                Top = 21
                Width = 61
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja F'#237'sica'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label73: TLabel
                Left = 284
                Top = 21
                Width = 70
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja Virtual'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object IEUCOM: TdxImageEdit
                Tag = 1
                Left = 67
                Top = 37
                Width = 200
                Hint = 'Unidade de Medida'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                OnValidate = IEUCOMValidate
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
              object EDUESP: TdxEdit
                Left = 115
                Top = 61
                Width = 152
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                MaxLength = 30
                OnValidate = CEUQVOLValidate
                StoredValues = 3
              end
              object CEUQVOL: TdxCurrencyEdit
                Left = 67
                Top = 61
                Width = 50
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEUQVOLValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEUQTDE_VEN_MIN: TdxCurrencyEdit
                Left = 67
                Top = 109
                Width = 50
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object IEUCOM_LV: TdxImageEdit
                Tag = 1
                Left = 282
                Top = 37
                Width = 200
                Hint = 'Unidade'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
              object EDUESP_LV: TdxMaskEdit
                Left = 330
                Top = 61
                Width = 152
                Hint = 'C'#243'digo'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                StoredValues = 7
              end
              object CEUQTDE_VEN_MIN_LV: TdxCurrencyEdit
                Left = 282
                Top = 109
                Width = 50
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 9
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQVOL_LV: TdxCurrencyEdit
                Left = 282
                Top = 61
                Width = 50
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object EDUCON: TdxEdit
                Left = 67
                Top = 85
                Width = 200
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                MaxLength = 30
                OnChange = EDUCONChange
                OnValidate = EDUCONValidate
                StoredValues = 3
              end
              object EDLJ_UCON: TdxMaskEdit
                Left = 282
                Top = 85
                Width = 200
                Hint = 'C'#243'digo'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 8
                Alignment = taLeftJustify
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                StoredValues = 7
              end
            end
            object GBMEDEST: TGroupBox
              Left = 500
              Top = 0
              Width = 511
              Height = 135
              Align = alClient
              Caption = '  Controle de Estoque  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
              object BMEDEST: TBevel
                Left = 2
                Top = 19
                Width = 507
                Height = 114
                Align = alClient
                Style = bsRaised
              end
              object LAUCDBE: TLabel
                Left = 10
                Top = 42
                Width = 92
                Height = 14
                Hint = 'Tipo de Controle de Estoque'
                Caption = 'Tipo de Controle'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAUQTDE: TLabel
                Left = 114
                Top = 66
                Width = 93
                Height = 14
                Hint = 'Quantidade em metros de uma pe'#231'a'
                Caption = 'Quantidade Pe'#231'a'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAUQTDE_VEN_MUL: TLabel
                Left = 161
                Top = 90
                Width = 46
                Height = 14
                Hint = 'Quantidade m'#250'ltiplas de venda'
                Caption = 'M'#250'ltiplos'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAUQTDE_EST_MIN: TLabel
                Left = 171
                Top = 114
                Width = 36
                Height = 14
                Hint = 'Estoque m'#237'nimo em pe'#231'as.'
                Caption = 'M'#237'nima'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label74: TLabel
                Left = 109
                Top = 21
                Width = 61
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja F'#237'sica'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object Label75: TLabel
                Left = 308
                Top = 21
                Width = 70
                Height = 14
                Hint = 'Unidade de Medida'
                Caption = 'Loja Virtual'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object IEUCDBE: TdxImageEdit
                Tag = 1
                Left = 106
                Top = 37
                Width = 165
                Hint = 'Tipo de Controle de Estoque'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Text = 'QT'
                Descriptions.Strings = (
                  'Quantidade'
                  'Pe'#231'as Fixas'
                  'Pe'#231'as V'#225'ri'#225'veis / Corte')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2')
                Values.Strings = (
                  'QT'
                  'PF'
                  'PI')
              end
              object CEUQTDE: TdxCurrencyEdit
                Left = 211
                Top = 61
                Width = 60
                Hint = 'Quantidade em metros de uma pe'#231'a'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEUQTDEValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_VEN_MUL: TdxCurrencyEdit
                Left = 211
                Top = 85
                Width = 60
                Hint = 'Quantidade m'#250'ltiplas de venda'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_EST_MIN: TdxCurrencyEdit
                Left = 211
                Top = 109
                Width = 60
                Hint = 'Estoque m'#237'nimo em pe'#231'as.'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEUQTDE_EST_MIN_LV: TdxCurrencyEdit
                Left = 412
                Top = 109
                Width = 60
                Hint = 'Quantidade m'#237'nima de vendas em pe'#231'as.'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 7
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object IEUCDBE_LV: TdxImageEdit
                Tag = 1
                Left = 306
                Top = 37
                Width = 165
                Hint = 'Tipo de Controle de Estoque'
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Text = 'QT'
                Descriptions.Strings = (
                  'Quantidade'
                  'Pe'#231'as Fixas'
                  'Pe'#231'as V'#225'ri'#225'veis / Corte')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2')
                Values.Strings = (
                  'QT'
                  'PF'
                  'PI')
              end
              object CEUQTDE_LV: TdxCurrencyEdit
                Left = 411
                Top = 61
                Width = 60
                Hint = 'Quantidade em metros de uma pe'#231'a'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 5
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
              object CEUQTDE_VEN_MUL_LV: TdxCurrencyEdit
                Left = 411
                Top = 85
                Width = 60
                Hint = 'Quantidade m'#250'ltiplas de venda'
                HelpContext = 1
                Color = 16644596
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 6
                Alignment = taRightJustify
                ReadOnly = False
                DecimalPlaces = 0
                DisplayFormat = '0'
                UseThousandSeparator = True
                Value = 1.000000000000000000
                StoredValues = 65
              end
            end
          end
          object PNLCF: TPanel
            Left = 0
            Top = 306
            Width = 1011
            Height = 75
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object GBORIG: TGroupBox
              Left = 500
              Top = 0
              Width = 511
              Height = 75
              Align = alClient
              Caption = '  Fabrica'#231#227'o  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 1
              object BORIG: TBevel
                Left = 2
                Top = 19
                Width = 507
                Height = 54
                Align = alClient
                Style = bsRaised
              end
              object LACPAIS: TLabel
                Left = 29
                Top = 53
                Width = 20
                Height = 14
                Caption = 'Pa'#237's'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAORIG: TLabel
                Left = 10
                Top = 29
                Width = 39
                Height = 14
                Caption = 'Origem'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object IEORIG: TdxImageEdit
                Left = 53
                Top = 24
                Width = 445
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 0
                Descriptions.Strings = (
                  'Nacional'
                  'Estrangeira - Importa'#231#227'o Direta'
                  'Estrangeira - Adiquirida no Mercado Interno'
                  
                    'Nacional - Mercadoria ou bem com conte'#250'do de importa'#231#227'o superior' +
                    ' a 40% e inferior ou igual a 70%'
                  
                    'Nacional - Produ'#231#227'o em conformidade com os processos produtivos ' +
                    'b'#225'sicos de que tratam as legisla'#231#245'es citadas nos Ajustes'
                  
                    'Nacional - Mercadoria ou bem com conte'#250'do de importa'#231#227'o inferior' +
                    ' ou igual a 40%'
                  
                    'Estrangeira - importa'#231#227'o direta, sem similar nacional, constante' +
                    ' em lista da CAMEX e g'#225's natural'
                  
                    'Estrangeira - Adquirida no mercado interno, sem similar nacional' +
                    ', constante em lista da CAMEX e g'#225's natural'
                  
                    'Nacional - Mercadoria ou bem com conte'#250'do de importa'#231#227'o superior' +
                    ' a 70%')
                ImageIndexes.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8')
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8')
              end
              object IECPAIS: TdxImageEdit
                Tag = 1
                Left = 53
                Top = 48
                Width = 445
                Hint = 'Origem'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 1
                Descriptions.Strings = (
                  '')
                ImageIndexes.Strings = (
                  '0')
                Values.Strings = (
                  '')
              end
            end
            object GBFiscal: TGroupBox
              Left = 0
              Top = 0
              Width = 500
              Height = 75
              Align = alLeft
              Caption = '  Classifica'#227'o Fiscal  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object BCF: TBevel
                Left = 2
                Top = 19
                Width = 496
                Height = 54
                Align = alClient
                Style = bsRaised
              end
              object Label2: TLabel
                Left = 17
                Top = 29
                Width = 24
                Height = 14
                Caption = 'NCM'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LATRIBIPI: TLabel
                Left = 10
                Top = 53
                Width = 31
                Height = 14
                Cursor = crHandPoint
                Hint = 'Percentual de al'#237'quota de IPI'
                Caption = 'IPI %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LACEST: TLabel
                Left = 193
                Top = 29
                Width = 29
                Height = 14
                Cursor = crHandPoint
                Hint = 'C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
                Caption = 'CEST'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAEXTIPI: TLabel
                Left = 185
                Top = 53
                Width = 37
                Height = 14
                Cursor = crHandPoint
                Hint = 'C'#243'digo Exce'#231#227'o da Tabela de IPI'
                Caption = 'EXTIPI'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEPIPI: TdxCurrencyEdit
                Left = 45
                Top = 48
                Width = 50
                Hint = 'Percentual de al'#237'quota de IPI'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnChange = CEPIPIChange
                OnValidate = CEPIPIValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object PENCM: TdxPickEdit
                Left = 45
                Top = 24
                Width = 100
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 0
                OnExit = PENCMExit
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 8
                StoredValues = 2
              end
              object PECEST: TdxPickEdit
                Left = 227
                Top = 24
                Width = 100
                Hint = 'C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 2
                OnExit = PENCMExit
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 7
                StoredValues = 2
              end
              object PEEXTIPI: TdxPickEdit
                Left = 227
                Top = 48
                Width = 50
                Hint = 'C'#243'digo Exce'#231#227'o da Tabela de IPI'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = clGray
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.Shadow = True
                TabOrder = 3
                OnExit = PENCMExit
                OnKeyPress = PENCMKeyPress
                CharCase = ecUpperCase
                MaxLength = 3
                StoredValues = 2
              end
            end
          end
        end
        object TSPrecos: TdxTabSheet
          Caption = 'Pre'#231'os'
          OnShow = TSPrecosShow
          object PCTAB_PRC: TdxPageControl
            Left = 0
            Top = 0
            Width = 1011
            Height = 381
            ActivePage = TSPRC_PAD
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
            object TSPRC_PAD: TdxTabSheet
              Caption = 'Atacado'
              OnShow = TSPRC_PADShow
              object BPRC_PAD: TBevel
                Left = 0
                Top = 0
                Width = 1011
                Height = 355
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_PAD: TLabel
                Tag = 1
                Left = 37
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_PAD_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPPRC_PAD_DSC: TLabel
                Tag = 1
                Left = 28
                Top = 85
                Width = 73
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Descontos %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPPRC_PAD_AJU: TLabel
                Tag = 1
                Left = 33
                Top = 109
                Width = 68
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Reajustes %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_PAD_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_PAD: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PADValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_PAD_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PAD_PRZValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEVPRC_PAD_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                ReadOnly = False
                OnValidate = CEVPRC_PAD_PROValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEPPRC_PAD_DSC: TdxCurrencyEdit
                Left = 115
                Top = 80
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
              object CEPPRC_PAD_AJU: TdxCurrencyEdit
                Left = 115
                Top = 104
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                StoredValues = 65
              end
            end
            object TSPRC_ATV: TdxTabSheet
              Caption = 'Atacarejo'
              OnShow = TSPRC_ATVShow
              object BPRC_ATV: TBevel
                Left = 0
                Top = 0
                Width = 1011
                Height = 355
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAPPRC_ATV_DSC: TLabel
                Tag = 1
                Left = 33
                Top = 85
                Width = 68
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Desconto %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPPRC_ATV_AJU: TLabel
                Tag = 1
                Left = 38
                Top = 109
                Width = 63
                Height = 14
                Cursor = crHandPoint
                Hint = 'Referencia'
                Caption = 'Reajuste %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_ATV: TLabel
                Tag = 1
                Left = 45
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_ATV_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_ATV_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_ATV: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_ATV_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_ATV_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEPPRC_ATV_DSC: TdxCurrencyEdit
                Left = 115
                Top = 80
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 3
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEPPRC_ATV_AJU: TdxCurrencyEdit
                Left = 115
                Top = 104
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_VAR: TdxTabSheet
              Caption = 'Varejo'
              OnShow = TSPRC_VARShow
              object BPRC_VAR: TBevel
                Left = 0
                Top = 0
                Width = 1004
                Height = 355
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_VAR: TLabel
                Tag = 1
                Left = 45
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_VAR_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_VAR_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_VAR: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_VAR_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_VAR_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_REP: TdxTabSheet
              Caption = 'Representa'#231#227'o'
              OnShow = TSPRC_REPShow
              object BPRC_REP: TBevel
                Left = 0
                Top = 0
                Width = 1004
                Height = 355
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_REP: TLabel
                Tag = 1
                Left = 45
                Top = 13
                Width = 64
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_REP_PRZ: TLabel
                Tag = 1
                Left = 42
                Top = 37
                Width = 59
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = #192' Prazo R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAVPRC_REP_PRO: TLabel
                Tag = 1
                Left = 29
                Top = 61
                Width = 72
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Promo'#231#227'o R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEVPRC_REP: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_REP_PRZ: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_REP_PRO: TdxCurrencyEdit
                Left = 115
                Top = 56
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_LV: TdxTabSheet
              Caption = 'Loja Virtual'
              OnShow = TSPRC_LVShow
              object BPRC_LV: TBevel
                Left = 0
                Top = 0
                Width = 1004
                Height = 355
                Align = alClient
                ParentShowHint = False
                ShowHint = True
              end
              object LAVPRC_LV: TLabel
                Tag = 1
                Left = 12
                Top = 13
                Width = 89
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Pre'#231'o '#224' Vista R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object LAPMKP: TLabel
                Tag = 1
                Left = 46
                Top = 37
                Width = 55
                Height = 14
                Cursor = crHandPoint
                Hint = 'Pre'#231'o Unit'#225'rio'
                Caption = 'Markup %'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = True
              end
              object CEPMKP: TdxCurrencyEdit
                Left = 115
                Top = 32
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                OnValidate = CEPMKPValidate
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_LV: TdxCurrencyEdit
                Left = 115
                Top = 8
                Width = 60
                Hint = 'Pre'#231'o Unit'#225'rio'
                HelpContext = 1
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
            object TSPRC_COM: TdxTabSheet
              Caption = 'Compras'
              OnShow = TSPRC_COMShow
              object BPRC_COM: TBevel
                Left = 0
                Top = 0
                Width = 1004
                Height = 355
                Align = alClient
              end
              object LAVPRC_COM: TLabel
                Tag = 1
                Left = 13
                Top = 13
                Width = 94
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Unit'#225'rio R$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object LAVPRC_COM_IMP: TLabel
                Tag = 1
                Left = 5
                Top = 37
                Width = 102
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Unit'#225'rio US$'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object CEVPRC_COM: TdxCurrencyEdit
                Left = 112
                Top = 8
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
              object CEVPRC_COM_IMP: TdxCurrencyEdit
                Left = 112
                Top = 32
                Width = 60
                HelpContext = 1
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                ReadOnly = False
                DisplayFormat = '0.00'
                UseThousandSeparator = True
                Height = 24
                StoredValues = 65
              end
            end
          end
        end
        object TSComposicoes: TdxTabSheet
          Caption = 'Composi'#231#227'o'
          object GBCMenuEdicao: TGroupBox
            Left = 0
            Top = 0
            Width = 54
            Height = 381
            Align = alLeft
            Caption = ' Edi'#231#227'o '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            object SBCMenuEdicao: TSpeedBar
              Left = 2
              Top = 19
              Width = 50
              Height = 360
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
              object SpeedbarSection1: TSpeedbarSection
                Caption = 'Edi'#231#227'o'
              end
              object SIMCEAppend: TSpeedItem
                Cursor = crHandPoint
                Hint = 'Inclus'#227'o de Registros'
                ImageIndex = 0
                Spacing = 1
                Left = 8
                Top = 2
                Visible = True
                OnClick = SIMCEAppendClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMCEEdit: TSpeedItem
                Tag = 1
                Cursor = crHandPoint
                Hint = 'Edi'#231#227'o de Registros'
                ImageIndex = 1
                Spacing = 1
                Left = 8
                Top = 34
                Visible = True
                OnClick = SIMCEEditClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMCEDelete: TSpeedItem
                Tag = 1
                Cursor = crHandPoint
                Hint = 'Exclus'#227'o de Registros'
                ImageIndex = 2
                Spacing = 1
                Left = 8
                Top = 66
                Visible = True
                OnClick = SIMCEDeleteClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMCEPost: TSpeedItem
                Tag = 2
                Enabled = False
                Cursor = crHandPoint
                Hint = 'Salva Edi'#231#227'o'
                ImageIndex = 3
                Spacing = 1
                Left = 8
                Top = 98
                Visible = True
                OnClick = SIMCEPostClick
                SectionName = 'Edi'#231#227'o'
              end
              object SIMCECancel: TSpeedItem
                Tag = 2
                Enabled = False
                Cursor = crHandPoint
                Hint = 'Cancela Edi'#231#227'o'
                ImageIndex = 4
                Spacing = 1
                Left = 8
                Top = 130
                Visible = True
                OnClick = SIMCECancelClick
                SectionName = 'Edi'#231#227'o'
              end
            end
          end
          object GBCConsulta: TGroupBox
            Left = 54
            Top = 0
            Width = 957
            Height = 381
            Align = alClient
            Caption = '  Consulta  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            object DBGCMP: TdxDBGrid
              Left = 2
              Top = 19
              Width = 953
              Height = 360
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
              OnKeyDown = DBGCMPKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -13
              BandFont.Name = 'Segoe UI Semibold'
              BandFont.Style = [fsBold, fsItalic]
              DataSource = DTSCAD_PRO_CMP
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -13
              PreviewFont.Name = 'Segoe UI Semibold'
              PreviewFont.Style = [fsBold, fsItalic]
              object DBGCMPCMP_DEPK: TdxDBGridPickColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 250
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CMP_DEPK'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = '0'
              end
              object DBGCMPCMP_REPK: TdxDBGridPickColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CMP_REPK'
              end
              object DBGCMPCMP_QTDE: TdxDBGridMaskColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taRightJustify
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CMP_QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'CMP_QTDE'
                SummaryFooterFormat = ',##,0.00'
              end
            end
          end
        end
        object TSILA_BMP: TdxTabSheet
          Caption = 'Instru'#231#245'es de Lavagem'
          object BILA_BMP: TBevel
            Left = 0
            Top = 0
            Width = 1011
            Height = 381
            Align = alClient
          end
          object BILA_BMP7: TBevel
            Left = 6
            Top = 253
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP6: TBevel
            Left = 6
            Top = 212
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP5: TBevel
            Left = 6
            Top = 171
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP4: TBevel
            Left = 6
            Top = 130
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP3: TBevel
            Left = 6
            Top = 89
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP2: TBevel
            Left = 6
            Top = 48
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object BILA_BMP1: TBevel
            Left = 6
            Top = 7
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object ILA_BMP1: TImage
            Left = 8
            Top = 10
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 1
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object ILA_BMP3: TImage
            Left = 8
            Top = 92
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 3
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object ILA_BMP4: TImage
            Left = 8
            Top = 133
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 4
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object ILA_BMP5: TImage
            Left = 8
            Top = 174
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 5
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object ILA_BMP6: TImage
            Left = 8
            Top = 215
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 6
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object ILA_BMP7: TImage
            Left = 8
            Top = 256
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 7
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object ILA_BMP2: TImage
            Left = 8
            Top = 51
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 2
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object BILA_BMP8: TBevel
            Left = 6
            Top = 294
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object ILA_BMP8: TImage
            Left = 8
            Top = 297
            Width = 35
            Height = 35
            Cursor = crHandPoint
            HelpContext = 8
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = ILA_BMP1Click
          end
          object LAILA_BMP1: TLabel
            Left = 50
            Top = 25
            Width = 12
            Height = 14
            Caption = '1)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAILA_BMP2: TLabel
            Left = 50
            Top = 66
            Width = 12
            Height = 14
            Caption = '2)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAILA_BMP3: TLabel
            Left = 50
            Top = 107
            Width = 12
            Height = 14
            Caption = '3)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAILA_BMP4: TLabel
            Left = 50
            Top = 148
            Width = 12
            Height = 14
            Caption = '4)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAILA_BMP5: TLabel
            Left = 50
            Top = 188
            Width = 12
            Height = 14
            Caption = '5)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAILA_BMP6: TLabel
            Left = 50
            Top = 229
            Width = 12
            Height = 14
            Caption = '6)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAILA_BMP7: TLabel
            Left = 50
            Top = 271
            Width = 12
            Height = 14
            Caption = '7)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAILA_BMP8: TLabel
            Left = 50
            Top = 312
            Width = 12
            Height = 14
            Caption = '8)'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object EDILA_INS1: TdxEdit
            Tag = 1
            Left = 66
            Top = 20
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS2: TdxEdit
            Tag = 1
            Left = 65
            Top = 61
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 1
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS3: TdxEdit
            Tag = 1
            Left = 65
            Top = 102
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 2
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS4: TdxEdit
            Tag = 1
            Left = 65
            Top = 143
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 3
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS5: TdxEdit
            Tag = 1
            Left = 65
            Top = 183
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 4
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS6: TdxEdit
            Tag = 1
            Left = 65
            Top = 224
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 5
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS7: TdxEdit
            Tag = 1
            Left = 65
            Top = 266
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 6
            MaxLength = 120
            StoredValues = 2
          end
          object EDILA_INS8: TdxEdit
            Tag = 1
            Left = 65
            Top = 307
            Width = 930
            Hint = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 7
            MaxLength = 120
            StoredValues = 2
          end
        end
        object TSIMG_ART: TdxTabSheet
          Caption = 'Imagem do Artigo'
          object BIMG_ART_PNL: TBevel
            Left = 325
            Top = 0
            Width = 686
            Height = 381
            Align = alClient
          end
          object BIMG_ART: TBevel
            Left = 0
            Top = 0
            Width = 325
            Height = 381
            Cursor = crHandPoint
            Align = alLeft
            Style = bsRaised
          end
          object IMG_ART: TImage
            Left = 5
            Top = 5
            Width = 314
            Height = 372
            Cursor = crHandPoint
            Stretch = True
            OnDblClick = IMG_ARTDblClick
          end
          object SBIMG_ART: TSpeedButton
            Left = 297
            Top = 356
            Width = 19
            Height = 20
            Cursor = crHandPoint
            Hint = 'Pesquisa Foto'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
              E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
              FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
              F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
              AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
              A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
              EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
              DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
              7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
              FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
              CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
              DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
              FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
              D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
              CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
              D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
              EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
              63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
              EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
              27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
              A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBIMG_ARTClick
          end
        end
        object TSIMG_SKU: TdxTabSheet
          Caption = 'Imagens dos Produtos'
          object BIMG_SKU: TBevel
            Left = 0
            Top = 0
            Width = 325
            Height = 381
            Cursor = crHandPoint
            Align = alLeft
            Style = bsRaised
          end
          object IMG_SKU: TImage
            Left = 5
            Top = 5
            Width = 314
            Height = 372
            Cursor = crHandPoint
            Stretch = True
            OnDblClick = IMG_ARTDblClick
          end
          object SBIMG_SKU: TSpeedButton
            Left = 297
            Top = 356
            Width = 19
            Height = 20
            Cursor = crHandPoint
            Hint = 'Pesquisa Foto'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFF9F9F9
              E4E4E4C1C1C1A6A6A69898989DA0A19FA2A4999999B2B2B2D1D1D1F0F0F0FFFF
              FFFFFFFFFFFFFFFFFFFFF9F9F9C7C7C7A2A2A2B0B0B0CCCCCCE0E2E2E9EFF2E9
              F1F3D4D5D5B2B2B29D9D9DA2A2A2EEEEEEFFFFFFFFFFFFFFFFFFC6C6C6939393
              AEAEAEC4C4C4C5C5C5BEBFBFC2C5C6BCBFC0B5B6B8BCBCBCB1B1B18F8F8FA6A6
              A6E9E9E9FFFFFFFFFFFF8282828F8F8FA7A7A7BFC2C3D4DADBE6ECEDE6ECEEE4
              EAECDDE3E5C9CCCDADADAD989898808080B6B6B6FFFFFFFFFFFF818181B8BABA
              DBE1E1CCD3CEB3B399BBBBA2BBBBA2BBBBA2B7B8A2C2C6BED4DBD8D2D6D77A7A
              7AA6A6A6FFFFFFFFFFFF9D9E9FD4DADBD1D5B9E6E6B4FFFFCCFFFFCCFFFFCCFF
              FFD3FCFCD7EDEDC7D3D5AEC4CAC2A8ABAB949494FFFFFFFFFFFFB6B8B8D2D1CE
              CFC8A5F6F5BDFFF3CEFFF9C6FFFFBDFFFFC2FFFFC9FEFEC1F5F5AF858677D8DD
              DFA0A0A0FFFFFFFFFFFFB7B9B9D9D8D5D0BCA6E2D6B8F0DACEFFF4BEFFFFA9FF
              FFA9FEFEAAEBEBB2D8CEB39B9B96D8DDDFA0A0A0FFFFFFFFFFFFE0E1E1D8DEDF
              D3D8D9C4B7ACDAC3AED4C2B0D4C2B0D4C2B0D4C2B0D9C3ADD3C7BCE1E7E9CDCD
              CDF5F5F5FFFFFFFFFFFFFBFBFBE3E4E4D4D8D9D1D6D8D6D5D2D9D3CCD9D3CCD9
              D3CCD9D3CCD6D3D1CDD0D1B6B7B8BCB6B6FAF7F7FFFFFFFFFFFFFFFFFFFAFAFA
              EAEAEADCDEDED3D5D5CDCFCFCDCFCFCBCDCDC8C9CABBB8B8C1BEBEBEBDBD8767
              63C6A7A5FAF7F7FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF5F5F5EFEFEFEFEFEFEF
              EFEFEDECECD1BABAA97A7A756B6BB76D2EA45737CBB1B0FDFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB2DD9C39FDAE
              27EE8D2DA65027C19F9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFCF9F9DFBAB3E29D30FBAA27E8882A954122FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB4
              A0DC9736E389209B4122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F5E1C3B6CD9785D5B1AE}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBIMG_ARTClick
          end
          object DBGIMG_SKU: TdxDBGrid
            Left = 325
            Top = 0
            Width = 686
            Height = 381
            Bands = <
              item
                Caption = 'SKU'
                MinWidth = 120
                Width = 120
              end
              item
                Caption = 'Grade Completa'
                Width = 554
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
            BandColor = clGray
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clWhite
            BandFont.Height = -13
            BandFont.Name = 'Segoe UI Semibold'
            BandFont.Style = [fsBold, fsItalic]
            DataSource = DTSCAD_PRO_GRD
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -12
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -12
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            ShowBands = True
            object DBGIMG_SKUGRD_CPRO: TdxDBGridMaskColumn
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRD_CPRO'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGIMG_SKUDGCP: TdxDBGridMaskColumn
              Width = 530
              BandIndex = 1
              RowIndex = 0
              FieldName = 'DGCP'
            end
          end
        end
        object TSMarketingPlace: TdxTabSheet
          Caption = 'Marketing Place'
          object BMKP: TBevel
            Left = 0
            Top = 0
            Width = 1011
            Height = 381
            Align = alClient
          end
          object LAMKP_IDML: TLabel
            Tag = 1
            Left = 5
            Top = 13
            Width = 91
            Height = 14
            Hint = 'Referencia'
            Caption = '1) Mercado Livre'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAMKP_IDSP: TLabel
            Tag = 1
            Left = 5
            Top = 37
            Width = 58
            Height = 14
            Hint = 'Referencia'
            Caption = '2) Shopee'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LAMKP_IDAM: TLabel
            Tag = 1
            Left = 5
            Top = 61
            Width = 59
            Height = 14
            Hint = 'Referencia'
            Caption = '3) Amazon'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object IEMKP_IDSP: TdxImageEdit
            Tag = 1
            Left = 98
            Top = 32
            Width = 200
            Hint = 'Unidade'
            Color = clWhite
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
            Text = '0'
            AutoSize = False
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
            Height = 24
          end
          object IEMKP_IDML: TdxImageEdit
            Left = 98
            Top = 8
            Width = 200
            Hint = 'Unidade'
            Color = clWhite
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
            Text = '0'
            AutoSize = False
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
            Height = 24
          end
          object IEMKP_IDAM: TdxImageEdit
            Tag = 1
            Left = 98
            Top = 56
            Width = 200
            Hint = 'Unidade'
            Color = clWhite
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
            Text = '0'
            AutoSize = False
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
            Height = 24
          end
        end
        object TSINFADDIV: TdxTabSheet
          Caption = 'Classifica'#231#245'es Diversas'
          object BCT: TBevel
            Left = 0
            Top = 0
            Width = 1011
            Height = 381
            Align = alClient
          end
          object Label3: TLabel
            Left = 18
            Top = 13
            Width = 56
            Height = 14
            Caption = 'Densidade'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 6
            Top = 37
            Width = 68
            Height = 14
            Caption = 'T'#237'tulo do Fio'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label29: TLabel
            Left = 5
            Top = 61
            Width = 69
            Height = 14
            Caption = 'Acabamento'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object cbdens: TdxPickEdit
            Tag = 1
            Left = 80
            Top = 8
            Width = 920
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clGray
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.Shadow = True
            TabOrder = 0
            CharCase = ecUpperCase
          end
          object cbtitf: TdxPickEdit
            Tag = 1
            Left = 80
            Top = 32
            Width = 920
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clGray
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.Shadow = True
            TabOrder = 1
            CharCase = ecUpperCase
          end
          object cbstal: TdxImageEdit
            Left = 80
            Top = 56
            Width = 920
            Color = clWhite
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 2
            AutoSize = False
            Descriptions.Strings = (
              'ABERTO'
              'FECHADO')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              'A'
              'F')
            Height = 24
          end
        end
        object TSINFADCPL: TdxTabSheet
          Caption = 'Informa'#231#245'es Adicionais'
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 505
            Height = 304
            Align = alLeft
            Caption = '  Ficha T'#233'cnica  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            object EMINFADCAD: TdxMemo
              Left = 2
              Top = 19
              Width = 501
              Align = alClient
              Color = 16644596
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 0
              Height = 283
            end
          end
          object GroupBox4: TGroupBox
            Left = 504
            Top = 0
            Width = 507
            Height = 304
            Align = alRight
            Caption = '  Documentos Fiscais  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            object EMINFADTEC: TdxMemo
              Left = 2
              Top = 19
              Width = 503
              Align = alClient
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = 14065456
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsFlat
              Style.Shadow = True
              TabOrder = 0
              Height = 283
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 304
            Width = 1011
            Height = 77
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object GroupBox2: TGroupBox
              Left = 0
              Top = 0
              Width = 440
              Height = 77
              Align = alLeft
              Caption = '  Etiquetas  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 0
              object EMINFADETQ: TdxMemo
                Left = 2
                Top = 19
                Width = 436
                Align = alClient
                Color = clInfoBk
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 14065456
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 56
              end
            end
          end
        end
      end
    end
    object PNLEDI_CAD: TPanel
      Left = 0
      Top = 0
      Width = 1011
      Height = 188
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GBCadastro: TGroupBox
        Left = 0
        Top = 0
        Width = 1011
        Height = 185
        Align = alTop
        Caption = '  Cadastro  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Tag = 1
          Left = 32
          Top = 18
          Width = 33
          Height = 14
          Hint = 'Referencia'
          Caption = 'Artigo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 14
          Top = 43
          Width = 51
          Height = 14
          Caption = 'Descri'#231#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LADECF: TLabel
          Left = 3
          Top = 90
          Width = 62
          Height = 14
          Caption = 'Fornecedor'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAIDGRP: TLabel
          Left = 32
          Top = 138
          Width = 33
          Height = 14
          Caption = 'Grupo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAIDCOL: TLabel
          Left = 374
          Top = 114
          Width = 42
          Height = 14
          Caption = 'Cole'#231#227'o'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LACDCF: TLabel
          Left = 353
          Top = 90
          Width = 63
          Height = 14
          Caption = 'Ref. Fornec'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAIDCAT: TLabel
          Left = 14
          Top = 162
          Width = 51
          Height = 14
          Caption = 'Categoria'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAIDSGP: TLabel
          Left = 358
          Top = 138
          Width = 58
          Height = 14
          Caption = 'Sub Grupo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAIDSCT: TLabel
          Left = 340
          Top = 162
          Width = 76
          Height = 14
          Caption = 'Sub Categoria'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label40: TLabel
          Left = 34
          Top = 67
          Width = 31
          Height = 14
          Caption = 'T'#237'tulo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAIDSEG: TLabel
          Left = 8
          Top = 114
          Width = 57
          Height = 14
          Caption = 'Segmento'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Tag = 1
          Left = 370
          Top = 18
          Width = 46
          Height = 14
          Hint = 'Referencia'
          Caption = 'Empresa'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object EDCDCF: TdxMaskEdit
          Left = 421
          Top = 85
          Width = 250
          Hint = 'C'#243'digo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 5
          OnExit = EDCDCFExit
          CharCase = ecUpperCase
          IgnoreMaskBlank = False
          MaxLength = 20
          OnChange = EDArtigoChange
          StoredValues = 6
        end
        object EDCMP_PAD: TdxEdit
          Tag = 1
          Left = 75
          Top = 38
          Width = 473
          Hint = 'Composi'#231#227'o'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 14
          CharCase = ecUpperCase
          MaxLength = 120
          StoredValues = 2
        end
        object EDDescricao: TdxEdit
          Tag = 1
          Left = 71
          Top = 38
          Width = 600
          Hint = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 2
          OnExit = EDDescricaoExit
          CharCase = ecUpperCase
          MaxLength = 120
          OnChange = EDArtigoChange
          StoredValues = 2
        end
        object IEIDGRP: TdxImageEdit
          Left = 71
          Top = 133
          Width = 250
          Cursor = crHandPoint
          Hint = 'Grupo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 8
          Text = '0'
          OnChange = EDArtigoChange
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object GroupBox6: TGroupBox
          Left = 682
          Top = 9
          Width = 320
          Height = 79
          Caption = '  C'#243'digo de Barras  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 13
          object EDCEAN: TACBrBarCode
            Left = 95
            Top = 19
            Width = 190
            Height = 31
            Modul = 2
            Ratio = 2.000000000000000000
            Typ = bcCodeEAN13
            ShowText = bcoBoth
            ShowTextFont.Charset = DEFAULT_CHARSET
            ShowTextFont.Color = clWindowText
            ShowTextFont.Height = -11
            ShowTextFont.Name = 'MS Sans Serif'
            ShowTextFont.Style = []
            ShowTextPosition = stpBottomCenter
            Transparent = True
          end
          object Label12: TLabel
            Left = 5
            Top = 27
            Width = 73
            Height = 14
            Caption = 'Nosso C'#243'digo'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 16
            Top = 57
            Width = 62
            Height = 14
            Caption = 'Fornecedor'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object EDCEANCF: TdxEdit
            Tag = 1
            Left = 93
            Top = 52
            Width = 195
            Hint = 'Referencia'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
            OnExit = EDCEANCFExit
            CharCase = ecUpperCase
            MaxLength = 120
            StoredValues = 2
          end
        end
        object EDArtigo: TdxEdit
          Tag = 1
          Left = 71
          Top = 13
          Width = 100
          Hint = 'Referencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 1
          CharCase = ecUpperCase
          MaxLength = 120
          OnChange = EDArtigoChange
          OnValidate = EDArtigoValidate
          StoredValues = 2
        end
        object IEIDCAT: TdxImageEdit
          Left = 71
          Top = 157
          Width = 250
          Cursor = crHandPoint
          Hint = 'Grupo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 10
          Text = '0'
          OnChange = EDArtigoChange
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object PEDECF: TdxPickEdit
          Left = 71
          Top = 85
          Width = 250
          Cursor = crHandPoint
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBlack
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 4
          OnExit = PEDECFExit
          CharCase = ecUpperCase
          OnChange = EDArtigoChange
          DropDownRows = 20
        end
        object GroupBox1: TGroupBox
          Left = 682
          Top = 89
          Width = 320
          Height = 94
          Caption = '  Classifica'#231#245'es  '
          TabOrder = 12
          object Label18: TLabel
            Left = 5
            Top = 21
            Width = 52
            Height = 14
            Hint = 'Finalidade do Produto'
            Caption = 'Finalidade'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object Label41: TLabel
            Left = 11
            Top = 69
            Width = 46
            Height = 14
            Hint = 'Situa'#231#227'o Cadastral'
            Caption = 'Situa'#231#227'o'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object Label68: TLabel
            Left = 12
            Top = 45
            Width = 45
            Height = 14
            Hint = 'Especifica'#231#227'o do Tipo de Estoque Vend'#225'vel'
            Caption = 'Estoque'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object IECDST: TdxImageEdit
            Tag = 1
            Left = 62
            Top = 64
            Width = 250
            Cursor = crHandPoint
            Hint = 'Situa'#231#227'o Cadastral'
            Color = 12189625
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 2
            Text = '0'
            OnExit = IECDSTExit
            OnChange = IECDSTChange
            DropDownRows = 10
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
          object IEIDFIN: TdxImageEdit
            Left = 62
            Top = 16
            Width = 250
            Cursor = crHandPoint
            Hint = 'Finalidade do Produto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clGray
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.Shadow = True
            TabOrder = 0
            Text = '0'
            OnChange = IEIDFINChange
            DropDownRows = 10
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
          object IEIDTPV: TdxImageEdit
            Tag = 1
            Left = 62
            Top = 40
            Width = 250
            Cursor = crHandPoint
            Hint = 'Especifica'#231#227'o do Tipo de Estoque Vend'#225'vel'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clGray
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.Shadow = True
            TabOrder = 1
            Text = '0'
            OnChange = IEIDTPVChange
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '0')
          end
        end
        object IEIDSGP: TdxImageEdit
          Left = 421
          Top = 133
          Width = 250
          Cursor = crHandPoint
          Hint = 'Grupo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 9
          Text = '0'
          OnChange = EDArtigoChange
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object IEIDSCT: TdxImageEdit
          Left = 421
          Top = 157
          Width = 250
          Cursor = crHandPoint
          Hint = 'Grupo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 11
          Text = '0'
          OnExit = IEIDSCTExit
          OnChange = EDArtigoChange
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object IEIDEP: TdxImageEdit
          Left = 421
          Top = 13
          Width = 250
          Hint = 'Finalidade'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 0
          OnChange = EDArtigoChange
          DropDownRows = 10
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object EDTitulo: TdxEdit
          Tag = 1
          Left = 71
          Top = 62
          Width = 600
          Hint = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsFlat
          Style.Shadow = True
          TabOrder = 3
          MaxLength = 120
          OnChange = EDArtigoChange
          OnValidate = EDTituloValidate
          StoredValues = 2
        end
        object IEIDSEG: TdxImageEdit
          Left = 71
          Top = 109
          Width = 250
          Cursor = crHandPoint
          Hint = 'Cole'#231#227'o'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 6
          Text = '0'
          OnChange = EDArtigoChange
          DropDownRows = 20
          Descriptions.Strings = (
            '')
          ImageIndexes.Strings = (
            '0')
          Values.Strings = (
            '0')
        end
        object PEDECOL: TdxPickEdit
          Left = 421
          Top = 109
          Width = 250
          Cursor = crHandPoint
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clGray
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.Shadow = True
          TabOrder = 7
          OnChange = EDArtigoChange
          DropDownRows = 20
        end
      end
    end
  end
  inherited sbMSG: TStatusBar
    Top = 658
    Width = 1011
  end
  inherited PNLMenu: TPanel
    Width = 1011
    inherited SpeedBar2: TSpeedBar
      Width = 1011
      inherited siVAL: TSpeedItem [4]
      end
      inherited siCAN: TSpeedItem [5]
      end
      inherited siSAIR: TSpeedItem [6]
      end
      inherited siSAV: TSpeedItem [7]
      end
    end
  end
  inherited Consulta: TIBQuery
    Left = 336
  end
  inherited IBTra: TIBTransaction
    Left = 336
  end
  inherited ALPrincipal: TActionList
    Left = 448
    Top = 80
  end
  object OPDIMG: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    InitialDir = 'C:\Sheild\Imagens'
    Left = 512
    Top = 64
  end
  object DTSCAD_PRO_CMP: TDataSource
    DataSet = CAD_PRO_CMP
    OnStateChange = DTSCAD_PRO_CMPStateChange
    Left = 688
    Top = 104
  end
  object CAD_PRO_CMP: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSEdicao
    AfterDelete = CAD_PRO_CMPAfterDelete
    AfterInsert = CAD_PRO_CMPAfterInsert
    AfterPost = CAD_PRO_CMPAfterPost
    BeforeCancel = CAD_PRO_CMPBeforeCancel
    BeforeInsert = CAD_PRO_CMPBeforeInsert
    OnNewRecord = CAD_PRO_CMPNewRecord
    DeleteSQL.Strings = (
      'delete from TAB_EDI_PRO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_EDI_PRO'
      
        '  (CDEV, CMP_DEPK, CMP_IDFK, CMP_IDPK, CMP_QTDE, CMP_REPK, FLAG,' +
        ' HOST, '
      '   ID, IDAK, IDCA, IDEP, IDEV, IP)'
      'values'
      
        '  (:CDEV, :CMP_DEPK, :CMP_IDFK, :CMP_IDPK, :CMP_QTDE, :CMP_REPK,' +
        ' :FLAG, '
      '   :HOST, :ID, :IDAK, :IDCA, :IDEP, :IDEV, :IP)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  IDCA,'
      '  IDAK,'
      '  CMP_IDFK,'
      '  CMP_IDPK,'
      '  CMP_REPK,'
      '  CMP_DEPK,'
      '  CMP_QTDE,'
      '  IDEV,'
      '  CDEV,'
      '  IP,'
      '  HOST,'
      '  FLAG'
      'from TAB_EDI_PRO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'SELECT   PK.ID,PK.IDEP,PK.IDCA,PK.IDAK,PK.CMP_IDFK,PK.CMP_IDPK,P' +
        'K.CMP_REPK,PK.CMP_DEPK,PK.CMP_QTDE,PK.IDEV,PK.CDEV,PK.IP,PK.HOST' +
        ',PK.FLAG'
      'FROM     TAB_EDI_PRO AS PK'
      'WHERE    PK.IDEV = 0'
      'AND      PK.CDEV = 3'
      'AND      PK.FLAG = 0'
      'ORDER BY PK.ID'
      '')
    ModifySQL.Strings = (
      'update TAB_EDI_PRO'
      'set'
      '  CDEV = :CDEV,'
      '  CMP_DEPK = :CMP_DEPK,'
      '  CMP_IDFK = :CMP_IDFK,'
      '  CMP_IDPK = :CMP_IDPK,'
      '  CMP_QTDE = :CMP_QTDE,'
      '  CMP_REPK = :CMP_REPK,'
      '  FLAG = :FLAG,'
      '  HOST = :HOST,'
      '  ID = :ID,'
      '  IDAK = :IDAK,'
      '  IDCA = :IDCA,'
      '  IDEP = :IDEP,'
      '  IDEV = :IDEV,'
      '  IP = :IP'
      'where'
      '  ID = :OLD_ID')
    Left = 656
    Top = 104
    object CAD_PRO_CMPID: TLargeintField
      FieldName = 'ID'
      Origin = '"TAB_EDI_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_PRO_CMPIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"TAB_EDI_PRO"."IDEP"'
    end
    object CAD_PRO_CMPIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"TAB_EDI_PRO"."IDAK"'
    end
    object CAD_PRO_CMPIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"TAB_EDI_PRO"."IDCA"'
    end
    object CAD_PRO_CMPCMP_IDFK: TLargeintField
      FieldName = 'CMP_IDFK'
      Origin = '"TAB_EDI_PRO"."CMP_IDFK"'
    end
    object CAD_PRO_CMPCMP_IDPK: TSmallintField
      FieldName = 'CMP_IDPK'
      Origin = '"TAB_EDI_PRO"."CMP_IDPK"'
    end
    object CAD_PRO_CMPCMP_REPK: TIBStringField
      DisplayLabel = 'Base'
      FieldName = 'CMP_REPK'
      Origin = '"TAB_EDI_PRO"."CMP_REPK"'
      Size = 30
    end
    object CAD_PRO_CMPCMP_DEPK: TIBStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'CMP_DEPK'
      Origin = '"TAB_EDI_PRO"."CMP_DEPK"'
      Size = 30
    end
    object CAD_PRO_CMPCMP_QTDE: TIBBCDField
      DisplayLabel = '%'
      FieldName = 'CMP_QTDE'
      Origin = '"TAB_EDI_PRO"."CMP_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object CAD_PRO_CMPIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"TAB_EDI_PRO"."IDEV"'
      Required = True
    end
    object CAD_PRO_CMPCDEV: TSmallintField
      FieldName = 'CDEV'
      Origin = '"TAB_EDI_PRO"."CDEV"'
    end
    object CAD_PRO_CMPIP: TIBStringField
      FieldName = 'IP'
      Origin = '"TAB_EDI_PRO"."IP"'
    end
    object CAD_PRO_CMPHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"TAB_EDI_PRO"."HOST"'
      Size = 30
    end
    object CAD_PRO_CMPFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"TAB_EDI_PRO"."FLAG"'
    end
  end
  object TSEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBEDI
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 656
    Top = 8
  end
  object consulta_S: TIBQuery
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 656
    Top = 40
  end
  object CAD_PRO_GRD: TIBDataSet
    Tag = 1
    Database = FBird.DBEDI
    Transaction = TSEdicao
    AfterPost = CAD_PRO_GRDAfterPost
    BeforeCancel = CAD_PRO_GRDBeforeCancel
    BeforeEdit = CAD_PRO_GRDBeforeInsert
    BeforeInsert = CAD_PRO_GRDBeforeInsert
    BeforePost = CAD_PRO_GRDBeforePost
    OnNewRecord = CAD_PRO_GRDNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_PRO_GRD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_GRD'
      
        '  (DGCP, FLAG, GRD_CART, GRD_CBAR, GRD_CCOR, GRD_CDST, GRD_CFOR,' +
        ' GRD_CGRD, '
      
        '   GRD_COMP, GRD_CPRO, GRD_DCOR, GRD_DEST, GRD_DGRD, GRD_DMK2, G' +
        'RD_DMK3, '
      
        '   GRD_DMKP, GRD_DPRO, GRD_DSCT, GRD_DUNI, GRD_FBAR, GRD_FOTO, G' +
        'RD_IMK2, '
      
        '   GRD_IMK3, GRD_IMKP, GRD_IPRO, GRD_ISCT, GRD_PCOR, GRD_PDSC, G' +
        'RD_PPRO, '
      
        '   GRD_PPRZ, GRD_PREC, GRD_PSBR, GRD_PSLQ, GRD_REST, GRD_RGRD, G' +
        'RD_RPRC, '
      '   GRD_SPRC, GRD_TITU, GRD_UCON, GRD_VPRC, ID, IDIMG)'
      'values'
      
        '  (:DGCP, :FLAG, :GRD_CART, :GRD_CBAR, :GRD_CCOR, :GRD_CDST, :GR' +
        'D_CFOR, '
      
        '   :GRD_CGRD, :GRD_COMP, :GRD_CPRO, :GRD_DCOR, :GRD_DEST, :GRD_D' +
        'GRD, :GRD_DMK2, '
      
        '   :GRD_DMK3, :GRD_DMKP, :GRD_DPRO, :GRD_DSCT, :GRD_DUNI, :GRD_F' +
        'BAR, :GRD_FOTO, '
      
        '   :GRD_IMK2, :GRD_IMK3, :GRD_IMKP, :GRD_IPRO, :GRD_ISCT, :GRD_P' +
        'COR, :GRD_PDSC, '
      
        '   :GRD_PPRO, :GRD_PPRZ, :GRD_PREC, :GRD_PSBR, :GRD_PSLQ, :GRD_R' +
        'EST, :GRD_RGRD, '
      
        '   :GRD_RPRC, :GRD_SPRC, :GRD_TITU, :GRD_UCON, :GRD_VPRC, :ID, :' +
        'IDIMG)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  GRD_CDST,'
      '  GRD_REST,'
      '  GRD_DEST,'
      '  GRD_IPRO,'
      '  GRD_CART,'
      '  GRD_CPRO,'
      '  GRD_CBAR,'
      '  GRD_DPRO,'
      '  GRD_TITU,'
      '  GRD_COMP,'
      '  DGCP,'
      '  GRD_CCOR,'
      '  GRD_DCOR,'
      '  GRD_PCOR,'
      '  GRD_DGRD,'
      '  GRD_CGRD,'
      '  GRD_RGRD,'
      '  GRD_CFOR,'
      '  GRD_FBAR,'
      '  GRD_DUNI,'
      '  GRD_UCON,'
      '  GRD_PDSC,'
      '  GRD_PREC,'
      '  GRD_PPRO,'
      '  GRD_PPRZ,'
      '  GRD_VPRC,'
      '  GRD_RPRC,'
      '  GRD_SPRC,'
      '  GRD_PSBR,'
      '  GRD_PSLQ,'
      '  GRD_ISCT,'
      '  GRD_DSCT,'
      '  GRD_IMKP,'
      '  GRD_DMKP,'
      '  GRD_IMK2,'
      '  GRD_DMK2,'
      '  GRD_IMK3,'
      '  GRD_DMK3,'
      '  GRD_FOTO,'
      '  IDIMG,'
      '  FLAG'
      'from CAD_PRO_GRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT   ID,GRD_CDST,GRD_REST,GRD_DEST,'
      '            GRD_IPRO,GRD_CART,GRD_CPRO,GRD_CBAR,'
      '            GRD_DPRO,GRD_TITU,GRD_COMP,DGCP,'
      
        '            GRD_CCOR,GRD_DCOR,GRD_PCOR,GRD_DGRD,GRD_CGRD,GRD_RGR' +
        'D,'
      '            GRD_CFOR,GRD_FBAR,'
      '            GRD_DUNI,GRD_UCON,'
      '            GRD_PDSC,GRD_PREC,GRD_PPRO,GRD_PPRZ,'
      '            GRD_VPRC,GRD_RPRC,GRD_SPRC,'
      '            GRD_PSBR,GRD_PSLQ,'
      '            GRD_ISCT,GRD_DSCT,'
      
        '            GRD_IMKP,GRD_DMKP,GRD_IMK2,GRD_DMK2,GRD_IMK3,GRD_DMK' +
        '3,'
      '            GRD_FOTO,IDIMG,'
      '            FLAG'
      'FROM        CAD_PRO_GRD'
      'WHERE    FLAG = 0'
      'ORDER BY ID')
    ModifySQL.Strings = (
      'update CAD_PRO_GRD'
      'set'
      '  DGCP = :DGCP,'
      '  FLAG = :FLAG,'
      '  GRD_CART = :GRD_CART,'
      '  GRD_CBAR = :GRD_CBAR,'
      '  GRD_CCOR = :GRD_CCOR,'
      '  GRD_CDST = :GRD_CDST,'
      '  GRD_CFOR = :GRD_CFOR,'
      '  GRD_CGRD = :GRD_CGRD,'
      '  GRD_COMP = :GRD_COMP,'
      '  GRD_CPRO = :GRD_CPRO,'
      '  GRD_DCOR = :GRD_DCOR,'
      '  GRD_DEST = :GRD_DEST,'
      '  GRD_DGRD = :GRD_DGRD,'
      '  GRD_DMK2 = :GRD_DMK2,'
      '  GRD_DMK3 = :GRD_DMK3,'
      '  GRD_DMKP = :GRD_DMKP,'
      '  GRD_DPRO = :GRD_DPRO,'
      '  GRD_DSCT = :GRD_DSCT,'
      '  GRD_DUNI = :GRD_DUNI,'
      '  GRD_FBAR = :GRD_FBAR,'
      '  GRD_FOTO = :GRD_FOTO,'
      '  GRD_IMK2 = :GRD_IMK2,'
      '  GRD_IMK3 = :GRD_IMK3,'
      '  GRD_IMKP = :GRD_IMKP,'
      '  GRD_IPRO = :GRD_IPRO,'
      '  GRD_ISCT = :GRD_ISCT,'
      '  GRD_PCOR = :GRD_PCOR,'
      '  GRD_PDSC = :GRD_PDSC,'
      '  GRD_PPRO = :GRD_PPRO,'
      '  GRD_PPRZ = :GRD_PPRZ,'
      '  GRD_PREC = :GRD_PREC,'
      '  GRD_PSBR = :GRD_PSBR,'
      '  GRD_PSLQ = :GRD_PSLQ,'
      '  GRD_REST = :GRD_REST,'
      '  GRD_RGRD = :GRD_RGRD,'
      '  GRD_RPRC = :GRD_RPRC,'
      '  GRD_SPRC = :GRD_SPRC,'
      '  GRD_TITU = :GRD_TITU,'
      '  GRD_UCON = :GRD_UCON,'
      '  GRD_VPRC = :GRD_VPRC,'
      '  ID = :ID,'
      '  IDIMG = :IDIMG'
      'where'
      '  ID = :OLD_ID')
    Left = 656
    Top = 72
    object CAD_PRO_GRDID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_GRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_PRO_GRDGRD_IPRO: TIntegerField
      FieldName = 'GRD_IPRO'
      Origin = '"CAD_PRO_GRD"."GRD_IPRO"'
    end
    object CAD_PRO_GRDGRD_CART: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'GRD_CART'
      Origin = '"CAD_PRO_GRD"."GRD_CART"'
    end
    object CAD_PRO_GRDGRD_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'GRD_CPRO'
      Origin = '"CAD_PRO_GRD"."GRD_CPRO"'
    end
    object CAD_PRO_GRDGRD_CBAR: TIBStringField
      DisplayLabel = 'CEAN'
      FieldName = 'GRD_CBAR'
      Origin = '"CAD_PRO_GRD"."GRD_CBAR"'
    end
    object CAD_PRO_GRDGRD_CFOR: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'GRD_CFOR'
      Origin = '"CAD_PRO_GRD"."GRD_CFOR"'
      Size = 30
    end
    object CAD_PRO_GRDGRD_FBAR: TIBStringField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'GRD_FBAR'
      Origin = '"CAD_PRO_GRD"."GRD_FBAR"'
    end
    object CAD_PRO_GRDGRD_DPRO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRD_DPRO'
      Origin = '"CAD_PRO_GRD"."GRD_DPRO"'
      Size = 120
    end
    object CAD_PRO_GRDGRD_TITU: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'GRD_TITU'
      Origin = '"CAD_PRO_GRD"."GRD_TITU"'
      Size = 120
    end
    object CAD_PRO_GRDGRD_COMP: TIBStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'GRD_COMP'
      Origin = '"CAD_PRO_GRD"."GRD_COMP"'
      Size = 120
    end
    object CAD_PRO_GRDDGCP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o da Grade'
      FieldName = 'DGCP'
      Origin = '"CAD_PRO_GRD"."DGCP"'
      Size = 90
    end
    object CAD_PRO_GRDGRD_CGRD: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GRD_CGRD'
      Origin = '"CAD_PRO_GRD"."GRD_CGRD"'
      Size = 10
    end
    object CAD_PRO_GRDGRD_RGRD: TIBStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'GRD_RGRD'
      Origin = '"CAD_PRO_GRD"."GRD_RGRD"'
      Size = 10
    end
    object CAD_PRO_GRDGRD_DGRD: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRD_DGRD'
      Origin = '"CAD_PRO_GRD"."GRD_DGRD"'
      Size = 30
    end
    object CAD_PRO_GRDGRD_CCOR: TIntegerField
      FieldName = 'GRD_CCOR'
      Origin = '"CAD_PRO_GRD"."GRD_CCOR"'
    end
    object CAD_PRO_GRDGRD_PCOR: TIBStringField
      DisplayLabel = 'Escala'
      FieldName = 'GRD_PCOR'
      Origin = '"CAD_PRO_GRD"."GRD_PCOR"'
      Size = 30
    end
    object CAD_PRO_GRDGRD_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'GRD_DCOR'
      Origin = '"CAD_PRO_GRD"."GRD_DCOR"'
      Size = 30
    end
    object CAD_PRO_GRDGRD_DUNI: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'GRD_DUNI'
      Origin = '"CAD_PRO_GRD"."GRD_DUNI"'
      Size = 10
    end
    object CAD_PRO_GRDGRD_UCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'GRD_UCON'
      Origin = '"CAD_PRO_GRD"."GRD_UCON"'
      Size = 40
    end
    object CAD_PRO_GRDGRD_PDSC: TIBBCDField
      FieldName = 'GRD_PDSC'
      Origin = '"CAD_PRO_GRD"."GRD_PDSC"'
      Precision = 9
      Size = 2
    end
    object CAD_PRO_GRDGRD_PREC: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'GRD_PREC'
      Origin = '"CAD_PRO_GRD"."GRD_PREC"'
      DisplayFormat = ',##,0.00'
    end
    object CAD_PRO_GRDGRD_PPRZ: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'GRD_PPRZ'
      Origin = '"CAD_PRO_GRD"."GRD_PPRZ"'
      DisplayFormat = ',##,0.00'
    end
    object CAD_PRO_GRDGRD_PPRO: TFloatField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'GRD_PPRO'
      Origin = '"CAD_PRO_GRD"."GRD_PPRO"'
      DisplayFormat = ',##,0.00'
    end
    object CAD_PRO_GRDGRD_VPRC: TFloatField
      DisplayLabel = 'Varejo'
      FieldName = 'GRD_VPRC'
      Origin = '"CAD_PRO_GRD"."GRD_VPRC"'
    end
    object CAD_PRO_GRDGRD_RPRC: TFloatField
      DisplayLabel = 'Representante'
      FieldName = 'GRD_RPRC'
      Origin = '"CAD_PRO_GRD"."GRD_RPRC"'
    end
    object CAD_PRO_GRDGRD_SPRC: TFloatField
      DisplayLabel = 'Site'
      FieldName = 'GRD_SPRC'
      Origin = '"CAD_PRO_GRD"."GRD_SPRC"'
    end
    object CAD_PRO_GRDGRD_PSBR: TIBBCDField
      DisplayLabel = 'Peso M'#233'dio'
      FieldName = 'GRD_PSBR'
      Origin = '"CAD_PRO_GRD"."GRD_PSBR"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 3
    end
    object CAD_PRO_GRDGRD_PSLQ: TIBBCDField
      FieldName = 'GRD_PSLQ'
      Origin = '"CAD_PRO_GRD"."GRD_PSLQ"'
      Precision = 18
      Size = 3
    end
    object CAD_PRO_GRDGRD_IMKP: TSmallintField
      FieldName = 'GRD_IMKP'
      Origin = '"CAD_PRO_GRD"."GRD_IMKP"'
    end
    object CAD_PRO_GRDGRD_DMKP: TIBStringField
      DisplayLabel = 'Market Place'
      FieldName = 'GRD_DMKP'
      Origin = '"CAD_PRO_GRD"."GRD_DMKP"'
      Size = 60
    end
    object CAD_PRO_GRDGRD_IMK2: TSmallintField
      FieldName = 'GRD_IMK2'
      Origin = '"CAD_PRO_GRD"."GRD_IMK2"'
    end
    object CAD_PRO_GRDGRD_DMK2: TIBStringField
      DisplayLabel = 'Market Place'
      FieldName = 'GRD_DMK2'
      Origin = '"CAD_PRO_GRD"."GRD_DMK2"'
      Size = 60
    end
    object CAD_PRO_GRDGRD_IMK3: TSmallintField
      FieldName = 'GRD_IMK3'
      Origin = '"CAD_PRO_GRD"."GRD_IMK3"'
    end
    object CAD_PRO_GRDGRD_DMK3: TIBStringField
      FieldName = 'GRD_DMK3'
      Origin = '"CAD_PRO_GRD"."GRD_DMK3"'
      Size = 60
    end
    object CAD_PRO_GRDGRD_ISCT: TSmallintField
      FieldName = 'GRD_ISCT'
      Origin = '"CAD_PRO_GRD"."GRD_ISCT"'
    end
    object CAD_PRO_GRDGRD_DSCT: TIBStringField
      DisplayLabel = 'Sub Categoria'
      FieldName = 'GRD_DSCT'
      Origin = '"CAD_PRO_GRD"."GRD_DSCT"'
      Size = 60
    end
    object CAD_PRO_GRDGRD_CDST: TSmallintField
      FieldName = 'GRD_CDST'
      Origin = '"CAD_PRO_GRD"."GRD_CDST"'
    end
    object CAD_PRO_GRDGRD_REST: TIBStringField
      FieldName = 'GRD_REST'
      Origin = '"CAD_PRO_GRD"."GRD_REST"'
      Size = 10
    end
    object CAD_PRO_GRDGRD_DEST: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'GRD_DEST'
      Origin = '"CAD_PRO_GRD"."GRD_DEST"'
      Size = 60
    end
    object CAD_PRO_GRDGRD_FOTO: TBlobField
      FieldName = 'GRD_FOTO'
      Origin = '"CAD_PRO_GRD"."GRD_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_GRDIDIMG: TIntegerField
      FieldName = 'IDIMG'
      Origin = '"CAD_PRO_GRD"."IDIMG"'
    end
    object CAD_PRO_GRDFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"CAD_PRO_GRD"."FLAG"'
    end
  end
  object DTSCAD_PRO_GRD: TDataSource
    DataSet = CAD_PRO_GRD
    OnStateChange = DTSCAD_PRO_GRDStateChange
    OnDataChange = DTSCAD_PRO_GRDDataChange
    Left = 688
    Top = 72
  end
  object SQLFKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 368
    Top = 40
  end
  object SQLSConsulta: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 688
    Top = 8
  end
  object ImageList1: TImageList
    Height = 72
    ShareImages = True
    Width = 72
    Left = 916
    Top = 62
    Bitmap = {
      494C010109000E00040048004800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000200100002001000001002000000000000010
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F2F2F200EFEFEF00F1F1
      F100FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00E5E5E500AEAEAE00A3A3A300AAAA
      AA00D4D4D400F3F3F300FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DADADA005353530008080800060606000505
      05001E1E1E0094949400F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D0005B5B5B001010100007070700060606000505
      0500070707001F1F1F0084848400F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8C8C80060606000171717000A0A0A0011111100121212000D0D
      0D000707070006060600232323007E7E7E00F3F3F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000707070001D1D1D000C0C0C001616160026262600262626001515
      15000D0D0D000606060006060600252525007E7E7E00F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3A3A300363636000D0D0D001616160021212100545454004D4D4D003636
      36001A1A1A000B0B0B0006060600050505002222220082828200F3F3F300FEFE
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009191910023232300101010001D1D1D002323230067676700676767005656
      560035353500181818000A0A0A0004040400040404001B1B1B008C8C8C00EAEA
      EA00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9D9D002F2F2F000E0E0E001A1A1A001D1D1D0044444400656565006363
      6300525252003131310015151500090909000404040003030300101010009191
      9100D3D3D300E4E4E400E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E4E4E400E4E4
      E400E6E6E600EAEAEA00EFEFEF00F8F8F800FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5C5C500585858000C0C0C001010100016161600161616004A4A4A006060
      60005E5E5E004C4C4C002D2D2D00111111000808080003030300000000000C0C
      0C006B6B6B00AAAAAA00C0C0C000C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C1C1C100C1C1C100C1C1C100C1C1
      C100C2C2C200C7C7C700CFCFCF00DEDEDE00ECECEC00F6F6F600FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100929292001D1D1D00090909001111110012121200131313004444
      44005C5C5C005A5A5A0047474700272727000D0D0D0007070700030303000000
      0000070707008A8A8A00E6E6E600FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500E1E1E100D8D8D800BCBCBC00B7B7B700D5D5D500EFEFEF00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8D8D800B2B2B200777777000E0E0E000707070010101000101010001010
      10003E3E3E005959590056565600424242002323230009090900070707000202
      0200000000000707070083838300EFEFEF00000000000000000000000000FEFF
      FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800C1C1C100BABABA00E3E3
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600C8C8C800DFDFDF00E9E9E900A5A5A5000B0B0B00050505000C0C0C000D0D
      0D00131313003636360052525200505050003E3E3E001D1D1D00080808000606
      060002020200010101001414140079797900EFEFEF00F4F9F700C6DBD50081AC
      A20037876E0023643E001E452A001C3C27001C3D27001C3F27001C4227001D4C
      2E00277E5D00579D8700A8CABE00E9F1EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F8F8F800DCDCDC00C7C7
      C700DCDCDC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E000C8C8
      C800DDDDDD00F9F9F900FDFDFD00ECECEC00A4A4A4000A0A0A00060606000B0B
      0B000C0C0C0014141400303030004C4C4C004A4A4A0037373700181818000808
      08000404040002020200010101001A1D1C003C574C003C7A60002A4A37001942
      2B0007401F0003411400013E1000013F1000014310000146110002481200024A
      130004571F000F5B28002363340036794C0077A58C00CDDDD800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F800D7D7
      D700CBCBCB00E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00C7C7C700DADA
      DA00F6F6F6000000000000000000FDFDFD00E8E9E900708079000E1311000505
      0500090909000B0B0B00131313002B2B2B004545450045454500303030001616
      16000808080004040400010604000112090003291300033F1B0001380F00013E
      10000141100002481100024B1200024E13000252130002541400025615000257
      1600035A16000259160002581600045D1B001C6C3300428659005BA07C005FAD
      90005FAD91005FAC90005FAC8E005FAA8E005FAA8D005FA98D005FA98C005FA7
      8B005FA68A005FA58A005EA489005EA389005EA187005EA187005D9F850060A2
      8B0078B09F00B3CDC700EFF5F20000000000000000000000000000000000F4F4
      F400D5D5D500CFCFCF00FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000CCCCCC00ECEC
      EC00000000000000000000000000EBF5F2009CCABA004A9966000B431A00010F
      050004050400080808000909090011111100272727003F3F3F003E3E3E002828
      2800101311000411090001180A0000270C0001360E00013D0F0001451000014A
      1100024C1200024F130004581A0005652800066C2E00066B2B0004662300035D
      18000360190003611A0003631B0003641B0003631B0003651F00066B2A00086D
      3400096E350009743700097336000972360008703500086E3400086C3200086A
      3100086930000867300007662F0007642E0007622D0007612C00075E2B00095D
      2D00186039003F6F5500749E8200D5E4DD00FBFCFB0000000000000000000000
      0000E4E4E400CBCBCB00E4E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C500E1E1E100F8F8
      F8000000000000000000F1F7F400B3D6C30031945F0004712300035E19000131
      0D00010F05000405040007070700090909000E0E0E0024242400383838002733
      2E000E20150002220D00002D0E00003A0F0001430F0001461000024C14000A6A
      36002D794C00337C500028805000188351000F8450000E834D0010804800197E
      46001B81490009773600046C240003681E0003691F00036B2000036A20000366
      1C0003631B0003651B00036B1F00036B1F0003671D0003631B0003611A00035F
      1900025D1700025A1600025D1700025A17000259160002571500025515000252
      1400014C1200014513000F512300689D8100EEF4F00000000000000000000000
      0000F4F4F400D8D8D800CBCBCB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABA00EEEEEE000000
      00000000000000000000D1E8DF005CAE840005762600035D1700025815000252
      1400012F0C00010F05000404040006060600070707000A0A0A001E201F00122F
      20000429110000300E00013B0F0001431000034D180010622F0031784A001E93
      6800469674004FA0830047A28300389C7A002F9773002D9771002B9972002B9B
      7500298D61000E834900087C39000677310005712800046E2200047023000473
      24000470230003681D00046D2100046F2100036A1F0003671D0003661D000362
      1B00035C170003551300036119000361190003601800035E1800025C1700025C
      1700025B1600025616000249140006522400C9D8D000F9FAFA00000000000000
      000000000000E4E4E400C1C1C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABA00EEEEEE000000
      00000000000000000000B2DECD001291580004681D00025A1600025B1600025C
      17000257150001320D00010D0400030303000505050006070600040D09000123
      0C0000310E00013D0F00014310000C501E001B6E400032956D0071B08F00399C
      7A002A7F4E002D91650046A6800062B3950070B99E006EB89D005EB092003A9C
      750028723F00247B4700138A55000B874A00077E390005782B00047324000474
      2500057B290004782800036B2000046C1F00036A1F0003691F0003681E000364
      1B0003581400024A100003631A0003621A000361190003601900035F1800035F
      1800035D1700025C170002571500003B0E0087A99A00E8EFED00000000000000
      000000000000E5E5E500C2C2C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABA00EEEEEE000000
      00000000000000000000ADDAC20008853D00035F1800035C1700035F1800035F
      180003601900035B170002370E00010B040002030200040A0700001E0C00002F
      0E00013D0F00014310000B4F1A00367C54005AA78E003F9572002075440063B2
      970092D7AF009CDDB400A0DEB800A5E0BA00ABE2C000B1E4C500B0E4C500ACE5
      C200A1E1B7008DC9AC0037936D00156D3A000D7A3E0009884100057B2E000476
      2600047827000582300004752700036C2100046A2000046B2000046A20000365
      1C00035B15000351110003631B0003631C0003621A0003621A00036119000361
      190003601800035E1800035A16000148100055947E00DCE9E500000000000000
      000000000000E5E5E500C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBBBBB00EEEEEE000000
      00000000000000000000ACD8BE0005813300035F180003601900036119000362
      1A0003631A0003631B00035F1900023E1000010704000010090000270D00013C
      0F00014110000144100058946A0061B08C0015865E00339D740097D8B10099DB
      B1009DDDB500B0E2C800D1EADE00E7EEEA00EEEEEE00ECEEEE00E0EDE800BEE9
      D400A7E4BE00A3E4B900A2E4BA007FC2A500337B520006682A0007843B00057D
      2C0005792A00057D2B000689380004722600046D2100046D2100046A1F00035C
      1800024A0F00034E1000024C100003631B0003661C0003641C0003621B000362
      1A0003611A0003601900035D1700014C110055967F00DCEAE600000000000000
      000000000000E5E5E500C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00EEEEEE000000
      00000000000000000000ACD9BF000583350003611A0003621A0003631C000365
      1C0003671D0003671D0003671D00035B1A00023D100000230C0000380F000140
      100001441000418462003F9676002B936F0051AE89008CD4AA009BDCB400AFE2
      C500D9EAE000E5EDE900EBEEEC00EBEEEC00D5EBE000B6E7CB00A9E4BC00A5E5
      BB00A3E4BA00A3E6BB00A4E6BB00A1E3B90088C6A50043805D00035C22000687
      3800057D2B00057E2C000684330007893D0005772C00046E220004641B000352
      12000348100002420E0002460F000358150003651D0003671E0003661C000365
      1C0003631B0003621A00035F1800024F120056977F00DCEAE600000000000000
      000000000000E6E6E600C4C4C400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00EEEEEE000000
      00000000000000000000ACDABF000585370003651C0003651C0003661D000367
      1E0003691F00046A1F00046B2000035D1A00003B0F00002C0D00013F10000143
      10000A6C3D00409677003496750046A87F008AD2A900A0DDB800BDE5D000E0EB
      E500EBEEEC00EEEEEE00E4EDE900C8E9D500AFE6C300A5E4BC00A2E4B900A3E6
      BA00A4E6BB00A5E8BD00A5E8BD00A6E9BE00A2E3BC0087C4A20046876100035F
      20000684350005802E000582310008914600078137000570250004621A000454
      1200034A100002460F0002450F000354120004661D0003691F0003681E000367
      1D0003661D0003641C0003611A000251140056988000DCEAE600000000000000
      000000000000E6E6E600C4C4C400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ACDAC0000587380003671D0003681E0004681F00046A
      2000046B2000046D2100046B1F0002541800002E0E0000390E00014310000146
      1000559E77003A8C63004B9F750081CCA200A1DEB800BAE5CD00E0EBE600EEEE
      EE00EEEEEE00DAECE300BFE8CE00ABE5C000A3E5BA00A3E5BA00A3E5BB00A4E7
      BC00A5E7BD00A6E9BF00A6E9BF00A7EAC000A8EAC000A3E4BD0072BC95001578
      4600047427000582300005833100078D4100098E4900077A330005651B00045A
      1500034E1000034C1000034B10000457130004661D00046A200004691F000469
      1F0003681E0003671D0003641C000254150057998000DCEAE600000000000000
      000000000000E6E6E600C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ADDBC10006893A00046A1F00046B2000046C2100046D
      2100046E2200046F220003671D0001491400002A0E0001401000014510000D6B
      3B0051A38000479875006EB890009DDDB400B4E2C600DCEBE300EEEEEE00EEEE
      EE00DFECE600BCE8CD00A7E4BD00A3E5BA00A3E6BB00A4E7BC00A5E7BC00A6E9
      BE00A6E9BF00A7EAC100A8EAC100A9EBC200B0EDC900BFF1D500AFE4C8005BA9
      8400025919000584320006853200068839000E9858000B854200066D23000563
      1C00035412000353110003521100055D170004691E00046C2100046C2100046B
      2100046A1F0004691E0003661D000256150057998100DCEAE600000000000000
      000000000000E6E6E600C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00EFEFEF000000
      00000000000000000000ADDBC200068C3F00046C2000046E2100046F21000470
      2200047022000471230003601C00013F110000300E0001431000014710003C97
      74002B8861005CAC89008CD1AB00A8E0BE00CBE7D700EDEDED00EEEEEE00E8EE
      EB00C2E8D100A8E5BD00A2E4BA00A4E6BB00A4E7BC00A5E8BE00A6E8BE00A7E9
      BF00A8E9C000A8EBC100ADECC600BDF0D100D2F6E200E5FAF000E2F7EC009CD0
      B5000B663500057C2B0006853400068737000F9A5B000C8E4E0007793200076D
      2700045D1700035A14000359130006672000056F2200046F2200046E2100046D
      2100046C2000046B200003671E000258150057998100DCEAE600000000000000
      000000000000E6E6E600C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00EFEFEF000000
      00000000000000000000ADDCC400078F4400046F220004702200047223000473
      24000473240004742500035A1B0001370F0000370E0001461000014911006EAA
      9100247D53006AB78B009DDEB400B8E3CA00E0EBE600EDEDED00EBEEEC00D0EB
      DC00A9E5BE00A3E5BA00A4E6BB00A5E8BD00A5E8BE00A6E8BF00A7E9C000A8EA
      C100A9EBC100B0EFC900C5F3D900E2F9ED00F8FEFA0000000000F4FDF900BCE5
      D30035936E0003671E0006833400068939000B9855000C9556000A8645000977
      3400066B23000562190005641B0009742F00067328000471230004702200046F
      2200046E2100046E2100046A1F00025B1600589A8200DCEAE600000000000000
      000000000000E7E7E700C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000ADDDC500089047000471230004732300047425000476
      2500047626000477270002551B0000300E00003E0F0001481100025015006EAA
      90002C926D006EC19700A3E0BA00C7E7D300EDEDED00EDEEED00E2EDE600ABE8
      C100A4E6BB00A4E6BB00A5E7BC00A6E9BE00A6E9BF00A7E9C000A8EBC100AAEB
      C300AFEFC800CBF5E000F1FDF600FDFFFE000000000000000000F8FEFC00D6EF
      E40078B39700024F1400067D3100068A39000A964F00109C60000F9257000B82
      43000A7D3B0008712C0009752F000B7F3F0006772B0004732400047223000471
      230004702200046F2200046C2000035D1700599B8200DCEBE600000000000000
      000000000000E7E7E700C7C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00EFEFEF000000
      00000000000000000000AEDEC70009924C000473250004752500047726000478
      2700057927000578290003521C00002C0D0001410F00024D13000766290056A3
      87003B9E7D0078C8A000ACE3C400D0E9DD00EDEDED00E8EEEA00CCECDB00A3E6
      BA00A4E6BB00A5E8BD00A6E9BE00A7E9BF00A8E9C000A9EBC100AAEDC300B0EF
      C900C8F6DF00F9FEFB0000000000000000000000000000000000FDFFFE00E8F9
      ED0095D3AC00013E100004782B00068A3A0009964F0018A06A00199965000D8B
      5000108F5600108D55000E8C51000A844200057A2C0004762600047425000473
      24000472230004712300046D2100036018005B9C8300DDEBE700000000000000
      000000000000E7E7E700C8C8C800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000EFEFEF000000
      00000000000000000000AEDFC9000A955000047726000578270005792700057A
      2900057C2B0004732500024B1700002C0D0001431000025117000B7A45002091
      690055A88E008ACFAB00B6E5CA00DAEBE300EEEEEE00E1EDE600B0E9C900A4E6
      BD00A5E8BE00A6E9C000A7EAC100A9EAC200A9EBC200AAEDC200B0F0C800C8F6
      E000000000000000000000000000000000000000000000000000FDFFFE00EAFD
      F1009EE1BA000240100005792B00068B3B00089449002AA46F002A9D6A000D8C
      4D00169762001595600011915B00078034000579290004782700047726000476
      260004742500047325000470220003611A005B9C8600DDEBE700000000000000
      000000000000E8E8E800C9C9C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C2C200F0F0F0000000
      00000000000000000000AFE0CB000EA06200119D6300119D64000D9A5C000B97
      56000B96540007713000023E1000002E0D0001461000035318000A7A45001D8E
      650056A88E008DD0AC00BCE6CD00DEECE600EEEEEE00DEECE300A5E6BE00A5E8
      BE00A6E9C000A8EAC100A9EAC200AAECC300AAEDC300ADEEC600BFF2D500F5FD
      F800000000000000000000000000000000000000000000000000F9FFFB00DEFC
      EC009FE1BB000241100005782900068B3C00079446002EA570002E9E6A00088B
      40000A954D000B944E0007853B00057E2D00057B2A0005792A00057828000578
      270004762600047526000471240003631C005C9E8600DDEBE700000000000000
      000000000000E8E8E800C9C9C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C3C300F0F0F0000000
      00000000000000000000AFE0CD0014A36C0027AB7E0026AB7D0025A97B0023A8
      78001AA26F000E884C000551230000300D000148110003531700087337002293
      690043A2820084CEA700BDE7CD00DFECE600E8EEEB00D0ECDD00A5E8BE00A7E9
      C000A8EAC100A9EAC200AAECC300ABEEC500ABEEC500BCF1D200E3FAEE00FEFF
      FE00000000000000000000000000000000000000000000000000F6FEF900D8FA
      E900A0E3BC000243110005772900068C3C000A99530031A879002FA06C000790
      430008964A0008964C000892460005813100057D2C0004742500036B1E00046F
      200005782700057727000474250003661D005C9E8700DDEBE700000000000000
      000000000000E8E8E800CACACA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B0E1CE0018A5710035AE850033AE850030AD840030AD
      830029A87E001E9B6A000D623A0000300E000148110002521500045E1F003E9C
      7900319976007ACAA000B9E7CC00DAECE400E3EEE900C3ECD700A6E9BF00A8EA
      C100A9EAC200AAEBC300ABEDC400ACEFC600B0F0CB00CBF5DE00F9FEFC000000
      0000000000000000000000000000000000000000000000000000F0FDF700C6F1
      DB0085C0A200024A1200057C2D00068D3E000C9C5A0025A67600229E69000893
      490009984E0009984F0009994F00068A3E0005812F0004681E00025614000361
      1B0004772700057928000576260003681E005D9F8800DDEBE700000000000000
      000000000000E9E9E900CBCBCB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B1E1D0001DA775003EB089003CB089003AAF88003AAF
      88003BAD880047AA87002D775400023D120001481100025314000256150048A2
      7F001F7B510072BC9000B2E7C900D4EBE000E0EEE700BDECD300A7EAC100A9EA
      C200AAECC300ABEDC400ACEFC600ADEFC800BDF3D400E0FAEC00000000000000
      00000000000000000000000000000000000000000000FEFFFE00E8FDF200ADE9
      CD005CA488000254150006833500079141001EA3680024A77800159E65000997
      51000A9A53000A9A53000A9B540008934B00067D2E00045D1800034C10000356
      1600046D2100057B2A0005772800046A20005DA08900DDEBE800000000000000
      000000000000E9E9E900CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C400F0F0F0000000
      00000000000000000000B3E1D10023A97A0046B18D0044B18C0037AC84003FB0
      8A0046B08C006AB59B005093750009582A000147110002541400025715002D98
      6B00116D3B0068AF8500A6E1C000CCEBDA00E0EEE700BEECD400A8EAC100A9EB
      C200AAEDC400ACEEC600ACEFC700AEF0CA00CBF6DE00F4FDF900000000000000
      00000000000000000000000000000000000000000000F6FEFA00DAFCEA0099DF
      BB002A80540003621B00068B3D00079446003BAD7B002FA877000E9A5C000B9B
      58000B9C59000B9C59000B9C59000A9954000780370005621E00045414000357
      140004681D00057D2B0005792900046C20005DA08900DDEBE800000000000000
      000000000000E9E9E900CDCDCD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600F1F1F1000000
      00000000000000000000B5E2D30028AA7E004AB290003DAE8700249F6F0036AB
      820044B08C0068B89C0057A78C0016724C000141110002551500025A16000B7E
      41000F7F4A00479D760089CEA900C2EBD200DCEEE500C5EDD800A9EBC200AAED
      C400ACEEC600ADEFC800ADF0C800B2F2CF00D6F9E60000000000000000000000
      000000000000000000000000000000000000FDFFFE00E7FDF100BEF3D8007FC4
      9E00055A1D00057426000791430009984D0052B688003BA873000B9653000C9E
      5D000C9F5E000C9F5E000D9F5E000C9D5C000E9052000A78350006661F000565
      1F0006722900057F2D00057C2A00046E21005DA18900DDECE800000000000000
      000000000000EAEAEA00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C7C700F1F1F1000000
      00000000000000000000B6E2D4002EAC83004CB29000209D6C000F8C5200209D
      6C0040AD880050B3920047AE8D0026815D00003C100002561500025B16000464
      1D00158E5800118355005BAF8700ADE3C600CEEDDD00D3EEDF00AAEDC300ABEE
      C600ADEEC700ADEFC900AEF1C900BBF5D500DEFBEC0000000000000000000000
      0000000000000000000000000000FDFFFE00F0FEF600D0FAE30097D9B8004A8F
      6C00025A19000686360008954800179F610055B98C0038A971000B9956000DA0
      62000DA062000DA063000EA163000EA163001FA171001E905C00107A3C000A7A
      3A000B84420005802F00057D2C00047022005EA28A00DEECE800000000000000
      000000000000EAEAEA00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C8C800F1F1F1000000
      00000000000000000000B8E3D50035AE860051B08E000B8141000D874C000E8B
      51003CA87F0054B5940052B5940037906C00034C190002541500035C17000360
      19000B8446000B7F46003D916B0083C3A600BCE9D100D9EFE300AFEEC900ACEE
      C600ADEFC700AEF1C900AFF2CA00C4F6DA00E7FCF10000000000000000000000
      00000000000000000000FEFFFE00F1FEF800D0FCE500ADECC80069B184000660
      21000471270008964A0009984E004AB2890033A87E0014A069000EA065000FA2
      67000FA267000FA267000FA269000FA2690039A9830053A98D00379A72001894
      5F000F92540005823100057E2E00047223005EA38A00DEECE800000000000000
      000000000000EAEAEA00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C8C800F1F1F1000000
      00000000000000000000BBE4D6003DAF8A0056B290000A7D3D000F8D57000D86
      4B0040A57D0059B6980059B6980041A985000E7F4F0001471100035F18000361
      190003631B000E8B4F000B753E003E83590097CEB600BBEED500BBEED500ADEF
      C700AEF2C900AFF2CA00B0F3CC00C4F7DB00E7FCF10000000000000000000000
      00000000000000000000F5FEFA00CDFBE500B9FAD9006AB98C00066225000365
      1F00068D420008984E000C9C5A0077C99D0037A467000D995A0011A46C0010A3
      6A0010A3690011A46B0011A46D0011A46D001FA7790074B8A00089B8A80048A5
      7E00098E48000583310005813000047325005FA38B00DEECE800000000000000
      000000000000EBEBEB00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9C9C900F1F1F1000000
      00000000000000000000BFE5D80047B28E005BB694000E8C520011905A001293
      5D0046AD86005FB99B005FB89B005BB69800439C7800044F1600035F18000362
      1A0003651C00057128000B894A00117E47003B81540097CEB300B2EFCE00AEEF
      C900AFF2CA00B0F3CC00B1F4CE00C5F8DD00E8FCF2000000000000000000FEFF
      FF00FBFFFB00DDFBEC00C4FADE00B3F0CF005CAB7C0010682D0003631F000683
      350008964B000999500057B78F0032AB7D0017A16B0012A36C0014A5700012A5
      6E0011A46D0011A36B0011A46D0015A5710017A6730020A776001DA069001091
      4D00068738000685330005833200047726005FA48B00DEECE800000000000000
      000000000000EBEBEB00D0D0D000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CACACA00F2F2F2000000
      00000000000000000000C1E5D9004CB4900065BB9B003DA67F001A9967003CA8
      7E005BB7950065BB9D0064BA9D0062BA9C0056B191002A8B6100014211000364
      1C0003671D000469200006772F0009833E00107A3E002973450052B08C00A7E4
      BE00AFF1CB00B1F3CE00B2F4D000C0F8DB00DCFCEC00EDFEF400E5FDF000D4FB
      E800C5FBDD00BEFADB0087CAB100438A5F0013662A0004692300068135000894
      47000D9B540034AB7E0067B89B0023A16A0015A36C0018A6740017A7730015A6
      710014A56F0013A56D0011A46D0012A36C0014A56F0018A7730015A36E000C96
      540006883A0006863600068434000578270061A58C00DEECE800000000000000
      000000000000EBEBEB00D0D0D000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB00F2F2F2000000
      00000000000000000000C3E6DA005AAA80008D8E50007C9E6A00689F6C0070AA
      820070B595006BBB9E0068BD9F0067BD9E0063BB9B0050AF8D000F774A000358
      1C0003681E00046B2000046F230005782C00067C330008783400168141003879
      4A0043A0780077BEA2009BD7B800B2EDCC00C0F9DA00C6FBDE00BCF1D60098CD
      B70072BFA100459163002A7445000E652800046F270006843800089246000B9A
      530022A871007BCAA40041A2720064A06C0069A4700051A6720041A671003FA4
      6F0040A26B004CA065005E9B5C006E94520073904B007B8A4300768A43006B85
      3900637928005E73210054711F00156D1D0063A48B00DEEDE800000000000000
      000000000000ECECEC00D1D1D100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00F2F2F2000000
      00000000000000000000C5E6DB0064A27800A6621900A27230009F7938009C7F
      410097864B00948C5100939156009394590094985C0091995C00738C4D001E56
      1A00065C1900046C2100047123000472240004782900057F3000057929000469
      270009793900297F4C00408356004B8B5F004F906500508F66004B8B63003A7E
      5200247A480008682600046A220005792D0006893C0007934600129B570033AB
      770060BF94004EAE7A00759E6C00B0A27200B6A26C00A4A16700979F6300949C
      5E00929859009A935000A58E4700AD863A00AE803000B2782600AD752300A772
      1F00A36A18009F631300916112003265160066A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00F2F2F2000000
      00000000000000000000C7E6DC006A9F7900AB510D00AD550E00AD590F00AF5D
      1000B0611200B2671500B36E1B00B5732000B77A2600BA802D00BD843800726F
      2A00365F1C000F621D0004702300047727000476270004782700057C2B000682
      3200057C2A000470240003642000025E1E00025B1D00025A1D00025C1D000469
      220004712700057E30000587360006904000089549001FA15F0044AF7E0053B2
      8D005CB0800060996600BFA47B00D3A47300D2A16700CF9D5F00CB9A5900C796
      5200C3904B00C18B4400BE863C00BA813100B87B2800B6752200B4701C00B26A
      1700B1641400B05F1100A25C10004363150068A48B00DEEDE900000000000000
      000000000000ECECEC00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00F3F3F3000000
      00000000000000000000CAE7DD006FA17B00AB500D00AD540E00AD580F00AF5B
      1000B0601200B2661500B36C1A00B5721F00B6782500B97F2C00BC833600BF88
      3F0089783100496523001966210005732600057C2C00057F2F00057D2E00057D
      2B00057F2D000582300005833100058332000583320005843200058433000689
      3800068E3E000690410007944700169B57002BA6690046B280005EB58F0063A6
      810062966500C9A98500D5A67D00D4A37000D1A06500CD9C5D00CA995700C694
      5000C38F4900C18A4200BD853900BA802F00B77A2700B6742100B46F1B00B269
      1600B0631300AF5F1100A25B10004463150069A58B00DFEDE900000000000000
      000000000000ECECEC00D4D4D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00F3F3F3000000
      00000000000000000000CBE8DE0073A37C00AB500D00AC540E00AD580F00AE5B
      1000AF5F1100B1651400B36B1900B4711D00B6762300B87D2A00BB823200BE86
      3D00C18C4400A8853F005E6B2C00226623000F7B2D0006833700068337000784
      3600078638000687390007883900078A3C00078C3F00078F4100079044000892
      47000E954F001B9A560020A0630034A97C005FB892005CB288004D9E700091A0
      7700DCAC8D00D8A88200D5A47600D2A36C00D1A06700CE9E6500CC9C6100C998
      5C00C7945600C5905000C28B4900BE873F00BB813700B7792B00B46F1E00B267
      1500B0621200AF5D1000A25B10004464150069A58C00DFEDE900000000000000
      000000000000EDEDED00D5D5D500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00F3F3F3000000
      00000000000000000000CDE9DF0077A57E00AA4E0C00AC520D00AD560F00AE5A
      1000AF5E1100B1641300B26A1700B46F1B00B5742100B77A2700BA802F00BD84
      3900C08A4200C28F4900BC904D008C823E00426B270018682700138240000D97
      59000B9453000A9553000A9451000C9754000E9A59000E9C5C000E9C5E00119F
      640027A87D005AB6940068B69A0040A782003E9D72007EA28000C7AF9600DDAD
      9200DCAB8900D8A87F00D6A67700D6A77800D7A87F00D9AB8A00DAAD9200DAAE
      9300D9AD9200D7AB9000D6A98C00D3A78900CFA37F00C5935F00BB7C3900B56C
      2100B0631700AE5B1000A25A1000446615006AA58C00DFEDE900000000000000
      000000000000EDEDED00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D000F3F3F3000000
      00000000000000000000CFEAE0007BA78000AA4E0C00AB500D00AD540E00AD59
      0F00AE5D1000B0611200B1671600B36D1A00B5731E00B6792400B87E2B00BB82
      3600BF883F00C18D4600C4914C00C7965300C4995900AD996200738D64001677
      4F00086527000A7D41000C884E001A98660029A57C0029A47A001B9D6D001899
      68000D8C5400108A5A00449B7C009FBFB500E0D9DD00F2DCDE00EBCBC300E3B7
      A700E1B4A100E4BAA900E8C1B300EAC6B900EAC8BB00EAC9BB00EAC9BC00EAC9
      BD00EACABD00EAC9BD00EAC9BD00EAC9BB00EAC7BA00EAC7B900E6BEB000D4A5
      8700BA7D4200AE5A1000A2581000446615006AA68C00DFEDE900000000000000
      000000000000EDEDED00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300F4F4F4000000
      00000000000000000000D1EBE0007FA88100A94C0C00AB4F0D00AC530E00AD58
      0F00AE5B1000B26C2100BA834300C4946400CFA07C00D7A99200DBAE9900DDAF
      9C00E6C4B600EACCC000EACEC300EBD0C700EBD2CA00EAD4CE00E4D3D000DBD2
      D100D9D2CF00ACBBB20099B2A70097B2A9008FB0A50089AEA30098B5AB009DB6
      AC00C4C9C000D7D2CF00DFD5D400E7D4D200EDD5D100EFD5D000EED2CC00ECCC
      C300E9C5B500E9C7B900EAC9BC00ECCABD00EDCCBF00EDCDC000EDCDC000E9C5
      B900DFB5A300D6A99000D4A88C00D3A68900D1A58600CEA48400CA9F7A00C08C
      5500B36F2600AD590F00A2570F00446615006AA78C00DFEDE900000000000000
      000000000000EEEEEE00D8D8D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300F4F4F4000000
      00000000000000000000D3ECE10083AA8300A94A0C00AA4E0C00AC520D00B26B
      2700C48B5F00D09D7F00D4A58B00D6AA9600DAAE9C00DDB1A300DFB3A500E1B5
      A800E3BBAF00E5BDB300E6BFB500E3BCB000E0B7A800E1B9AA00E2BBAD00E7C0
      B700EECFC700E7D7D900E4D9DF00E4DAE100E1DAE100DDD1D100DABDB000D7B6
      A600E1BBAD00E6BDB000E4BBAC00E3B9A900E2B8A600E0B69E00DFB39800E0B4
      9C00E1B5A100E5BCAD00ECCBBF00EDCEC200EECFC400ECCCC100DFB99E00CC9C
      6900C38D4C00C0874000BC823A00BB7E3600B9793100B7752D00B5702800B268
      1F00AF5F1400AD580F00A1560F00446615006CA78D00DFEDE900000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D400F4F4F4000000
      00000000000000000000D4EDE10087AC8400A9490B00AA4D0C00AB510D00AF5D
      1900B76D3100BC763D00BE793F00BE7C4100BF804400C1844800C3884C00C48C
      5000C6905400C7935900CA966000CA976200CA986200CC9B6600CE9F6B00D2A3
      7200D5AB7B00DBB48E00DFBAA200E3BDAB00E2BDA900DFB79A00DBAC8400DAA9
      8100DAAA8300DAA98200D8A87F00D8A77C00D6A77900D5A57300D4A26E00D3A2
      6F00D3A27000D2A37200D3A87600D7AC8400D8AF8A00D3A67900C8965A00BF87
      3F00BA803000B87B2700B5762200B4711E00B26B1800B1661500B0621200AE5E
      1000AD590F00AD550E00A1550E00446615006CA88D00DFEDE900000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D500F5F5F5000000
      00000000000000000000D9EFE30091B68B00A65C1600A94B0C00AA4F0C00AC52
      0D00AD560E00AE590F00AE5D0F00B0611100B1661500B26B1800B4701D00B574
      2200B77A2700B97E2D00BB833400BD863B00C08A4200C28F4800C4924D00C796
      5100C8985500CC9B5C00CF9F6900D2A26F00D3A26F00D2A16B00D1A06700D2A1
      6900D2A16900D2A16900D2A06700D19F6500D09F6300CF9E6100CE9C5D00CC9B
      5A00CA995600C7965200C5934E00C6945300C6925400C28B4700BD843900BA80
      3000B87B2900B6772300B4731F00B36E1A00B1681600B0631300AF5F1000AE5B
      1000AD560F00AC530E009E530F002A6B19007BAF9500E4EFEB00000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D400F5F5F5000000
      00000000000000000000DFF3E7009EC8A0009E814300A9490C00AA4D0C00AC50
      0D00AD540E00AE570F00AE5A0F00AF5F1100B0631300B2671500B36C1900B570
      1E00B6752300B77A2700B97F2C00BB823300BE863B00C08A4100C18D4600C491
      4A00C5934E00C7965100C9985500CA9A5700CC9A5A00CC9B5C00CD9C5D00CD9D
      5E00CD9D5E00CD9D5E00CD9C5D00CC9B5C00CC9A5B00CB9A5900CA985500C796
      5200C5944F00C4914B00C28E4700C08B4200BE873D00BC833700BB803000B87B
      2900B6772400B5731F00B46E1B00B26A1700B1651400B0601100AE5C1000AE58
      1000AD540F00A9530E008F5711000F7724009DC7B100EEF5F200000000000000
      000000000000EFEFEF00DADADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D500F4F4F4000000
      00000000000000000000EAF8F000B6DEC30097AD8200A65B1D00A94D0E00AB4D
      0D00AC510E00AD540F00AD570F00AE5C1000AF5F1100B0631300B2671600B36C
      1A00B5701E00B6752200B77A2600B87E2C00BB813200BD843800BF883E00C08B
      4200C28D4600C4914A00C5934D00C6944F00C7955200C7975400C9975600C998
      5600C9985700C9985600C9985600C8975400C7955200C6955100C5934E00C491
      4B00C28E4800C18C4400BF894000BD863A00BB823500B97F2E00B87B2800B677
      2300B5731F00B46E1B00B26A1700B1651400AF601100AE5D1000AD590F00AD56
      0F00AB530E0099550F005C691D00248F5100CAE5D800F8FCFA00000000000000
      0000FEFEFE00EFEFEF00DCDCDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00F0F0F000FCFC
      FC000000000000000000FAFDFC00DFF4E900A5D5B2009F975A00A4662E00A75D
      2100A8602000A9622100AA652100AA682200AA6A2300AB6D2400AD702600AE74
      2900AF782C00B07B3000B0803300B1833700B3863B00B4883F00B58B4500B68C
      4900B8904B00B8914E00B9935100B9935300B9945400BA965500BB975600BA98
      5600BA985600BA985500B9975500B9955400B6935200B5935000B4914D00B290
      4900B18E4700AF8B4400AD893F00AB863900A8833300A67F2E00A47B2A00A378
      2500A17421009F701C009D6C19009B6715009963140098611200975D1100955A
      11008C5A12006A661E00298C4A0082BFAD00F1F8F60000000000000000000000
      0000FAFAFA00EBEBEB00E2E2E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00E3E3E300F5F5
      F500000000000000000000000000FAFDFB00DFF5EB00A7DFBC00A1BC9D00A4A8
      7800A5A47000A5A47100A5A47100A5A57300A4A57500A4A67500A4A77500A4A8
      7600A3A87700A3A97A00A3AA7A00A3AA7A00A2AB7B00A2AB7C00A1AB7E00A1AB
      7D00A1AB7D00A0AB7D009FAB7D009EAB7D009DAB7C009CAB7B009AAA7B0097AA
      7A0096AA790094AA750092A9750091A874008DA771008BA66E0089A46C0086A3
      680084A2660080A063007C9E5F007A9B5C0076985800729653006F944E006B90
      4800688E4200638C3D005F8938005C8534005A823200597F3100577E2E004E7D
      2E003884370033995A0081BFAC00FEFFFF000000000000000000000000000000
      0000F2F2F200E5E5E500F0F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00ECEC
      EC00FDFDFD000000000000000000000000000000000000000000E7F8F000DDF5
      E900D9F5E800D8F4E800D8F3E700D8F3E600D7F3E600D7F3E600D7F3E600D5F2
      E400D5F2E400D4F2E400D2F2E300D1F1E300D1EFE200D0EFE100D0EFE100CFEE
      DF00CDEEDF00CBEEDD00CAEDDD00C9EDDC00C8EDDC00C7ECDC00C5EADB00C3EA
      DB00C3E9D800C2E9D700C1E8D700C0E8D600BFE7D400BEE6D400BCE5D300BBE4
      D100BAE4D000B8E3D000B7E3CF00B5E1CD00B5E1CB00B4E0CA00B4DFCA00B3DE
      C800B2DDC700B1DCC600B0DCC300AFDBC200AFDBC200AFD9C200AED8C100AED8
      C100C1E2D000EDF7F3000000000000000000000000000000000000000000FCFC
      FC00E9E9E900E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400DFDF
      DF00EAEAEA00FDFDFD0000000000000000000000000000000000FCFEFD00FBFE
      FD00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FBFEFC00FAFE
      FC00FAFEFC00FAFEFC00FAFEFC00FAFDFC00FAFDFC00FAFDFC00FAFDFC00FAFD
      FC00FAFDFC00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F9FDFB00F8FD
      FB00F8FDFB00F8FDFB00F8FCFB00F8FCFB00F8FCFA00F8FCFA00F8FCFA00F8FC
      FA00F7FCFA00F7FCFA00F7FCFA00F7FCFA00F7FCF900F7FCF900F7FCF900F7FB
      F900F7FBF900F6FBF900F6FBF800F6FBF800F6FBF800F6FBF800F6FBF800F6FB
      F800F8FCFA00FDFEFE0000000000000000000000000000000000FCFCFC00E7E7
      E700E2E2E200F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00EDED
      ED00E1E1E100EAEAEA00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00E7E7E700E2E2
      E200F0F0F000FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00F0F0F000E5E5E500E7E7E700F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400E5E5E500E7E7E700F2F2
      F200FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F2F2F200EAEAEA00E9E9E900EAEAEA00ECECEC00F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100ECECEC00EAEAEA00EBEBEB00EAEAEA00F5F5F500FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F9F9F900F1F1F100EAEAEA00EAEAEA00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EAEAEA00EAEAEA00F2F2F200FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F8F8F800F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F8F8F800FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00E8E8E800E4E4E400DFDFDF00DADADA00D6D6D600D1D1D100CFCF
      CF00D1D1D100E1E1E100F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F4F4F400F1F1F100EDED
      ED00E8E8E800E4E4E400E0E0E000DDDDDD00D9D9D900D4D4D400CFCFCF00CACA
      CA00C7C7C700C3C3C300C0C0C000BFBFBF00BCBCBC00BCBCBC00BABABA00B9B9
      B900BABABA00C1C1C100D3D3D300E7E7E700F2F2F200F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F4F4
      F400F4F4F400F2F2F200EFEFEF00EBEBEB00E6E6E600E0E0E000D1D1D100BABA
      BA00A9A9A9009F9F9F009C9C9C009A9A9A009A9A9A009A9A9A00A1A1A100B3B3
      B300CACACA00D9D9D900E3E3E300E8E8E800EDEDED00F1F1F100F2F2F200F4F4
      F400F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FDFDFD00FCFCFC00FDFDFD00FDFDFD00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200EBEBEB00DADA
      DA00C9C9C900C0C0C000BDBDBD00BABABA00B9B9B900B6B6B600B6B6B600B5B5
      B500B5B5B500B5B5B500B3B3B300B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B9B9B900C7C7C700DDDDDD00EEEEEE00F4F4F400F4F4
      F400F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F4F4F400F2F2
      F200EEEEEE00E6E6E600D9D9D900CACACA00B7B7B700999999007B7B7B007777
      770089898900959595009E9E9E009F9F9F00999999008C8C8C007C7C7C006565
      6500666666008A8A8A00AEAEAE00C1C1C100D0D0D000DFDFDF00EAEAEA00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEEF900D9DBF300B4B9E800A3AAE300A3AAE300A3AAE300A3AAE300A3AA
      E300A3AAE300A3AAE300A3AAE300C4C7ED00DADCF400EDEEFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FCFCFC00F8F8
      F800F4F4F400F0F0F000EEEEEE00EFEFEF00F3F3F300F8F8F800FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200DDDDDD00CACACA00C1C1C100BFBFBF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C3C3C300D1D1D100E7E7E700F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900E8E8E800CFCFCF00AFAFAF00969696009C9C9C00B7B6B700D7D7
      D900EAE8EA00EDE8ED00E7E1E700E3DDE400E3DDE400E4E0E400E0DFE000D0CF
      D000AAAAAA008B8B8B00898989009F9F9F00BCBCBC00D9D9D900EFEFEF00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFC00DCE5E100E6EC
      E900FAFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFDFD00E8EDEA00D6E0DA00D3DED800E9EFEB00FAFCFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F8FD00DDE0F500B4B9E8009297DD007171
      D2006565D0005759D2003F42D3003438D4003438D4003438D4003438D4003438
      D4003438D4003438D4003438D400494BD300585AD0006566D000797CD600949D
      E000C2C6ED00EEEFFA00FDFDFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE0000000000FEFEFE00F5F5F500E1E1E100CBCACA00BCBA
      BA00B5B3B300B1B0B000B8B8B800CACACA00DADADA00E5E5E500EEEEEE00F6F6
      F600FCFCFC00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEF
      EF00E7E7E700D7D7D700C6C6C600BCBCBC00B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B9B9B900C1C1C100D3D3D300E6E6
      E600EFEFEF00F1F2F200F2F2F200F2F2F200F2F2F200F4F4F400F2F4F200F1F2
      F100EAEAEA00D9D9D900B7B6B700A1A1A100B3B3B200D6D6D700E1DDE300D4CF
      D400B3B3B300919F910081958000788E770082948100919E9100B3B2B300D4CF
      D400E4E0E400D4D4D400ADAEAD0098999900A9A9A900C6C7C600DDDDDD00EAEA
      EA00EFEFEF00F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F9F800D9E4DE00AAC3B4008AA690006B89710091B8
      AD00E2ECE900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8
      F800F8F8F800F2F4F300BBC9C4006C8A73006282680077937B008DAC9500B0C7
      B800E0E7E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E3F600B7BDEA009195DE006C6ED6004348D3002127D1000004
      CB000004CE000003D2000001DA000000DD000000DD000000DD000000DD000000
      DD000000DC000000DC000000DC000001D6000003D0000003CD00080DCD00242C
      D1005155D5007C7DDA00949BE100C6CAEF00EBEDF900FCFCFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F3F4F400DDDDDD00C5C2C200B0ABAB00A59C9D00A59B
      9B00A3999B009B939400969090009C999900A5A4A400B7B7B700D0D0D000E2E2
      E200EFEFEF00FAFAFA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F2F2F200E6E6E600D1D1D100C0C0C000B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B9B9B900B9B9B900B9B9B900C0C0C000D1D1
      D100E7E7E700F7F7F700FBFBFB00F8F8F800F5F5F500F1F1F100EAEAEA00DCDD
      DD00C9CACA00A9A9A900A3A3A300BCBCBC00D9D7DA00D0CCD00085948400356B
      2E0014620C000C6903000B7402000B7701000C7302000C69040018641000406F
      39008F9B8E00D4D0D600DFDDDF00CAC9C900BDBDBD00D7D9D900E7E8E800F2F2
      F200F7F7F700F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFCFB00DBE7E100ACC1B400709179002A603B0000390A00003003004A8B
      7A00CCDCD800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00E5E7E6009DAEA900123E16000030030000300300074213003366
      40007B998200B7CDBF00E8EDEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00FAFAFD00D6D8
      F300B2B3E7007E80DB003E47D1001119CA000003CC000002D9000001E5000005
      EB000005EB000004E9000001E7000001E6000001E6000001E6000001E6000001
      E6000001E5000001E5000000E5000002E7000004E9000005EA000003E8000000
      E1000001D4000003CA000D18CA00545AD6008C8EE000BBBDEC00E3E5F700FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00E8E7E700C8C7C700B1ACAC00A49A9B00A0929400A6959600B1A3
      A200B4A5A500AE9FA000A49496009C919200908A8B00918E8E00A2A2A200B9B9
      B900D7D7D700EAEAEA00F6F6F600FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E4E4E400D1D1D100C4C4C400C0C0
      C000C0C0C000C1C1C100C1C1C100C1C1C100C1C1C100C3C3C300C3C3C300C4C4
      C400C4C4C400C4C4C400C3C3C300C3C3C300C0C0C000BCBCBC00B7B7B700B3B3
      B500B7B7B700BCBDBF00B9BABC00A9AAAB009596990086878700777777006867
      66005554510077757500B9B7B900D9D4D900B3B6B30041723A000E6603000D81
      0000169B06001CAD0C001EB510001FB611001FB510001CAD0C00169B06000C7F
      000011650700537A4D00C6C4C600E7E3E600CDCDCD00E1E1E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F7
      F600CCDDD300769E850023563100003003000030030000300300003003005F8E
      8000D0DBD800EDEDED00EDEDED00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00EBEB
      EB00EAEAEA00E2E4E300A1B0AB00123F16000030030000300300003003000030
      030001390A00205C320094AB9A00E7EDE900FCFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFE00E7E9F800BBC0EB00676D
      D6001417C3000002C8000002DA000005EA000008EE000004EA000000E6000000
      E2000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000
      E0000000E0000000E0000000DF000000DF000000DF000000E0000000E3000001
      E6000003E9000006EC000001E5000001D4000002C7003338CE00868AE000C8CA
      F000EAECFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F9F9
      F900E5E5E500B7B2B2009D959600AEA0A100BFAEAF00B3A7A6009C9A8F008C93
      7E008792790090938100A6A09800BEB2B100BCAFB000A2979800888484008B8A
      8A00AFAFAF00CDCDCD00E4E4E400F4F4F400FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EBEBEB00E0E0E000D0D0D000C0C0
      C000BAB9BA00B9B7B900B9B7B700B7B7B700B6B6B600B3B3B300AFAFAF00AAAA
      AB00A3A3A300999A9A008E8F8F0082838400777879006B6B6B00606060005656
      56004F4D4D00514D4A00544E4800564E4700564C4200564940005A4A40005B48
      3B0073665E00A3A0A000BDB9C00098A0960025671D00107402001F960B0024A8
      110027A9180036A8260046AB3A004EAD430043AB380032AD23002CAF1B0028A9
      16001D950B0011720400316D2700A8AEA800CCC7CC00B0B0B000DFDFDF00F1F1
      F100EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFCFB00BDCD
      C400447D58000743140000300300003003000030030000300300003003005F8E
      8000D0DBD800EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00EDED
      ED00ECECEC00E2E4E300A1B0AB00123F16000030030000300300003003000030
      030000300300003003000E3C1200849E8C00E7ECE800FCFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF00F5F6FC00D6D9F4008990DF000213BD000003
      CC000006E7000008EF000004EC000001E6000000E2000000E1000000E1000000
      E1000000E1000000E1000000E1000000E1000000E1000000E1000000E1000000
      E1000000E1000000E1000000E1000000E1000000E1000000E1000000E1000000
      E1000000E0000000E0000000E6000004EB000006EC000003DE000001CA00282B
      C9009096E300E7E9F900F9FAFE00FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F7F7F700DBDA
      DA009C979700AB9E9F00C3B3B600B4A6A5008E918000749268006CA362006EB5
      64006EBC66006BB263006A9E6300768D6D009B978E00C4B4B700C2B7B8008E87
      870075747400A8A7A700C6C6C600E1E1E100F3F3F300FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFCFC00FEFEFE00FEFEFE000000
      000000000000FFFEFE00FBFBFB00F8F7F800F7F1F500EFE8EE00DFD4DD00C3BA
      C100A8A4A80099969900908D90008483840077777700676768005A5A5A004D4D
      4D00454242003E3A38003A3431003A322F003A312A0041362C0045362C004D3A
      2F00503D2F00564132005E46370061493800654D3900664E3D00684F3E006F59
      4A00918E8C00AFADB00096A19600165E0C00056F0000159400001A9A04003A9B
      250077A16D0098A39100A3A39E00A6A4A100A1A39B0094A08E0054A4460021B5
      10001EA8090015930100046C00001E621600AFB6AF00B7B5B700AFAEAE00F8F8
      F800FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9E3DD002F63
      3B0000350700003003000030030000300300003003000030030000300300608E
      8000D1DBD900EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00EDEDED00E5E6E600A1B1AB00123F16000030030000300300003003000030
      030000300300003003000030030000300300849E8B00E8EDE900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F1FB00A3ABE5002231C3000001C4000005EA000009
      F0000002E9000000E4000000E2000000E2000000E2000000E2000000E3000000
      E3000000E3000000E3000000E3000000E3000000E3000000E3000000E3000000
      E3000000E3000000E3000000E3000000E2000000E2000000E2000000E2000000
      E2000000E2000000E2000000E2000000E1000000E4000004EA000006ED000003
      DF000509C6002B3BC800CDD0F300FAFAFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600CDCCCC00827C
      7C00C7B7B700CBB6BF00958F88006A865B0061A1520066BB580068C05C0068C1
      5E006AC562006BCD66006ED569006BD0670067AA630079896F00AC9C9F00D7C9
      CD00B0A6A600656464009F9F9F00C3C3C300DFDFDF00F3F3F300FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFF00FFF5FE00F9EE
      F800EEE4EE00E0D4DF00CAC0CA00B0AEAF0099A19900829684006D9071005189
      590038894200278032003550370046373A00463A3800463A35004D3E36005342
      3800584639005E493E00614A4000684F43006B5345006C5547006F594900725C
      4E00776153007A6659007F6B5F008372650087776B008D7C71009A867900998F
      8A009C9C9F00B0AFB20032712800076C00001A910200209309006FA55E00B9B6
      B600C4B5C100BCAFB700BAADB500B7A9B200BFA9B900A0A89C004FB9450031CC
      1D002DB9160025A50C001B910400086800004E7F4600C3C0C4009F9E9F00D3D3
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000417E5700093F
      120000310300003003000030030000300300003003000030030000300300608E
      8000D1DBD900EEEEEE00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00E5E6E600A1B1AB00123F16000030030000300300003003000030
      0300003003000030030000300300003003000F3C120094AB9A00E8EDEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7DAF3007174D6001214C7000408DF00000BEE000004EB000001
      E5000000E4000000E4000000E4000000E4000000E4000000E4000000E4000000
      E4000000E4000000E4000000E4000000E5000000E5000000E5000000E5000000
      E4000000E4000000E4000000E4000000E4000000E4000000E4000000E4000000
      E4000000E3000000E3000000E3000000E3000000E2000000E3000001E6000003
      EA000107EA000506DB00171AC500959CE400EBECFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200C6C5C400938D8C00CEC1
      C300BDADB30078826A0053853D004B9634004CA037004CA53B004DAB3F004EB0
      430051B5470055BC4D0058C253005BCA59005FCF5F0063C162006F9E6900958F
      8A00D5C3CA00C8BFBE00797575009C9C9C00C2C2C200DFDFDF00F3F3F300FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDED00EDEDED00EDEDED00F1EE
      F100FCF4FB00F7EBF500E0D1DF00BDB5BD00A1A8A3008D9E8E007C9980006795
      6C00549C5B00429E4A0035A33E0027A1320021A12A0019A3230013A61E0011A4
      1D0010A01C000E9A1B00138A1D003F6B3200725B4F0072584D006F5A4D00735E
      5300786456007B685E00806E6400857469008A796E008C7C73008F8177009383
      7A0094847E0094857F0095878000998981009F8F8600AD9A9000AE9E93008C8A
      8A00A09CA100698B6500095F0000188402001F85090083A37700C7BAC700B9B0
      B600B9B0B600B6ADB300A4A6A100A0A49E0085A5840042BF3F0035D4290037C7
      220034B71A0027A40E001F900600188303000E5F010083997F00A4A0A4009A99
      9900E8E8E800EEEEEE00EDEDED00EDEDED000000000000000000000000000000
      000000000000000000000000000000000000F4F6F5009AAFA30015481D000132
      050000300300003003000030030000300300003003000030030000300300608E
      8100D3DDDB00F0F0F000F0F0F000EAEAEA00D6D6D600BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000BFBFBF00BEBEBE00C2C2C200D4D4
      D400EEEEEE00E6E7E700A2B1AB00123F16000030030000300300003003000030
      03000030030000300300003003000030030000300300205D3100B7CDBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C5EF005E61D4001518D0000006E4000006EC000003E9000001E6000000
      E5000000E5000000E5000000E5000000E5000000E5000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E6000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E5000000E5000000E5000000
      E5000000E5000000E5000000E5000000E4000000E4000000E4000000E4000001
      E5000003E8000005EB000006E2001E20D000666EDB00D2D6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000C7C4C400A29A9900C6BABB00B8A7
      AD0064784E003A782200308116002F8817002F8F1A002F941C002F9B200030A2
      250034A72A0037AF2F003AB535003FBD3D0045C444004CC94C0055C1550064A6
      60008B8B8100D6C0C900C4BCBD00878383009C9C9C00C3C3C300E0E0E000F4F4
      F400FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1FB
      F200ADE1B60080CD8A004CAD580029A0380020AA2A001AB7230014C91F0012CF
      1D0011D31D0011D11C0010CF1A000EC91A000EC11A000CB918000BAF18000AA8
      1600089E130006951300028E100002820D002C772800958B7900A48A83009986
      7F0098897F0099897F0096897F00968A7F00998980009A8A81009A8A80009987
      7E0096857A0095827700988375009C847400A6867300B28C75009C8A7E008786
      8B00A0A6A00018640F00016500000B79000062994900DDD1DD00C9C4C900CCC3
      CA00A0B59C0060B25A0045C7430043D3460037DA39002FEA29002EDA22002ACC
      180022B70A00429A2400428C25000E7E0000006100002C722200AFAFAF008987
      8A00DADADA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFC00DBE5DF002B5E3800053509000030
      030000300300003003000030030000300300003003000030030000300300608E
      8100D3DDDB00F0F0F000F1F1F100EFEFEF00E6E6E600DCDCDC00DCDCDC00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DBDBDB00DDDDDD00E4E4
      E400EEEEEE00E6E7E700A2B2AB00123F16000030030000300300003003000030
      0300003003000030030000300300003003000030030001380A007B988200E0E6
      E200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6AC
      E7004D51D400141BD8000009E7000006EC000002E8000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E6000000E7000000E7000000
      E7000000E7000000E7000000E7000003E9000005EA000005EA000005EA000005
      EA000005EA000005EA000001E9000000E7000000E6000000E6000000E6000000
      E6000000E6000000E6000000E6000000E5000000E5000000E5000000E5000000
      E4000001E5000002E8000005EB000008E400161BD300676EDC00CCD0F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400CAC7C700AAA3A300C0B4B600B4A8A800536E
      3E0023671100186F06001675050015790700157F080015850800158B0B001593
      0E00179A110019A314001CAA1A0021B1200028B7280031BC32003BC23E0045BE
      490056A4570089897F00D1C1C700BDB4B6008F8C8C009D9D9D00C7C7C700E3E3
      E300F7F7F700FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF9FB00FBFBFB00FCFBFB00ADDD
      B500089618000BA91A000EBF1D0014D122001ADA26001DDF29001EDD2A001ED9
      2A001DD429001DD029001DCA28001DC426001ABD250018B6240016AF220014A8
      1F0013A01F0011981D000E901B000B89180006801300318A3900B3B29B00D6B5
      AE00BCA59B00AF998E00A48E8100998474008E796800846C5C007C625100785C
      4800795A43007E5C450085624900916F58009E7A6100956F540091857E009591
      9900879F8400095A00001179000027801100C7CFC100DAD3D900D9D0D9009CB6
      93003BB0290032D726003BE834003DEB39003DE838003DDD31003AD3270035CA
      1B0030A4180098A48F00ABA9A500277E11000E770000126106009CAB9B00908C
      9000B7B7B700FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000F0F4F200A7BAAD0001370900003103000030
      030000300300003003000030030000300300003003000030030000300300608E
      8100D4DEDC00F1F1F100F2F2F200F2F2F200F3F3F300F3F3F300F3F3F300F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F0F0
      F000EFEFEF00E7E8E800A2B2AB00123F16000030030000300300003003000030
      030000300300003003000030030000300300003003000030030033664100B0C7
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAB0E9004046
      D2000C14D900000AE9000008EE000002E9000000E6000000E7000000E7000000
      E7000000E7000000E8000000E8000000E8000001E8000001E8000001E9000005
      EB000009EE00000DF0000010F100000EF000000CEF00000CEF00000CEF00000C
      EF00000CEF00000BEF00000EF100000DF000000BEF000007EC000003E9000000
      E8000000E8000000E7000000E7000000E7000000E7000000E6000000E6000000
      E6000000E6000000E6000002E8000005ED000007E500191EDB00696FE100C9CD
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00D0CECE00B2ABAC00BCAFB200B1AAA700516A44001154
      0500085E00000763000006670000056C01000572010005780100057E02000585
      0300058D040006960500099E08000BA50B0011AA110017AF190021B524002BBE
      330037BF4000499C4D008D948600CFC4C600B5AEAF00908F8E009F9F9F00CDCD
      CD00E8E8E800F9F9F900FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEEEE00EEEEEE00F2EFF2009FD4
      A800059B15000DB01D0013BD210018C724001ACF25001BD126001CD026001CCD
      25001ACA25001BC625001AC0240018BA220017B5220015AD200013A61F00119F
      1D000E981B000D8F1A000C8918000A821600087B1500006E0D0011721B007180
      4E00AA7B65009975600096776000967B6700967F6E009683770098897F009F93
      8C00B0A8A100C4BDB700D7D0CC00DFDDDC00E1DCD600A99385008F8D8D009996
      9B0056855000015100000968000068985300E6DDE800D7D0D700AABCA3002D9E
      160029C3150035C9210036CD250037D0280036CF260035C7220032C31D0026AA
      11006F996000B3A6B000B3A6B0008094730011690000045600006F936C009591
      960099999900EFEFEF00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000DFE9E300618D710001300400003003000030
      030000300300003003000030030000300300003003000030030000300300618E
      8100D4DEDC00F2F2F200F2F2F200F3F3F300F3F3F300F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F3F3F300F3F3F300F2F2F200F2F2F200F1F1F100F0F0
      F000F0F0F000E7E9E800A2B2AB00123F16000030030000300300003003000030
      03000030030000300300003003000030030000300300003003000742130088A7
      9000F5F7F6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F8FD00BBC0EE003E45D2000B11
      D900000AEA000007ED000002EA000000E7000000E8000000E8000000E8000000
      E8000000E9000000E9000000E9000002E9000006EC00000BEE00000FF000000D
      EE00000CED00000DE8000010E3000B1CE3001425E4001425E4001425E4001425
      E4001425E4001424E4000414E200000DE400000BE900000CED00000CEF000006
      EC000000E9000000E8000000E8000000E8000000E8000000E7000000E7000000
      E7000000E7000000E6000000E6000001E8000006EE000006E9001A20DE00696F
      E200CCD0F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDADA00B7B0B000BDB1B400B5AEAA005B6E4F0009430100014E
      00000153000001580000005E00000063000000680000006E000000730000007A
      000000820000008900000192010002980200049D040007A308000DAA100015B2
      1C001FBD2A002BC23A0045934B00969F9000CCC4C400ADA7A7008E8C8C00AAAA
      AA00D4D4D400EEEEEE00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9E3
      B50000A30F0008BA18000DC71D0011D41F0014DC210015DD210015DA210014D7
      1F0013D31E0012CD1D0010C61A000EBF1A000CB718000BAE17000BA8170009A1
      1600099B16000794140003850E00017E0D0000750C00006D0A0000620500004D
      000056834800F2F1EA00FBF1F100EFEFEF00EFEFF100EAEBED00E4E6E700E4E6
      E700EAEDED00EEF1F200EDEEEF00EBEEF100EDE6E100A48B7B0087838300A4A4
      A5002F742600014A00000F5C0000A1BF9800F9F4FB00F4EBF50077A465002294
      0B002CB3130028C4130029CA17002CCD18002CCC17002AC7140021BA0900439C
      2700B6B2B200B9AFB300B3ABAE00BDB0B900437C2E0000400000548B4D00A6A3
      A800939193000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0E0D60023693D0000300300003003000030
      030000300300003003000030030000300300003003000030030000300300628F
      8100D5DFDC00F2F2F200F3F3F300F0F0F000EAEAEA00E6E6E600E6E6E600E6E6
      E600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E500E5E5E500E7E7E700ECEC
      EC00F1F1F100E8E9E900A3B2AC00123F16000030030000300300003003000030
      0300003003000030030000300300003003000030030000300300003003006F8C
      7400E1E8E4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8FD00CCCFF300454CD200080FD800000D
      ED000007ED000002E9000000E8000000E9000001E9000001E9000002EA000002
      EA000002EA000002EB000006EC00000DEF000011F0000012EF000116EB00081A
      E5002931E5004043E0005051DA00666DDE007380E2007380E2007380E2007380
      E2007380E2007380E2005C5FDA004B4CDB003538DF001621E5000012ED000011
      F3000006ED000002EA000002EA000002EA000001E9000000E9000000E9000000
      E9000000E8000000E8000000E8000000E7000001E9000007EF000007E900191E
      DD006B71E100DBDEF80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAE9E900B6B1B100BEB3B500BEB4B2006E7A60000C3D010000420000004A
      0000004F000000550000005A0000005F00000064000000690000006D00000073
      0000007B00000080000000870000008B0000009000000197010003A0040006A8
      0B000DB1170017BF280023BE3900488D5000A0A89B00C9BFC000A6A1A1008B8A
      8A00B6B6B600DCDCDC00F4F4F400FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700F7F7F700F8F7F800A9DD
      B2000CA91D0015BF24001ACA29001ED42D001FD92D0020D72D0021D32E0022D3
      300027D337002ED43E0036D3450039CD490039CD4A0038CD4A0032C6450029BF
      3B0022B731001CAF2800149C20000C8319000B79180009741600086D15000465
      110000560D004A8E5B00E3EEEA00F9F2F900E7E6E700E8E7E800E8E6E700E8E6
      E800EAE7EA00EBE8EA00EEEAED00F1EDF100F5E8E700AE9385008A868500A5A9
      A60036712D00A0BD9800D7DDD300E3E6E300E7E6E700E3E1E300C9CFC300CCD3
      C70065AA4D002AAF110035BA1A0036BC1A0036BA1A0031B91600359E19009EAD
      9500C4B9C400B6B2B200B3AEAF00B9AFB500ABABA50015550B0043823D00A9A6
      A900908F9000EFEFEF00F7F7F700F7F7F7000000000000000000000000000000
      0000000000000000000000000000C8D7CD000247150000300300003103000031
      030000310300003103000031030000310300003103000031030000310300628F
      8200D5DFDD00F3F3F300F4F4F400E9E9E900D5D5D500CACACA00CACACA00CACA
      CA00CACACA00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CACACA00CACACA00D2D2D200E3E3
      E300F2F2F200E8E9E900A3B2AC00123F16000030030000300300003003000030
      0300003003000030030000300300003003000030030000300300003003005C7D
      6200CDD9D2000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFCFE00D9DBF6006B71DD000105CF000012F100000A
      EF000004EB000002E9000002E9000002EA000002EA000002EA000004EB000004
      EB000006EC00000CEE000013F1000019F100061DEC001A21E3003537D9004B5A
      DA0098A0EA00CDD1F600F3F3FD00000000000000000000000000000000000000
      0000000000000000000000000000E6E8FA00B4BAF000666DE3001C26E0000013
      F0000013F3000004EB000004EB000004EB000002EA000002EA000002EA000002
      EA000001E9000001E9000001E9000000E8000000E8000003EA000007EF000007
      E7001E23DB007C84E400F2F3FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600B9B5B500BAAFB000C4B9BB00818773001E420E00003B000000470000004C
      00000051000000560000005C00000060000000650000006A0000006E00000074
      000000790000007D0000008000000082000000860000008D000000950100019F
      030003A8090008B3170013C52D001FB73C00528D5A00AEAEA700C8BFC1009997
      960091909000C4C4C400E5E5E500F7F7F700FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F2F200F2F2F200F5F2F5009FD9
      A80005A6140011B91F0015C0210018C424001FC72C0027CC380037D4470042DA
      54004CDA5E0049D65C003DCA4E002DBF3F001FB02D0016A621000E9F1A000999
      150006961200069511000B9F16000C9B1800057A110001660D0001620D00005B
      0C0000540900003F00000D561A00A8C6AF00FCF8FC00F7F4F500F4F2F200E8EB
      EA00DFE3E000D7DDD900C1D0C600AAC1B30099AF9800677153007E7C7B00A8A6
      A8001E5F1800487E3D0000000000EEEDEE00E6E6E600E1E1E300F2EAF400BACA
      B200278C0E0023A3060026A50B0026A60C0026A60B001F9B04006EA05600D0C4
      CF00B7B5B300B5B2B200B0AEAE00B2AEAF00C6B9C10068845E003B743600A1A1
      A3008C8B8C00EDEDED00F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000C7D2C8000030030000310300003303000033
      0300003303000034030000350300003503000035030000350300003503006390
      8200D7E0DE00F4F4F400F4F4F400EBEBEB00DADADA00CFCFCF00D0D0D000D0D0
      D000D0D0D000D0D0D000D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D0D0D000D0D0D000D0D0D000D7D7D700E7E7
      E700F2F2F200E9EBEA00A3B3AC00123F16000030030000300300003003000030
      030000300300003003000030030000300300003003000030030000320300456C
      4D00B6C6BD000000000000000000000000000000000000000000000000000000
      00000000000000000000E8EAFA009297E7000007CE000015F200000CF0000003
      EC000003EB000004EB000004EB000004EB000004EB000004EB000004EB000006
      EC000010F1000023F400031FEE000E17DF003337D700838CE500E6E8FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E7FA008386EB000007
      E000001EF7000005EC000004EB000004EB000004EB000004EB000004EB000004
      EB000003EB000001EA000001EA000001EA000001E9000001E9000003EB000009
      F0000009E7002527D600B2B7EF00FDFDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00D1D0
      D000A69C9C00C8BDC00094958A00324A2900003300000143000000490000004E
      00000053000000580000005E00000062000000670000006C0000007000000076
      0000007B0000007F000000810000008200000084000000880000008D00000096
      000000A1020001AD0A0006B71E0011CD380020AC4200688F6C00C3B4B700CDC7
      C80087858500A5A5A500CFCFCF00ECECEC00FAFAFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9EF
      CF0012A51F0001A00D00059F1100089E1300099E16000A9C17000BA117000AA3
      1600069E110003990E0000980B0000980A0000990B00019A0C00029B0C00039C
      0E00039E0E00049E0E00039C0E0005A1100009A4150004801000005B06000055
      0600004F0500004804000037000000450B004C895B00427C50002C6B3B001A59
      25000C47190005380F00002A070000220100001B0000001F00006C776F00B5AF
      B5002A732500002A0000A3BF9B0000000000FCFCFE00FCFBFE00FBF9F9004E95
      2C001C93000025A0060027A3080027A4080027A40800259F05003B981900428A
      22008FA68100D6CFD600D3CAD100839A7A001F5F12000846030058895100ABA8
      AB00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7D2C8000031030000350300003704000037
      0400003704000038040000390400003904000039040000390500003905006392
      8300D7E1DE00F4F4F400F5F5F500F5F5F500F5F5F500F6F6F600F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400E9EBEA00A3B4AD00124316000033030000330300003303000032
      030000300300003003000030030000300300003003000030030000350400456D
      4E00B6C6BD000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B9EE001225D2000010EC000015F5000006EC000004
      EB000004EB000005EC000005EC000005EC000005EC000005EC000005ED00001A
      F5000029F800000FE3001925D9007C88E700EAECFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F9FE00A0A2ED00000B
      D900002EF9000005ED000005ED000005EC000005EC000005EC000005EC000005
      EC000004EB000004EB000004EB000004EB000004EB000002EA000001EA000005
      ED000009F0000007E7001A1ED100EEF0FC00FDFEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F7F7F700968F
      8F00D1C8CA00B5ADAA0047584000032F0000023C000002430000014B0000004F
      00000055000000590000005F00000063000000680000006D0000007100000077
      0000007D000000810000008200000083000000860000008B0000009000000095
      0000009D000000A6030000B20F0005C1280010D4460029A34D0080968300DECB
      D300C8C6C6006C6C6C00BBBBBB00DADADA00F2F2F200FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F2F2F200F2F2F200F7F4
      F700B2D0AF002E8D2E000E8D18000B8F16000C9117000B9117000B9117000E99
      18000FA11A0010A31A0010A11A0011A11B0011A31A0011A31A0011A31A0011A3
      1A0011A31A0011A31A0011A31A0010A11A0011A41B0019AE2400169022000660
      130003530E0004541100044E0F0000430A0000350300002F0200002A02000029
      020000280300002804000027040000290500002A0600002907005C736400B0A9
      AF00628D5E00014300002A6D1D00E3E8E100F5F4F500F9F7FB0094B685002886
      0B00379A13003A9B16003A9E16003B9F17003B9F16003A9E16002D980C003185
      1400B3BFAA00D3CCD100D9D0D7005B8A4900095B0000004500007C9B7A009B99
      9C00A6A6A600F4F4F400F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000C7D2C8000034030000390500003A0500003A
      0500003A0500003C0500003D0500003D0500003D0500003D0500003D05006592
      8300D7E1DE00F5F5F500F5F5F500F5F5F500F6F6F600F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400EBEDEC00A3B4AD00124717000037040000370400003703000036
      030000340300003403000033030000330300003003000030030000370400456F
      4E00B6C6BD000000000000000000000000000000000000000000000000000000
      000000000000CACDF3005A61E100020BE000001EF6000009EE000005EC000005
      EC000005ED000005ED000005ED000006ED000007EE00000BF0000026F700001F
      F300000BDC005059E100B7BCF200F1F2FC00FDFDFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C7F5004E58E800000F
      E9000022F7000007EE000007EE000007EE000007EE000007ED000006ED000005
      ED000005ED000005EC000005EC000005EC000004EB000004EB000004EB000004
      EB000008EE00000BF0000B0DE2006571E300EEEFFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600AFADAD00C9BC
      BD00D5C8CF00616E520012350700033500000340000002450000014B00000051
      000000560000005B0000005F00000064000000690000006E0000007300000079
      0000007D000000810000008300000085000000880000008C0000009100000098
      0000009E000000A8040000B20B0001BD1D0007CE3A0010CE4B0039A35900969B
      9200E3DADC00A4A1A00086868600C2C2C200E5E5E500F7F7F700FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F7F500F7F5F500F5F5F500F7F7
      F800F2DDE000AA917F003DA93A00069E1200038F0E0005930F00059310000591
      100005941000079C110009A3130008A3120008A1110008A1120008A1120008A1
      120008A3120008A1120008A1120008A1120008A1110007A1110010B01B0019A8
      250001600D0000390100003D04000038030000320200002E0100002900000025
      00000023000000210000002000000020000000200000001A0000295335009E96
      9E008BA48A000C5605000B5B00005E8D4D0000000000D1DDCA002A7B1100298C
      0C003190110035931100359611003496110034961000298E09002D8210009FB7
      9100E6E0E700DDD6DC00C1C9BD00266F160012670400135C0C009CAF9C008A86
      8A00C3C3C300F7F7F700F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000C7D3C80000360300003C0500003E0500003E
      0500003E0500003E0600003F0600004006000040060000400600004006006793
      8400D8E2DF00F5F5F500F7F7F700F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F8F8
      F800F8F8F800F8F8F800F7F7F700F7F7F700F6F6F600F5F5F500F5F5F500F4F4
      F400F4F4F400EBEDEC00A4B5AE00134A1800003A050000390500003905000039
      0500003805000038040000360400003604000034030000340300003B05004571
      4F00B6C6BD000000000000000000000000000000000000000000000000000000
      0000F2F3FC008C8EE600111CDA000019F2000010F2000005ED000007ED000007
      EE000007EE000007EE000007EE000007EF000010F000002DF7000020F300000C
      DC007E82EA00CED1F600F3F5FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D8F9006D72EB000F22E900002D
      F6000014F4000008EF000008EF000008EF000007EF000007EF000007EF000007
      EF000007EE000007EE000007EE000005ED000005ED000005EC000005EC000005
      EC000006EC00000AEF000210F0001215D600B7BBF200F4F5FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800D7D6D6009F939000DDD3
      D7008A8D79002A421E00062F0000053900000440000003460000024C00000051
      000000560000005C0000006000000064000000680000006D0000007100000077
      0000007C000000810000008300000085000000880000008C0000009100000098
      000000A0000000A8040000B20C0000BC1C0003C9330007D5440012BC47004A97
      5E00B6A8AB00E1DCDD007B797900AAA9A900CFCFCF00ECECEC00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5E6E300A59B7C0025D4310017DD240010B91C00089E1300079A1300089E
      1300089C1300089C130009A113000BAD16000BAE16000CAD16000CAD16000BAD
      16000BAE16000BAD16000BAD16000CAD16000BAD16000BAE160009AB140011B7
      1C0025C437000E7A1D00003500000032010000320200002E0000002800000025
      000000220000001F0000001E0000001D0000001D000000180000062D10008D8C
      8E00ADB2AD002A712500176D0C00206E1300A6C39C006D9E56002A8511003B93
      1A003E961B003B9619003A9119003D911A0042931E00659F4600BCD4B000F9F5
      FB00EDEAED00FBF5FC0080A472001E710D0017690C003D7A3700B3B7B5009494
      9400F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7D4C8000039040000400600004206000042
      0600004206000042070000430700004407000044070000440700004407006794
      8500D8E2E000F6F6F600F8F8F800EFEFEF00DEDEDE00D3D3D300D3D3D300D3D3
      D300D4D4D400D4D4D400D4D4D400D4D4D400D5D5D500D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D4D4D400D4D4D400D4D4D400D3D3D300D3D3D300DADADA00E9E9
      E900F4F4F400EBEDEC00A4B6AE00134D1900003E0600003D0500003D0500003D
      0500003C0500003B050000390500003905000038040000380400004006004573
      4F00B6C6BD000000000000000000000000000000000000000000000000000000
      0000BABFF1004952E2000011E700001BF5000009EF000006EE000007EE000007
      EF000008EF000008EF000008EF000010F1000023F4000026F200000DDE007B80
      E900D8DAF800FAFAFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D7F9007076EE001D36EC00002EF5000021
      F600000BF2000009F0000008F0000008F0000008F0000008F0000008EF000008
      EF000008EF000008EF000007EF000006EE000006EE000006ED000006ED000005
      ED000005ED000008EE00000FF2000006E5005262E500DBDFFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00EBE9E900ABA6A600D0C4C500B9B4
      B000405536000E31060006310000063A00000441000003470000024C00000052
      000000570000005C0000006000000063000000670000006A0000006C00000070
      000000750000007C0000008000000083000000870000008B0000009100000098
      0000009F000000A8040000B10B0000BB1A0001C62E0004D03D0006D042001AAE
      4600688C7000E5D4DB00C3C0C00086858500B7B6B600DEDEDE00F3F3F300FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00E6D4D3009F9A7B0027CA32001FD72A0022D62F001DC4290016AB2100139E
      1D00139E1D00149F1E00139F1D0017AB200018B0210018AF210018AF210018AF
      210018AF200018AF210018AF200018AF210018AF210018AF210018AF210016AD
      1E0019B2220038D34D002D9C3F0004460F00002D0400002A0300002704000028
      050000290600002C080001320900033A0A0005410B0003470A00004D09006284
      6800A9A1A9006D8B6D00256E1F003A832A003A7E270042862A004A8F30004D93
      310048912A0056913B00A8C19C00BCCCB500C9D4C300EBEAEB00F1EDF400E4E3
      E600F1EDF200ABC0A50040802D003A852900256D1F0080968000A39FA400AFAF
      AF00F2F2F200EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000C7D4C800003B050000440700004507000045
      0800004508000046080000470800004808000048080000480800004809006894
      8600DAE3E100F8F8F800F8F8F800F2F2F200E7E7E700E0E0E000E0E0E000E0E0
      E000E1E1E100E1E1E100E1E1E100E1E1E100E2E2E200E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E1E1E100E0E0E000E0E0E000E0E0E000E0E0E000E4E4E400EDED
      ED00F5F5F500EBEDEC00A4B6AF0013511A000042070000410600004106000040
      0600003F0600003F0600003D0500003D0500003B0500003B0500004407004575
      5000B6C6BD00000000000000000000000000000000000000000000000000F3F4
      FC007E82E6001528E100001FF2000012F3000008EF000008EF000008EF000008
      F0000008F0000009F000000FF2000021F5000030F4000D1FE5007378E800DDDF
      F900FAFBFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D8F9007077EF001E3BEE000030F5000028F7000010
      F3000009F2000009F2000009F2000009F1000009F1000009F1000009F0000009
      F0000008F0000008F0000008EF000008EF000008EF000007EF000007EE000006
      EE000006EE000007EE00000BF0000013F400111CDF00AEB3F300F3F4FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200D0CDCD00B5A9AA00E3D9DF006578
      5300153C0F000730000008340000073A00000542000003470000024C00000152
      000000560000005B0000005F00000062000000610000005C0000005600000056
      0000005C0000006A000000760000007D000000840000008A0000009000000097
      0000009D000000A6030000AF090000B7150001C1250002C9340003D23E0007C5
      3E002B9E49009F9C9900F4EEF00094919000A1A0A000C8C8C800E8E8E800F9F9
      F900FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00EEDDDC009F9877001DCF260012D91F0016D4200016D4210016CF200011B9
      1A000BA416000A9E15000BA016000FAE1A0011B51A0011B51A0011B31A0011B3
      1A0011B31A0011B31A0011B31A0011B31A0011B21A0011B21A0011B21A0010B0
      190011BC1F0011C7260028E0460038C04E001B7F2800258C3800319B45002DA3
      420028A83E0023AD36001BAA2A0014A922000EAA1D000CAE1D0031BA450096BF
      9B00999399009A9E9A002D642C0034812900428A3400458C3200498F36004A90
      320062984D00D0DDC9000000000000000000FFFEFF00FBF8FB00FCF9FE00FCFB
      FC00AFC9A800488638003F8A2F002E7B25003B693900AFAEB000A19FA100E8E8
      E800FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000C7D4C800003D050000480800004908000049
      080000490800004A0900004B0900004C0900004C0900004C0900004C09004690
      7A00D2E3DF00F8F8F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9
      F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5
      F500F5F5F500EAEDEC0098AEA70011531A000046070000450700004407000043
      070000430600004306000041060000410500003F0500003F0500004808004577
      5000B6C6BD00000000000000000000000000000000000000000000000000C1C6
      F2004850E3000019E8000022F600000AF1000008F0000008F0000008F0000008
      F1000008F100000CF2000020F6000030F500112EEB005E65E700E4E6FB00FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7DCFA00727AF0001D3CEF000034F500002CF8000013F500000B
      F300000AF300000AF200000AF200000AF200000AF200000AF100000AF1000009
      F1000008F1000008F1000008F0000008F0000008F0000007F0000007EF000007
      EF000007EE000007EE000009EF000017F6000008E700616DEB00D3D8F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00DEDDDD00B4AEAF00D4C8CA00ACACA500224B
      1400073901000734000008350000073A00000542000003470000024C00000152
      000000560000005B0000005E0000005A0000005700000C5E0B00266B24002A6C
      2900105E1000025402000061000000710000007F000000880000008F00000096
      0000009C000000A3020000AB070000B20E0001BA1A0002C2270002C9310002CD
      34000CB83400467E4F00E0D0D600CCC7C60092929100B0B0B000DADADA00F2F2
      F200FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5E4E400A9A1800025D7300019E126001CDA27001AD7240019D1230019CD
      230018C1230017AF220015A91F0017AB220018B023001AB524001BB925001DBD
      26001DBF27001DC027001DC027001EBF26001DBF26001DBF26001DBD25001DC6
      2D001FD33A001ED13A001ACD35002ADD48004FF469004CF1670040E85E0031DC
      4F0026D345001FCD3D001ACC370013C72F0024C6400071BC6F00F2FFF8000000
      0000BDC0C100AFADB000808D810028642500599B5000619E5600609C5100619A
      5000BDD4B6000000000000000000000000000000000000000000DDE7DA0094B6
      8C005B944E005F9F510053984A002A6027009BA39B00BCB9BC00D4D4D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7D5C80000410500004C0900004D0900004D
      0900004D0A00004D0A00004E0A0000500A0000500A0000500A0000500A00127A
      4D00BDD9CF00F5F6F600F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900FAFA
      FA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFA
      FA00F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F7F7F700F6F6
      F600F5F5F500E4EBE7005B977B000A5316000049080000490800004808000047
      0800004708000046070000440700004407000043060000430600004C09004579
      5100B6C6BD000000000000000000000000000000000000000000FBFCFE007980
      E6001930E6000020F3000016F5000008F1000008F1000009F1000009F100000A
      F200000AF2000019F5000030F7000B36F000474BE600CFD3F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFC
      FF00DDE1FB00747EF0001736EE00003DF8000030FA000015F600000CF400000C
      F400000CF400000CF300000CF300000CF300000CF300000CF300000BF300000A
      F200000AF200000AF200000AF1000009F1000008F1000008F1000008F0000008
      F0000008F0000007F0000008F000000EF3000015F3001727E400ACB2F300FAFB
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0EFEF00CBC8C800B6ADAF00D3CCCE004C684100093F
      0700053C00000837000009350000083A00000641000004470000024D00000252
      000000570000005A00000056000003530100276C2500649B62008FBA8B0094BF
      93006EA36D003E763E000C550C00006000000074000000830000008D00000094
      0000009A0000009F010000A6040000AD080000B3100001B9190001BE200001C4
      240001BE2300119322008E8C8400EFEAEB00A09E9F009D9D9D00C5C5C500E6E6
      E600F9F9F9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDED00EDEDED00EDEDED00EEEF
      EF00E6D6D400A19E7F001DBC260015C1220021C934002ACA3D0039D04A0046D6
      580053DC65005EDC6D0040C44F0021A52F0021A5300021A5300021A62F0022A8
      300023A9310024AD310026B0340029B535002AB7360029B9370029C13F0029CA
      460027CA460027C9450028C9460025C9430022C03F001FBC3A001DB739001FB9
      3B001FBA3B001CBD3A0024B33D0066B66C00B6BA9B00B98E7F00CCA99C00BCA0
      8E00AE917F009B8F8600B3B2B6007381740030602F005F985B0077A96F0072A1
      6900779F6E0087A9800095B390009BB7960094B38F0087AA8200719B67006B9B
      600075AA6F00568F5300325C31008B938C00C4C1C400C6C6C600EEEEEE00EEEE
      EE00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000C7D5C90000440600004F0A0000500A000051
      0A0000510B0000510B0000510B0000520B0000520B0000520C0000520C000058
      0F008BBAA300E1EDEA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F9F9F900F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F7F7
      F700F0F2F100C3D7CD000173300000510E00004D0900004D0900004C0900004B
      0900004B0900004A08000048080000480800004707000047070000500B00457A
      5100B6C6BD000000000000000000000000000000000000000000E4E7FB004B4F
      E1000026EA00002AF700000CF200000AF100000AF100000AF200000AF200000B
      F3000010F4000031F8000033F3002C3EEB009FA8F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFBFF00DCE0
      FC007984F2000E2AED000049F9000034FA000018F700000DF500000DF400000D
      F400000DF400000DF400000DF400000DF400000CF400000CF400000CF400000C
      F300000CF300000CF300000CF200000AF200000AF100000AF1000009F1000009
      F1000008F1000008F1000008EF000009F100001EF8000009E500888BF000E8EA
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00D8D7D700BDB7B700D6CCCD00A1A49A00064401000345
      0000064000000938000009360000083A00000641000005470000034C00000252
      00000155000000540000004900002568200090B68B00F6F9F500000000000000
      000000000000C2DEC2003A703A000752070000640000007B0000008800000090
      000000960000009B000000A1020000A7040000AB080000B00C0000B4110000B6
      130000B7120005B00F002A692E00D4CECE00D2CCCE009A999900AAAAAA00D9D9
      D900F2F2F200FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1E4E000AE9B81006CB360004CA941002F9825002EAE350030BA41002EC1
      430028BF410026B73D0025B3380020AD300021AB300021AB300021AB2F0021AB
      300021AB300021AA300021AA2F0021AB2F0021B2320022C33B0022CD430023CF
      450025D1470026D3480025D1460021CA41001EC33E001EC33E001EC43E001AC1
      3A001BC03B0042B34E008A946000BC8F7A00BD8E7B00AA7F6100BF9A8400C0A0
      8C00C7AA9600D3C3B700C1C1C100C7C4C7008089820029512900437B400072A8
      6D007FB378007BAF740078AA6E0077A96E0078AA6F007CAF74007EB378006DA4
      68003D743A003053300094999500DCD7DA00DADADA00FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7D7C9000047070000520B0000520C000053
      0C0000540C0000540C0000550C0000560C0000560C0000560E0000560E000056
      0E001B845D009FCEC200EAF2F000F6F7F700F9F9F900F9F9F900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00F9F9F900F9F9F900F9F9F900F8F8F800F8F8F800F7F7F700F1F4
      F300CEDDD70064947D0000540D0000500B0000500B0000500A00004F0A00004F
      0A00004E0A00004C0A00004C0900004B0900004B0900004A080000540D00457C
      5300B6C6BD000000000000000000000000000000000000000000A9B0F100313B
      E8000025F1000024F600000AF200000CF200000CF300000CF300000CF400000C
      F4000021F700003AF8000833EC005C62E800F4F6FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFF00DCE0FC007A87
      F2000118EB00005AFD000038FA000019F700000FF600000FF600000FF600000F
      F600000FF500000FF500000DF500000DF500000DF400000DF400000DF400000F
      F4000012F5000013F5000013F5000011F400000DF300000CF200000AF2000009
      F2000009F2000009F1000009F1000008F1000018F600000FEF00525FEE00C4CB
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200C8C4C400B8AEB100C8C6C10046683A00004500000448
      000006420000093900000A360000093A00000741000006470000044C00000251
      000001520000004600000F530E008FB08D00F5F8F400FEFFFF00000000000000
      0000000000000000000090B69000265A2600005100000070000000810000008B
      00000093000000970000009B000000A1020000A5030000A8050000AB070000AD
      080000AE080000AD060000800300888C7B00E8E5E400A7A7A7009B9B9B00C7C7
      C700E7E7E700FAFAFA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00EDE4DD00BC9B8A00EAC6BC00DDAA8E0074320D00693E0F005A5416004D6E
      2000468A2F0040A340003BB34A003ABC500037B74C0031B0420034B2450037B3
      480038B3490038B34A0038B74A0036C04E0034C7540032C9550031C7540032C7
      540034C9540035CC560034CA550031C7530032C954002EC9500027C34A0041C7
      610099E1A800E8E7DF00F8E7E700F5EFEE00EFEAE300C1AB9B00FBFBFB00F5F8
      FB00F2F5F800F2F4F500E8E8E800D0D0D000D9D7DA00B5B5B5005F716000395F
      3A00437442005A8C59006D9E69006FA06C006C9C6900598A5600427141003A5E
      3A006D7A6E00C7C7CC00E3E3E400E4E3E300FCFCFC00FEFEFE00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      0000000000000000000000000000C7D7C9000049090000560E0000560E000057
      0E0000570E0000570E0000570E0000580F00005A0F00005A0F00005A0F00005A
      0F00005E11000D84550077BEAB00DCEAE400F9FAFA00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00F9F9F900F9F9F900F9F9F900F8F8F800EAF2EF00B5D2
      C90054947900005F130000560C0000540C0000540C0000540C0000520B000051
      0B0000510B0000500B0000500B00004F0A00004F0A00004D0A0000590F00457F
      5400B6C6BD0000000000000000000000000000000000000000006C78E7001632
      EC000022F5000018F500000CF300000CF400000DF400000DF400000DF400000D
      F400003FFB00002EF2004451EC00BCC4F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE2FC007985F3000018
      EC00006FFF00003CFB000018F8000010F7000010F7000010F7000010F7000010
      F700000FF700000FF700000FF600000FF600000FF600000FF6000010F600001C
      F7000037FA000047FC00004AFC000036F9000018F500000DF400000CF300000C
      F300000CF300000BF2000009F2000009F1000012F400001EF6000F2CEA0098A4
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5D5D500C7C2C300D6CDCF009BA39500034D000001510000044B
      000006450000093D00000B3800000A3A00000841000007460000064B0000034E
      000000470000003A00007EA07A00E2ECDF00FCFDFD00FAFBFB00FCFDFD00FEFE
      FE000000000000000000F6F9F60052855200004D0000005E0000007800000085
      0000008F00000093000000970000009B0000009F000000A2010000A3020000A4
      020000A4020000A3020000A30000216A2300CCD1C900D7D2D400A2A1A100A7A7
      A700DBDBDB00F5F5F500FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00EEEEEE00EEEEEE00EEEF
      EF00E1D7D100B3968500D0B7A900D6A58B00A65E3500AE643D00B36B4500B76C
      4700B5724C00AB825600A58B5A0090864F0080965C0079BC7E005FB66F0047B2
      5E0037B6540031BA510030BF550031C3590035C35A0037C35C0039C35C0038C3
      5B0038C35B0037C15B0039C35C0037C35B002EBF54003FBF60008AD39A00D9E6
      DC00F1E7EF00E7E4E700E1E4E600E1E4E600DFDAD700B7A39300E4E3E000E1E0
      E100E0E0E000DFDFDF00DFDFDF00E0E0E000D6D4D400D4D3D400D3D0D300B6B5
      B7008E958E006F807100617362006574660061736200718072008F959000BDBD
      C100DAD9DC00C7B3A600BDA48F00EFEFEE00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000C7D7C900004C0A00005A0F00005A0F00005B
      0F00005B1000005B1100005B1100005C1100005E1100005E1100005E1100005E
      1100005F110001641A000D7B3500389A6C007CB4A500ADC7B800B2D0BE00B2D0
      BF00B3D0BF00B3D1BF00B3D1C000B3D1C100B3D1C100B3D1C100B3D1C100B3D1
      C100B3D1C100B3D1C100B3D1C100B3D1C100B3D1C100B3D1C000B3D1BF00B2D0
      BF00B2D0BF00B2D0BF00B2CFBE00B1CFBE00B1CFBE0094BCAE0051A382001485
      480009641C00005B0F00005A0F0000570E0000570E0000570E0000560E000055
      0D0000550C0000540C0000540C0000510C0000510B0000500B00005C12004581
      5500B6C6BD0000000000000000000000000000000000000000003F40DF000237
      EF00002DF8000010F400000DF400000DF400000DF500000DF500000FF500001B
      F7000049FB000139EE006C7CEE00F8F9FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8DCFB007581F3000D30EF000067
      FD000042FC00001CF8000014F8000012F8000011F8000011F8000011F7000011
      F7000010F7000010F7000010F7000010F7000010F7000015F8000035FA00004E
      FB000031F6000014EE000010EC000021F300003FFA000022F800000EF400000D
      F400000DF400000CF400000CF300000CF300000DF2000029F8000214EA007F82
      F000F0F2FD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900C6C1C100C3B7BB00C1C0B9004E7344000051000002530000044D
      000006470000094100000B3B00000C3B00000A40000008450000064900000247
      00000030000056814D00C5D5C400EFF2F200EEF1F100F0F3F200F4F6F500F6F8
      F700F9FAFA00FCFDFC00FDFEFD00A7CAA700366A360000490000006D0000007F
      0000008A0000008F0000009100000096000000980000009A0000009C0000009D
      0000009D0000009C000000A10000047404008E978400E2DCDE00AFAFAF009797
      9700CFCFCF00EBEBEB00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2E8E100BF9B8A00DCC1B000E6B09300B0683800AA5F2F00A35827009B4D
      1F00934118008C361100862C0C00781D0100AE6F4A0000000000F4FCF800D3F5
      DD00B0EEC3008FE1A4006FDA8B0055D3780042CC690037CC600031CC5C0034CD
      600036D0620037CF610034CD5E0038CA610072DA8D00D0F2D900FFFBFF00FBF5
      F900F5F5F500F5F5F500F4F4F400F4F5F700F1EBE700C3AA9800F8F5F200F1F2
      F400F2F2F200F2F1F100EFEFEF00EFEFEF00F1F1F100EEEEEE00E7E7E700E3E1
      E300E3E1E300DCD9DC00D3CFD100D3CDD000D0CCCF00D6D0D100DDDADC00D3C3
      B500B7917400AE7A5000C1967800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7D9C90000500B00005E1100005E1100005F
      1200005F1300005F1300005F1300005F13000060130000611300006113000061
      1400006114000062150000671900086E25001877340024843E00258D4300258F
      4500258F4500258F4700258F4700258F4700258F470025904700259047002590
      470025904700259047002590470025904700258F4700258F4700258F4600258F
      4500258F4500258E4500258E4500258E4500258740001E7937000E6D2A000065
      1B00005F1100005E1100005C1100005B1000005B0F00005A0F0000590F000059
      0F0000580E0000560E0000560E0000550E0000550C0000530C00005F13004582
      5600B6C6BD0000000000000000000000000000000000D2D6F8002D34E7000038
      F400002CF800000DF400000EF500000FF500000FF600000FF600000FF700003A
      FB000037F6002D4BEF009EA7F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4D9FB00727EF4001744F2000062FB00004A
      FD000021F9000017F8000016F8000016F8000016F8000015F8000014F8000014
      F8000014F8000012F8000012F8000011F8000018F900003BFB000043F9000C35
      F3003B59F000969FF500A2A8F7002240ED00042DF4000032F9000020F700000E
      F500000DF500000DF400000DF400000DF400000CF4000025F8000015EF005E67
      F000D0D5FA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDF00CDC8C800D0C6CA0098A79200125D0D000059000002550000044F
      000006490000094300000B3D00000C3A00000A3E00000942000006420000002E
      0000375F2800B0C2AF00DCE4E100E1E7E600E3E9E600E6ECE900EAEEED00ECF1
      EF00F0F3F100F3F5F500F8F9F900ECF2EC006A9A6A0005510500005800000075
      000000840000008B0000008E0000009000000092000000940000009500000096
      0000009700000095000000960000008800003D743500C3CCC000CCCACC00A4A3
      A300B6B6B600E1E1E100F9F9F900000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800F8F8F800F8F8F800F8F8
      F800EBE3DC00C0A08E00DAC3B500DAA98D008336120083320E00843210008232
      10008232100082321000823210007A270900AD795600F9F8F800F8F7FB00FEF7
      FB00FFF8FF00FFF8FE00F7F5F700E8F2EB00CDEBD600ABE3BD008DDAA30071CD
      89005EC778004FC9740062CD8100ADE3BD00F4F4F400F9F1F700EFEEEE00EBEB
      ED00EBEBEB00EDEDED00EDEDED00EBEDED00E8E4DF00C0AB9B00EFEDEB00EAEA
      EA00E8EAEA00EAEAEA00E8EAEA00E8E8E800E7E7E800E7E8EA00EAEAEB00EAEB
      ED00E7E8EA00E4E7EA00E6E7E700B59A8B00CFB9AB00D9C6BA00E8DAD000CCAA
      9100AA794F00B3805900C39E8200F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000C7DACA0000550D00006C1A00006C1A00006C
      1A00006C1B00006C1B00006A1900006818000068180000671700006516000065
      16000065160000651600006516000066160000681700006C1900006F1B00006F
      1C00006F1C00006F1C00006F1C00006F1C00006F1C0000701C0000701C000070
      1C0000701C0000701C0000701C00006F1C00006E1C00006E1C00006E1C00006E
      1C00006E1C00006E1C00006D1A00006D1A00006A180000661600006315000061
      14000061140000611300005F1300005F1300005F1200005E1100005D1000005D
      1000005B1000005A1000005A0F0000590F0000590E0000570D00006315004584
      5700B6C6BD00000000000000000000000000000000009BA4F1001F32EC000035
      F6000027F800000EF500000FF600000FF6000010F7000010F7000010F7000055
      FD00002EF1006671F100D7DBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D8FC00707DF5001D51F500005FFA000052FD000028
      FA00001CF900001BF900001BF900001BF900001AF8000019F8000019F8000019
      F8000018F8000017F8000017F800001CF9000040FC00003DF700193CF2006376
      F300C4CCFA00EAECFD00EFF1FD00B0BBF7002533EF00003EF8000030FA00000F
      F600000EF600000EF500000DF500000DF400000DF400001FF700001BF3004354
      F100B4BBF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CAC8C800D0C8CB00C2C2BB0061865B00015A0000005D0000025700000452
      0000064C0000084500000B4000000C3B00000B3C0000083C0000053301001946
      06009BAD9400CED5D200D5DBDB00D5DDDB00D8E0DD00DBE3E000DFE5E400E2E8
      E600E6EAE800E9EDEC00EDF0EF00F6F6F700B8D1B800497B4900004700000068
      0000007B00000085000000890000008C0000008E0000008F0000009000000090
      00000091000000900000008E0000008F00000D6D0B009CAC9700E1D8DD00B4B3
      B3009A9A9A00D8D8D800F3F3F300FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100F1F1F100F1F1F100F1F1
      F200E4DCD400B99B8900D6BDAD00D6A589008638130086351000853510008434
      10008331100082310E00812F0D0077250700A8745000F2F1EF00EDEEEF00EDED
      ED00EDEDED00EDEDEE00EEEDEE00EFEDEF00F4EEF200F8EFF500FBF4FB00E3D9
      D000C9BAA400D4EBE000E1EAE600F5EDF200EBE8EA00E7E7E700E7E8E800E7E8
      EA00E7E8EA00E6E7E800E7E8EA00E7EBEE00E6E3E000BFA99B00EDEEEF00EAED
      EF00EAEDEE00EAEDEE00EBEDED00EAEAE800E7E6E400E3E0DF00E0DCD900DDD6
      D000DACFC600D4C7BC00D4BFB000A57B5E00D0AF9C00D7C0B200E3D3CA00C9A8
      8F00A8774E00AB7A5100BC967A00F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      0000000000000000000000000000C7DBCB00005B1000007B2500007B2400007B
      2400007B2400007A240000782300007722000077220000762100007420000073
      200000721E0000711D00006F1B00006D1A00006C1900006A1900006A1900006A
      1900006A1900006A1900006A1900006A1900006A1900006A1900006A1900006A
      1900006A1900006A1900006A1800006918000069180000691800006918000069
      1800006918000067180000671700006717000067160000661600006516000064
      1600006416000064160000631500006315000063150000611400006113000060
      1300005E1300005E1300005E1200005D1000005B1000005A1000006717004586
      5800B6C6BD00000000000000000000000000000000006C7AEB001439F0000033
      F8000021F8000010F7000010F7000010F7000011F7000012F800001BF800005C
      FD000133EF008691F300F7F8FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3DAFC00707FF6001E57F5000061FB000059FD000031FA000020
      F9000020F9000020F900001FF900001FF900001FF900001EF900001EF900001D
      F900001CF900001CF9000026F9000048FC000041F8001A3EF2006978F300CDD3
      FB00000000000000000000000000F9FAFE004A59EF000847F7000036FA000017
      F8000010F700000FF700000EF600000EF500000EF5000019F7000023F7002744
      F00098A3F4000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200C2BEBE00CFC5CA009FB19800296F220000600000005F0000025900000454
      0000064F0000084900000A4300000C3C00000B35000006320000133C0C007792
      6900C3C9C600C6CCCB00C6CECC00C9D2D000CDD6D300D1D9D600D4DCDA00D7DF
      DC00DBE2DF00DEE5E300E1E7E500E8ECEB00E4EAE6008DAB8E00195719000050
      000000700000008000000086000000890000008B0000008C0000008C0000008B
      0000008B0000008B000000890000008B00000075000063885E00CECCC900C3C2
      C20095959500CCCCCC00EBEBEB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5EDE400C6A49000E7CCB900E7AF8F0087310D00872F0A00862F0B00852D
      0A00842C0900822A080082290800771F0000AF784F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EA
      E300E6CAB70000000000000000000000000000000000FCFFFF00FBFBFB00FBF7
      F400F8F2ED00F2EDE600EFE6DC00EEDFD400E7D0BF00C1A08700E0C6B300DABC
      AA00D4B39F00CCAA9400C6A38B00C49E8500C3998100BD947B00B7907800B790
      7800B98F7900B7917A00B7917A00A97A5900E0BDAB00E4CCBD00F4E4DA00D6B2
      9600AB784D00B07B5000C49B7E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7DBCB000060130000822B00008229000082
      2900008229000081290000812900008129000081290000812900008027000080
      2700007E2600007C2500007A230000782200007620000074200000731F000071
      1D00006F1C00006E1B00006E1B00006E1B00006E1B00006E1B00006E1B00006E
      1B00006E1B00006D1B00006D1A00006D1A00006D1A00006D1900006D1900006D
      1900006D1900006A1900006A1900006A1900006A180000691800006817000068
      1700006817000066170000661600006616000065160000641600006415000063
      150000621400006214000060140000601200005E1200005E1200006B19004588
      5800B6C6BD00000000000000000000000000000000004F61E9000D46F3000032
      F900001CF8000011F7000012F7000012F7000013F7000015F8000033FA000056
      FC00194AF0009EAAF60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7DDFC007281F6001D57F6000065FB000060FE000039FB000027F9000027
      F9000027F9000026F9000025F9000025F9000025F9000024F9000022F9000022
      F9000023F900002CFA000050FC00004CFA00193FF3006A79F400CAD0FB000000
      0000000000000000000000000000000000007587F3001A4CF6000037F9000023
      F9000010F700000FF700000FF600000FF600000FF6000014F700002EF9000D34
      F0007E8BF3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDDC
      DC00CDC7C800CCC4C600799B7300086604000066000000610000025C00000457
      000006510000084C00000A4500000B3B0000092E000013340C0053714800B7BB
      B900B6B9BB00B5BBB800B8BFBD00BCC4C200C0C9C600C5CCCA00C8D0CE00CCD5
      D100D0D8D600D4DCD900D7DFDC00DBE1DF00E5E8E800BFD0C1005A885B000045
      0000006000000078000000820000008700000089000000890000008900000088
      0000008800000087000000870000008700000080000028712500A6B8A300D3CF
      D200A4A3A300B7B7B700E3E3E300FAFAFA000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400F4F4F400F4F4F400F4F4
      F400E8DFD900C3A49400DCC4B500DDAD90008E411A008C3D16008B3D1700893A
      160086371300843612008332110079270900AE7B5A00F8FBFE00F7F9FC00F5F5
      F500F4F2EF00F2EEEA00F2EAE700EEE6DF00EAE1D700E6DCD000E4D7CD00DDC1
      AF00D0AE9600DCC7B700D9BDAB00D6B6A400D1B09E00CCAB9600C6A69000C6A4
      8D00C3A08A00C09E8900C09C8600C09C8500C19B8200B78F7500BF9F8900C1A4
      8F00C7AA9800CCB0A000CFB7A900D3BFB000D9C7BA00DFD0C400E0D9CF00E4DC
      D600E6DFDC00E8E6E600EEEDEB00B2907A00D3B3A500DAC4B900E7D9D000CDAD
      9600AB7E5500B0805900BF9A8000F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F4000000000000000000000000000000
      0000000000000000000000000000C7DCCB000063150000832D0000832B000083
      2B0000822B0000822B0000822B0000822B0000822B0000822B00008229000082
      29000081290000812900008129000081290000802700007F2700007D2600007B
      2300007721000075200000741F0000731E0000721D0000711D0000711D000071
      1D0000711D0000701D0000701D0000701D0000701D0000701C0000701B000070
      1B00006F1B00006D1B00006D1B00006D1B00006D1B00006C1A00006C1900006C
      1900006B19000069190000691900006918000068170000681700006717000067
      1700006616000065160000631600006315000062140000621400006F1C004589
      5A00B6C6BD00000000000000000000000000000000003746E7000750F6000033
      F9000018F8000013F7000015F8000016F8000017F8000019F800004AFC00004D
      FA003F65F300B8C0F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFCFF00DDE2
      FD007485F7001751F600006FFC000066FE000040FC00002EFA00002EFA00002E
      FA00002EFA00002DFA00002DFA00002DFA00002CF900002AF9000028F900002A
      F9000034FA000055FD00005BFB00163BF4006879F500CDD3FB00000000000000
      000000000000000000000000000000000000A3AFF7002E4EF500003AF9000030
      FA000012F7000012F7000011F7000010F700000FF7000011F7000038FB000028
      F1007177F2000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CAC8
      C800DBD4D600BCBFB7005487510000670000006A00000064000002600000035A
      000005540000074E0000094800000839000012330B0043583A009EA79800ABAA
      B000A4A5A500A7ABA900ABAFAE00AFB4B300B2B8B700BABFBE00C3C9C800C4CB
      C900C3CAC800C8D0CE00CCD4D100D0D8D500D5DBDA00DAE0DE00A2BBA4002161
      210000480000006B0000007B0000008400000087000000870000008700000087
      00000087000000860000008500000085000000870000056E040085A48100DED4
      DA00B9B7B7009D9D9D00DDDDDD00F7F7F700FEFEFE0000000000000000000000
      000000000000000000000000000000000000F4F4F400F4F4F400F4F4F400F5F5
      F500E7DFD700C0A18E00DCC3B200DDAA8C008D4017009042180095481D009A4E
      22009E542600A35B2D00A8613500A9613500C68C6700DDBAA300D4B39C00D7AE
      9500D6AB9000D1A88D00CFA58A00CFA68B00CFA88D00CFA98F00CCAB9500CDA6
      8E00CCA38700D7BCA900D7C0AE00DCC6B600E0CCBD00E4D4C700E6DCD000EAE0
      D700EBE4DF00EEE8E600EFEEED00F1F1F100EDE8E300C6AF9F00F4F4F400EFF2
      F400EEF1F200EDEFF200EDEFF200EBEEF100E8EBEE00E7EAEB00E7E8EA00E7E8
      EA00E4E6E700E3E4E700E7E6E300AF8A7300D1B2A000DAC0B600E7D7D100CCA9
      9100A6744A00AB784E00BC947700F5F5F500F4F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F4000000000000000000000000000000
      0000000000000000000000000000C7DCCC000064170000842F0000842D000084
      2D0000832D0000832D0000832D0000832D0000832C0000822B0000822B000082
      2B0000822B0000822B0000822B0000822A000082290000822900008029000080
      29000080290000802700007E2500007B2300007822000075200000741F000073
      1F0000731E0000731E0000731E0000731E0000731E0000731E0000731E000072
      1E0000711D0000711C0000711C0000711C0000711C0000701C0000701C00006F
      1B00006E1A00006D1A00006D1A00006D1A00006C1900006C1900006A18000069
      180000691800006918000067170000661700006616000065150000731D00458A
      5B00B6C6BD00000000000000000000000000000000001D1DE4000057F8000036
      FA000018F8000017F8000019F800001AF800001CF800001EF8000058FD000043
      F8005976F400C9D0FA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFBFF00DCE2FC00798A
      F7000E41F500007FFD00006CFF000045FD000035FB000035FB000035FB000035
      FB000035FB000035FB000035FB000034FB000033FA000031FA000033FA00003D
      FB000057FC00006EFC001032F3006376F600D3D8FC0000000000000000000000
      000000000000000000000000000000000000C2CBFA003B51F500003EF900003B
      FB000016F8000016F8000014F8000012F7000011F7000010F700003EFC000026
      F1007171F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00C0BB
      BB00DBD3D6009EB29800327C2F00006D0000006C00000066000002620000035C
      00000558000007520000084800000D3C040038522E008C948300ADABB2009798
      98009B9C9C009E9F9F00A0A1A100A2A4A400A7AAAB00AFB3B100B3BCB300B6BF
      B900B6BBBB00BBC2BF00BFC7C400C3CBC800C7CFCC00D0D7D500C3D0C700759B
      7500073E060000560000006F0000007D00000083000000860000008600000085
      00000085000000850000008300000082000000840000006F0000688C6200D4CA
      CD00C9C7C8008C8B8B00D8D8D800F3F3F300FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5EEE600CAAB9600E7CDBA00F2C09F00D38B5E00D68C6000D48B5F00CF85
      5900C97F5100C37A4D00BD744500AE643200CD8E6900F2DFCC00F2E4D400F7EA
      DC00FBEFE400FEF5EE00FEF9F500FEFBF800FFFEFB000000000000000000F8EE
      E400E8D1BC0000000000000000000000000000000000FEFFFF00FCFEFF00FEFE
      FF00FBFEFE00F9FBFC00F9F9FB00F9FBFE00F7F2EE00CFB6A500FBF8F700F7F7
      F800F7F7F700F7F5F500F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400F2F4F400F5F4F100BA917A00DFBDA900E6CFC000F4E7DF00D7B2
      9900AD774D00AF7B4F00C19A7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7DDCC000066180000852F0000852F000085
      2F0000852F0000852F0000852F0000842F0000842E0000842C0000842C000083
      2C0000832C0000832C0000832C0000832C0000822B0000822B0000822B000082
      2B0000822B0000822900008128000080280000802800007E2600007D24000079
      22000077200000771F0000761F0000761F0000761F0000761F0000751F000074
      1F0000741F0000741E0000741E0000741E0000731E0000721E0000721E000071
      1D0000701C0000701C0000701C00006F1C00006F1C00006F1B00006D1A00006C
      1A00006C1A00006B1A00006B180000681800006818000067170000751F00458C
      5C00B6C6BD00000000000000000000000000000000001D1DE4000061F800003B
      FA00001AF800001CF800001EF800001FF9000020F9000022F9000070FE000030
      F3007E8CF600E2E5FC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFF00DCE2FC007A8FF700012E
      F3000090FE000071FF00004AFD00003DFC00003DFC00003DFC00003DFC00003D
      FC00003DFC00003DFC00003BFC00003AFB00003AFB00003BFB000044FC00005F
      FD000178FD000A24F3005C73F600DDE2FD000000000000000000000000000000
      000000000000000000000000000000000000CED4FB004153F5000042F9000043
      FC00001AF8000019F8000017F8000015F8000013F8000011F700003FFC000028
      F2006E6FF300FAFBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F100C1BB
      BB00D9CED30080A87B00187B140000770000006F000000690000026400000360
      0000065C000008560000064700002854190077896400B1B0B500969898009A9C
      9C009A9C9C009A9C9C009B9C9C009A9C9C00A5A6A700909D8E00587D4D0083A0
      7C00B6B5BB00ADB1B100B1B6B500B5BCB900B9C1BE00BDC5C200CACFCE00B7C5
      BA002E6D2B0000370000005D000000720000007D000000810000008200000082
      0000008100000081000000800000007F0000007D00000071000041773B00B2B6
      AC00D6D2D50092909000D1D1D100EEEEEE00FCFCFC0000000000000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00EFEFEF00F1F1
      F100E6DFD700C4A89500DCC4B300DFB094009850240091471D008E421A008C40
      19008A3D170087381500853713007C2C0B00B27F5E00F5F7F900F2F5F800F1F2
      F500EFF2F400EFF1F200EFF1F200EEEFF100EDEDEE00EBEDED00EEEFF100E4DA
      D100D9C3B000EEF1F100EBEBEB00EBEBEB00EBEBEB00EAEAEB00E8E8E800E7E8
      E800E7E8E800E8E8E800E7E7E700E7E8E800E6E1DD00C6B2A100EAE7E600E4E4
      E400E6E4E400E6E6E600E4E4E400E3E3E300E3E3E300E4E4E400E3E3E300E3E3
      E300E3E3E300E3E3E400E7E4E100B6937C00D4B5A400D9C4B600E6DAD000CCAB
      9500AA795300AB7C5500BA967A00F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF000000000000000000000000000000
      0000000000000000000000000000C7DDCC000069180000873000008730000085
      3000008530000085300000853000008530000085300000852F0000852F000085
      2F0000852F0000842F0000842F0000842E0000842C0000832C0000832C000083
      2C0000832B0000822B0000822B0000822B0000822B0000822A00008228000080
      2800007F2700007C2300007A2100007921000079210000792100007821000078
      210000782100007821000078210000761F0000761F0000761F0000761F000075
      1F0000741F0000741E0000741E0000721E0000721E0000711E0000701D000070
      1C0000701C00006F1C00006F1A00006C1A00006C1A00006B180000772100458D
      5C00B6C6BD00000000000000000000000000000000001D1DE6000065F900003F
      FB00001EF9000020F9000022F9000023F9000026F900002AF9000076FE000033
      F4007E8EF600E2E6FC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEE3FD00798CF700002EF50000AA
      FF000074FF00004DFD000044FC000044FC000044FC000044FC000044FC000044
      FC000042FC000042FC000042FC000042FC000042FC00004BFD00006DFE00007F
      FD000926F400556DF500ECEEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000DADFFC004656F5000049F900004D
      FC00001EF900001DF900001BF8000019F8000017F8000015F800003AFB00002B
      F5005461F300D4DAFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00D1CA
      CB00D6CACF00659F6100047E0300017F000002780000006E0000016800000364
      000006610000085A00000A5200004A763F009CA496009F9CA2009A9A9A009A9A
      9A009A9C9C009A9C9C0097999900A6A3A80099A29700506F4A00083603003572
      2100BABBBE00A0A3A400A2A6A600A7ABAB00ACB0B000B0B5B400B7BCBC00C0C5
      C600A5B8A700013F0100004700000062000000720000007A0000007D0000007D
      0000007D0000007D0000007C0000007B00000079000000730000256D1E0096A8
      8E00DCD5D9009E9A9A00C4C4C400E9E9E900FBFBFB0000000000000000000000
      000000000000000000000000000000000000F9F9F900F9F9F900F9F9F900F9F9
      F900EDE4DF00CAA89400E3C9B700E3AF8F008E3A11008C360E008C370F008B36
      0E008A340E0089320E0087310D007E250600B57C5600F9F9F900F8F9F900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5F500F7F8F900EBE1
      D700E0C7B300F8F9F900F4F4F400F2F4F400F4F4F400F4F4F400F4F4F400F1F1
      F100EFF1F100F1F1F100EFF1F100EFF1F200EEE8E300CAB3A100F2F2EF00EEEE
      EF00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EAEAEA00E8EAEB00EDEDEA00B7907800D9B6A400DFC6B700EEE0D700CFAB
      9300A5714500A9734700B9917300F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F9000000000000000000000000000000
      0000000000000000000000000000C7DECC00006A1A0000883300008833000088
      3300008833000087330000873300008732000087300000873000008730000085
      3000008530000085300000852F0000852F0000852F0000852F0000852F000084
      2F0000842C0000842C0000832C0000832C0000832C0000832C0000822B000082
      2B0000822B0000812A00007F2800007E2500007D2400007C2300007C2300007C
      2300007C2300007C230000792300007923000079220000792100007921000078
      2100007821000078210000761F0000761F0000761F0000751F0000741E000073
      1E0000721E0000721E0000721E0000701C0000701C00006F1C00007A2300458D
      5D00B6C6BD00000000000000000000000000000000001D1DE7000069F9000044
      FB000023F9000026F9000029F9000029FA00002BFA00002EFA00007BFE000037
      F5007E8FF700E2E6FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000D8DEFC007588F8000D49F600009CFE00007B
      FF000053FD00004AFD000049FD000049FD000049FD000049FD000049FD000049
      FD000049FD000049FD000049FD000049FC000053FD000076FE000075FC001039
      F6005D73F800EBEEFE00FDFDFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFF00545AF400004BF8000058
      FC000023F9000022F9000020F900001EF900001CF900001AF800003EFC00002F
      F7005462F500D4DAFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D1D100E1DA
      DC00C4C4BE0050974D000082000002840000047E000005790000047000000469
      000006650000085E0000135D020057804800A0A39E0098969A00979797009797
      97009A9A9A0098989800A19EA300A2A69E00627F5A000F490800044A0000125C
      0D0079A07000AAA7AC009E9EA1009B9E9E00A0A1A100A3A5A500A6A9A900B0B1
      B200BCBEBF00658C64000C360C00004C00000064000000710000007600000078
      00000079000000790000007700000076000000740000007100000D6708007A9C
      7200DFD4DA00AFABAB00B1B1B100E5E5E500F9F9F900FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5EDE700D3B09B00EDD1C100EDB9990096451800953F140094401500913F
      1400913D13008F3B12008E391300842D0A00BF85600000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EA
      E000E8D1BD0000000000FEFEFE00FCFCFC00FCFCFC00FCFCFB00FCFCFC00FBFC
      FC00F9F9F900F8F9F900F8F9F900F8FBFC00F7F2EE00D3BDAB00FBFBFB00F8FB
      FC00F8F9FB00F7F9FB00F7F9FB00F8FBFC00F8FBFE00F8FBFE00F8FBFE00F9FB
      FE00F8FCFE00F7FCFF00FCFEFE00C19A8200E0BFAA00E7D0C100F7E8E300D6B3
      9B00AA774A00AE784D00C0967A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7DECC00006C1B0000893500008835000088
      3500008835000088350000883500008834000088320000883200008832000087
      3200008732000087310000873000008730000086300000853000008530000085
      300000852E0000852E0000852E0000842E0000842E0000842C0000842C000083
      2C0000832C0000822B0000822B0000812A0000802800007F2700007E2500007E
      2500007E2500007E2500007C2500007C2500007C2400007C2300007C2300007B
      2300007B2300007B230000782200007821000078210000772100007720000076
      200000751F0000751F0000741F0000731E0000721E0000711E00007C2600458F
      5F00B6C6BD00000000000000000000000000000000001D1DE900006EF900004A
      FC000029FA00002CFA00002FFA000032FB000034FB000037FB000081FF00003A
      F6007E90F800E2E6FD0000000000000000000000000000000000000000000000
      00000000000000000000D4DAFD007286F800175DF8000092FD000080FF000057
      FE000051FE00004FFE00004FFE00004FFE00004FFE00004FFE00004FFE00004F
      FE00004FFE00004FFE00004EFE000059FE00007FFF000072FC001649F8006279
      F800DEE3FD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E6FD004A58F6000050FA00005A
      FD000029FA000028FA000024F9000022F9000020F900001EF9000044FC000033
      F7005464F600D4DAFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7C6C600E7DF
      E300AEBEA8003D963C00018A0000038A000006840100087F0200097A02000B74
      02000B6D00000A6600001061000054844600A6ACA100A39FA6009A9B9B009799
      9900979797009A979A00A9A8A80072876400275617000C4B0000115B01000C5D
      0200287118009CAC9900A19FA3009C9B9E009B9D9D009C9E9E009E9E9E00A0A1
      A200A7A8AB00B3B7B60033622E00083A0600004E000000640000006E00000072
      000000730000007300000071000000700000006E0000006E0000036201006891
      6400DCD1D600BEBABA009D9D9D00E3E3E300F7F7F700FEFEFE00000000000000
      000000000000000000000000000000000000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E4DDD600C9A99800DDC4B700DFAF9400964C1F0095471D0094471D009347
      1D0093461B0091431A008F421A0086381300B7846200F1EFEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00EDEDED00EDEDEE00EDEDEE00EDEEEE00EEEFF100E6DC
      D600DCC6B500EFF2F400EDEEF100EDEFF200EDF1F200EBEFF200EDF1F400EDF1
      F200EEEFF100EDEEEE00EBEDED00EBEDEB00EAE3DD00CAB3A000E7E1DD00E1DD
      D900E1D9D300E0D3C900DCCCC000D9C4B600D6BFAF00D3B9A600CDB2A000C9AD
      9A00C4A89400BFA38F00BD9E8900B58A6D00D4B9A800D9C1B500E6D9D300CAAB
      9400A6754D00A9784E00B7907500EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000C7DFCC00006D1B00008A3600008936000089
      3600008936000089360000893600008935000089340000893400008834000088
      3400008834000088330000883200008832000087320000873200008632000086
      30000086300000853000008530000085300000852F0000852E0000852E000084
      2E0000842E0000832C0000832C0000832C0000822B0000822B00008129000081
      2800007F2600007F2600007E2600007E2600007E2600007E2600007E2500007D
      2400007D2400007D2400007C2400007C2400007B2200007B2200007922000078
      22000078210000782000007720000077200000751F0000751F00007E2700458F
      5F00B6C6BD00000000000000000000000000000000001D1DEA000072FA00004F
      FC00002FFB000032FB000035FB000038FC00003AFC00003EFC000088FF00003D
      F6007E91F800E2E6FD0000000000000000000000000000000000000000000000
      000000000000D3DAFC007086F9001D6AF900008CFD000088FF000060FE000053
      FE000054FE000056FE000056FE000056FE000056FE000056FE000056FE000056
      FE000054FE000054FE00005EFF000085FF000070FC001954F800677EF900D3D9
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1D8FC00425AF8000052FB00005B
      FD000032FB00002FFB00002CFA000029FA000024F9000022F900004FFD000034
      F600676FF600F1F3FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C1C100EAE0
      E5009CB89800319730000293010004900100078A02000B8503000E810500137E
      0500187A06001A730500156903003E7B2C0091A68500C0BCC200ACAAAF00A4A4
      A700A3A2A700B0ADB10088927A0040612B00194D03001C5A03001D6203001763
      02000C5D0100618D5000A1A69F009F9EA100999A9B009A9C9C009B9C9C009B9C
      9D009D9E9F00ACA9B0008A9B88001F4E1D00013D00000051000000640000006B
      0000006D0000006E0000006D0000006C0000006A0000006A0000005E00005B84
      5800D3C7CC00C9C6C60090909000E2E2E200F6F6F600FEFEFE00000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F1E8E300D3AF9B00E8CFBF00EAB39400953E130091390F0090380F008F37
      0E008D350C008A320B00872F09007C220200BA80590000000000000000000000
      00000000000000000000FEFFFE00FCFCFB00FCFBF900FCF8F500FBF5F100EFE0
      D000E4C6AD00F2E8DF00EFE0D300EEDACA00EBD4C100E7CFBA00E3C7B300E3C3
      AB00E0BDA600DCB7A000D7B29900D3AD9300D4A98D00CC9B7B00D1A88B00CDA4
      8900CAA48700CDA48B00CDA58C00CFA68F00CDA89000CDAA9400D1AF9900D4B3
      9F00D7B7A500D9BFAD00DCC6B200BC907300DFBDA900E3C9BC00F2E7DF00D1AF
      9600A56E4100A9714300B98F6F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000C7DFCD00006F1C00008B3800008B3800008B
      3800008A3800008A3800008A3700008A3600008A3600008A3600008936000089
      3600008935000089350000893400008934000088340000883400008834000088
      3200008832000087320000863200008631000086300000863000008530000085
      30000085300000852E0000842E0000842E0000842D0000842C0000832C000083
      2B0000822A0000812900008128000081280000802800007F2800007F2700007F
      2700007F2600007E2600007E2600007E2600007D2500007D2500007C2400007B
      2400007B2300007B2200007A2200007922000078210000782000008029004590
      6000B6C6BD00000000000000000000000000000000001D27EB000074FA000058
      FD000039FC00003AFC00003DFC00003EFC000040FC000044FC000080FF000053
      FA006385F900D0D7FC0000000000000000000000000000000000000000000000
      0000D3DBFC007087F9001E71F900008BFD00008DFF000067FE00005AFE00005A
      FF00005AFF00005BFF00005BFF00005BFF00005BFF00005BFF00005BFF00005B
      FF00005AFF000065FF00008DFF000077FC001A5AF9006981F900CDD5FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5CFFC003D5EF9000057FC00005D
      FE000038FC000035FB000033FB000030FB00002BFA000029FA000057FD000036
      F6007175F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C1C100EBDF
      E5008FB38C0029992800039A0200079704000A9205000E8D0600138908001A86
      0A0022840D0028800F0027790F00317819005E8D48009FB29500B3B9B000B0B4
      AE00AAAFA600919A8200556D39002F550F002A5A07002D640800296707002367
      050015600200266A1500819E7900A0A39F009D9C9E00999A9A009A9B9B009A9C
      9C009A9C9C009B9B9E00ADABAE00638160001A441900003D0000005400000062
      0000006700000069000000680000006700000066000000650000005A00005079
      4B00C6BDBE00D0CDCF008B8B8B00E2E2E200F6F6F600FEFEFE00000000000000
      0000000000000000000000000000FFFEFD00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F4EBE400D7B5A000EBD3C400EBBA9B009C4E1F009E4C1F009B5021009F54
      2400A3592800A85F2E00AB643200AB623200D4997400F4DCCA00EDD6C100EAD0
      B900E8CAB200E8C7AE00EAC4A800E6C0A400E1BA9F00E1B99C00E1B99E00E3B5
      9800E3AF9100DFB9A000DFBAA000E1BDA400E4C0A600E4C3AB00E1C7AF00E4CC
      B500E7D0BC00EBD4C300EEDACD00EDE0D600EDDDCF00D7BAA400F5EBE300F7EF
      EA00F7F4EE00F7F4F100F8F7F500F9F8F800F9F9FB00F7F9FC00F7F9FC00F7F9
      FC00F7F9FB00F5F8FC00F9FBF900C6A08900E0C0AD00E4CDBF00F4EAE100D4B3
      9B00AB744C00AE784D00BD957700FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000C7DFCD0000701D00008C3900008C3900008B
      3900008B3900008B3900008B3800008A3800008A3800008A3800008A3800008A
      3800008936000089360000893600008936000089360000883600008835000088
      3400008834000088340000873400008732000087310000873100008631000086
      31000086300000862F0000852F0000842F0000842E0000842D0000842D000084
      2D0000832D0000832B0000822A00008229000081290000812900008129000081
      2900008028000080270000802700007F2700007F2700007E2600007E2600007E
      2600007E2500007D2500007D2400007B2400007B2400007A220000812C004590
      6200B6C6BD00000000000000000000000000000000002E44EF000472FB000060
      FD000045FC000040FC000043FC000045FC000047FC000049FC000075FF00006D
      FE004477F900BBC5FB000000000000000000000000000000000000000000D7DE
      FD007289F9001D70FA000090FD000093FF00006DFF00005EFE00005FFE00005F
      FF000060FF000060FF000060FF000060FF000060FF000060FF000060FF000061
      FF000069FF000091FF000082FD00195CF9006A83FA00CAD3FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACBAFB003265FA00005EFD00005D
      FE00003FFC00003CFB00003AFB000036FB000032FA000035FB00005DFD00003C
      F700717AF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7C2C200EADF
      E50087B08400249B230004A00300099F08000D9A090012960B001A920E00218F
      1100298D1500318B1A0038881E003A821D00438126006290480083A16E00869D
      72007B936300597336003F5F18003D5F1000406712003C691000366A0D002F69
      0A0027670600145F01004981360091A28900A2A1A30099989A00999A9A009A9B
      9B009A9B9B00989A9A00A29FA3009FA59E00506A4D00123B1000003D00000054
      0000005F00000063000000640000006300000062000000610000005700004771
      4100BAB6B100D6D1D4008B8B8B00E2E2E200F6F6F600FEFEFE00000000000000
      0000000000000000000000000000FEFBF900EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E6DDD700CCAD9A00DDC4B500E6BA9E00D7936B00D6936800D0916800CC8D
      6500C7895F00C3845A00C0815600B6784C00CF997700E6CDBC00E6D1C000E8D4
      C400EAD7CA00EADACD00EBDDD100EBE0D600EBE3DA00EAE4DD00EDE8E400E7DA
      CF00E0C9B600F1F2F400EEF1F200EEF1F100EEF1F100EEF1F200EEF2F400EEF1
      F400EDEFF200EDEEF100EBEEF100EBEEF100E8E7E400CDB9A900EAEAEA00E6E8
      EA00E6E7E800E6E7E700E4E6E600E4E6E600E4E6E600E4E4E400E3E3E300E3E3
      E300E3E3E300E1E3E400E6E4E100BF9A8300D3B6A400D7C1B500E7DCD400C9AA
      9400A36F4900A5724A00B38D7200EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000C7E0CD0000721F00008D3B00008D3B00008C
      3B00008C3A00008C3900008C3900008C3900008C3900008C3900008B3900008B
      3900008A3800008A3800008A3800008A3800008A380000893700008835000087
      320000842F0000842F0000842F0000842E0000842E0000832E0000832E000082
      2E0000822B0000822B0000812B0000812B0000802A0000802A0000802A000080
      2A00007F2A00007F2700007E2700007F280000812A0000822B0000832B000082
      2B0000822B000082290000822900008129000081290000802800008028000080
      2700007F2700007F2700007F2600007E2600007E2600007D240000832F004590
      6400B6C6BD00000000000000000000000000000000004A64F2000C6CFC000066
      FE000051FD000046FC000048FC00004AFC00004CFD00004FFD00006EFF000086
      FF002669F800A7B4FB00000000000000000000000000FBFCFF00DDE3FD00748C
      F9001768F9000098FD000098FF000074FF000063FF000064FF000064FF000064
      FF000066FF000066FF000066FF000066FF000066FF000066FF000068FF000071
      FF000093FF000092FE001656FA006882FA00CDD5FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C93FA001D69FB000068FE00005B
      FE000045FC000043FC000041FC00003CFC000039FB000042FC00005FFE000849
      F800798AF8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9C5C500E8DE
      E40083B18100239E220006A506000CA50B0011A20D00189E1100219B16002999
      1A00319720003A95250043942B004A9230004C8E31004C862D0051833000537F
      31004B742700486E20004F6E2200516F22004E6E1F004A6E1B00436D15003C6C
      1000336B0B0025650600206405006A8E58009CA29800A09CA100979797009999
      9900999999009999990097989700A9A6AB008D988B00405A3B0008310600003E
      000000530000005C0000005E0000005E0000005D0000005C000000530000406B
      3A00B2B0A800DAD5D6008E8D8D00E2E2E200F6F6F600FEFEFE00000000000000
      0000000000000000000000000000FCF7F3000000000000000000000000000000
      0000F5EEE700DAB7A100EED4C300EFBC9A00A44F1F009F4718009B421600993F
      1300953D11008F380F008E350C0082250400C1855F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8EE
      E600EED7C300000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FBFBFB00FCFCFE00F9F5EF00D9C4B000FCFCF900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F7F7F700F7F7F700F4F4
      F400F4F4F400F4F4F500F8F7F400C9A08500E1C1AA00E4CFBF00F8EDE700D4AF
      9900A36B3F00A66D4100B78D6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7E0CD0000732000008E3D00008E3D00008E
      3D00008D3B00008D3B00008D3B00008D3B00008D3B00008D3B00008C3B00008B
      3900008B3900008B3900008B3900008B3900008A380000873500028434001488
      4100218840002488410024884100238741002386400023844000228440002284
      400023833E0023843E0023843F0023843F0023843F0024843E0024843E002484
      3E0024833E0024823D0023823D0015823A000681310000812C0000832B000083
      2D0000832D0000832D0000822B0000822B0000822B0000822B00008229000081
      290000802900008029000080280000802700007F2700007E2600008533004591
      6500B6C6BD00000000000000000000000000000000006176F4001163FA00006C
      FE00005CFE00004CFD00004EFD000050FD000052FE000055FE000064FF0000A1
      FF000157F7008699FA00F7F8FF0000000000FAFBFF00DCE2FD00798FF9000E58
      F90000A7FD00009BFF000077FF000068FF000069FF00006AFF00006AFF00006A
      FF00006AFF00006AFF00006BFF00006CFF00006CFF00006EFF000079FF000094
      FF0000A8FE00104DFB00637FFA00D3DAFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFF004664F900066DFC000074FF000059
      FE00004BFD000048FC000045FC000043FC000041FC00004FFD00005AFE001F5B
      F90090A3F9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCC7C700E9DE
      E50084B3820024A1240009A90A0011AA100017A9140020A6190029A51F0030A3
      25003AA22B0043A132004CA0390053A04000599E44005F9D480063994A006495
      490066914900658D460064853F00607E38005C78300056742900507221004870
      19003E6D1200366A0D00205F0400376D1D007F977200A8A8A6009D9C9D009999
      980098989800989898009999990098979800ABA9AD007A8C75002B4B24000229
      0000003F00000050000000570000005800000058000000570000004F00003E67
      3800AFADA400DBD6D7008F8E8E00E3E3E300F7F7F700FEFEFE00000000000000
      0000000000000000000000000000FAF1EB00F9F9F900F9F9F900F9F9F900F9F9
      F900F1E8E100D9B9A500EAD3C400E8B99B00A0512100A04E1E009F4E1F009E4C
      1F009E4A1E009B4A1D0098491D00903E1500C68E6B00F9F9F900F9F9F900F8F9
      F900F9F9F900F9F9F800F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F2E8
      E000EAD4C100F9F9F900F8F7F800F7F8F800F8F8F800F7F7F700F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F4F5F500F2EEEA00D9C3B200F7F5F400F2F2
      F400F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EEEEEE00EDEDEE00F1EFEE00CCA48C00DFC0AD00E0CCBD00F1E8E100D0B2
      9B00A6734A00A9744D00B9907700F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F9000000000000000000000000000000
      0000000000000000000000000000C7E0CE0000752200008E3F00008E3F00008E
      3D00008E3D00008E3D00008E3D00008E3D00008E3D00008E3D00008E3D00008D
      3A00008D3A00008D3A00008D3A00008B3900028736000B83360022864A006DA6
      9A009EB4AB00A8B8B100A7B6B000A5B4AD00A3B1AB00A0AEA8009FACA7009FAC
      A700A0AFA800A1B0A900A4B2AB00A4B5AC00A6B7AE00A7BAB000A8BCB100A8BC
      B100A8BCB100A7BBB000A6B9AE006BA697002E8F5F000C803700027F2C000084
      2E0000852F0000842F0000842C0000842C0000832C0000832C0000832B000083
      2B0000822B0000822B0000822B00008228000080280000802800008637004592
      6700B6C6BD00000000000000000000000000000000008D9CF7001C59F8000074
      FD000069FE000050FD000053FE000055FE000057FE000059FE00005BFE0000A6
      FF00005AF9005F79F900CED6FD00F6F8FF00D9E0FD007A93FA000142F90000BC
      FE00009EFF000078FF00006CFF00006DFF00006EFF00006EFF000070FF000070
      FF000070FF000070FF000070FF000070FF000071FF00007CFF00009BFF0001B2
      FF000A40FB005C7BFA00DDE4FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9EDFF003349F9000079FC00007CFE000055
      FE000051FE00004EFD00004BFD000048FC000045FC00005FFE000053FD003C69
      FA00ADB9FB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDC9C900EAE0
      E6008AB787002AA42A000EAC0E0017AF17001DB01D0026AF23002FAE29003AAB
      300043AB39004CAB400055AB47005DAB4E0063AC530068AC57006EAB5A0072AA
      5C0074A65E0075A45C00749C5A00729454006E8B4C00678241005F7B34005575
      27004B701D00416C130035680C00205C04004B7C360095A88B00B5B2B600A2A2
      A1009F9E9E009C9C9C0098989800979897009A999B00A8A9A90070856C00133A
      0D0000230000003F0000004D0000015200000153000000520000004900004266
      3B00B4B0A800D9D4D6008E8D8D00E4E4E400F7F7F700FEFEFE00000000000000
      0000000000000000000000000000F9ECE600EFEFEF00EFEFEF00EFEFEF00EFF1
      F100E8E0D900D3B3A000E3CABD00E1B095009F4F20009F4C1D009C4C1D009B49
      1D0099471C0099461A0096461A008C3A1300C08A6600F2F1F100EFEFF100EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFF1F100EAE0
      D700E3CDB900EFF1F100EEEEEE00EDEEEE00EEEEEE00EEEEEE00EDEDEE00EBEB
      ED00EBEBED00EBEBED00EBEDED00EBEDEE00EAE6E300D1BDAD00EEEDED00EBEB
      EE00EAEBED00EAEAEB00E8EAEB00E8EBED00EAEBEE00E8EBED00E8EBEE00E8ED
      EE00EAEDEF00E8EDEF00EDEEEE00C6A18900D7B6A500D9C1B300E8E1DA00C7A9
      93009F694100A16C4200AF8A6D00F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF000000000000000000000000000000
      0000000000000000000000000000C7E0CE000075220000904100008F3F00008F
      3F00008F3F00008F3F00008F3F00008F3F00008E3F00008E3F00008E3D00008E
      3D00008E3D00008E3D00008E3D00008632001687460065AB9D00DCE7E400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD006EAD9D00158351000079
      240000873000008530000085300000852F0000852F0000852F0000842F000084
      2E0000842C0000832C0000832C0000822B0000822B0000822B0000883B004593
      6A00B6C6BD0000000000000000000000000000000000C5CDFB002A4DF700007C
      FC000079FE000057FE000059FE00005BFE00005DFE00005FFF000061FF00008F
      FF000090FF000D62F9006883F900B0BFFC005C7AF9000046FA0000D4FF0000A2
      FF000079FF000071FF000072FF000073FF000075FF000075FF000075FF000075
      FF000077FF000077FF000077FF000077FF000081FF0000A6FF0000B6FE000945
      FC005573FA00ECEFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5B6FC002363FD00007CFE000073FE000057
      FE000055FE000053FE000051FE00004EFD00004AFD00006DFF000047FB005674
      FA00C7D0FC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCCCC00ECE3
      E8008EBB8C002EA92E0012B013001EB31E0025B425002BB62B0036B6340042B4
      3D004DB6460056B64D005FB6530067B75B006DB8610074B865007AB969007EB8
      6B0080B66C0081B36B0080AD69007EA765007AA0600076985900708C4F006981
      42005F7B350053732600466D180034640B00265D04005F864A00B4BDAF00BCBA
      C000ACACAC00A8A8A800A4A4A4009E9E9E00999999009E9D9F00A4A5A2006D7D
      6900012200000021000001400000024A0000024D0000024D0000014400004567
      3E00B8B4AC00D8D3D50090909000E5E5E500F7F7F700FEFEFE00000000000000
      0000000000000000000000000000F8E9E3000000000000000000000000000000
      0000F9F1EB00E3BFA900F5DCCA00F2BD9B00A44C1B00A3471700A1481800A046
      17009E4316009B4115009B4013008F340B00CA8D670000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF4
      ED00F4DFCC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFBF500E0CCB500FFFCF700FCF8
      F500FBF7F200FBF5EE00F8EEE700F8EBE100F4E7DC00F2E3D700EFDFD100EDDA
      CC00EDD6C600EBD1C000E8CCB600D09F7F00E8C7B500EBD4C700FEF7F100D3B0
      9800A1653900A4673B00B68B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7E1CE000077230000904100009041000090
      41000090410000904100009041000090410000904100008F3F00008F3F00008F
      3F00008F3F00008E3F00008B39000F8D520063B39E00EAF1F000F1F3F200F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD00B8C3BD006BA592001389
      530000832B000088330000883300008730000087300000863000008530000085
      300000852F0000852F0000852F0000842F0000842C0000832C00008A3E004594
      6C00B6C6BD0000000000000000000000000000000000F9FAFF003741F3000078
      FA000084FF00005EFF00005DFF00005FFF000061FF000063FF000066FF000071
      FF0000A5FF000194FE000B64FD001359FC000A79FD0000C2FE0000A7FF00007E
      FF000077FF000076FF000077FF000078FF000079FF000079FF00007BFF00007B
      FF00007BFF00007BFF00007CFF000088FF0000AFFF0000ACFE00105CFC005D7E
      FB00EBEFFE00FDFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D58F900047AFD000085FF00006EFF00005B
      FF000059FE000057FE000055FE000053FE000050FE00007EFF00003DFA007885
      FB00EAEDFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2CCCC00EDE4
      E9008FBC8C0032AB320019B31A0026B526002EB82E0034BA35003FBE3E004ABE
      470054BF4F005EBF580067C15F006FC3670079C46D0081C7740087C779008DC7
      7C0091C57E0091C37C008FBD79008BB6740085AF6C007FA76500799C5D007291
      53006B864900647E3C005A782F004F7122003A6610003E6918007E956400CFCF
      CF00C2C0C400B7B9B700B3B3B300AEAEAE00A9A9A900A4A4A400A8A7A800A1A2
      9E0063745E00001B000000280000023E00000345000003480000023F00004663
      3F00B7B2AB00D4CFD0008F8D8D00E4E4E400F7F7F700FEFEFE00000000000000
      0000000000000000000000000000F8EBE400F5F5F500F5F5F500F5F5F500F5F5
      F500EEE6E000DDBAA600EAD4C400E6B79A00A1532300A04E1F009F4F1F009C4D
      1F009B4A1D0099481C0099471C008F3E1500C48E6D00F9F8F800F8F7F500F8F5
      F200F8F4F100F7F2ED00F5EFEA00F4EEE800F2EBE400F2E8E100F1E7DF00EDDA
      C900E8CAB000EFE1D600EEDDCF00EBDACA00EAD7C700EAD3C300EAD0BD00E7CD
      B900E4C9B300E3C4AF00DFC0AB00DDBDA900DFBAA300DAAE9100DCB79F00D9B5
      9E00D7B29B00D4B09900D6B09800D7AF9600D4AE9500D4AE9400D3AD9300CFAD
      9300D0AE9500D1B09A00D6B39C00CC9F8200E1C7B700E4D1C600F1EAE700CCAE
      9800A36C4500A46F4600B58C7100F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000C7E1CE000079250000914300009143000091
      4300009143000090430000904300009042000090410000904100009041000090
      410000904100009041000088340051A97400CEE5DF00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400C6D4CA0082B7A300388C68003172
      43003C8E640094AFA600D2DDD400D5DCD500CDD3CD00C1C6C100A4B3AD005B98
      770000802D000088330000883500008834000088320000883200008732000087
      32000087310000873000008530000085300000852E0000852E00008B43004594
      6E00B6C6BD0000000000000000000000000000000000000000006173F7001173
      FC000083FF000071FF000062FF000065FF000067FF000069FF00006CFF00006F
      FF00007FFF00009CFF0000AFFF0000B1FE0000ADFF0000A1FF000082FF00007C
      FF00007BFF00007CFF00007DFF00007EFF00007EFF00007FFF00007FFF000081
      FF000081FF000081FF00008EFF0000B7FF0000A6FE00166EFC006287FC00DEE4
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F8FF00B1C1FD001552FB000094FE000082FF000067FF000061
      FF00005EFF00005DFF00005BFE000057FE000064FF00007BFF000C51FA0092A3
      FC00FBFCFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4CDCD00EEE5
      E9008FBB8D0036AC350020B520002DB82D0034BB34003EC03E0047C4470051C5
      50005CC7590066C9610070CB69007ACD720084CF7C0090D2840099D28B009FD3
      9100A3D39400A4D19200A1CD8C009CC5840093BE7B008AB5730082AA68007A9F
      5E00719354006B884800637E3B005B762E00506E2200406414004F722D0097A8
      8800DBDADD00CCCCCD00C8C8C800C3C3C300BDBDBD00B7B7B700B2B2B200B5B4
      B500A7AAA500475B3E000016000003330000053F000005420000043A00004962
      4100B9B3AD00D1CBCD008E8C8C00E4E4E400F7F7F700FEFEFE00000000000000
      0000000000000000000000000000FAEEE600F2F2F200F2F2F200F2F2F200F4F4
      F400EBE3DD00D9B7A300E7CFBF00E7B99A00BF784800C17A4A00C67F5000C981
      5400CD865900D08A5E00D38C6000D18A6000E3A58000EEC4A600E8C0A500E7BD
      A100E7BDA000E7BDA000E6BDA100E6BDA100E3BDA300E1BFA300DFBFA500E3BD
      9F00E4B99A00E3C4AF00E6C7AF00E4CAB300E3CAB600E4CDBA00E7D0BF00E8D4
      C300EAD7C700EBDCCC00EBDDD100EAE0D600EADFCF00D9BFA800F1E7E000F1E8
      E400F1EBE700F1EDEB00F1EEED00F2EFEE00F1EFEE00EFEFEE00EFF1F100F1F2
      F200F1F2F200EEF1F400F1F4F200CFA88E00DFC3AF00E0CDC100EFEAE600C6A8
      9000996137009E643900AD846600F4F4F400F2F4F400F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000C7E1CF00007A260000924500009245000092
      4500009245000091450000914400009143000091420000914200009142000091
      42000090420000904200109055007CBFA500F6F9F800FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000CBD4CD007AA0830023683900034F1B000043
      0B00054F19002A5F350090AC9F00C8D2CB00CDD3CD00C1C6C100B4B7B4007CA2
      9200178956000088330000883500008936000089340000893400008834000088
      3400008833000088320000873200008732000086300000863000008C45004595
      7000B6C6BD0000000000000000000000000000000000000000009AAAF9002A6B
      FA000082FD000089FF000068FF00006AFF00006CFF00006EFF000070FF000072
      FF000075FF000084FF000093FF000097FF000091FF000085FF00007EFF00007F
      FF000080FF000080FF000082FF000084FF000085FF000085FF000085FF000086
      FF000086FF000093FF0000C3FF0000B4FF001983FD00678DFC00D3DCFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9EEFE003566FA000680FD000096FF00007AFF000068FF000066
      FF000064FF000062FF00005FFF00005DFF00007AFF000063FE004174FB00B9C6
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D0D000EFE6
      EA0091BC8E003BAE390027B9270034BB34003BBF3B0046C446004EC84E0058CC
      580063CE61006DD06A0079D3740086D57F0092D88B00A0DA9600AADCA100B2DD
      A700B7DDAB00B6DBA900B2D8A300ACD29900A2CB8D0097C380008CB7740082AB
      6800779F5D006F93510067864400607D370058742B004C6A1D00426417005A78
      3A00B4C0A600E2E1E500D7D7D700D2D2D200CECECE00CACACA00C5C5C500C4C3
      C500C0C0C0008C98840007230100063200000A3E00000A410000093A00004D65
      4200BAB5AE00CFC9CB008D8B8B00E4E4E400F7F7F700FEFEFE00000000000000
      0000000000000000000000000000FBF0E8000000000000000000000000000000
      0000FBF2ED00E7C6AE00F5DDCA00F8C7A600DA8C5E00D6875900D1835300CC80
      4E00C67B4900C0784500BD713E00B3622F00DC9B7700FFF4E800FFF7ED00FFF8
      F100FFFBF400FFFCF700FFFEF900FFFFFC00000000000000000000000000FEF7
      ED00F7E3CF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF800E4D3BF00000000000000
      000000000000FEFFFF00FEFFFF00FEFFFF00FEFFFF00FCFEFE00FBFBFC00FBFB
      FC00FBFBFC00FBFCFC00FCFCFB00DAB09400EBCFBC00EDDCCF00FFF9F800D0AE
      98009B5F3400A0623600B2866600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7E2D000007D290000934700009347000093
      4700009346000093460000934600009245000092450000924500009245000092
      4500009144000091430033996E00A3CAC100FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B9C5BE004D7D570000460A00004307000043
      0700004307000043070033876500B1CABE00CDD3CD00C1C6C100B5B7B50087A6
      9E002C906E000089340000883500008A3700008A3700008A3700008936000089
      3600008935000089340000893400008834000088330000883200008E48004595
      7100B6C6BD000000000000000000000000000000000000000000D6DDFC004465
      F800007AFB000099FF000072FF00006EFF000071FF000073FF000076FF000077
      FF000079FF00007BFF00007DFF00007FFF000080FF000082FF000083FF000084
      FF000085FF000086FF000088FF00008AFF00008AFF00008BFF00008CFF00008C
      FF000097FF0000C5FF0000BFFF001A92FE006999FD00CDD8FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEF3FE009FBAFD000153FC0000A9FF00008CFF000075FF00006DFF00006B
      FF000069FF000066FF000064FF000065FF00008FFF000048FB007B94FC00E0E6
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D3D300F0E7
      EC0096BE930041B13F002CBC2C003ABE3A0042C242004CC74C0055CC55005ED0
      5E0068D3680074D6730082D87F0091DB8C00A1DE9B00AFE1A900BCE3B600C6E5
      BE00CAE6C200C9E4C100C4E0B900BCDCAE00B0D69F00A3CE8E0097C2800089B6
      72007DAA6500739E58006A914B0063863F005B7C310053732500476818004163
      150068844900D0D6C700E3E4E400DEDEDE00DADADA00D7D7D700D4D4D400D1D1
      D100CDCDCD00AEB6A900103001000A3300000F3D0000104000000E3A00005367
      4500BDB8B200CDC7C9008C8A8A00E5E5E500F7F7F700FEFEFE00000000000000
      0000000000000000000000000000FAEFE800F1F1F100F1F1F100F1F1F100F1F1
      F200EBE3DC00DCBDAA00E7D3C600E3B69900A5562500A5532200A4532300A151
      2100A0502100A04F20009F4E200095451800C48F6D00F4F5F700F1F4F500F1F2
      F500F1F2F400F1F2F400F1F2F400F1F1F200F1F1F200F1F1F200F1F1F200EDE4
      DC00E8D3C100F1F2F200EFF1F100EFF1F100F1F1F100F1F1F100EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFF100EEEAE600DCC7B500EFEEED00EDED
      ED00EDEDED00EDEDED00EBEBEB00EDEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00EAEAEA00EAEAEB00EDEBE800D1AD9400DFC4B500DFCFC400EEE8E700C6A9
      94009A663E009E684000AE866B00F2F2F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      0000000000000000000000000000C7E2D000007F2C0000934800009348000093
      4700009346000093460000934600009346000093460000924600009246000092
      46000092450000914400489D7400B9CDC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBBB40046774F00004A0900004B0900004B
      0900004B0900004B0900037F4C00A5C7B800CDD3CD00C1C6C100B5B7B5008AA6
      9F00359271000089360000883600008A3600008B3900008A3800008A3800008A
      3800008A3700008A370000893600008936000088360000883400008F4C004596
      7300B6C6BD000000000000000000000000000000000000000000F8FAFE006C7F
      F9001073FB000098FF00008AFF000073FF000077FF000079FF00007BFF00007C
      FF00007EFF000080FF000083FF000084FF000085FF000088FF000089FF00008A
      FF00008BFF00008CFF00008EFF00008FFF000090FF000090FF000093FF00009C
      FF0000C6FF0000C7FF001998FE006A9FFD00CAD7FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F8
      FF00BFD0FE003B75FC000090FF0000ABFF000083FF000075FF000073FF000071
      FF00006EFF00006BFF00006BFF000079FF00008CFF001752FA00A8B6FC00F8F9
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D4D400F1E9
      EE009CC2980046B4460031BD320040C1400048C4480051C951005BCF5B0064D2
      64006ED66E007ADA7A008ADD88009BE09800AEE3A900BFE7BA00CCE9C800D7EC
      D200DBEDD600DAEBD500D4E8CD00CAE3C000BDDDAF00ADD69D00A0CB8A008FBF
      7A0081B36C0077A760006D9A5200648E46005C843800547B2B004C721F004267
      12003A6111007F986200D9DED400E8E8E900E4E4E500E0E0E000DDDDDD00DDDD
      DE00D8D9D800A8B29E0010300100103700001441000013440000113E0000596D
      4A00C2BCB900CCC5C7008D8B8B00E5E5E500F7F7F700FEFEFE00000000000000
      0000000000000000000000000000FAEFE800F8F8F800F8F8F800F8F8F800F8F8
      F800F1E8E100E1BDA800EDD6C600E8B79800A9552100A9501E00A9511F00A64F
      1D00A44D1D00A34C1C00A1491A00983F1300C98D6700F9F8F800F7F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2E8
      E000EED7C300F8F8F800F7F8F800F7F8F800F8F8F800F8F8F800F8F8F800F7F7
      F700F5F5F700F7F7F700F7F7F700F7F7F800F4F1ED00DDCAB700F5F5F400F2F4
      F400F4F4F400F4F4F400F4F4F400F2F2F200F2F2F200F2F2F200F2F2F200F1F1
      F100EFEFEF00EEEFF100F2F1EF00D6AD9100E3C7B600E3D0C700F5EFED00C4A5
      8E0093582C00965A2F00A97F5F00F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000C7E3D10000812F0000944A0000944A000094
      4900009448000093480000934800009348000093480000934700009347000093
      46000093460000924600489E7500B9CEC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBCB500467C510000530C0000540C000055
      0C0000550D0000550D0004825100A6C8B900CDD3CD00C1C6C100B5B7B5008BA6
      A00037937200008A3800008A370000893600008B3800008B3900008C3900008C
      3900008B3900008B3900008A3800008A3800008A38000089360000904F004598
      7600B6C7BE00000000000000000000000000000000000000000000000000ACBB
      FB003A72FB000083FE0000A9FF00007CFF00007BFF00007DFF00007FFF000082
      FF000083FF000086FF000088FF00008AFF00008AFF00008CFF00008EFF00008F
      FF000091FF000092FF000093FF000095FF000096FF000098FF0000A3FF0000C9
      FF0000D3FF001797FE00689FFD00CDDAFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FAFF00CAD9
      FE006396FE000073FD0000C3FF000094FF00007FFF00007AFF000078FF000075
      FF000073FF000070FF000074FF000099FF00006AFE005482FC00CED8FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D4D400F3EB
      F000A0C59C004AB74B0036BF370044C344004DC74D0056CC560060D0600069D4
      690074D9740080DD800091E09000A4E3A200B8E7B500CBEBC700D8EED600E3F1
      E100E8F3E600E7F1E500E0EEDC00D5E9D000C7E3BE00B6DCA900A6D3940095C8
      810084BB72007AAF65006FA3580065974B005C8B3E00558231004E7A25004571
      190038660D00315E080097AC8100DDE2D900EEEDEE00EBEBEC00E9E9EA00E8E7
      E900D1D5CB0072895C000A31010014430000164A0000134B0000124800005C76
      4E00C5BFBD00C9C2C5008E8C8C00E6E6E600F8F8F800FEFEFE00000000000000
      0000000000000000000000000000FAF1EA000000000000000000000000000000
      0000FBF2EB00EDC9B000F7E1D000F1C09E00B05B2500B0582200AF592200AE56
      2200AB542100AA531F00A9501F009F461700D1946F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF2
      EA00F7E1CF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFCF700E7D7C300000000000000
      0000FEFEFF00FEFEFF00FEFFFF00FEFFFF00FEFFFF00FCFEFF00FEFEFF00FCFE
      FF00FCFFFF00FBFEFF00FEFEFE00E0B79C00EDD1C000EDDAD000FFFBF800CCAB
      9500995A2F009A5E3100AE826200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7E4D3000085360000954A0000954A000095
      4A0000954A0000944A0000944A0000944A000094490000944800009348000093
      48000093480000934800499F7600B9CEC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBDB60046825400005C1000005D1100005E
      1100005E1200005E120004865700A6C8BA00CDD3CD00C1C6C100B5B7B5008CA7
      A00037947300008B3900008B3700008A3700008A3700008C3900008D3A00008D
      3B00008C3B00008C3A00008C3900008B3900008B3900008A3700009153004599
      7800B6C8BE00000000000000000000000000000000000000000000000000EFF2
      FE007181FA000A6DFB0000B3FF000091FF000080FF000082FF000084FF000087
      FF000089FF00008BFF00008DFF00008FFF000090FF000092FF000093FF000096
      FF000097FF000098FF00009AFF00009BFF00009EFF0000A9FF0002C7FF0000E6
      FF001194FF00649BFD00D3DFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF00D6E4FF006FA2
      FD000073FD0000BCFF0000AAFF000088FF000081FF000080FF00007CFF00007A
      FF000077FF000078FF000083FF0000A8FF00094FFC00A1B7FD00EEF2FE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8D6D600F4EC
      F200A1C59E004DB84E003AC23B0048C5480051C9510059CE590063D163006DD5
      6D0078DA780086DE860097E19700AAE6AA00BEEABD00D2EDD100E0F2DF00ECF6
      EB00F3F9F200F1F7F100E8F3E600DCEDD900CDE6C600BCDFB100AAD89C0098CE
      870087C276007BB6690070AB5C0066A04F005D944300558A36004E812A00467A
      1F003D7215002B65080037670F009BB38900D2DDCC00E2E9E000E1E7DE00CDD7
      C90094A98500245207000E460000155200001655000011540000105000005C7B
      4F00C5BEBC00C7BFC1008E8E8E00E8E8E800F8F8F800FEFEFE00000000000000
      0000000000000000000000000000FBF5F000EEEEEE00EEEEEE00EEEEEE00EEEF
      EF00EAE1DA00DFBDA800E7D1C300E1B59900AE622F00AE5E2A00AD5F2C00AB5E
      2A00AA5B2A00A95A2800A65826009F4E1F00C7916E00F1EFEF00EEEFEF00EEEF
      EF00EEEFEF00EEEFF100EEEFF100EEEFF100EFEFF200EFF1F200EFF1F400EBE3
      DD00E6D3C100EFF2F500EEF2F500EEF2F500EEF2F500EFF2F700EFF4F700EFF4
      F700EFF4F700EFF4F700EEF2F500EEF4F700EEEEEB00DCCCBA00F1F4F400EFF4
      F500EEF1F100EEEFEF00EEEFEF00EEEFEE00EEEFEE00EDEEED00EDEDEB00EEEB
      E800EFEAE600EFE8E400F2E7DF00D7AF9500DDC4B600DCCCC300EDEAE600C1A5
      8F00945E350098603700A9816400EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000C7E5D4000088400000964D0000964C000096
      4C0000964C0000954C0000954C0000954B0000954A0000954A0000954A000094
      4A0000944A0000944A0049A07700B9CFC700FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBDB6004687560000661600006617000066
      1800006618000067180005895A00A6C9BB00CDD3CD00C1C6C100B5B7B5008CA7
      A00037947400008B3A00008B3900008B3900008B3900008B3A00008D3C00008E
      3D00008E3D00008E3C00008E3A00008D3A00008D3A00008B390000925600459B
      7A00B6C9BE000000000000000000000000000000000000000000000000000000
      0000A9B8FC00387BFC000090FE0000B8FF000089FF000089FF00008BFF00008D
      FF00008FFF000091FF000093FF000095FF000095FF000097FF00009BFF00009D
      FF00009DFF00009FFF0000A0FF0000A1FF0001ACFF0003C9FF0007E8FF000A8F
      FF005E97FD00DDE8FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFDFF00E5EEFF0081B1FE001088
      FE0000B8FF0000C0FF00008BFF000089FF000087FF000084FF000082FF000080
      FF00007DFF000083FF00009CFF000080FF003874FB00D4E0FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAD9D900F6EE
      F4009FC39C004FB74D003DC33E004BC74B0054CB54005BCF5B0065D365006FD7
      6F007ADB7A0089DF89009BE29B00ADE7AD00C1EBC100D4EFD400E4F4E300EFF8
      EF00F9FCF900F5FBF500EBF5E900DEEFDB00CFE8CA00BEE1B500ABDA9F009AD2
      8A0088C87A007CBC6B0070B15F0066A651005D9B4500559138004D882C004680
      22003E7A180036731100266706002B660900598A3E0081AA6C0080A76B005382
      3D001E5805000E500000185A0000165D0000155B0000105B00000E5500005A7E
      4E00C3BCB900C3BABC0092929200EBEBEB00F9F9F900FEFEFE00000000000000
      0000000000000000000000000000FDFBF900FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00F5EDE700E7C4AD00F2DCCA00EDB99800AA531F00AA4E1B00A84D1B00A64D
      1A00A54C1A00A44A1A00A3491900993E1200CC8E6800FCFFFF00FCFFFF00FCFF
      FF00FEFEFC00FEFEFB00FEFCF900FCFCF800FCFBF500FCFBF400FCFBF500F9EB
      DA00F5D9BD00FFF8EE00FFF4E700FFF2E600FFF1E100FFEFE000FFEEDF00FFEB
      D900FFE7D300FEE3CD00FBE0C900F8DAC100F4D3B600EBBD9B00EECDB000EDC7
      AA00EDC3A300EABD9B00E8B79600E6B09000E1AB8B00DFA88500DAA37F00D69C
      7900D3967200CC8F6C00C9896400DA9C7900EBD3C400E7D4CA00F9F7F200C4A5
      8D008E4F230093532600A67A5900FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      0000000000000000000000000000C7E1D000007A2C0000985600009650000096
      4F0000964F0000964D0000964C0000964C0000964C0000964C0000964C000096
      4C0000954C0000954B0049A17800BACFC800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000AFBEB600468B5900006D1A00006F1B00006F
      1C00006F1C00006F1C00078C5E00A7CABC00CDD3CD00C1C6C100B5B7B5008DA7
      A0003A947500008D3A00008D3A00008D3A00008B3900008B3900008D3B00008E
      3E00008F3F00008F3F00008E3D00008E3D00008E3D00008E3B0000915300459B
      7800B6CABF000000000000000000000000000000000000000000000000000000
      0000EEF1FE007D96FB000067FA0000CBFF0000A2FF00008DFF00008FFF000091
      FF000093FF000095FF000098FF00009BFF00009DFF00009FFF0000A1FF0000A1
      FF0000A3FF0000A3FF0000A4FF0000A9FF0005C8FF000CE8FF000993FF00578D
      FD00ECF2FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECFF005C95FE000081FE0000C5
      FF0000D1FF000099FF000091FF00008FFF00008DFF00008AFF000087FF000084
      FF000086FF000097FF0000AEFF000042FC00A9C1FE00F1F5FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDCDC00F7F0
      F500A3C6A00057BD560045CA45004EC94E0054CB54005BCF5B0066D4660071D7
      71007BDB7B0089DF89009BE39B00ADE7AD00BFEBBF00D2EFD200E0F3DF00EBF7
      EB00F2F9F200F0F8F000E7F4E600DBEFD900CDE9C700BBE3B300AADC9F0098D4
      8C0087CC7B007AC06C006FB6600065AC54005CA2470054973B004C8D30004486
      25003D7F1C00357B130030750D00266D0700186302000F5C00000C5900000F5B
      00001761010019640200146200001162000012640000156801001C690400668C
      5300C5BDBB00C4BABD009F9E9E00F3F3F300FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8EFEA00EBCCB500F5DFCF00F4C6A500D68C5E00D98E6100D9906600DC91
      6700DD936800E0956900E3986C00E1966B00EEB08900F8CDAD00F7CAAA00F4C3
      A300F2BF9E00EFBA9600EBB39100E6AF8C00E3AA8500E0A58200DA9F7C00E0A1
      7C00E4A57F00D08E6700CD8B6100CA865A00C6815400C07C4F00BA754900B771
      4200B36B3B00AE643400A65E2D00A3582700A55F3000D18D6200A4603400A35E
      3000A05A2D009A56290098512600954F2400914C22008E481F008C461D008943
      1C0086401A00843E18007F391500CF906C00F4DFD000EDDCD000FCFBF700CAA9
      930095552C00995A2F00AD806000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C9E2D300047E3900009C6600009753000096
      4F0000964F0000964F0000964F0000964F0000964F0000964F0000964F000096
      4C0000964C0000964C004AA27900BAD0C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0BFB60047905C0000751E0000761F000077
      20000077200000772000098F6300A7CABD00CDD3CD00C1C6C100B5B7B5008DA7
      A0003A957500008E3D00008E3D00008E3D00008D3B00008D3A00008D3A00008E
      3D00009041000090410000903F00008F3F00008F3F0000934F00008C49005FAA
      8400D0DFD6000000000000000000000000000000000000000000000000000000
      0000FDFDFF00BBC8FD00467BFC000081FE0000DBFF00009AFF000096FF000098
      FF00009AFF00009DFF00009FFF0000A1FF0000A2FF0000A3FF0000A5FF0000A6
      FF0000A7FF0000A9FF0000ABFF0000BEFF0001D4FF000ABFFF003F88FD00ECF2
      FF00FDFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCD5FF004891FF000A98FF0000C9FF0000D1
      FF0000A6FF00009AFF000095FF000093FF000091FF00008FFF00008DFF00008A
      FF000098FF0000AEFF000A86FF005C8FFD00E6EEFF00FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAD9D900F6F4
      F500B2C9AE006CB76A0059C559005ECE5E0061D4610065D665006AD66A006FD7
      6F007ADA7A0088DE880099E29900A9E6A900BAEABA00CAEDCA00D8F0D800E1F3
      E100E6F5E500E4F4E400DEF0DD00D4EDD200C6E8C100B4E2AE00A5DC9B0094D5
      880083CF7A0076C46C006CBA600063B055005AA74900529F3D0049953100428C
      27003A861F00338016002E7C0F0028780B00237308001F7006001C6D0500196C
      0300186C02001C6F0400267809002F7E1100347F1600367C1A003C7523007E95
      6F00CEC3C500C8BEBF00B6B5B500FDFDFD00FEFEFE0000000000000000000000
      000000000000000000000000000000000000EDEDED00EDEDED00EDEDED00EEEE
      EE00E8E0DA00DFBFAB00E7D1C300E4B69B00C6835600C6815400C3805100C37C
      4E00C1794A00BF754800BC734300B36E3E00CD8D6400AF673800A95B2900A659
      2800A4562500A15422009F5020009C4D1F009A481D0098471B00913F1700A158
      2A00B5734600893611008B3D16008A3914008737130085351100823210008230
      0F0081310F0083361300873E19008B451D0091512700BC8159008C4922008E4A
      22008D4922008C4822008B4821008A4821008A4720008A472000894720008746
      1F0086451F0086451E0082401C00C78E6C00E6D0C300DDCDC300EDEAE700BDA0
      8D008F552E0093593000A57B5E00EEEEEE00EDEEEE00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000D6E7DF0039926B0000976300009752000097
      500000975000009750000097500000975000009650000096500000964F000096
      4E0000964E0000964E004AA27A00BAD0C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0BFB70047945F00007B2400007C2500007D
      2600007D2600007D26000B916700A7CABE00CDD3CD00C1C6C100B5B7B5008DA7
      A1003B967700008F3F00008E3F00008E3D00008E3D00008E3C00008D3B00008E
      3C0000904000009143000090410000904100009041000D9A6C00057F3F0072AE
      8500E3EEE7000000000000000000000000000000000000000000000000000000
      000000000000F2F4FF009CB5FD000E66FC0000B5FF0000CCFF0000A0FF00009D
      FF00009FFF0000A1FF0000A3FF0000A5FF0000A7FF0000A9FF0000ABFF0000AC
      FF0000ADFF0000AFFF0000B0FF0002C7FF0002D7FF0014B7FF006EA4FE00FEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFF00E8F0FF006EA9FF003090FF000CB5FF0000D2FF0000C9FF0000AE
      FF0000A3FF00009FFF00009DFF00009AFF000096FF000094FF000091FF00009D
      FF0000ADFF00019DFF001B75FD00D1E0FF00FAFCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3D3D300F4F3
      F300E8EAE500C7D4C200ACC7A80097C1930081BE7F0076C6760075D4750079DC
      79007FDF7F0086DF860092E19200A1E4A100B1E8B100C0EBC000CDEECD00D4F0
      D400D8F0D800D7F0D600D1EED000C8EBC500BAE6B600AAE1A6009BDC95008CD6
      85007ED0770073C66A0069BE5F0061B5550058AC4A0050A43E00479C32004093
      2800388C2000318618002C821100267F0D00227B0A001D7707001D770800267E
      0C002F85160037841F00427F2B0054814200698B5A0083997500A0AA9400C7C5
      BD00CEC6C600AEA5A500DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F1EA00EDC9B000F8E0D000EFB99900B2582100B3551F00B3551F00B054
      1F00AF531D00AD501D00AB4F1C00A4491800CC825000AB562300A4461700A448
      1800A1461700A04616009F4516009E4215009B411400993F1300953A0F00A955
      2400BF7342008B310A0090370E008D350D008C350D008C370E008E3A12009341
      180096481D009A4D20009A4D2100964C1F0098502400C682550090461D009047
      1D008E461C008D431B008E411A008C401A008A3F1900893F1800873E1800863B
      1700853B1600843A16007F351100D1906900F4DDD000EDDAD000FFFCFB00C4A4
      8D008B4820008E4C2200A5775500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3EDE80071AB8E00018B470000985C000098
      5400009851000098510000985100009850000097500000975000009750000097
      500000975000009650004AA27B00BAD0C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0C0B7004798630000802900008129000081
      2A0000812A0000812A000C936B00A8CBBF00CDD3CD00C1C6C100B5B7B5008DA8
      A1003B97780000904000008F3F00008F3E00008F3E00008E3E00008E3C00008E
      3D00008F400000924400009142000091420000934E0009996F000D864C008CC0
      9F00F7FAF8000000000000000000000000000000000000000000000000000000
      00000000000000000000DBE4FE00729CFD000072FD0000DDFF0000C2FF0000A9
      FF0000A4FF0000A7FF0000A9FF0000ABFF0000ADFF0000AEFF0000B0FF0000B1
      FF0000B3FF0000B3FF0000B4FF0001C5FF000BDFFF001ED1FF00388BFF00DFED
      FF00FCFDFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FBFF00D7E8
      FF0088BBFF004B97FF0017A5FF0004C9FF0000D5FF0000C9FF0000B5FF0000A8
      FF0000A6FF0000A4FF0000A2FF00009FFF00009CFF00009AFF0000A1FF0000B4
      FF0000A9FF001C81FE008FB7FE00FAFBFF00FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAEA00DBDA
      DA00E4E2E200EAE7E700E8E7E500E1E5DE00D4DDD000C2D4BE00A9CAA50093C9
      90008AD389008BDE8D0093E395009CE49E00A7E5A700B2E8B200BFEBBF00C5EC
      C500C8ECC800C6ECC600C1EBC100B8E9B700ADE5AB009FE09D0091DC8E0084D6
      7F007AD173006FC9680066C15E005DB9540056B049004EA83D0046A233003D9B
      2A00359321002F8D1A002989130022840D0023840D0028891300328A1D003F89
      2B00548B4400739464009CA99000B5BBAE00C4C4BC00CAC6C200CAC1C100C4B9
      BA00BDB5B500C6C3C300F6F6F600000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F5EEE700EACAB600F4DFD000EDBA9C00BA673100BA652E00BA652F00B964
      2E00B7642E00B6622D00B35F2C00AD5A2600D08B5E00B2663400AD582500AB56
      2500A9562300A8542200A5532100A3502000A14F1F009F4D1E009A471A00AD61
      3100C07C500095431A009C4E21009E552500A15A2A00A45F3000A6603400A561
      3500A35F3200A05C30009E5A2E009E592A009F5E3200C78A6100985428009954
      2800955328009553260095512600944E2500914E2500914D24008F4C23008E4A
      22008D4A22008B49210087431D00D3987400EFDDCF00E7D7CF00F9F8F800C6A8
      910091542C0096582F00A97F6000FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000F5F8F600BAD6C500017F3100069A6C00019A
      5B00009852000098510000985100009851000098510000985100009851000098
      510000985000009750004AA37B00BAD1C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000B0C1B800479A660000842E0000852E000085
      2E0000852E00008530000E956E00A9CBC000CDD3CD00C1C6C100B5B7B5008EA8
      A1003D97790000904200009040000090400000904000008F3F00008F3E00008F
      3E00008F40000091440000934500009245001F9E71000A8C52003F9A6900B7D6
      C500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8FAFF00CAD8FF004D86FD000191FE0000DCFF0000C5
      FF0000B0FF0000ACFF0000AEFF0000B0FF0000B1FF0000B2FF0000B4FF0000B5
      FF0000B8FF0000B9FF0000B9FF0000C0FF000DDAFF0023EFFF0022B8FF005CA2
      FF009AC5FF00CEE4FF00F3F9FF00000000000000000000000000000000000000
      0000000000000000000000000000EEF6FF00D0E6FF00A3CEFF0077B8FF0056B1
      FF0023B4FF0007BFFF0001D3FF0000D9FF0000C8FF0000B6FF0000AFFF0000AD
      FF0000ABFF0000A8FF0000A5FF0000A3FF0000A1FF0000A5FF0000B9FF0000B4
      FF001A97FF006FA4FF00E6EFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00EAE9
      E900E4E4E400E4E3E300E5E2E300E4E1E200E4DFE000E3DEDF00E2E1DE00D0DA
      CC00BAD2B700A6CFA4009CD69B009DE09E00A2E5A300A7E6A700AEE7AE00B5E8
      B500B7E9B700B5E8B500B2E7B200A9E6A9009FE39E0093DF920086DC85007DD6
      7A0074D16F006ACB650063C45B005ABD520052B548004AAD3D0042A833003AA2
      2B00339B23002B941A00269115002A95190033952100439233006095510086A3
      7A00AAB4A200C1C1B800CDC4C500C3B9BB00C6BEC000CCC6C800D0CACB00D1CC
      CC00D8D5D500EDEDED0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EAE3DF00E1C9B500EBDACC00E3B69A00BD713F00BA6C3800B7683600B566
      3200B2622F00B0612C00AF5F2A00A8582600C9855900AE643200A8582500A659
      2600A5562600A5582600A5582700A4582800A55A2900A65C2C00A55B2C00B371
      4300C4865C00A45E3000A8623700A4623700A3613500A35F3400A15C31009F5B
      2F009C5A2E009C592D009B592D009A562A009B5C3000C1845C00945126009551
      27009451250093502500914F2500904E24008E4E24008F4C22008D4922008C48
      22008B4821008A471F0085411D00CD936F00E6D3C400DDCFC600EEEDEB00BDA0
      8B008D51290090552D00A37A5B00EFEFEF00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      000000000000000000000000000000000000EAF3ED003E955E000D935D00129C
      6A00079B5D000098540000985200009852000098520000985100009851000098
      510000985000009750004AA37B00BBD1C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000C0CDC40053A77E00018B4000008833000088
      3300008833000088350045A18200B6CEC400CDD3CD00C1C6C100B5B7B5008EA8
      A1003E97790000904300009042000090420000904100008F4000008F4000008F
      3F00008F40000091430003944A001D9D6700229E78000A85410084BB9900E5EE
      E900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F6FF00B7CDFE003677FE0006B0FF0002DA
      FF0001CBFF0000B7FF0000B3FF0000B5FF0000B7FF0000B8FF0000B9FF0000BB
      FF0000BDFF0000BEFF0000BFFF0000C0FF0006CDFF0018E9FF002CF3FF002DAF
      FF003DB5FF0060BAFF0082BDFF0095C5FF009ECDFF00A4CFFF00A4CFFF00A4CF
      FF00A4D0FF009CCCFF0091C3FF007CC1FF0060C2FF0037BBFF0016B5FF000DBF
      FF0005DAFF0007E7FF0001DAFF0000C3FF0000B8FF0000B5FF0000B3FF0000B2
      FF0000B0FF0000AEFF0000ABFF0000A9FF0000ABFF0000BCFF0000B9FF00119D
      FF0059A3FF00CDE1FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400ECEBEB00E7E6E600E5E4E400E4E2E200DEDDDD00E4E2E200E6E0
      E200E3DEDF00D4D7CF00BFD3BC00AED4AC00A4DAA400A2E3A200A4E6A400A5E5
      A500A6E5A600A5E5A500A2E4A2009BE39B0091E1910087DE87007EDB7E0076D6
      74006DD26B0065CD62005EC7590055C050004EB9470046B23D003EAD330036A8
      2B002FA223002DA1200031A02500429E36005F9F540086A77C00ACB5A400C5C0
      BC00CCC1C400CFC6C800CFCACB00C7C2C200CECBCB00D8D7D700E4E4E400F0F0
      F000F9F9F9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCF5EF00F2D9C300FBEBDF00F5C4A400CD7E4900CC7C4800CC7B4800CA79
      4700C7774200C6743E00C1733D00BA6D3700DD936500C3774300BA6C3600BC6C
      3900BA6B3900BC6B3900B96B3800B5693800B5683800B3673500AF643000C075
      4700D18A5B00A65B2800AA5E2F00A95C2D00A65B2C00A55A2A00A4592800A158
      27009F5525009E5425009E5325009A5022009E562700CA865A00964C1F009549
      1F0094491F0093481E0091471D008F461C008D461C008D431A008D411A008A40
      1900893E1800863D160083371300DA986F00F9E3D400EEDFD30000000000C9A8
      90008F4E220094512500A97B5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6FAF800B2CFBF001B904F001A98
      6900199F6E00099C610000995600009855000098540000985200009852000098
      520000985200009851004BA47C00BCD1C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD40086C2AD003AA276001F9355000A90
      500014925400379C5F00A2BFAD00CCD5CE00CDD3CD00C1C6C100B5B7B5008FA8
      A1003F9879000092440000914400009143000090420000904200009041000090
      40000090420006934B001D9C65002DA48600058E5300329A6300BEDFCD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F8FF00A5C1FE002C7EFE0009BA
      FF0006DCFF0003D1FF0000BEFF0000BAFF0000BCFF0000BDFF0000BEFF0000C1
      FF0000C2FF0000C3FF0000C4FF0000C6FF0000C7FF0006CFFF001FEFFF0044F3
      FF002AE2FF0023BFFF002BA5FF0033A8FF0039B4FF003EB8FF003CB8FF003AB8
      FF0038B9FF002DB3FF0023A5FF001AB1FF0011C9FF000EDEFF0012E9FF0014EB
      FF0007E2FF0000C8FF0000C1FF0000BEFF0000BDFF0000BAFF0000B8FF0000B6
      FF0000B4FF0000B2FF0000B0FF0000B5FF0000C4FF0000C4FF0010A3FF0050A1
      FF00B5D5FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00E7E7E700D9D9D900DCDA
      DA00E4E1E100E6E2E300E2DDDE00D2D5CE00BBD1B900ABD6AA00A1DFA1009BE3
      9C0098E3980096E2960092E192008DE08D0085DE85007EDC7E0077D977006ED6
      6E0067D2660060CF5E0058C9570050C34E0049BD450042B73C003AB2330033AF
      2D0032AD2B003DAB340055A84D007CA77500A7B4A000C7C1BF00D4CACD00CDC6
      C700C0BBB900C9C5C500DBDBDB00F1F1F100FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700F7F7F700F7F7F700F7F7
      F700F1EAE600E8D0BF00F1E1D700EABFA300C7804F00C7804F00C6805000C67E
      5000C47B4E00C17B4D00C07B4C00BA774800D7966E00C07F5100BA754600BA74
      4700B7724500B7724500B6714300B36E4100B06E4100B06D3F00AD683B00B97A
      4E00CA8B6200A8643600AA663A00A8653800A9653900A8653900A5643700A564
      3700A4623700A1613500A1603500A05F3400A4663A00C98C65009C5E32009F5F
      32009E5E34009C5C31009C5C30009E5E32009C5C31009B5A30009C5C31009C5E
      31009A5A2F009A592E0098582D00D79E7900EED9CC00E7D6CD00F5F2F200C6A9
      9500965E350099613700AD846600F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005BB188001192
      5300219C6E0023A276000F9E6700039B5D000099570000995500009955000099
      550000985400009853004BA57C00BCD2C800FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D0DCD400B2CCC0007AB5A3004AAF
      970061B39F00B0C9B900D6E0D600D5DCD500CDD3CD00C1C6C100B5B7B5008FA8
      A1003F987A000093460000924600009244000091440000914300009042000091
      46000B965300259F6A0039A58800059462001F8E47009FCCAF00EBF4EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008AB2FD002A84
      FF0011BFFF000AE3FF0005D7FF0002C5FF0000C0FF0000C2FF0000C4FF0000C6
      FF0000C7FF0000C8FF0000CAFF0000CBFF0000CCFF0000CCFF0000CFFF0000D8
      FF0025F2FF0047F5FF0064F5FF005EF8FF004CFBFF0044FCFF0040FBFF003BFB
      FF0036FBFF0038FBFF0046F6FF003BF5FF0025F5FF0010ECFF0002D8FF0000C9
      FF0000C7FF0000C6FF0000C5FF0000C3FF0000C1FF0000BFFF0000BDFF0000BB
      FF0000B9FF0000B7FF0000BCFF0000CFFF0000D3FF000DA5FF004EA5FF00B7D7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700DEDDDD00D3D2D200DDDBDB00E7E3E400E1DBDC00CBCDC600ADCFAC009FDB
      9F0092E091008AE08A0085DE850081DC81007CDB7C0076D976006FD76F0069D5
      690062D162005ACE5A0054CA53004CC64C0044C043003CBB3B0038B8350039B8
      36004BB7460067AB620093AB8E00CBC5C400DBD1D400C9C0C100BBB5B500C9C7
      C700E8E8E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F2F2F200F2F2F200F2F2
      F200EDE6E000E3CCB700EDDDD100E6BC9F00D68E6400D7906600D4916800D793
      6B00D6916900D4916900D6946B00D4936B00DFA07A00D7967100D7966E00D796
      6E00D6956D00D9987100DC997400DA997300D9997200DC9C7700DD9B7800DFA0
      7B00E4A68100E0A07C00E0A17C00DFA17C00E0A37E00E3A48100E1A48000E1A4
      8100E4A68300E3A88400E3A88300E4A98500E7AB8900E7B08D00E4AB8900E7AE
      8C00E7AF8F00E8B08F00E8B28F00EBB59300EAB69500EAB69600EBB79600EBB7
      9800EAB99900E8B99900E8B99900E4B99A00E4D0C100E1D1C600F1EEEB00C3A6
      9000955C3100995F3500AB826200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEF7F3004EAD
      7E000D93550035A073003EA98B0016A27A000D9D6100059B6000019A5C000099
      580000995600009956004BA57E00BCD2C900FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD00C1C6C100B5B7B5008FA8
      A2003F997B0000934700009346000093460000934A0004944B000C954D00119A
      610034A7840061B292000B976B00118A3A0092C1A700EBF3EE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008BB5
      FE002F8CFF0017BDFF0016EFFF000CE4FF0004CBFF0000C7FF0000C8FF0000CB
      FF0000CDFF0000CEFF0000D0FF0000D1FF0000D2FF0000D2FF0000D3FF0000D3
      FF0000D4FF0000D4FF0000D4FF0004DEFF000AEAFF000DEEFF000CEDFF000BEB
      FF000AEBFF000AE9FF0002D8FF0000D3FF0000D2FF0000D1FF0000D0FF0000CF
      FF0000CDFF0000CBFF0000CBFF0000C9FF0000C7FF0000C4FF0000C2FF0000C1
      FF0000C0FF0000C4FF0000DCFF0000E8FF0009A5FF004BA6FF00BDDCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA00DEDDDD00CBC8C800D7D3D400ECE6E800DDD5D800B6C3
      B1009AD598008ADD8A007FDD7F0077DA780073D973006ED66E0069D5690063D3
      63005ECF5E0058CC580051CA510049C6490041C241003BC13C0041C2420054BC
      540079AA7600BFB9B800DFD4D700D4CBCC00BAB4B200C6C3C200E9E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEF7EF00F4D9C300FBEADA00FBE1CD00FED9BC00FEDCC000FEDFC300FFDF
      C400FFDDC400FEDFC700FEE0CA00FEE0CA00FBDDC600FCE1CA00FEE1CC00FEE1
      CC00FEE1CA00FEE3CD00FEE3CF00FFE4CF00FFE4CF00FFE4D100FFE4D300FFE3
      D000FEE1D000FFE6D600FFE6D600FFE6D400FFE6D600FEE7D900FEE7D900FEE7
      D900FCE8D700FBE7D700FCE6D700FCE6D700FBE4D700F9E4D600FBE6D700F9E4
      D700FBE4D900FBE6D900F9E6D900F9E6D700F9E6D900FBE4DA00F9E4D900F9E3
      D900F8E6DA00F8E6DC00F7E6D900F7E4D600F2E3D700F1E0D400FFFEFB00D3B2
      9A00A0663900A5693D00B98D6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFEF
      E60059B38C000C914F001A98620052AD940070B69B002CA78C000CA28200029B
      6000019A5A00019A5A004BA68000BCD2C900FDFDFD00FAFAFA00F4F4F400F0F0
      F000EBEBEB00E5E5E500DEDEDE00D8D8D800D1D1D100CACACA00C5C5C500C6C6
      C600CACBCA00CCCFCC00D0D5D000D4DBD400D9E1D900DDE6DD00E1EBE100E2EC
      E200E0EAE000DFE8DF00DBE4DB00D5DCD500CDD3CD00C1C6C100B5B7B5008FA9
      A200409A7B00019448000193470001934700039A670027A3840068B59A0086BB
      A10055AA880000925300128E410097C5AC00F3F8F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFD7FF004792FF000FA7FF0028F8FF0027F6FF0000D6FF0000CFFF0000D1
      FF0000D1FF0000D2FF0000D4FF0000D5FF0000D6FF0000D7FF0000D7FF0000D7
      FF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DA
      FF0000DAFF0000DAFF0000D8FF0000D7FF0000D6FF0000D5FF0000D4FF0000D3
      FF0000D3FF0000D1FF0000CFFF0000CDFF0000CBFF0000C8FF0000C6FF0000C6
      FF0000D0FF0000EFFF0000EBFF000198FF0053ADFF00CDE6FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F2F200D3D3D300C2BFBF00E5E0E100EFE4
      E900C7C3C00098C9960081D9810073DA74006CD56C0068D4680064D264005FD0
      5F0059CE590054CA54004EC84E0045C4450041C6410047C548005EB75F0091AD
      8E00DDCED600EAE0E200ADA5A400B7B4B400E8E8E80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F2F2F200F2F2F200F2F2
      F200EEE7E100E8CDBA00EBDACD00EDE4DF00EBE4DF00EBE4DF00EBE6DF00EBE4
      DD00EDE3DF00EDE1DF00EDE1DF00EDE1DF00EDE1DD00EBE1DC00EBE1DA00EBE1
      DA00EAE0DA00EADFDA00EADFD900EAE0D900EADFD900EADFD700EADFD700EBDF
      D700EBDDD700EADDD700EADDD700EADDD700EADDD700EADCD600EADDD600EBDD
      D600EADDD600E7DDD400E7DAD300E7D9D300E7DAD100E7DAD300E7DAD100E7DA
      D100E7D9D000E6D7D100E6D9D000E6D9D000E6D9D000E6D7CF00E6D6D000E6D6
      D000E6D6CF00E6D6CF00E6D6CF00E6D6CD00E4D6CA00E3D4C900EEEAE600CDB2
      9B00A8785100AB7B5400BA957A00F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FC00E1F2EA0095CAB1003AA16B0009934C00129B66002BA4890070B29A0083C4
      A1008BD0A6008FD6AA00A2DBBB00C8E0D400E4E4E400E6E6E600E5E5E500E4E4
      E400E4E4E400E3E3E300E2E2E200E2E2E200E1E1E100E0E0E000E0E0E000E0E0
      E000E0E0E000E0E1E000E2E2E200E2E3E200E3E4E300E3E4E300E3E4E300E3E4
      E300E3E4E300E3E4E300E2E3E200E1E2E100E1E1E100DFE0DF00DEDEDE00D1DE
      D800B2E2C9009AE6B90098E3B70095E0B20083C4A30066B0980031A27E000F96
      5C000C914B002AA26C00A8D4BD00F4F9F600FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8FBFF00CCE1FF0061ABFF000B9AFF0027DDFF0055FBFF001FF8FF0004D9
      FF0000D6FF0000D8FF0000D9FF0000DAFF0000DBFF0000DCFF0000DEFF0000DE
      FF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DF
      FF0000DFFF0000DEFF0000DEFF0000DCFF0000DBFF0000DBFF0000DAFF0000D8
      FF0000D7FF0000D5FF0000D4FF0000D2FF0000D1FF0000CFFF0000D7FF0001EA
      FF0002EFFF0000C5FF000093FF008ACCFF00DCEFFF00FAFCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFEFE00FAFAFA00EDECEC00C6C4C500C6C0
      C100E8E1E300D3CECC00A1C59E007DCF7D006BD76C0063D263005DCF5D0059CE
      590055CC550050C850004AC54A0049C8490050C3500070B56E00AAB8A400DAD2
      D300D6CBCC00A8A1A100D0CFCF00F0F0F000FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F500F5F5F500F5F5F500F7F7
      F700F1EAE400E8CDBA00EFDACD00F1E4DC00EDE3DA00EEE3DA00EEE3DA00EEE3
      D900EDE3DA00EDE3DA00EEE1DA00EFE0DA00EFE0DC00EFE0DA00EEE0D900EEE0
      D600EEE0D700EDDFD600EDDFD600EDDFD400EDDFD400EDDFD400EDDFD400EDDF
      D400EDDDD400EDDDD400EDDDD400EDDFD400EDDFD400EDDFD400EDDDD300EDDC
      D300EDDCD300EDDCD300EBDDD300EBDCD000EADAD000EADAD000EAD9D100EADA
      D000EADCCF00E8D9D000E8D7CF00E8D9CF00E8D9CF00E8D9CF00E8D7D000E7D6
      CF00E8D6CF00EAD6CF00E8D7CD00E7D7CF00E7D7CD00E4D4C900F1EAE300D3B5
      9C00AE7F5500B0815800C09B7E00F7F7F700F5F7F700F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFEFD00ECF5F100C7E4D5008DCBAB0048AB8000129C67001B995700209F
      5C0022A25E0023A460003DAC80008BC0B200D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400A9C9
      C1004BB18E0026A8630025A7630025A56000209D5A0018975500279E6B0053B0
      890093CBAD00D2EBE000F0F8F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7FBFF00DAEAFF0091C9FF0033A9FF001DAFFF0052FFFF006DF7
      FF0032F6FF000BE6FF0000DFFF0000DFFF0000E0FF0000E2FF0000E2FF0000E4
      FF0000E4FF0000E4FF0000E4FF0000E5FF0000E5FF0000E5FF0000E4FF0000E4
      FF0000E4FF0000E4FF0000E4FF0000E2FF0000E1FF0000E1FF0000DFFF0000DE
      FF0000DDFF0000DAFF0000D9FF0000D7FF0000DFFF0007ECFF000AF2FF0004DD
      FF000AB8FF0038B6FF00AFDCFF00E7F4FF00FBFDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00EFEEEE00D4D3
      D300C3BDBE00DFD7D800D5D2CF00A8C5A4007CC87B0067D467005FD460005AD0
      5A0056CE560052CD520051CE520059C1590080B77D00B7C1B100D3CBCA00C5BA
      BA00BAB4B400E7E6E600F6F6F600FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCF7F100F2D9C700FBE7DA00FEF1E700FCEEE600FBEFE600F9EFE600F9EF
      E600FBEFE600FBEFE600FBEFE600FBEDE600FCEBE700FBEDE700FBEDE700FBED
      E400F9EDE100FBEDE300F9EBE100F8EBE100F8EAE100F8EBE100F8EBE100F8EB
      E100F8EAE100F8EAE100F9EAE100F8EBE100F8EAE100F8EBE100F8EAE100F9E8
      E000F9E8E000F9E8E000F9E8E000F8EAE000F7E7DD00F5E6DD00F5E4DD00F7E6
      DD00F7E6DC00F7E7DC00F5E4DC00F4E4DC00F5E3DC00F5E4DC00F5E4DC00F4E3
      DA00F2E3DA00F5E3DA00F7E3D900F4E3D900F4E3DA00F1E1D700FCF2ED00E1C4
      A900C3936900C4946C00D1AD8D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9FCFB00E6F3ED00C8E5D800ABDCC7008FCFAE007BC6
      A00078C69E0078C69F008FCFB400C3E2D700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D5E7
      E10098D3BC0078C69E0078C59E0078C59E0078C49D009AD3B400B7DFCD00CEE7
      DD00E8F3ED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF00E7F3FF00B1D8FF006CBEFF0028B2FF0035CA
      FF0060F4FF007AF8FF0057F5FF001EEFFF0000E8FF0000E7FF0000E7FF0000E8
      FF0000E9FF0000E9FF0000E9FF0000E9FF0000EAFF0000E9FF0000E9FF0000E9
      FF0000E9FF0000E8FF0000E8FF0000E7FF0000E6FF0000E5FF0000E4FF0000E3
      FF0000E2FF0000E3FF000AEDFF001BF1FF001BF5FF000EE8FF0004CDFF0025BE
      FF007ECDFF00C2E6FF00F5FBFF00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F2F2
      F200DBDADA00C6C2C300D8D0D300D5D4CF00B1C8AD0088C185006CC76C0061CC
      62005DCB5E005EC65E006BBD6B0094BC9000C1C7BA00CCC3C300BDB5B600C4C0
      C000E5E4E400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EBE4E000E4CABA00EAD7CA00EBDFD900EADDD600E8DDD600E7DDD600E7DF
      D600E7DFD600E7DFD600E7DDD600E7DDD600E8DCD400E8DCD600E8DCD600E8DC
      D600E8DAD400E7DCD100E7DCD100E6DCD100E6D9D100E6D9D100E6D9D100E6D9
      D100E6D9D100E6D9D100E6D9D100E6D9D100E6DAD100E6D9D000E6DAD000E7DA
      D000E7D9CF00E7D9D000E7D9D000E7D9D000E6D9D000E4D7CF00E6D6CD00E6D6
      CD00E6D6CD00E4D6CD00E4D7CC00E4D4CC00E4D4CC00E3D6CC00E4D6CC00E4D4
      CC00E3D4CD00E3D3CC00E3D3CC00E4D3CC00E3D3CC00E3D3CA00E8DFD900D6BD
      A600C19B7A00C49E7B00CFAF9400EFEFEF00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFE00EDF7F300E0F1
      E800DEF1E700DEF1E700E6F5ED00F5FBF8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9FD
      FB00EAF7F000DEF1E700DEF0E700DEF0E700DEF0E700F4FAF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FBFF00D4EBFF0094CCFF0064C6
      FF004BC5FF0058D5FF006BEFFF007FFBFF0083F7FF0062F5FF003AF5FF0012F5
      FF0002EFFF0000EEFF0000EEFF0000EEFF0000EEFF0000EEFF0000EEFF0000EE
      FF0000EEFF0000EDFF0000EDFF0000ECFF0000EBFF0001EDFF0008F0FF001AF4
      FF002FF3FF0042F4FF0025FBFF0017E4FF0012D2FF002ECDFF0062CEFF00A1DA
      FF00DFF1FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700DEDEDE00CFCACA00D2C9CA00D4CECC00C3CCBD00A8C6A40094C3
      91008EC18A009BC09600B0C4AC00CBCBC500CBC2C200C0B8B800C8C5C500E7E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F7F1ED00EFD7C700F1D7C700F7E8E000F7E8DF00F5E6DD00F4E7DD00F2E7
      DD00F2E7DD00F1E7DD00F2E6DD00F2E7DD00F1E7DD00F4E6DD00F4E3DF00F4E4
      DF00F4E4DF00F2E4DD00F2E4D900F1E4DA00F1E4D900F1E1D900F1E1D900F1E3
      D900F1E3D900F1E3D900F1E3D900F1E3D900F1E3D700F1E3D700F1E3D900F1E3
      D900F1E3D700F1E1D700F1E0D600F1E0D600F1E0D700EFE0D700EEE1D400EEDD
      D300EEDDD300EEDDD400EEDDD400EDDFD300EDDDD300EDDCD300EDDCD300EDDC
      D300EDDCD300EDDCD300EBDAD100EBDAD100EDDAD100EDDAD100EFE1DC00DDC0
      A300D1A98200D3A98200D7BC9E00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0E9
      FF008BCDFF0060C9FF0063D6FF007CDBFF008ADFFF0086F4FF0090FFFF0084FF
      FF0074F8FF0072F7FF0065F7FF0052F7FF0047F7FF0045F7FF0042F7FF003FF7
      FF003BF7FF0038F7FF0041F7FF004AF6FF0056F5FF0055F7FF0046FBFF003AFC
      FF003AEFFF0042DCFF0035E1FF0043D3FF0063CEFF0098DAFF00D3EEFF00FAFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00E2E0E000D1CCCC00CFC8C900CEC5C700CAC0C200C8C5
      C000C5C3BD00CAC0C000C9BEC100CBC3C500C6C0C000D0CDCC00ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFCFB00F8E8DF00F7DFD000F7E4D600FBEEE600FBEEE600FBEDE400FBED
      E400F8EDE400F7EDE400F8EDE400F7EDE400F8EDE400F8EDE400F8EBE400F9EA
      E400F9EAE600F9EAE600F9EAE400F8EAE100F8EAE100F8EAE000F7E8E000F7E8
      E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7EA
      E000F7E8E000F7EAE000F7E7DF00F7E6DF00F7E7DF00F7E7DF00F7E7DF00F4E7
      DD00F4E4DA00F4E3DC00F4E3DC00F4E4DC00F4E6DA00F4E4DA00F2E3DA00F2E3
      DA00F2E1DA00F2E1DA00F2E3DA00F1E1D900F1E0D900F5E4DD00F5E3D600E0BF
      9C00E3BC9400DAB28D00EDE0D000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6EDFF00A1D8FF006FC8FF0054CAFF0066E0FF0098E8FF00AEE3
      FF00AAE5FF00B6F1FF00B3FBFF00A8FEFF00A0FFFF009BFFFF0094FFFF008EFF
      FF0085FFFF007DFFFF0082FEFF007FF7FF0084EDFF007EE7FF0066E7FF004FE9
      FF0043DDFF004CC8FF0077D2FF00B1E4FF00EAF8FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00D5D3D300C8C3C300C8C1C200D6CE
      CF00D8CED100D0C7C800C3BCBC00C8C4C400DFDEDE00F6F6F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDED00EDEDED00EDEDED00EDED
      ED00EEEEEE00EAE6E300E7D9D000E4D4CA00E6D7CF00E7D9D100E7D9D000E7D7
      CF00E6D7CF00E6D7D000E4D9D000E4D7D000E4D7D000E4D9CF00E4D9CD00E6D7
      CD00E6D6CF00E6D6CD00E6D6CF00E6D6CD00E4D6CC00E4D6CC00E4D6CA00E3D4
      CC00E3D3CD00E3D3CD00E3D3CC00E3D4CC00E3D3CC00E3D4CC00E4D4CC00E3D3
      CA00E3D3CA00E3D3CA00E3D4CA00E3D4CA00E4D3C900E3D3C900E3D3C900E3D1
      CA00E1D3C900E1D1C700E1D0C700E1D1C700E1D1C700E3D1C600E3D1C600E1D0
      C600E1D0C700E0D0C700E1D0C600E1D1C600E3D1C600DABFB000B58C6F00AE82
      5B00B38B6900D1BCA600EEEEED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFDFF00DFF3FF00A7DEFF006ECBFF0044BF
      FF0038C2FF004CDCFF0067EEFF0088F5FF0098F6FF0094F6FF008FF7FF008AF7
      FF0083F7FF007DF7FF0069F6FF004DE7FF0039D3FF0035C6FF004DC9FF0080D7
      FF00AEE7FF00E8F7FF00FDFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F6F600E5E3E300DAD9
      D900D9D7D700DEDEDE00ECECEC00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FCF9F800F9F4F100F9F4F100F9F4EF00F9F4EF00F9F4
      EE00F9F1ED00F9F1ED00F8F2ED00F8F1EE00F8F1ED00F8F2ED00F8F2EB00F8F1
      EA00F7EFEA00F7EFE800F8EFE800F8EFEA00F7EFEA00F7EEE800F7EDE600F7EE
      E700F5EDE800F5EDE700F5EDE600F5EDE700F5EDE600F4EBE400F5EAE400F5E8
      E400F4EAE300F4EAE300F4EAE300F2E8E100F2E7E000F2E6E000F2E7E000F2E6
      E000F1E7E000F1E7DF00F1E4DC00F1E4DC00F1E4DC00F1E4DC00F1E4DC00F1E3
      DA00EEE1DA00EDE0D900EDE0D700EDE0D600DDCCBF00B0917C00966E4E00A580
      6400D6C1AF00FCFCFC0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4FBFF00D2F1FF00AAE5FF0093DEFF008CDCFF008CDCFF008CDEFF008CDE
      FF008CDEFF008CDEFF0097E2FF00BAEBFF00D9F4FF00F1FBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FDFDFD00FBFBFB00FBFBFB00F8F8
      F800F8F8F800F9F9F900F4F4F400F3F3F300F2F2F200F0F0F000EFEFEF00EEEE
      EE00EDEDED00ECECEC00EBEBEB00E7E7E700E6E6E600E6E6E600E4E4E400E3E3
      E300E0E0E000DFDFDF00DFDFDF00DDDDDD00DCDCDC00DBDBDB00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DEDEDE00DDDDDD00DDDDDD00DEDEDE00E1E1E100E4E4
      E400E6E6E600E5E5E500E6E6E600E9E9E900ECECEC00EFEFEF00F1F1F100EFEF
      EF00F0F0F000F2F2F200F4F4F400F5F5F500F4F4F400F0F0F000F7F7F700FAFA
      FA00F2F2F200FCFCFC00FDFDFD00FDFDFD000000000000000000000000000000
      0000FEFEFE00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FEFEFE00FDFDFD00FCFCFC00FCFCFC00F9F9F900F7F7F700F6F6
      F600F4F4F400F2F2F200F0F0F000EEEEEE00EBEBEB00E9E9E900E8E8E800E7E7
      E700E7E7E700E6E6E600E5E5E500E5E5E500E6E6E600E7E7E700E8E8E800E9E9
      E900EAEAEA00EAEAEA00EBEBEB00ECECEC00EFEFEF00F0F0F000F2F2F200F3F3
      F300F4F4F400F6F6F600F7F7F700F9F9F900FBFBFB00FCFCFC00FDFDFD00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF6E6000665430006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006051300064513000665432006F593600785F3C0081633C00A170
      4A00B4785400BD7C5E00C7806400CC8367000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FCFCFC00FAFAFA00FAFAFA00FAFA
      FA00F8F8F800F2F2F200E0E0E000E3E3E300E6E6E600D7D7D700D6D6D600D5D5
      D500D4D4D400D3D3D300D1D1D100C8C8C800C8C8C800C7C7C700C5C5C500C5C5
      C500BFBFBF00BDBDBD00BCBCBC00BBBBBB00BABABA00B9B9B900BCBCBC00BBBB
      BB00BBBBBB00BABABA00B9B9B900BABABA00BCBCBC00BDBDBD00BFBFBF00C1C1
      C100C3C3C300C5C5C500C6C6C600C9C9C900CCCCCC00CECECE00D0D0D000D6D6
      D600D7D7D700D8D8D800DBDBDB00DCDCDC00DDDDDD00DFDFDF00E5E5E500F8F8
      F800EFEFEF00FAFAFA00F8F8F800F9F9F900FBFBFB00FCFCFC00FEFEFE000000
      0000FDFDFD00FDFDFD00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FD00FBFBFB00FAFAFA00F7F7F700F6F6F600F3F3F300EFEFEF00E9E9E900E5E5
      E500DFDFDF00D8D8D800C1C1C100A6A6A600A0A0A000959595008E8E8E008686
      860085858500868686008686860095959500A0A0A000B9B9B900C6C6C600CACA
      CA00CDCDCD00D3D3D300D8D8D800DBDBDB00DFDFDF00E2E2E200E5E5E500E8E8
      E800E9E9E900ECECEC00EFEFEF00F1F1F100F4F4F400F6F6F600F7F7F700F9F9
      F900FCFCFC00FCFCFC00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC00F9F9
      F900F9F9F900FAFAFA00FCFCFC00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000DE7B61000E510000005800000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000005800000059000000590000005600000056
      0000005900000056000000580000005900000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00FCFCFC00FAFAFA00F9F9F900FBFB
      FB00EDEDED00D1D1D100A1A1A100A0A0A000A6A6A600A6A6A600A6A6A600A4A4
      A400A3A3A300A2A2A200A3A3A300A7A7A700A6A6A600A5A5A500A4A4A400A3A3
      A300A4A4A400A4A4A400A4A4A400A2A2A200A1A1A100A0A0A000A1A1A1009F9F
      9F009E9E9E009D9D9D009B9B9B009A9A9A009898980098989800989898009797
      9700979797009696960095959500959595009595950096969600969696009494
      9400959595009696960098989800999999009B9B9B009B9B9B009E9E9E00DDDD
      DD00E7E7E700ECECEC00EFEFEF00F2F2F200F4F4F400F7F7F700FAFAFA00FBFB
      FB00FCFCFC00FDFDFD00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FBFBFB00F9F9F900F3F3F300EAEA
      EA00D9D9D900B4B4B400A7A7A700B4B3B300BCBCBC00C1C0C100CDCDCD00E2E2
      E200EFEFF000EEEEEE00E2E2E300DBDBDB00D3D3D300C7C7C700B3B3B3009B9B
      9B007D7D7D005F605F00444444002C2C2C001E1E1E0019191900151515001313
      1300131313001313130013131300181818001F1F1F00333333005D5D5D009D9D
      9D00B4B4B400C1C1C100CCCCCC00D3D3D300D8D8D800DDDDDD00E2E2E200E8E8
      E800EBEBEB00F0F0F000F4F4F400F7F7F700FBFBFB00FCFCFC00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F8F8F800F3F3F300EFEF
      EF00F4F4F400F7F7F700F9F9F900FBFBFB00FEFEFE0000000000000000000000
      000000000000000000000000000000000000E0786B00144F0100005900000059
      0000005900000055000000560000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005A00000058
      0000005800000059000000590000005900000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00FBFBFB00FAFAFA00F9F9F900FBFB
      FB00F1F1F100DEDEDE00ABABAB00A7A7A700A5A5A500ACACAC00ACACAC00AAAA
      AA00AAAAAA00A8A8A800A8A8A800AAAAAA00A9A9A900A8A8A800A7A7A700A6A6
      A600A7A7A700A7A7A700A7A7A700A5A5A500A4A4A400A3A3A300A1A1A1009F9F
      9F009D9D9D009B9B9B009898980097989800989A9A0097989800959595009292
      9200908F910093929300939293008F9090008B8E8D00888C8B00878B89008B8D
      8B008E8D8C008F8E8E009290920092919400918F9100979696009C9B9B00DBDA
      DA00DFDFDF00E8E8E800EAEAEA00EBEBEB00EEEEEE00F2F2F200F6F5F500F8F7
      F700FCFCFC00FCFCFC00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FAFAFA00F3F3F300E7E7E700D3D3D300AAAA
      AA00A3A3A300BDBDBD00C1C1C100C6C6C600CACACA00CFCFCF00D3D4D400E2E2
      E300F1F1F100F0F0F000E3E3E300DBDBDB00D4D4D400C7C7C700B4B4B4009B9B
      9B007F7F7F005F5F5F00454545002C2C2C001F1F1F0019191900151515001313
      130013131300121212001313130014141400171717001B1B1B00222222002626
      26005353530085858500A3A3A300B6B6B600C1C1C100CACACA00D1D1D100D8D8
      D800DDDDDD00E5E5E500EAEAEA00F0F0F000F4F4F400F9F9F900FBFBFB00FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700EDEDED00E2E2E200B8B8
      B800121211002A2A2A0091919100E8E8E800FBFBFB00FEFEFE00000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      0000005900000056000000560000005600000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      000000580000005800000058000000580000005800000058000000590000005A
      0000005900000059000000590000005900000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FDFDFD00FCFC
      FC00F9F9F900E5E5E500ABABAB00A8A8A800A4A4A400B2B2B200A5A5A500A5A5
      A500A8A8A800A6A6A600A7A7A700ABABAB00ABABAB00ABABAB00ABABAB00ABAB
      AB00A6A6A600A3A3A300A3A3A300A3A3A300A3A3A300A3A3A300A2A09F00A1A0
      A000A0A0A0009EA0A0009EA0A0009B9F9F00969A9B00969A9B0097999B009698
      9A0097979B009D949A00978E94008F939300859591007D8F880086958B008E92
      8E0094908E009D94970098919800918D9800948F9600A0979900A8A2A300E7E4
      E400ECECEC00E6E7E700ECEFEF00EFF1F100F3F3F300F6F3F400FAF5F600FAF6
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F7F7F700ECECEC00D1D1D100AAACAC00A4A4A600B1B1
      B100BABABA00BDBDBD00C3C1C100C6C6C600CACACA00D0D0D000D5D5D500E3E5
      E500F3F3F300F1F1F100E5E6E600DCDCDC00D5D4D400C9C9C900B7B7B7009E9E
      9E008282820061616100474847002E2E2E001F1F1F0019191900151515001313
      130013131300131313001313130014141400171717001B1B1B00232323003333
      330048484800555555005D5D5D007D7D7D00A3A3A300B3B3B300BFBFBF00C6C6
      C600CCCCCC00D4D4D400DCDCDC00E5E5E500EBEBEB00F1F1F100F5F5F500FBFB
      FB00FCFCFC00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F6F6F600EAEAEA00DBDBDB00CBCBCB003E3B
      3A00171616000D0D0D000B0B0B00101010008080800000000000FEFEFE000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      000000590000005A000000600000005F00000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      000000600000006000000060000000600000006000000060000000630000005C
      0000005800000059000000590000005900000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FDFDFD00FEFE
      FE00F9F9F900F8F8F800A8A8A800ABABAB007D7D7D0080808000999999009999
      99009A9A9A009898980097979700979797009797970097979700979797009797
      9700979797009797970097979700979797009797970097979700959493009494
      9400949494009294940091949400909493008F9292008E9192008F9092008F8F
      9200908F9200948A9000938D92008A9493007F9992005B7A6E00587366008E9B
      92008B8C89009D969900948B93004E495400ABA5AD00A79D9F00C6BFC000F3EE
      EF00F8F8F800F2F3F300F4F9F800F6FAF900FBFBFB00FEFBFC00FFFCFD00FFFD
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00F7F7F700EAEAEA00BCBCBC008C8C8C00A1A1A100ADACAC00B4B4
      B400B9BABA00BFBFBD00C3C3C100C7C7C700CCCCCC00D0D0D000D5D5D500E5E5
      E600F4F4F400F2F2F200E7E8E700DDDDDD00D4D4D400CACACA00B7B7B700A1A1
      A000838383006464640048484800303030001F1F1F001A1A1A00151515001313
      130013131300131313001313130014141400161616001B1B1B00222222003333
      33004949490063636300777777005B5B5B006363630094949400ACACAC00B7B7
      B700BDBDBD00C4C4C400CCCCCC00D5D5D500DFDFDF00E8E8E800F0F0F000F5F5
      F500FAFAFA00FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500E9E9E900DADADA00C9C9C9009A9A9A004B47
      47001514140013131300090909000B0B0B000B0B0B003D3D3D00000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000058
      0000007000000C832900268A1E002C8A1C002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100238B1E001183
      2700007915000063000000590000005800000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FEFEFE00FCFCFC00FCFCFC00FAFA
      FA00EEEEEE00F5F5F500B1B1B100B0B0B0008B8B8B0092929200DFDFDF00DDDD
      DD00DCDCDC00DBDBDB00D8D8D800D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700DADADA00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00D9D9D900D9D9
      D900D9D9D900D7D9D900D7D9D900D8DADA00DBDCDC00DADADC00DBDADC00DBD9
      DB00DCD9DB00E5DFE200D9DADB00CADCD700A7CBBF00537E6F00446D5C00ACCA
      BB00CFDCD500D5D6D500D1CBD100736B7400B4ACB200A8A0A200E3DDDE00FAF6
      F700FEFEFE00F9FBFB00F9FDFC00FDFEFE0000000000FFFEFF00FFFEFF00FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FBFB
      FB00F0F0F000C1C1C1005C5C5C007979790091929100A3A1A300ADADAD00B4B4
      B400BABABA00C0C0C000C3C3C300C7C7C700CDCDCD00D1D1D100D8D8D800E6E6
      E600F5F5F500F5F5F400E8E8E800DFDFDF00D8D8D800CDCDCD00BCBCBC00A7A7
      A700898989006C6A6A004F4F4F0036363600232323001B1B1B00171717001515
      15001313130013131300131313001414140015151500191919001F1F1F002C2C
      2C00444444005F5F5F0076767600888888008888880057575700696969009898
      9800B0B0B000B4B4B400B7B7B700BABABA00C3C3C300CDCDCD00D9D9D900E3E3
      E300EEEEEE00F5F5F500FAFAFA00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00F3F3F300E7E7E700D7D7D700C5C5C500B5B5B5003C3A39002323
      2200151515002222210024232200111111000A0A0A00090909006F6F6E000000
      000000000000000000000000000000000000E0786E00144F0300005900000055
      000060BA7700DBF4EB00C2EDD000C5EECB00BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800C2E9D000D3F4
      E700C5EAC400007A0E0000580000005800000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00FBFBFB00FBFBFB00FCFC
      FC00F6F6F600F7F7F700D3D3D300A3A3A3009E9E9E0077777700E2E2E200DFDF
      DF00DFDFDF00DDDDDD00DCDCDC00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DCDEDE00DDDE
      DE00DEDEDE00DEDEDE00DFDEDE00E0DFDF00E2E1E100E3E1E100E2E0E000E4DF
      DF00E2DEDF00DEE0DF00D3DFDB00B1D0C5005284720077B39C007DBBA1005586
      7200B4D4C500D3E2DB00C0C1C1006D666C00B8B1B600A8A1A300F0EBEC00F8F5
      F600F9F9F900F6F8F800F6F8F800F9FAFA00FDFCFC00FFFCFD00FFFDFE00FFFD
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F6F6
      F600E5E5E500898989005F5F5F007C7C7C0094949400A4A3A300ADADAD00B4B4
      B400BABABC00C0BFC000C4C4C400C9C9C900CACCCA00CACACA00C1C1C100C0BF
      BF00C0C0C000B0B0B000A0A0A00098979700929192008E8E8C00888886008282
      8000797979006F6F6F006363630055555500484848003A3A3A00282828001F1F
      1F001A1A1A0014141400121212001313130015151500181818001F1F1F002B2B
      2B00414141005C5C5C0076767600888888008C8C8C006D6D6D00434343008686
      8600ADADAD00B7B7B700B7B7B700B9B9B900BCBCBC00C4C4C400CFCFCF00DBDB
      DB00E6E6E600EFEFEF00F6F6F600FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F9F9
      F900F2F2F200E4E4E400D3D3D300C1C1C100B1B1B100838383004F4C4E001312
      12001D1C1B002D2B2A0022222000282826001D1D1D0015141400CAC8C800FDFD
      FD0000000000000000000000000000000000E0786E00144F0300005C00000058
      00008AC99B00006A0300006D0000006A00000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000006F00000C81
      3C00EAFBFF0000762400005A0000005800000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00FCFCFC00FAFAFA00F9F9F900F7F7
      F700F0F0F000F5F5F500E5E5E500A4A4A400A4A4A4006F6F6F00DFDFDF00DBDB
      DB00DFDFDF00DADADA00DEDEDE00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DEDEDE00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DBDDDD00DBDD
      DD00DDDDDD00DEDDDD00E1DDDD00E1DEDD00E2DFDE00E2DFDE00E1DEDD00E0DE
      DB00DEDEDB00D9E4DE00CCE7DB006591800071B29A0088D7B8008BDDBC006EB7
      9A00669C8500C4E5D600B4BFB9008A888800A8A2A400ADAAAA00F0EEEE00F6F6
      F600F2F4F400F2F4F400F7F8F800FAFAFA00FEFCFC00FFFCFD00FFFEFF00FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FBFBFB00F3F3
      F300D5D5D5006D6D6D00616161008080800098989700A6A4A400ADADAD00B4B4
      B400BCBABA00B9B9B9009D9D9E007070700043434300414141004F4F4F007070
      70008888880095959400949492008988860083827F00827F7D008B8988009A98
      9700A7A6A600ADADAD00B0B0B000B0B0B000AFADAD00A7A7A70095959400807D
      7C006A6964005B595500504F4C002F2E2E0022222200181818001D1D1D002828
      28003F3F3F005959590074747400898989009292920085858500323232007979
      7900B0B0B000BDBDBD00BCBCBC00BCBCBC00BDBDBD00C0C0C000C7C7C700D3D3
      D300E0E0E000EAEAEA00F3F3F300F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F9F9F900EFEF
      EF00E2E2E200D1D1D100BEBEBE00AFAFAF00ACACAC0049454500242323001A19
      18002A2726002D2D2B002726260021202000161516005151510000000000FDFD
      FD0000000000000000000000000000000000E0786E00144F0300005D00000071
      000075C07A00005500000058000000590000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A00000071
      0E00D5F7ED00037E1C00005A000000560000000000000000000000000000FEFE
      FE0000000000F8F8F800EEEEEE00EDEDED00ECECEC00ECECEC00EBEBEB00ECEC
      EC00DFDFDF00E1E1E100D1D1D100A4A4A400A2A2A20071717100D5D5D500D6D6
      D600DCDCDC00D6D6D600DADADA00D9D9D900D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D8D9D900D7D9D900D6D9
      D900D7D9D900DBD9D900DDD9D800DEDAD900DDD9D800DCD9D700D9DAD500D8DA
      D500D2DAD300C8E0D30077A39000619D850094E4C40067C6A10055BC940077D7
      B1004C9A7A006B9F880093AEA100858C8500ADADAC00ACAEAE00DFE2E200E9EB
      EB00E4E6E600E6E8E800EDEEEE00EFEEEE00F1F0F000F5F3F400FCFBFC00FDFC
      FC0000000000FEFEFE00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00F0F0
      F000CCCCCC006161610069696900858585009A9A9A00A3A3A1009B9B9B008080
      8000605F5F00434343005051500080808000ACACAA00BDBFBD00BCBCBA00B4B4
      B400ADAAAA00A09B98009D948900B3A18F00867D74006D66630074706C008582
      7F0094929100A09D9D00A3A3A100A7A6A600AAA9A900A3A1A100928F8E007773
      700064605C005F595400605B5700635F5B0063605C0064605C00504F4C004341
      40004444440057575700717171008B8B8B00989898008F8F8F004B4B4B007A7A
      7A00B3B3B300C6C6C600C6C6C600C3C3C300C0C0C000C1C1C100C4C4C400CDCD
      CD00D8D8D800E5E5E500EFEFEF00F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00F7F7F700EEEEEE00E0E0
      E000CECECE00BCBCBC00ADADAD00A2A2A200767575005553500015141400211F
      1F003C383700292726002D2B2B001D1D1D0017171700C6C5C500FAFAFA00FEFE
      FE0000000000000000000000000000000000E0786E00144F0300005D0000067C
      000069BC6A000058000000590000005C00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000073
      0900BDF4D80006831500005A000000560000FCFCFC00FEFEFE00FEFEFE00FBFB
      FB00DEDEDE00BBBBBB00C8C8C800C9C9C900C9C9C900CACACA00CACACA00CFCF
      CF00CACACA00CACACA00CACACA00A6A6A600ABABAB0076767600B3B3B300C9C9
      C900C8C8C800CCCCCC00C6C6C600CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CACBCB00C8CACB00C7CA
      CA00C9CACA00CCCACA00CECAC900CECBC900CFCEC900C9CCC600C9CFC900C3CE
      C400C1D2C70087AE9C00518E750087D2B3006CC8A2004AB68A0049BF900054C8
      9A0073D7AF00489173004E7966008A9F92009DA6A0009DA4A300AEB5B400B1B6
      B500B5B7B700B6B6B600B6B5B500BCBABA00BAB8B800BCBABA00D3D1D100F7F5
      F50000000000FDFDFD00FCFCFC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F9F9F900EFEF
      EF00C7C7C700595959006F6F6F00888888008C8E8C006A696A006C6C6C008B8B
      8B00A3A3A300B9B9B900C0C1C000C0BFC000BDBCBD00B7B6B600B0AFAD00A9A4
      A000AC9B8B00B9A08500CFB39500D7BCA000C1B09D0057504B005C5550006761
      5D0077736F0083807D008B8885008F8C8B00918E8C00898885007A7471008274
      6700796A5D0073665B005F574D004F484300504B4500544F490058534D005C57
      5400605D5B00605C5B0064646100807F7F009B9B9B009A9A9A00797979007F7F
      7F00BDBDBD00CCCCCC00CCCCCC00C9C9C900C6C6C600C4C4C400C7C7C700CCCC
      CC00D5D5D500E1E1E100ECECEC00F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700ECECEC00DFDFDF00CECE
      CE00BBBBBB00ADADAD00A2A2A200A5A5A5005A575600252424001C1C1B003531
      300035313000302E2E00252424001A1A1A0056545400FCFCFC00FCFCFC000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F5F5F500FBFBFB00FDFDFD00F6F6
      F600B3B3B300DCDCDC00F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200ECEC
      EC00EAEAEA00E8E8E800F8F8F800B8B8B800A6A6A60080808000A7A7A700BDBD
      BD00BDBDBD00C0C0C000BBBBBB00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BCBDBD00BABCBD00B9BC
      BD00BCBBBD00BEBCBC00C0BCBB00C0BCBB00BBBDB800B8C1B900ADBCB100A5B9
      AC0099B7A7004981690080CDAD0079D2AB004EB5880046BD8B003EC18C0035B8
      83005BD1A10086E5BE003B7C600081A7930098AEA300A8B4B100C3CDCC00C1C8
      C700CDCFCF00C5C5C500C5C3C300CFCACB00C9C4C500C8C6C600ACABAB00ECEC
      EC0000000000FDFDFD00FDFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F7F7F700F0F0
      F000BCBCBC007D7D7D00707070007F7F7F00BDBDBD00C3C3C300C9C9C900C7C6
      C700C6C6C600C0BFC000B3B0AF00ACA19500B0988000B6957300BA987300C7A9
      8800D7BDA100D8C0A400D7BFA300D5BAA000DBC0A400CFB9A100635950004F48
      410058514B00615C5500645F5900645D570082716100A48B6D00B1947600B79A
      7C00BC9E8200C0A48800C4AA8E00CAB09700D7C3AD00DBCAB600CCBCAA00A094
      8800706760005D57510058534C0057534D0057534F00514F4D005D5D5D007F7F
      7F00CDCDCD00D3D3D300D4D4D400D4D4D400D1D1D100D0D0D000CFCFCF00CFCF
      CF00D5D5D500DFDFDF00E9E9E900F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00F6F6F600ECECEC00DDDDDD00CCCCCC00BBBB
      BB00ADADAD00A3A3A3009D9D9D00717070005654530017161600242324004643
      4300302E2D00353333002020200017161600D7D7D700FBFBFB00FEFEFE000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000E3E3
      E300BABABA00F8F8F800F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F1F1
      F100F1F1F100E4E4E400E6E6E600BFBFBF00A7A7A7008585850092929200B4B4
      B400B3B3B300B4B4B400B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200AFB1B200B0B0
      B300B1B0B200B3B1B100B4B1B000B1B1AD00AEB4AE00ACBCB100A2BAAD0094B3
      A3005A83710079C2A3007AD7B00058BD900054C3910048C58E0038C186002EBC
      81002FB37E0067D7A90073C6A300437C610082A49500A0B1AC00ADBAB800BDC5
      C300C3C8C700C3C2C200CBC7C800C7C2C300C8C3C400D3D1D100C2C1C100B8B8
      B800FAFAFA00FDFDFD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F9F9F900F2F2
      F200B4B4B4006A6A6A0055555400575757008F8F8F00D3D3D300D8D8D800CACA
      CA00C3C3C300B4AAA000B0927100B38F6900B7946F00BC987300CAAC8B00DCC4
      A900DBC3A900D9C1A700D7C0A400D4BA9D00D3B69700DBC1A700988877004C44
      3F0050494300554F49005F574F00957A6000A7896A00AC8E6F00B0947400B69A
      7C00BC9E8200C0A48600C4A98C00CAB09500D7C3AD00DCC9B600DDCDBA00DFCF
      BC00D3C3B1008B7F73006A635C00635D5800615B57005C585500494744004D4D
      4D00C3C3C300D4D4D400D7D7D700D5D5D500D3D3D300D1D1D100D0D0D000D1D1
      D100D7D7D700E1E1E100EBEBEB00F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500EAEAEA00DBDBDB00CBCBCB00BABABA00ADAD
      AD00A5A5A5009F9F9F009D9D9D00625E5D00242322001F1E1E00403E3B00403C
      3B003B3C3B002A2928001C1B1C005E5D5B00FEFEFE00FEFEFE00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00F9F9F900FCFCFC00D6D6
      D600D5D5D500ECECEC00F1F1F100F1F1F100F1F1F100F2F2F200F2F2F200EFEF
      EF00F2F2F200CCCCCC00BDBDBD00B4B4B400AAAAAA00969696008F8F8F00CCCC
      CC00C7C7C700C6C6C600C8C8C800C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C4C5C800C5C5
      C800C6C5C700C8C6C600C8C6C500C4C6C100C0CBC200BBD1C300A7C7B700507B
      680078AD960081D7B20057C2950055C291004ABD88003EBE820039C687002EC3
      840029B87E003DBC890071D5AC0069B394004C796700869C970099A6A400B3BC
      BB00C5CAC900C1C0C000D3CECF00C6C1C200D1CCCD00C2C0C000C2C1C100A6A6
      A600F5F5F500FEFEFE0000000000FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00E3E3
      E200838383005D5C5C006D6D6D008C8C8C0097979700A1A0A100B9B9B900BAB7
      B300B69A7C00B18C6400B48F6900B7956F00BF9D7900D1B49700DDC7AF00DCC6
      AA00DBC4AA00D9C3A900D8C0A700D3B79B00CAAC8B00D3B79A00D5BDA4006359
      500050473F006F5D4C00977A5D00A4856400A7886900AC8E6F00B0927400B698
      7A00BA9D8000BFA38600C3A98B00C9AF9500D7C3AC00DBC9B600DDCDBA00DFCF
      BD00DDCDBA00D1BDA600A9947F008B7D70007F7971008B8682007D7A77004C4B
      49009D9D9D00D1D1D100D5D5D500D5D5D500D3D3D300D1D1D100D1D1D100D5D5
      D500DBDBDB00E5E5E500EFEFEF00F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FBFBFB00F4F4F400EAEAEA00DADADA00CACACA00BABABA00AFAFAF00A7A7
      A700A2A2A200A0A0A00075747400545150001B1A1A002A282A0054504E003739
      34003C393900262424001B1B1B00ECECEC00FEFEFE0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D50003841400005900000056000000000000FDFDFD00FDFDFD00C7C7
      C700DBDBDB00F5F5F500EFEFEF00EFEFEF00F0F0F000F0F0F000F1F1F100EFEF
      EF00FBFBFB00929292007F7F7F007777770097979700A6A6A60095959500EEEE
      EE00E5E5E500E2E2E200E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E4E5E800E5E5
      E700E6E5E600E7E6E600E5E7E400E3E9E300D6E4DA00CCE8D9007CA49200689A
      8400A1DFC50066C39E004DC0910054C794004BC18A0041C0850034C281002DC4
      840030C488003DC48F0053C0940092EAC500679F880058726B005A6B67009EAA
      A700C7CDCB00C1C1C100C9C5C500C8C3C400CBC6C700C5C3C300C8C7C700A3A5
      A500F2F2F200FDFDFD0000000000FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F3F3F300DDDD
      DC006A69690083828300A7A7A600A4A3A3009D9B9B00979595008B8B8B00A48B
      7300B38C6600B4916A00B9957000BD9B7700D7BFA100E1CAB000E0CAB000DDC7
      AD00DCC6AC00DCC4AC00D9C3AA00D0B49800C6A68500CDAF9100D4BCA000CDB9
      A0008C7158009A7A5900A07F5D00A3836100A7866700AC8C6D00AF917100B397
      7900B99B7F00BFA18300C1A68900C7AD9400D5C1AC00DBC9B400DDCCB900DFCF
      BD00D8C6B300D9C7B100C3AD9400BCA48900BAA48E00A9A09A00ADAAA7008B88
      85009D9B9A00B7B7B600D4D4D400D3D3D300D1D1D100D3D3D300D5D5D500D9D9
      D900E0E0E000EAEAEA00F2F2F200F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FAFA
      FA00F4F4F400E8E8E800DADADA00CACACA00BCBCBC00B1B1B100A9A9A900A5A5
      A500A3A3A3009C9C9C00625E5D0021202000222020004B4746004A4645004544
      43002F2D2D001D1C1C006A696700000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FCFCFC00FEFEFE00C0C0
      C000E0E0E000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ECEC
      EC00FDFDFD005A5A5A003636360039393900747474008B8B8B0087878700F6F6
      F600EBEBEB00EDEDED00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00ECEFF000E9EB
      EC00EEEFEF00E8E9E800E5EAE500E4EFE500DFF5E70092B7A40065988000ADEB
      D0008AD5B6005EC49A004FC795004EC693004AC48E0042C38B003CC3890039C4
      8B003AC18A003BBB870049BE8E005DC799007ECFAD00568B770031594B007F9B
      9100C3D1CB00C8CAC900C7C0C100D2C8CA00CDC6C700C5C3C000C7CBC5009DA2
      9D00E2E3E200FEFEFE0000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E000E8E7
      E600B6B6B400B7B6B400B1B0B000ACAAA900A3A1A100AAA6A100DDD1C100BA97
      7100BA977100C3A48200E0CAB300E6D3BD00E5D1BA00E1CFB600E1CCB400DFCA
      B100DDC9B000DDC7B000DBC6AF00CDB09200C6A68500C9AA8B00CDB09400D3B7
      9D00C4AA8C009D7C5B009E7C5B00A1806000A4856400A9896900AD8F6F00B194
      7400B4987A00BA9E8000BFA38600C4AA8F00D3BFA900D9C7B100D8C7B000DBC9
      B600DBCCB700DCCAB700DCCAB400D9C6B000DCC9B300DBC7B300B3AFAA00BCB7
      B400A7A4A100AAA9A700C6C6C600D3D3D300D7D7D700D9D9D900E0E0E000E6E6
      E600EEEEEE00F4F4F400F9F9F900FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3
      F300E8E8E800DADADA00CBCBCB00BDBDBD00B3B3B300ADADAD00A8A8A800A6A6
      A600A8A8A80076747400555150001D1C1C00373333005B57570041413E004341
      4100292627001F1F1E00F0EFF000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100ECEC
      EC00FAFAFA002D2D2D000F0F0F000A0A0A000E0E0E001B1B1B0058585800F3F3
      F300F6F6F600F3F3F300F0F0F000F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F0F2F300EEF0
      F100F3F5F500ECF0ED00F1FBF400EFFEF600A7C5B500538068009AD6B9009DE3
      C40085D6B3005BC396004EC794004BC6920047C5910045C4900043C28E0044C3
      8F0042BF8B0043BC89004AC18E0052C8950067CCA20090DCBE0039765F0077A1
      9000BAD2C800C2C7C600C7C2C300D2C7C900CFC6C600C4C2BE00C7CCC4009DA4
      9D00DADCDB000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDC00E6E5
      E300DBD9D900B9B9B700B1B1B000ACAAAA00A6A4A300D5C9BC00E5D7C700BC98
      7400CAAC8E00E8D5C100E8D7C000E6D3BD00E5D1BC00E2CFB700E1CDB600DFCA
      B300DFCAB300DDC9B000D9C3A900CAAD8E00C6A78600C7AA8B00CCB09200D0B6
      9A00D3BAA000A68564009D7C5B00A1805F00A3836300A7886900AC8C6D00B092
      7300B4977900BA9D7F00BFA18500C4A98E00D3BDA900D8C6B000CDB7A000D4C0
      AA00DFCDBA00DFCDBA00DDCDB900DCCAB400DCC9B300DBC7B100C4BAB000BAB7
      B300A6A3A000A9A6A400C4C4C400D8D8D800DCDCDC00E2E2E200E8E8E800EEEE
      EE00F4F4F400F7F7F700FBFBFB00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00F4F4F400DFDFDF00E2E2E200F2F2F200F8F8F800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3F300E8E8
      E800DADADA00CCCCCC00C0C0C000B6B6B600B0B0B000ABABAB00A9A9A900A8A8
      A800A3A2A200656160001E1D1D002625250056504F00504E4D004B4847003534
      33001E1D1D007573730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000058000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000067F1F000C832A000C85
      2900005800000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100ECEC
      EC00FCFCFC0031313100020202000404040002020200070707003D3D3D00B8B8
      B800CBCBCB00CACACA00CBCBCB00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CAC9C900CAC9
      CA00CBCDCC00C2CBC600BAC8C000AEC7BB00688E7B009CCDB500B0EDD000A1E7
      C80087D6B30065CB9E0054C9970051C895004CC793004AC6920048C5910049C6
      920048C38F0049C18E004EC3910055C8960060C69A0082D4B2007FC4A800578A
      75009FBFB000B9C8C200C1C3C100CCC7C800CEC7C800C6C3C000C9CAC5009EA0
      9B00DCDCDB000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDCDB00E5E3
      E200F0EFEE00CDCCCA00B3B1B100ADADAA00CFC3B700E5D9CC00E3D5C600D3B7
      9A00E8D5C000EAD9C600E9D7C300E6D4BF00E6D3BD00E3D0BA00E1CFB900E1CC
      B600DFCAB400D9C1A900C9AA8B00C4A68500C7A98900C9AC8C00CCAF9100CDB1
      9700D3B9A000C6AA8E009B7A5900A07F5D00A1826100A6866600A98B6A00AF8F
      7100B3957600B69A7C00BC9E8200C1A68B00D1BCA600D0BDA600C1A98F00C7B1
      9A00D1BFA700D8C6B100DCCAB600DBC9B300DBC7B100DBC7B100D1C3B100B9B4
      B100A7A4A000A6A3A000C9C7C700DFDFDF00E5E5E500EBEBEB00F0F0F000F5F5
      F500F9F9F900FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E8E8E8006E6E6E00CDCDCD00ABA9A70081808000DCDCDC00EDED
      ED00F8F8F800FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F9F9F900F2F2F200E7E7E700DADA
      DA00CDCDCD00C1C1C100B8B8B800B4B4B400B0B0B000ADADAD00ACACAC00AEAE
      AE0083838300514F4D00201E1E003D39380064606000484645004C4A48002E2E
      2B0023222200E8E8E80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000560000005D0000006D0000006D
      0000006D0000006C0000006C0000006C0000006C0000006C0000006C0000006C
      0000006A0000006C000000640000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000AFDFBA00BDEAD400BFF0
      D100005600000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000F5F5F5005555550004040400060606000101010002020200040404000E0E
      0E000D0D0D000C0C0C000C0C0C000D0D0D000D0D0D000D0D0D000D0D0D000D0D
      0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000F0D0D00151112001512
      11000D0E0D000C130E000A1B0F00395B4B0094C2AD00B3E9D100A7E5C8009DE1
      C2009AE4C1006DCDA1005CCC9A0058CA980053C9960051C895004EC794004FC8
      95004FC6930050C6930054C6940057C8960060C99B006CC8A0008FDFBC007AB9
      9E00527E6B00ADC8BD00B7C4BD00C6C7C600CCC8C900C7C3C300CBC8C7009E9C
      9B00DBDBDB00FEFEFE00FEFEFE00FDFDFD000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00DDDCD900E3E2
      E100F6F4F400EEECEB00CACAC900C6BFB900E5D8C900E8DDD100E9DFD300DBC4
      AC00D5C0A700E3D0BA00E8D7C100E7D5C000E6D3BF00E3D1BC00E2D0BA00E0CC
      B600DBC6AD00C7A68500C3A18000C4A48500C7A98900C7AA8C00CAAD9100CCAF
      9200CFB39800D1B79D00AA8B6A009E7D5C00A1806000A4856400A9896900AD8F
      7000B1947400B6987A00BA9D8000C0A48900CFB9A100BFA48B00BCA38900C0A9
      8F00C7B19A00D5C1AA00DCC9B400DBC7B300DBC7B100DBC7B100DBC7B100BAB6
      B100ADAAA600A6A39E00CFCDCC00E8E8E800EEEEEE00F2F2F200F6F6F600FAFA
      FA00FCFCFC00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F9F9F9009E9E9E0000000000FCFCFC00D1D3D600AC9D9200A1998F007D7C
      7C00DFDFDF00EEEEEE00F9F9F900FDFDFD000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00F8F8F800F1F1F100E7E7E700DBDBDB00CECE
      CE00C3C3C300BCBCBC00B7B7B700B4B4B400B2B2B200B1B1B100B2B2B200B6B6
      B6006A646300201F1E002D2A28005F5B590059555400504E4C003C3B38001F1F
      1F00828181000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005600000C7E1F00EFEECF00C7F3
      EF00C7F3EE00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1
      ED00C2F0EE00B4E7D6004CAF3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CCECE400D3FBFD00C7FC
      FA00005C000000600000005C0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEF
      EF00F8F8F800D8D8D800A3A3A300A0A0A000A4A4A4009D9D9D009D9D9D009F9F
      9F009E9E9E00A1A1A100A0A0A0009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009E9C9C00A5A1A0009B98
      96009AA09B0083978D004D6D5F007CA89500B6ECD400A6E1C800A3E1C4009DDF
      C00096DCBA0074CFA40063CC9C005FCB9B005BCA990058C9980055C9970056CA
      980057C9970057C9970059C897005CC8970060C89A0067C89D0070C7A00098E2
      C10067A18600678F7D00A7BFB400BCC9C400C7CBC900C6C4C400CBC6C7009E99
      9A00DCDBDB00FEFEFE00FEFEFE00FDFDFD000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E8E800EBE9E800ECEB
      EA00F9F7F600F6F5F400F4F3F100F0E9E500EEE6DD00EEE6DD00E8DDCF00D3BC
      A300D3BCA300D3BCA300D1B9A000CCB39800E3D0BA00E1CCB600D3A48000BF98
      7100BA957100BD9A7600C09D7A00C09E7C00C1A07F00C1A18000C4A48300C4A6
      8600C6A68600C4A48500C3A38300A38360009E7D5C00A1826000A6856400A98B
      6A00AD8F7000B1947400B4987A00B79A7C00B1987C00B69D8000BAA18800BFA6
      8C00C4AD9500CCB7A000D0BDA400D3BFA600D8C3AD00D8C4AD00D8C4AD00D0C1
      B300C0BCB700A9A4A000CFCDCC00F5F5F500FBFBFB00FCFCFC00FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00C7C7C700E3E3E300F0F0F000DDDDDD00B3B5B800BDAC9C00AF9F9300B5A5
      9800978D85008C8C8A00DADADA00F1F1F100F9F9F900FEFEFE00000000000000
      0000FEFEFE00FCFCFC00F8F8F800F0F0F000E5E5E500DBDBDB00CFCFCF00C6C6
      C600C0C0C000BABABA00B8B8B800B6B6B600B5B5B500B6B6B600BCBCBC008884
      84004B49470022212000423E3D00706B68004F4D4C004F4E4D00313130002524
      2300F3F3F3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005800000C802D00DDFBF000D5FF
      FE00D5FFFE00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D3FFFF00BFF4E20057B53F00005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CFEBE600D3FFFF00C7FF
      FF00005D0000005F0000005A00000059000000580000005A0000005A0000005A
      0000005A00000059000000580000005800000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F3F3
      F300ECECEC00F2F2F200EFEFEF00E9E9E900EEEEEE00ECECEC00F2F2F200F3F3
      F300F0F0F000F7F7F700ECECEC00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F1F1F000EFEEEA00EFF2
      EC00E3F1E8008EA99C00729B8A00BDECDB00AEE9D000ACEBCF00A4E4C600A8E7
      C9009BDCBD0079CEA5006ACD9F0067CB9D0063CA9B005FC99A005BC999005CCA
      9A005ECA9B005FCA9B0060C99A0060C7980062C899006DD0A30063C095007ED0
      AA009FE4C400699E860092B7A600B4CCC100C2CDC900C4C5C500CAC6C9009C97
      9900DBD9DA00FDFDFD00FDFDFD00FCFCFC000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E300EEEAE800F0EF
      EE00FBFAF700F9F6F500F6F4F200F1EEE900EEE6DD00EEE6DD00E6D9CC00D3BC
      A300D3BCA300CDB39A00B99D7F00B0917300E0CCB300D8AC8600C0592200B98C
      6100BA8F6600BC8B6100BD855900BD7F5400BC7D5000BC825700BF977300C09E
      7C00C09E7C00BF9D7A00BF9B7900B18F6F00A07F5D00A1805F00A4856300A989
      6900AC8E6D00B0927300B4957600B1916F00B49A7C00B69D8200BAA18800BFA6
      8C00C3AC9400CDB7A100D9C6B100E1D0BD00E1D0BD00DDCCB600DBC7B100D3C4
      B300C4BFBA00ADA9A300CDCAC700F5F5F500FCFCFC00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F7F7
      F700A7A7A700FCFCFC00F4F4F400F3F3F2009D968F00D4BDAD00C4B5A400BFAD
      9F00AB9B9000BBA89B009489800099969600D6D6D600F2F2F200F9F9F900FCFC
      FC00FBFBFB00F7F7F700F0F0F000E5E5E500DBDBDB00D1D1D100C8C8C800C2C2
      C200BFBFBF00BBBBBB00BABABA00BABABA00BBBBBB00C1C1C100CACACA007270
      6C002221200034302F006B6464005D5A590055515100413E3D00252423009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A00000C832F00D1F9F600D1FF
      FD00D1FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D5FFFD00BFF3E20064B34500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000C5EBE700D3FFFF00CFFF
      FF00005A0000005C0000005A0000005800000056000000560000005800000058
      000000580000005800000056000000560000005C0000005A0000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EEEEEE00F5F5F500EFEFEF00F1F1F100F5F5F500EDEFEE00F2F8F200E0ED
      E300ACC4B600688B7C00BEEBD800B5EDD600A8E5CC00ADECCF00A7E5C700A4DF
      C100A4DFC10090DDB8007BD4A9006BC89C0068C89C006BCDA0006ACEA10064CA
      9D0064CA9D0065CB9E0068CC9F006ACB9F006ACC9F006ACB9E0070CEA30077CD
      A40084D1AC0099D9BB00497B66008FB2A300B9CEC500C1C9C700C2C2C4009A97
      9900D4D3D400FEFEFE0000000000FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E3E100EBE8E600F4F3
      F100FDFCFA00FBF9F700FAF7F500F4F1EE00EEE7DD00EEE6DD00E3D7C700D3BC
      A300C9B09500B79A7C00AF8F7000A7886700D3B19400C9672E00C0471400BC50
      1B00BC481500BC3D1000BA340B00B92F0800B62A0600B62A0500B7491800BA94
      6F00BA977100B9957000B9946F00B6926D00B3916C00BC9D7F00BFA08200B192
      7100A9896A00AC8E6F00B1917000BC987400CAAF9200CDB79D00C1AA9100BFA9
      8F00CAB49D00DCCAB600E3D4C400E5D7C400E3D3C000E1D0BC00E0CFB700DCCD
      BA00C7C3BC00B4AFAA00CCC7C300F7F7F700FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900B3B3
      B300F3F3F300FEFEFE00E9E9E900989DA100DFCCB800DCC6B400CFBBAB00C7B3
      A300C1B4A100BBA79900A8998D00B5A594008E847B0096959400DDDDDD00F0F0
      F000F3F3F300EEEEEE00E6E6E600DBDBDB00D3D3D300CBCBCB00C5C5C500C2C2
      C200BFBFBF00BDBDBD00BEBEBE00C0C0C000C5C5C500CFCFCF00959393004240
      3F00242322004D4847007E76750054515000514F4E00353433002A292900F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000590000005C0000005A00000067000000802C00148A4A001A8E4D00178E
      4D00178E4D001D8E4D00238F4E001A8C4100005F0000005A0000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EBEBEB00EDEDED00F0F0F000F1F1F100F1F1F100EDF2EF00DFF2E700AEC9
      BB0052756400AED8C600B4E6CF00B0E7D000B0EAD100ABE6CA00A8E3C600A5DD
      C100AAE3C6009AE1BD0085D7AD0076CBA10072C99F0071CDA20070CEA2006BCB
      9F006ACB9F006BCCA0006DCDA1006FCDA10072CDA10077CEA40076CCA2007CD0
      A8007BCBA50098E1BF0097D5B9005585700099B9AC00B4C6C000C1C8C7009396
      9600D4D4D400FEFEFE0000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00E6E5E100E7E5E100F6F5
      F300FDFCFB00FDFBF900FCFAF700F9F5F200EFE7DF00EEE6DD00E1D3C000CAAD
      8E00BC9B7D00B3957700AD8E6F00A6866600BD7C4F00C14D1700C0411100BD3C
      0E00BD360B00BC300800BA2B0600BA270400B6240200B6220000B4200000B455
      2200B38C6400B18C6600B38E6600B0896300AF886000A17F5B00A3805C00AD8C
      6700AA896900AD8E6F00B7946F00BC9A7600CDB39700D8C4AC00D3BFA700C0A9
      8F00C6AF9700CCB6A000D1BDA700D4C0AA00D7C3AD00D8C4AF00D8C4AD00D9C6
      AF00CDC6BD00BFBAB600D0CAC400F7F7F700FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F0F0F000BDBD
      BD00FCFCFC00E1E1E100E4E4E400B5AB9F00E9D1BD00DCC4B300DCC4B300DCC4
      B300CAB4A400C1AD9C00BFAC9C00B5A39400A8948600AB9C8D0096887D008A8B
      8B00DADADA00DBDBDB00D9D9D900D2D2D200CCCCCC00C8C8C800C4C4C400C3C3
      C300C1C1C100C2C2C200C5C5C500CACACA00D3D3D300DADADA00797471002322
      21003935340079726D005F5B5A005C595900454343002A2828008F8F8F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000580000005C0000005A0000007D1F009BDDBD00D3FCFF00D7FFFF00D3FF
      FF00D3FFFF00D9FFFF00DEFFFF00D7FBED0000600000005A0000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F3F3F300F1F1F100F5F5F500EFEFEF00EBEBEB00E7F0EC00D0F0E200608C
      7900B1E0CA00C4F1DD00B9EDD600AAE1C900ABE2C900AAE1C600A7DEC300A8DD
      C200A5DDBF009EE1BD0090DCB30083D2A9007CCEA40077CEA30076D0A50071CD
      A20071CDA20072CEA30074CFA40075CFA40079CCA50086D2AC008BD8B20089D9
      B20088D9B2007DCCA700A1E6C60088C3A80058847000B8D5C900B5C7C1008F97
      9400D2D4D400FEFEFE0000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F5F5F400F6F2EE00E1DCD900FCFA
      F900FEFCFA00FEFCF900FDFAF600F0DDCC00D99E6F00D07D4400CF763900CC71
      3600BF8B6100B3957700AC8C6D00B7673700C4501800C3491500C0411100BF3C
      0E00BD360B00BC300800BA2B0600B9270400B6240200B6220000B41F0000B31F
      0000BF4C1A00D3B69A00D3BCA300D3BCA300CFB69A00C09E7D00B18C6300AD8B
      6400B08E6C00CCB19500C9AD9100C09E7C00D3BAA000DDCDB600E0D0BC00C1AA
      9100C7B09800CCB7A100D4C1AC00D8C7B100DBC9B300D9C7B100D8C4AF00D5C7
      B700D5D3CF00DDDBD800E8E3E000EAE9E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA009E9E9E00F8F8
      F800ECECEC00F4F4F400A9ACAF00E8D0BB00DCC6B100DFC6B500D6BFAC00CAB8
      A700D0B9A700CDB7A400BCA99800B7A38F00B4A39200AC9B8B00A3908300A594
      84008F8278007C7B7A00C3C3C300C6C6C600C7C7C700C6C6C600C6C6C600C6C6
      C600C5C5C500C8C8C800CECECE00D7D7D700E9E9E9009E9B9A003D3B3A002826
      250056525000817C79005A565500555151003C38390032323100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FE00004C0000005D0000005800000C7D1500B2DD9E00C2FFF000D3FDFE00D1FF
      FD00CFFCFA00CFFCFD00CFFDFF00CAF7E6000063000000510000005400000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EEEEEE00EAEAEA00F2F2F200EDEDED00F1F1F100DDE8E30062927F0080BB
      A400C9FFEA00B9EFD800C1F5DD00BDEED600BFF0D800BDEED400B5E6CC00B5E8
      CD00AFE6CA00A4E3C2009CE1BC0091DBB50085D1AB007ECFA8007DD1AA0078CF
      A70077D0A80078D0A80079D1A9007AD1A90086D1AD0096D6B40098DBB90095DF
      B90093E1BA0091E1BB008FDBB700AFF3D20074A98F00688D7C00B4CCC0008F9D
      9600D1D4D300FEFEFE0000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F2F1F000F9F4F000DDD9D500FEFC
      FA00FEFCFA00FDFBF600EACAAD00D58E5900D1804800D07C4100CF763900CC71
      3700C08F6700B4987A00B1866300C3581F00C44F1800C1481500C0411100BF3C
      0D00BD360B00BC300800BA2B0600B9270400B7240200B6220000B4200000B31F
      0000B4220100C7794B00D3BCA300D1BAA100BC9A7600C4A78900D1BAA100D3BC
      A300D3BCA300D3BCA300D1BAA100C6A78800D5BFA600E0D0BC00E6D8C600C3AC
      9400C6B09800D1BFA700D8C7B000DCCCB700DDCCB700DBC7B300D9C6B100CCC6
      BD00D7D4D100E2E0DD00EBE8E200E6E3E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00E3E3E300BFBFBF00FCFC
      FC00F3F3F300CFD0D100A0968A00D9C1B100D0BCAB00C7B3A100C4AFA000C9B1
      A000C0AB9900BCA59300BDA79600B9A39200B0988A00A8968600AB988900A190
      8300948575009B897A006D615B007C7C7B00B8B8B800C2C2C200C5C5C500C9C9
      C900CCCCCC00D2D2D200DCDCDC00E6E6E600E2E1E10077716F00222020003E3B
      3800807C7B00645F5D005F5C5B004846450027262500A29F9E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D7FF
      FF00005400000058000000580000087B15009BD59E00D3F7F400CFFCF700DBFF
      FA00DBFFFA00DBFFFA00D7FDFA00CFF5E4000061000000540000005600000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE0000000000BBBB
      BB00E3E3E300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F8F8F800F0F0F000ECECEC00F0F0F000EAEAEA008E9B9600437E67007DC3
      A9008DCDB3008FC8AF0093C6AE009BC9B1009DC9B000ACD9BF00BEEED400B2E5
      CA00ACE3C700A6E4C300A3E7C2009BE1BB008BD6B00083D0AA0081D3AC007ED2
      AA007CD3AB007DD3AB007ED4AC0080D3AC008FD3B100B1E5C80092CCAF008DD1
      AE007CC9A3007ACCA30084D5AE0080CAA60088C4A7005A8672007C9C8C00869A
      9100D0D5D300FEFEFE0000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F2F1EF00F2ECE800E3E1DD00FEFC
      FA00FEFCF900F6ECE000D48C5500D3884F00D1804800D07C4100CF763A00CC73
      3A00C0946F00B79A7D00B48B6600C4591F00C44F1800C1491500C0411100BD3C
      0E00BC360B00BC300800BA2B0600B9270400B7240200B6220000B3200000B31F
      0000B31F0000B4230200CFA07D00C0A18200B18B6400C0A08000D1B79E00D3BC
      A300D3BCA300D3BCA300D3BCA300D0B69B00D9C3AA00E2D1BF00E8DBCA00C7B1
      9A00C4AF9500D0BCA400DDCCB900E2D3C000E3D4C100DDCCB700D0C4B900C6C0
      BC00D4D1CF00E1DFDC00E8E2DF00E5E2DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB009696960000000000E8E8
      E800E0DFDF00B0B0B000DDC7B500BBAC9D00BDA99900BCA99800B7A39300AD9D
      8900B19D8E00B49F8F00B09B8A00AD988800AF998900AD978800A48F7E00A08B
      7A009C8E7E0093806F00806E5F00897767005550490086858500B6B6B600C8C8
      C800D4D4D400DEDEDE00EAEAEA00FAFAFA00989694003C3838002D2928005D5C
      590086807E005B56570056555400424040003735340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE900D5FFFF00D5FF
      FF005BB37B00006A000000590000067B150098D4A100D9F8F70098D7B00060B7
      670066B8680066B8680064B867005BB35B000058000000560000005800000073
      0700B4F5D500038414000059000000560000FAFEFE00FBFEFE00FCFFFF00BBBB
      BB00E4E3E300F2EFF000F3F0F100F2F0F300F0F0F300EEEFF500ECF0F500F0F1
      F200F3F1F100F3F1F100F3F1F100F3F1F100F3F1F100F4F1F100F4F1F100F4F1
      F100F4F1F100F4F1F100F1F1F100F0F1F100F1F1F100F0F1F100EFF1F100F1F1
      F100EBEDEC00E9ECEC00F0F2F200EBECEC00E1E3E300919D9A00709B8E006193
      8500659184006790830075958800718E80005B7F6E00699B8700B6EBD400B2E1
      CA00B3E2CA00AEE5C800AAE9C800A3E4C20095D9B6008BD2AF0089D3AF0086D2
      AE0086D2AE0084D3AD0085D4AE0085D4AE0090D2B100B6EACF00528B71005387
      6D005E9278005290760046816A005C8F7A005A86730068897C00879C9200909A
      9500D3D6D500FEFEFE0000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F2F0EE00EAE5E000EAE7E300FEFC
      FA00FEFBF700EBCFB100D48C5400D3864F00D1804800D07C4100CF763A00CC73
      3A00C1987600BC9E8200BDA08300CA865800C4501900C1491500BF411100BD3C
      0E00BD360B00BC300900BA2B0600B9270400B92B0700BA370C00BA3D1000BC45
      1600BD491800BA3F1100BC551F00B3886000B48F6A00C1A18000D0B79E00D3BC
      A300D3BCA300D3BCA300D3BCA300D3BCA300DCC9B100E2D3C000E9DBCC00D3C0
      AA00C3AD9500CAB69E00D8C7B300E8D9CA00EADCCD00E6D7C600DDCDBC00C4BF
      BA00CDCAC600DBD7D400DDD8D300E3DFD900FFFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00C5C5C500F7F7F700E7E7E700F0F0
      F000DFE1E30092867D00B4A39600B7A59700B3A19300A9988A00AB988A00B09D
      8D00AC998A00AB968300AB978800AF998900A9948400A8928000A9938100A790
      7E009C88750094806E00907D6B00867263007764560085756400655950008988
      8800CDCDCD00E2E2E200F1F1F100D6D5D50075716F0021201F00403C3B008984
      83006A6564005D5B5A004B48470025252400B0AEAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000095D4A400C5F7E600D3FF
      FD00DBF9F20043AB670026913F00007B15009ED6A100D3F9F6005BB47500006D
      0000006F00000070000000700000006F00000055000000580000005900000073
      0700B4F5D500038414000059000000560000F4FEFC00F6FEFE00FAFFFE00BABC
      BC00E4E0E100F5EFF100F2EBEF00F0ECF200ECECF400E9ECF500E4E8F200EDEE
      F300F3F1F000F3F1F000F3F1F000F3F1F000F3F1F000F4F2F100F4F2F100F4F2
      F100F4F2F100F4F2F100F2F2F100EFF2F200F0F2F200EFF2F200EFF2F200F0F2
      F200EFF1F100EEF1F100EEF1F100EFF1F100EEF1F100ECF1F100E1F0F200E3EF
      F300E5EFF200E0F0F200EBEFF100EEF2F200A8C5BE0047887900ADEDDA00B8E6
      D300BDE3CE00B7E5CD00AFE7CD00ABE6C900A5E0C4009BD9BC0094D3B50091D2
      B3008FD2B3008ED2B1008DD4B0008AD3AF0094D5B600B3ECD30048876F00A8CA
      BA00CAD8D000AFD1CA00BFD5D300BECDCD00B9C9CA00B9C6C700C4C7C9009692
      9400DBDADA00FEFEFE00FEFEFE00FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000F0EEEA00E1DBD500F0EEEA00FEFB
      F700FCF6F100E1B18800D38C5400D3864F00D1824800D07C4100CF763A00CC76
      3F00C4A07F00BFA38600CAAF9500D3B79E00C7662C00C3491500C0441300C351
      1C00C4612B00C7744400C7774800C7744400C3602A00C0501C00B9340B00B424
      0300B6240300B72C0800B4592400B3855C00BC9A7600C7A98900CFB49B00D3BC
      A100D3BCA300D3BCA300D3BCA300D4BDA400DDCCB700E5D5C400EADDCD00DDCC
      B900C1AC9200C9B39D00D0BDA600E2D3C000F0E5D800ECE0D100E6D5C300CFC4
      BA00C6C3BF00D3D0CC00D1CCC600E7E1DC00FAF9F90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00A1A1A10000000000FBFBFB00DDDD
      DD0093909300BFAC9B00B1A19400AC9B8D00AC998800B09D9000B19F9000AD9B
      8B00AD9C8A00B59F8F00B39D8D00AC998900AF998900B39C8A00AD978400A892
      8000A7928000A38B780097836F008F7A64008E7A670089746300867265009481
      6E008B7D6F0093939300EFEFEF009694910034302F002C2C290067615E008883
      8100615E5C005653510043414000323031000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000037920F007BD09600BAF1
      E400D9FFFF00D5FFFF00D7F9DD00208C4200A1D9A500C2F5F4003AA976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F5FDFC00F9FFFE00FAFFFF00BBBC
      BC00E2E1E100F5F0F100FAF5F600F6F0F200F1EDF100F6F4F900F5F4F800F2F6
      F500E8F1EE00E8F1EE00E9F1EE00E8F1EE00E8F1EE00E9F1EE00E9F2EE00E8F2
      EE00E9F1EE00E9F1EE00EBF1EE00EFF0EE00F0F0EE00F0F0EE00F0F0EE00F0F0
      EE00F0F0EE00F0F0EE00F0F0EE00F0F0EE00F0F0EE00F0EFEF00EDF1F000F2EF
      F000F5EFF000ECF1EF00F6EFEE00F6F3F000A8C2B8004A8D7A00B0F2DD00ADDC
      C900B1D8C300B1E0C900ACE3CA00AAE3C700A7E1C500A0DCBF009CDABC0094D4
      B60092D4B40090D3B3008ED4B0008BD3AF008FD0B100ADE7CD0049876E00AFC9
      B800DADAD100BED3CC00CFD6D400CDCCCF00C8CDD000CBD0D300D0CFD1009994
      9600DCDBDB00FEFEFE00FEFEFE00FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000EEE8E300D3CAC300FDFAF600FEFB
      F700F0D9C100D4915B00D38C5400D3864F00D1804800D0834C00BF7C4B00CAA0
      7C00CAB09500CFB49B00D3BCA300D3BCA300D3B79D00C9744300D0A78600D3BC
      A300D3B9A000C4632C00BA2B0600B9270400B6240200B4220000B3200000B31F
      0000B31F0000B31F0000B1491900BA957400C9AA8E00D5BDA300D3BAA100D1B9
      A000D3BCA300D3BCA300BDA48600AA8C6C00BDA48B00C6AF9700D0BCA600E5D7
      C400BFA78F00C3AD9500CCB6A000D3C0A900D7C4AF00E1D1BF00E8D9C900DFCD
      BA00C9C0B900C9C4C100BAB4AF00E6E0D700EEEBEA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00ADADAD00FEFEFE00F0F0F000DADADA00D6D9
      DA00998E8500AFA09400AD9D9200B3A19400B7A59800B8A59600B8A49400C0AB
      9B00C3AC9D00BDA59600BFA89300C4AC9900C3AC9600B9A19000BBA38F00B9A3
      8F00B4998800AC938000A88F7D00A08A770099836E0096806C00998571009C88
      7400A18D7A00B0998600867A710056555400252423004A4443008D8684006A63
      6100635F5E004B49470025252500C1C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000005500000055000040A8
      7500C2FFFA00E2FFFA00D1FFEE00E6F5F300B4E2C600C7F9F70040AB77000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FCFDFD00FDFFFF00FCFEFE00BCBE
      BE00E0E2E100F0F1F000F3F1EF00F9F3F100FAF1F000FBF1F000F8ECEA00F6F3
      EE00EEF4EC00EFF3EC00F0F3EC00EFF4EC00EFF4EC00F1F4EC00F0F4EC00EFF4
      EC00F0F4EC00F1F4EC00F3F4EC00FAF2EC00FBF2EC00FBF2EC00FBF2EC00FBF2
      EC00FAF1EC00FAF1EC00FAF1EC00FAF1EC00FAF1EC00FAF2EB00FAF2E900FDF0
      E900FDF1E900F9F3E800FDF1E800FBF3EA00ADC0B2004B897300B1F3DB00B5E5
      CF00B9E2CD00B2E2CB00ABE1C800AAE1C600A7E1C500A6E1C400A4E1C30099D8
      BA0095D7B80093D6B6008FD5B1008CD3AF008FD0B000B1ECCF00528D7000B6C8
      B500E9DDD300D4D8CE00E1D7D200DBCDCC00D1CDCC00CED1CF00D0CFD0009995
      9600DCDBDB0000000000FEFEFE00FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000EAE3DC00D9D1CA00FEFBF700FEF9
      F500E2B38B00D8986400D99D6A00DCA17100E2BFA100D9C4B000A78B6C00AD91
      7100CDB49B00D3BCA300D3BCA300D3BCA300D3BCA300D3B79D00D3B9A000D3BC
      A300CF9A7300BD370C00BA2B0600B9270400B7240200B6220000B31F0000B31F
      0000B31F0000B6270500B07C5400BC9D8000CDB19500DBC4AD00DBC6AF00D1B9
      9E00D1BAA000BCA18300A4866600A7896900BDA38900C6B09800CAB49D00C6B0
      9A00BDA68C00C1AC9400CAB49D00D1BDA700D4C1AC00D7C3AC00DCCAB700DCCA
      B600D7C9B900CFCCC700C1BAB600DCD3CC00EBE9E700FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F6F6F600C0C0C000F4F4F400ECECEC00E8E8E8008585
      8400B4A39600B5A59800BCAC9F00BFAC9F00C1B09F00CAB7A500D0BBA900CFB8
      A700CFB8A500D3BCA900D7BBA800D1B5A100D1B5A100D6BBA400CFB39D00C4AB
      9600C3A79300C1A59200B49C8800AD938000AB907D00A48D7700A1897400A58D
      7A00B0988600B8A088006A615E0033322F00383434006F69680097908E00625F
      5F00545150003B383A00312F2E00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000000580000005C0000006C
      0000D3FBE800CCFFF700DBFFF200D7FCFE00DDF9EA00D1FFFD0040A976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFBFE00FFFEFF00FCFCFC00BBC0
      BF00DCE3E000EDF3EE00F7F8F100FCF5EC00FFF4EB00FFEEE600FEE6DC00F9E3
      D800F6E7DA00F7E7DA00F7E7DA00F6E7DA00F6E7DA00F6E6D900F6E6D900F5E6
      D900F6E6D900F6E6D900F7E6D900FAE6D800FAE5D900FAE6D800FAE6D700FAE5
      D900FBE6D900FBE7D800FBE7D900FBE6DA00FBE7D900FDE7D800FFEDD900FFEC
      D900FFECD900FFEED900FFECD900FAEBD900ACB9A30055917500B2F2D600B2E3
      CC00B5E0CB00B3E3CC00ADE2C900A9E0C500A8DFC400A7E1C500A8E4C6009EDC
      BE009ADABB0095D8B80091D6B2008DD3AF0091D2B000B4EFD0005B927400B2BC
      A700EAD0C100E5D6C900ECD1C700EBCFC900E2D5D000D4D2CE00CDCECC009595
      9500DCDCDC000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000FEFEFE00E6DFD700E2DCD400FEFBF700FAF1
      E900E7C3A300E2B18900DDA77900E1B69400E6D8C900D9C9B700A7896A009A7C
      5D00C9AF9400D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300D1B1
      9200C14D1900BC320900BA2B0600B9270400B7240200B6220000B3200000B31F
      0000B4220100C77D5100B6977900BFA18500D0B69A00DFC9B100E3D1BC00CDB3
      9A00B3977900A3856400A4866400A9896A00B79D8000C1A99100C6AD9700BAA3
      8800BCA48B00C0A99100C6B09A00CDBAA300D0BDA700D3BFA900D4C0A900D7C3
      AC00D9C6AF00E0D9D300D4D0CA00D9D0C600ECE9E600FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA0096969600FEFEFE00FCFCFC00E0E0DF00C7C7CA00A79B
      8F00C1B3A500C1B1A500C7B5A700D0BDAF00D9C6B400D9C3B100D9C1B000E0C7
      B500E0C7B800DCC0AB00DABFA900E5C9AF00E0C3AD00D9BBA400D9BBA400DAC0
      A900D4B7A000CAAC9600C6A99400C1A58F00B4998400AC927D00AC927D00AD93
      7E00AD937E00B89F88005554530029272700514C4C009F989800756F6C006C68
      6500504E4D0029292700D1CFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000007A
      1500067F1B000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005600000056
      0000005800000055000000560000005800000058000000580000005900000058
      000037AB6200A1F0D100D1FFEF00D3FFFF00D9FFFC00C7FBFC0046AB75000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFBFE00FFFCFE00FBFAFC00BCC1
      C000DBE3E100EBF3EC00EDEFE500FAF5E700E8D6C700C09F8D00B2897600A779
      6500A77A6500A87A6500A97A6500A87A6500A87A6500A8796400A7796400A679
      6400A7796400A8796400A4796300A07B63009E7A63009E7B63009E7B62009E7A
      63009F7B64009F7C63009F7C64009F7B64009F7C64009F7C6300A17B5F00A77A
      5D00A67B5D009B7C5F00A07A6000997E6300727A5D005A937200B4F1D500AEE1
      C900B8E6D000B7E8D000B1E6CD00ACE1C600A8DEC300A6E0C400A7E2C500A1DE
      C0009CDBBC0097D9B90092D6B3008DD3AF0092D3B200B3EDCE00538768007F81
      68009D766300A0847000B68C7C00D0A79A00DFC8BF00D6D1C900CDCFCB00999B
      9900DCDCDC000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000F5F4F300E5DDD400E7E2DD00FEFBF600F5E7
      D800DBA67400D48F5800D48B5400D89A6900E5D4C000D9C3AD00A98869009D7D
      5F00C9AF9500D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300D3BCA100CA7F
      5000BD360B00BC320800BA2B0600B9270400B7240200B6220000B3200000B31F
      0000BF4B1A00D1B79B00BFA38800C0A38800D1B79D00DFCAB300E6D3C000BDA1
      8300A4856400A4856400A7886700A98B6C00B79D7F00BCA38600B0957900B9A0
      8300BDA48900C1A98F00C6AD9500C9B19A00CCB69E00D0BDA700D1BFA700D4C1
      AC00D9C4B000E3D9CD00EAE8E600DBD1C900EEE9E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E9E9E900D2D2D200FAFAFA00DADADA00D3D3D3008B898B00C6B7
      AC00C7B8AB00D1C0B300E3C9BB00E0CCBB00DFCAB800E4CDBC00ECD6C300E5CC
      B900E0C1AD00E7C9B100E8C9B700E0C3AC00DFBCAB00E3C6AC00E4C6B000DCBC
      A400DCBBA400E1BCA400D6B79F00C4AB9300C4A79000BCA18B00B1978100AD93
      7A00B3988100C0A38B0047423B003B3738007D787500A19B97006E6A68005F5C
      5B00413F3D0039393900EFEFEF00F8F8F800FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600005EB4
      7A004FA4530000690000006A0000006A0000006A0000006A0000006A0000006A
      0000006A0000006A0000006A0000006A0000006A000000690000006A00000061
      0000005A00000066000000690000006A0000006A0000006A0000006A00000069
      0000006C000092E8B700CAFDEE00D3FFFD00CCFFFC00BDF9F90043A66B000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFCFF00FFFAFD00FEFBFD00C0C6
      C400D7E0DD00EFF7F000F1F2E800FBF3E400AD947F009E765F00AE7B6200B87C
      6000BC7E5E00BB7D5D00BA7C5C00BA7B5C00B97B5B00BD7F5F00BD7F5F00BC7D
      5E00BB7D5D00BA7C5C00B67C5C00B1805D00B0805D00B0805D00AF805C00AF80
      5C00AF805C00AF805C00AF805C00AE7F5B00AE7F5B00AE7E5B00B07F5D00B57F
      5D00B37E5C00A8805C00AC7E5D00A3805F007779590060967200B5F2D300AEE0
      C800B4E2CC00B3E4CD00B1E4CC00AEE2C700ABE0C500A7DFC400A6E0C300A4E1
      C300A1E0C1009DDEBE0097DAB70090D4B10093D3B100B2ECCD00588A6900847F
      6500A6786000A6806700AE796400B5827100CEB2A400D3CBC200CECFCB00989D
      9B00E1E2E20000000000FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000E1DCD800E8E0D500F6F2EE00FDF7F300E6BD
      9B00D5955D00D48F5800D38C5400D3864F00D1804900D7AF8B00B6957300B192
      7100D3BCA300D3BCA300D3BCA300D3BCA300D3BCA300CCB39800CCB09700D3B9
      A000D7B69700CC703A00BD300900BA270400B6240200B6220000B41F0000C66C
      3900D3BCA300D3BCA300CCB39A00C1A48900CDB39800D9C4AC00E2D0BC00EAD9
      C700ECDDCC00AD8F7100AC8F6F00AF917100BCA18600C1A78E00B69A7C00B79B
      7A00C0A38300C9AC8C00D0B69A00CFB39800C9AF9200BDB6AD00D1CCC700E7E3
      E000F6F4F200FDFCFB00FDFCFB00D9D1C900EEE7E000FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC008E8E8E00F7F7F700E9E9E900E5E5E500C4C4C400B7AB9D00D4C3
      B700DDCDBF00E5D0C100E1D0C000E7D4C100EBD6C400E9D3BF00E5CDBB00E9D1
      BD00E8CDB800E3C7B000DFC4AD00E4C6B100E9C9B000E0C1A900DABCA500ECCC
      B300F8DFC300F3D7BB00F4D7B800DFBCA400C4A89200CDAC9400CCAC9300C7A8
      8F00CAA88F00B7977D00B4AFAF00968E8B009B9390007B777700746E6E00514F
      4E0023242400A49082009B8A7D00B8B9B900F7F7F700F9F9F900FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F000000751800BFE5
      D90084BF79003D9917003D9A17003D9A17003D9A17003D9A17003D9A17003D9A
      17003D9A17003D9A17003D9A17003D9A17003D9A17003D991700499D18000E7B
      0000006700001A951800329917003D9A17003D9A1700409918003D9A17003596
      1700067E2F00B4EDCB00D1FFF200D3FFFA00D1FFF300BFFFF90026913E000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFCFF00FFFAFD00FFFCFE00C5CA
      C900D8DEDC00EFF4EF00F4F2E800FDEEDF00A3877100A97F6400B5806300BB81
      5E00BD805A00BD805A00BB7E5800BB7E5800BA7D5700BC805900BC805900BA7E
      5700B97D5600B87C5500B87C5400B6805500B77F5600B57F5400B47E5300B57D
      5400B8805600B7825700B8815700B87F5600B7805500B67F5600B27E5900B67C
      5A00B67C5800AA7E5800AF7C5800A77E5C007E7B570064967000B7F3D200AFE0
      C800B3E0CD00B3E1CC00B1E3CB00AFE2C700ACE1C600A9DFC400A6DFC200A6E0
      C300A3E1C200A0DFBF0099DBB80092D4B10094D3B200B2E9CB005B8969008880
      6300AB785E00AA7F6100B57B6200B37C6800CBAB9B00D6CDC400CCCFCB00959A
      9A00E6E7E70000000000F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000E1D9D100E7DDD300F9F4F000FDF7F300E7C4
      A100D5955D00D48F5800D38B5400D3884F00D7946100DDC7B000BD9A7700C0A1
      8200D3BCA300D3BCA300D3BCA300D3BCA300CCB19800C0A48800C7AC8F00D0B6
      9D00D7C0A700DDC7AF00DDB79700D37A4900C3441400B7240200BD481700D1B6
      9B00D3BCA300D1BAA100CFB69D00C3A78C00CCB39800D9C3AA00E1CFB900E8D8
      C400ECDDCC00B4987A00AF927300B3957700C0A78C00C1A98E00B1957600B99B
      7D00C4A68900C9AD8E00CCAF8F00CFB19500CCB19700C6BAB000D3CFC900E5E1
      DD00F5F3F100FDFCFB00FEFDFC00DFD8D000EAE2D900FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D7D7D700E1E1E100FAFAFA00E7E7E700CACACC008B898900E5D4C700E1D3
      C300E3D3C600E8D6C600EDDACA00EBD7C900E8D3C100E9D4C300EBD4C100E8D3
      C000E1C4AF00E3C7B300E7C9B300E1C3AB00EBCFB700EDCCB300B9A893007B68
      5E0049423C0027252400181819001415150011121200161616001C1C1C003433
      340047444000857B74009F949300FBF8F700FBFAFA00A8A5A100686461003837
      3A0036363300D7B79B00BDA48D00C0A58F0097897F00BBBBBB00F7F7F700F9F9
      F900FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005C0000005C000000710E00EAFDFF00CCFF
      FD00CFFDFD00D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FF
      F900D9FFF900D9FFF900D9FFF900D9FFF900D9FFFA00D9FCFD00E6FFFF0066B0
      880000743000D3FDFF00D7FFFC00D9FFFA00D7FDF900DDFBFF00CFFFFC00DBFF
      F900F5FFFF00E0FFFC00D7FFFD00DDFFFC00EFFDF900CFFFFF00005600000059
      0000005C00000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFEFF00FFFCFD00FFFEFE00CED0
      D100D8DCDC00EDEEEC00F7EFE900F3E2D400A2857100B8907600BD8D6E00BA8B
      6700B98C6400B88B6300B78A6200B6896100B5886000B3865E00B2865D00B185
      5C00B0845B00AF835A00B2825900B7815700B8805700B7805600B6805500B77F
      5600B9825800B8825700B9825800B8815700B8815700B6805800B37F5D00B77D
      5D00B77E5B00AD805A00B27E5900AB815D0083805B0067957000BAF2D300B2E2
      CA00B5E0CF00B4E1CC00B3E3CB00AFE2C700ADE1C600A9DFC400A7DFC200A4DE
      C100A4E0C100A1E0C0009BDDBA0095D7B40097D4B500B5EACD005C8868008981
      6300AE7B5E00AA805E00B57E5F00B17C6300C9AB9A00DAD3C900CCCFCD009297
      9900ECEDEE0000000000FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000E0D5CA00E6DDD300FBF5F100FEFAF300ECD0
      B300D5955F00D48F5800D38C5400D3885000E1BD9E00E0CCB600C19D7900C7AA
      8E00CDB69D00CDB49D00CDB49D00CAB19800B1947600B79A7D00C1A68900CAB0
      9700D3BCA100D9C4AC00E1CDB700E8D5C100EBD0B700E0AA8500D0A98800D1BA
      A000CDB69D00C7B09700C7AF9700C3A98F00CCB49B00D7C1AA00DFCCB600E7D5
      C100EADBC700BDA38500B3977900B69B7D00C9B19A00C6AD9200B3977900BA9D
      8000C3A98C00C9AF9100CAAD8F00C7AA8B00C9AF9100D1C4B600E0DBD500EAE7
      E300F7F5F200FDFCFA00FEFDFC00E6E1DB00E5DCD100FFFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB009C9C9C0000000000E0E0E000D1D0D000B5B8B700D4C3B900E1D4C700E9D7
      CC00EFDFD000EDDCCF00E9D7C700ECD7C700EDDAC900EBD6C400E7D0BD00E7CD
      B900E5CAB700E5C6B100E4C7AF00D7C4AC00776860002D2D2D003A3A3C005553
      4F005F5A5800615C5E006B676500726E6C0065616000413D3D002A2827002B29
      28004A4645003A363700ADA59F000000000000000000FFFEFE00A3A5A700DABC
      A300E0BDA000CAAC9200C9AB9200BDA38B00B99D8800C4A98B0083786F00C9C9
      C800F1F1F100F9F9F900FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005A000000590000006700006CBA6100C5FB
      F400CAFFF100CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFF
      F700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFFA00DBFFFF005EB1
      880000763000C7FDFF00CAFFFC00CFFFF700D3FFFA00D5FFFA00CFFFF900D1FD
      F900CAFCEF00D5FDFE00D3FFFF00D1FDFF00BFF3F0006CC46B0000590000005A
      000000590000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFE00FFFEFE0000000000D7D6
      D800D5D3D500F3EDEE00FAEFEA00EBD8CD00A4887500C9A68C00C99F8200C39D
      7B00BE9E7B00BD9D7A00BB9B7800BB9B7800BA9A7700B4947100B4947100B393
      7000B2926F00B1916E00B58F6D00BC8C6900BE8C6800BD8B6700BC8A6600BC8A
      6600B9876300B7856100B7856100B6846000B6846000B5846200B5876800B985
      6800BC856600B4876400BA856200B48A66008A84600067946F00BAF2D300B4E2
      CE00B7E0D100B4E1CC00B3E3CB00B0E2C700AEE1C600A9DFC400A7DFC200A3DD
      C000A3DEC000A1E0C0009EDEBB0097D9B6009AD7B800B8E9CF005D876A008D85
      6600B3846500AE876400B9856500B1806600CEB4A100DDD8CE00C8CDCC009498
      9C00F3F5F500FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000FBFBFA00E7DCD000E5DBD100FBF5F100FDF9F300F3E2
      CF00D4955D00D48F5800D38C5400D8986600F1E2D300E0CAB400BD987600C0A6
      8800BFA78F00BDA48C00BAA189009E8063009B7D5F00A9896A00B9927300C49A
      7700CDA68500D7C0A600DDC9B100E5D3BD00EBDCC900EBDCCA00D5C0A600CAB3
      9B00BFA78F00B49D8500B19A8200B6A08800C4AD9700D0BCA600D8C6B000E0CF
      BA00E5D4C000C0A78B00B49A7A00BA9E8000CCB69E00C6AF9500C0A78E00BDA4
      8900BCA48900BCA38B00C1A78C00C1A48600BFA18000D5C3B000ECE9E500F3F0
      EC00FAF6F400FDFCFA00FEFDFB00EEEAE600E5D9CD00F7F6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00B0B0
      B000FBFBFB00E5E5E500E9E9E900DDDDDD0098949000F3E3D700EFE0D400EFE0
      D300ECDCCF00ECDCCD00EFDFCF00EFDCCA00E9D4C400E9D3C300ECD7C600E8CC
      B800E5C7AF00DFC6AF004A454300413F42005E5A5900615E5B006E6867007A75
      7400837E7D00807D7A007D77750072727100747271007B777500807B7A006F6C
      6B00686564007D78770086838100FEFCFB0000000000F3F2EF007E7D7A00ECC4
      A500DABB9F00D9B79B00CFAF9300CAAB9000C7A99200BCA18600B3967500C4A7
      7E007D726500D0D1D100F2F2F200FBFBFB00FEFEFE0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFA00FFFFFD0000000000E1DD
      E200CCC6CA00FCF3F500FEF0EF00EDD8D100AA8E7E00D9B8A000D8B49600D5B1
      9600D3B09900D2AF9800D1AE9700D0AD9600CFAC9500CBA79100CBA79100C9A5
      8F00C8A58E00C7A38D00C8A38A00C99F8500CA9F8500C99E8400C89D8300C89D
      8300C4997E00C1967B00C1967B00C0957A00C0957A00BF947A00BD947A00C493
      7900C6937600BF957400C6937300C09574008F88660068937000BCF0D500B8E3
      D100B8E0D200B4E1CC00B3E3CB00B1E1C700AEE1C600ABDFC400A8DFC200A2DC
      BF00A3DEC000A3DFC0009FDFBC009ADBB8009ED7BC00B8E9D2005E876C00938C
      7000BF927300B7967000C0927000B68A6E00DAC4B000DDD9D100C3C8C900999D
      A300FAFBFB00FDFDFD0000000000000000000000000000000000000000000000
      00000000000000000000EFECE900FBF0E300E2D9D000FDF9F300FDF9F300F7EB
      E000D4975F00D5925D00D5976300E7D1BD00E5DBD000CFB79E00CFAA8600D7BC
      9E00D5BA9D00D3A37F00CA662B00C6551B00C44F1800C1491400C0411100BD3C
      0E00BC360B00C0642F00C7AD9200C6AF9800C6B09A00C7B19D00D0BAA300DBC6
      AD00DBC4AD00D7BFA700BDA68E009B866F0089766300AF9B8800B6A39100BDA9
      9500C1AD9A00B19B8500A1886C00AA917700C1AF9800CCB7A100D8C6B100D7C6
      B300B4A79A00ACA09500B3A79A00BDB0A400C4B9AF00CDC3B900D7CFC600E0D9
      D400E6E2DF00EEEAE800F2F0EE00F1EFEB00E6DBCF00E0DBD500FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000B1B1
      B10000000000F2F2F200C6C6C60093969700E5D6CC00EDE3D400EFE0D400EDDF
      D100EFE0D300EFE0D100ECDCCC00E9D7C700EBDAC900EDD9C700E9CFC000F6E0
      C6005B5551004A4747005B585800605C5B0068646300716B6C006C6865007E78
      7500ABA7A400DCD7D600EFEDED00F7F6F700FBFCFE00FCFEFF00FCFEFF00FBFC
      FE00F7F7F800ECEBEC00D0CCC900A19B99009F9B9800858383002F2F2D002425
      2800C7B09800DFB99B00DCB89B00D7B59700CFAB8F00C9A98E00C6A78F00BC9D
      7D00B8986B00B99C6E00947E6A00D8D8D900F8F8F800FDFDFD00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F9FCFA00FEFFFE00FFFEFF00E6E2
      E500C3BDC000FFF9FB00FFF3F200EEDBD500AA938500DCC2AE00DBBFA600E0C0
      AC00E0BEB000DFBDAF00DEBBAD00DDBBAD00DCBAAC00D9B7A900D9B7A900D8B5
      A800D7B5A700D5B3A500D5B2A400D0AE9D00D0AE9D00D0AE9C00CFAD9B00CFAD
      9B00CCA99800CAA89700CAA79600C9A79600C9A69500C9A69500BF9E8A00C69D
      8900C99D8700C49E8500C99D8400C09E82008D8A6C006B917300BFEED600BBE3
      D200BBE0D300B4E0CC00B3E3C900B1E2C700AEE1C600ACDFC300AADFC200A2DB
      BE00A3DDBF00A3DFC000A2DFBD009EDBB900A0D8BD00B9EAD30061896D009792
      7600C49D7F00BEA07C00C59D7C00B6917600E4D1BF00DCDAD200C0C3C6009FA2
      A800FCFDFD00FBFBFB0000000000FEFEFE000000000000000000000000000000
      00000000000000000000EEE9E500F5E9DC00E5DDD400FDF9F300FCF6F000EBCF
      B000E2BA9400E9CFB400E6D4C300E1D4C600DCC9B600D1916000D0804B00D5B6
      9800D7BC9E00D7BA9D00D0926100C6571D00C44F1800C1491500BF411100BF3C
      0E00BD360B00BA3A0E00956D51008F7A670094806C00BDA48B00CDB39A00CDB3
      9A00CDB19800CCB19700CCB19800CDB39A00C6AC9200C1A79100C0A99200BAA3
      8E00B39E8900A9947F00957C63009A806700B7A38C00D0BAA400DDCDBC00E7DB
      CC00EBE0D300EADFD300E5D9CD00D9CDC100C9BCB000BFB3A600BFB3A900C4BC
      B300CAC6C000D4CFCA00DCD8D400DFDCD800D7CABD00D5CCC300FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00959595000000
      0000E8E8E800CFCFCF00D7D6D600B0A9A500F6EBE100EFE3D900F2E4DA00F2E3
      D700EFE0D100ECDCCF00EDDDCF00EDDDCD00ECD9C700EDDCCC00D7C6B800423D
      3F00595351005A5655005F5A59006A6564007A747100B5B0AC00E8E7E5000000
      0000F6EDE700E8D4C100E0C0A900D3B19800D3AD9000D4AF9300D9B39600D9B4
      9600DCB99D00DCC0AC00E8D6C900FBF8F600F7F8F800C4C1C1008F8D8A007D77
      7500494A4C009F8F7E00E5BC9F00D9B49600DAB59700D7B19400CDA98D00CAA7
      8800C6A48500BB9B6F00BF9D6700B1976700A7A2960000000000FEFEFE000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005A0000005A0000005900000E8B
      0E00007901000055000000550000005500000055000000550000005500000055
      0000005500000055000000550000005500000055000000550000005500000058
      000000590000005100000054000000550000006F0000BDF5E400D1FFF600D1FF
      F400CFFDF700D1FFF700D1FFFE00B4EBDB0069B87B0000610000007A0E001A86
      2100006A0000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F8FCFD00FBFEFF00FAF9FB00EDEB
      ED00B8B5B400F5F1EE00FBF3EE00FEF6EE009F938900E1D4C500E3D6C700DFD0
      C400DDCBC300D2BFB700C9B6AE00CFBCB400CFBCB400C7B4AC00C8B6AE00C8B5
      AD00C6B3AB00C6B3AB00C2AEA600C2ADA300C6AFA600C2ACA200C5AEA500C4AD
      A400C1AAA100C1AAA100C1AAA100C1AAA100C1AAA100C1AAA100BCA69A00C0A5
      9800C1A49700BEA39600BAA49600AEA59500858D7D00728E7D00C4E9D900B9DE
      D000B8DDCF00B3E1C900B2E4C700B0E3C600AFE1C500ADE2C400ABE1C300A6DD
      BF00A4DDBE00A3DCBD00A1DBBC009FDABB00A0DBBE00B8EED20063876B009D9F
      8300BCA38900CFAC9300C79F8800AC8C7A00E7D4C800D9D3CF00B5B6B800C6C9
      CE00FEFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000EEE7E100ECE0D100EBE5DC00FDF9F300FDF6F000FCF3
      EA00F7F1E800E9DFD300E0D3C300DFCAB900D4915F00D07C4100CF763C00D39A
      7000D7BC9E00D7BA9D00CF804D00C6541C00C44F1800C1481500C0411100BF3C
      0E00BD360B00BC300800B4491A00BDA38900C3A98E00C6AA8F00C1A68B00BFA3
      8600BDA08500BD9E8200BC9E8300BDA08300BDA08300C0A38600C1A48900C3A6
      8C00C4AA8E00BDA18600A6896F0094795F00BAA38B00D5C1AD00E1D1BF00E8DB
      CC00ECE1D400F1E6D900F2E9DD00F3E9DF00F2E8DC00EBDFD100D8CCBC00C0B4
      A700B9AFA700BCB6B000C1BDB600C6C1BC00BFB3A600C7BAAD00F6F6F600FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00EEEEEE00D6D6D600EFEF
      EF00E8E8E800D7D7D7008F949600E8DDD700F2E5DA00F4E7DD00F0E4D900EFE0
      D600EFE1D400F0E1D400ECDDCD00E9D7C700F7E4D600B0A59F00302E30005F5B
      580055535100656160007D787700BBB4B100FCFCFC00F7F2EC00E3CCBC00CAA4
      8500CFA58600D7B39600D9B59800DAB59B00D7B39600D4AF9300D3AF9200D7B3
      9700DAB59800DDB79900D9AF9000CFA38100D3B39B00EDE4DA0000000000BCBB
      B80084817E0054545500A5928100E5BF9F00DAB49600D7B09300D9B79300D4B0
      9200CCA88100C9A57E00C2A17500BD875F00B57A4F00EDE1D900000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005500000060
      0000005D00000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00D5FFFF007ECEA400005C00000059000060B76900A6DB
      9D002F972900005F000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F8FBFE00FAFCFE00F8FAFB00F8F8
      F700B9B7B500ECE9E500F5F1EB00FFFBF300A1999000DCD3C800E9E0D300EEE3
      DA00BCB1AA00413630003B2E28003D322E005E534D006F635C0071665F007368
      610074696200786C65007469610070645D0072665F006E625B0072665F007266
      5F006C6059006A5E57006A5E57006A5E57006A5E57006A5F57006E6259006F60
      580072605700715F5700696056005F645800576B5E0073958500C2EBDB00B2DD
      CD00B7E2D100B0E2C900ADE3C500ABE2C400AAE1C300A8E0C200A7E0C200A3DE
      BF00A2DDBE00A1DCBE009EDBBD009DDABB009CDABC00B4EDD0005A7E6200969C
      8200C2B09600D3B39C00C7A59100B3988800F2E1D800DBD5D200ADADAF00EDF0
      F200FEFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFEFE00EEE6DF00E2D4C600F0E9E200FDF7F200FDF7F100FAF2
      EA00E0D3C100E1D3C400E0CFBD00D7A07100D1824900D07C4100CF763A00D07D
      4800D7B49400D5AA8800C9632600C6541C00C44F1800C1481500C0411100BD3C
      0E00BD360B00BC300800BA2C0700C17F5500C0A48800BDA08300B79B7D00B395
      7700AF917300AC8E6D00AC8C6C00AC8C6D00AC8E6F00AF8F7100AF917300B194
      7400B3957700AF8F71009A7A590097745400C4AD9400D8C6B300E1D3C000E8DB
      CC00EBE0D100EFE3D700F1E6DB00F1E7DB00F0E6D900ECE1D300E7D8C600DFCD
      B700D1BFA900C6B3A300BFB0A300BCB1A900B1A69A00C6B6A700F2F1F100FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA008383830000000000F3F3
      F300D0D0D000B7B7B700B0A8A300F8F0E700F2E7DF00F0E5DC00F2E5DC00F2E5
      DA00EFE1D400EDDFD100EDDDD000F7E7D7009B938B003C3A3C00555151005A55
      5500746F6F00A8A19F00FFFEFE00FAF7F700CFB09400D6AD8D00DCB59800DAB5
      9700D6B09400D3AF9200D3AF9200D6B19300DAB59800DCB59700D6B19400D4AF
      9200D4AF9200D6B09300DCB49800DAB59700D9B39400D1AC8A00CDA88B00F4F2
      F200FBFAFA007E7878005F636100B79F8900DFB79700DDB79700D7B09200D6AF
      8E00D7B39200D4AE8D00D1A06800D49E6C00A87B5C00FFFBFA00000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600000056
      0000005400000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00DBFFF40095C59A00005500000056000081D28C00C2FD
      FD00ACF3DC00006B000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F3F6F900FCFEFF00FBFDFD00FDFD
      FD00D4D3D200B6B3AF00F1EDE800F8F2EB00B8B1A800E0DED600E5DDD300F4EB
      E2009E959100150C0C0012090900241B1A00C3BBB700F6EDE900F9F0EC00FBF2
      EE00FBF3EF00FDF4F000FBF3EE00FBF7F200F9F6F100F1EEE900F2EFEA00F2EE
      E900F5F2ED00F8F5F000F9F5F000F9F5F000F8F5F000F8F5F000F8F6EE00F9F4
      EE00FCF5EE00FBF4ED00F5F6EC00ECFAEE00AAC8BA00648E7D00BAEBD900A9DE
      CA00A9DDC800ABE2C800AAE4C700A8E2C500A8E2C500A6E2C400A3E1C300A6E4
      C700A5E3C600A2E3C500A1E2C400A0E0C300A0E0C300BAF4D800587C630095A0
      8800CBBDA600D7BDA800BC9E8B00C8B1A200E7D9D000DCD5D200AEADAF00F9FA
      FB00FFFEFF000000000000000000000000000000000000000000000000000000
      000000000000FBFBFA00F0E6D900CDBFB000FBF5EF00FDF6F000FDF6F000E9DF
      D300D3C4B000D5B08C00D48C5400D3864F00D1804800D07C4100CF763A00CD73
      3700D0885700C9632500C75B1F00C6541C00C44F1800C1481400C0411100BF3C
      0E00BD3C0E00BF835900BD9E8000B7855F00B18F6F00A98B6C00A18061009B7A
      590098765500957353009573510095745300977655009B7A59009B7A59009270
      4F008E6D4B008E6C4B00A6856400C1A48800D1BCA400DCCAB400E0CFBD00E2D4
      C400E6D8C700E8D9CA00E8DBCC00E6D8C600E1D1BF00DBCAB600D5C1AC00CCB4
      9D00C0A48900C4AA8F00C4A98F00C0B6AF00BCB1A700E7D8C600EBE8E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00DCDCDC00EDEDED00EDEDED00CDCD
      CD00CFCDCD00A1A3A400F3EFE800F2E7DF00F3E9E000F4E9E000F3E7DD00EFE3
      D700EFE3D700F2E3D700F3E3D600948E8600474544005653510067616000756C
      6B00E5E0DF0000000000E5D7CA00EDD3C000D0AF9300D3AF9200D3AD9000D6B1
      9400D9B49700DAB49700D7B39300D3AD8F00D3AD9000D6B09300D9B49400DAB3
      9600DAB19400D4AF9000D4AF9000D4AF9000D9B39300D9B39400D9B09200D0A5
      8000E1D9CF00FFFEFE00969092004C505400D1AF9300D3AC8F00D7B09000DAB3
      9300D9B19700D4AB7100DCAD7200E1AD6F00E9D8CA0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000560000005C
      0000005F0000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E600CCFFFA00CFFF
      FC00D1FFFE00D3FFFE00CAFCFF000066000000520000004F0000C2F1EE00D1FB
      FF00CAE9E900005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FBFDFE00FBFDFE00FAFCFD00FDFD
      FD00F7F7F600B6B3B100D7D5D000F8F2EC00E6E2DB00B9B2A900E5E1DA00F4EF
      E900EEE9E700C1BBB900B2ACAB00948E8D00C8C2C000F5EFEE00F6F0EE00F5EF
      ED00F1EBEA00F1EBEA00ECE9E700F1F3F100EAEDEA00DCDFDC00D9DDDA00D8DB
      D800D4D8D500D3D8D400D4D8D500D4D7D500D4D8D400D3D8D500D4DCD900D6DC
      D800D9DBD700D8DAD500D1DBD200CBDFD40092B5A7005A8C7800B8F0DA00A4DD
      C600ADE5CE00AEE7CD00AAE5C900A9E3C800A8E2C700A6E1C600A5E1C500A3DE
      C400A0DEC3009DDEC1009DDDC1009BDBC0009ADBC000B1EBD30062897100AFBD
      A600D2CAB500D3BFAC00B29B8A00EFDDD000E8DDD600A6A1A100DCDADC00FCFC
      FF00FFFEFF000000000000000000000000000000000000000000000000000000
      000000000000FBFAF700ECE1D100CDBFB000FEF9F200FDF6F000FDF5EF00E9DD
      D000D4C4B100D4AD8800D38B5400D3864F00D1804800D07C4100CF763A00D079
      4100CD7D4800C9612400C75B2000C6541C00C4501800C1491500C0411100BD3D
      0E00BD693700BD9D8000B99B7D00B3957700AA8C6C00A1806000987757009473
      5000916F4C008E6C49008E6C4900947351009D7C5B009A795800957453009471
      50009271500098795700C1A68900C4A98E00D1BCA400D8C6B000DBC9B600DDCC
      B900DFCFBC00DFCDBC00DDCDB900D8C9B300D7C4AF00D8C6B100D1BDA700C9B1
      9A00C4AC9100C0A48800BCA79200C7BFB900CCC3BA00ECDDCD00EBE7E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00EDEDED00E7E7E700DADA
      DA00BBBCBC00A9A19D00F6EDE300F6ECE400F3E9E100F2E7DD00F2E5DD00F3E7
      DD00F0E4DA00F0E3D600D1C7C000444142005C5858006B65630088817E00F4F2
      F000F2EFEC00E4D1C100E8D3C000E8D4C100DDB59B00D7B19400D4AF9200D0AB
      8F00D3AF9000D6B19200D9B19600D9B39600D6B19300D3AD8F00D3AC8E00D4AF
      9000D9B19400D9B39400D6B09200D3AD8E00D1AB8D00D3AD8E00D7B09000D6B1
      9200D1A48300DDCFC9000000000098969300635F5C00F0C39C00D9B19000D4AB
      8900D6AE8500DBAF7200DDB17400B78C6900FFFEFC0000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000005A
      0000005C00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000580000005600000056000000710000C7F8ED00CFFFFF00D1FF
      FF00CCFCFF00D5FFFD00CCFCFF0060C69B0064C5A10064C69B00C7FDFF008CDD
      CD001A9147000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F9FBFC00FDFEFE0000000000F6F6
      F600FAFAFA00F6F5F400A7A5A100E2DED900F9F5EF00F6F0E900C1BBB500C3BE
      BB00C7C5C500D3CFD000D4CFD100A5A2A300CBC8C900F6F1F300F7F3F400F6F3
      F300F5F1F200F7F3F400EFF0F000EFF5F400E9EEEE00DDE3E300DEE4E300E1E6
      E600E0E5E500E0E6E500E0E6E600E0E5E600E0E6E500DFE6E600DDE9E900DFE8
      E800E1E7E600E2E5E400DBE6E100D4EAE0009BC0B10060927E00C8F9E800D1FC
      F100C9F9E500C8FAE200CAFDE500C9FCE400C8FAE400C6FAE200C5F9E100C3F8
      E100C0F8E000BDF7DD00BDF6DE00BBF4DD00B9F4DC00B8F0D9005D846E009FB1
      9E00B2AF9D00C6BAAA00EDDCD000DFD3CA00B4ACA700BAB6B500FAF8FA00FFFE
      FF00FFFEFF000000000000000000000000000000000000000000000000000000
      000000000000FBF9F700E8D8C900D9CDBF00FEF7F200FDF6EF00FDF5EE00E8DD
      D000D5C4B100D5B99D00D48C5500D3884F00D1804800D07C4100CF763A00CC89
      5900CD703400C9612400C75B2000C6541B00C44F1800C1481400C0411100BC51
      1C00B7977700B4977900B1947600AD8E7000A38364009A79580094704F008F6C
      4B008C6A4800916F4D009E7D5C00A3836300A18060009D7D5D009A7A59009777
      570097765500B0917300C7AC9100C1A48900CDB7A000D1BFA900D4C0AC00D4C0
      AC00D5C1AD00D1BFA900D0BDA600D3C1AC00DBCAB700D7C4B000D4C0AA00CDB7
      A100C9B19800C7AF9700C1B3A400D3CAC100DCD4CC00E9D9C700ECE6DD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00BCBCBC00FEFEFE00F8F8F800D6D6D600BCBB
      BB009B9B9B00FFFBF600F4ECE500F3EBE300F3E9E100F4EBE300F3E8DF00F0E5
      DA00EFE3D700EDE7DF002D2B2C005F5B5A006B6564008F888500FFFFFE00F0EB
      E800ECD9CA00ECDACC00E8D6C400E5D1C000D9B59C00D4B09200D9B39700D7B3
      9400D4AF9200D3AC8E00D1AD8E00D4AF9200D9B39400D9B19300D4AF9000D1AC
      8E00D1AB8E00D4AD8F00D7B19200D9B09200D4AD8E00D1AC8D00D0A88900D3A9
      8800D1AB8B00CFA38000E3DDDF000000000072747500A38B7700D3AB8A00DCB7
      9800D5A97100DBAF7500D8A96C00F6EAE0000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000058000000560000006E0000B7E9CE008FD9A80095D9
      9D00BFFBFF00CFFFFD00D5FFFF00C7FFFC00C7FFFF00CAFFFC00B7F0DD0057BD
      7B00005F00000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFFFF00FCFDFD00FBFBFB000000
      0000FAFAF900FFFFFE00F2F1EE00B1AEAB00C3BFBB00CCC8C300D6D3CF00D9D7
      D600D7D6D900D6D4D700D9D7DA00B2B1B400C2C1C400EAE8EB00ECEAED00F0EF
      F100F0EFF200F2F0F300F1F0F200EEEFF100E6E8EA00D5D7D900D0D2D400D2D4
      D600D1D3D500D1D3D500D1D3D500D1D3D500D1D3D500D0D3D700C4CED100CCD4
      D800DCDEE000E9E9EA00EFF5F200ECFCF500B1CDC1004D756400658F7D00608C
      770068917C006A907C006A8F7C006A8F7C00698D7C00678D7B00668D7A006C94
      82006993800068927E0067927F0066917F0063927F0064968300577A6900B4C3
      B600CACABC00D9D1C600C9C0B700B8B1AA00CDCAC600FFFEFF00F9F6F900FEFC
      FE00FFFEFF000000000000000000000000000000000000000000000000000000
      000000000000F6F4F000E3D3C000E3D8CC00FDF6F100FDF6EE00FBF3EB00E5D7
      C700D7C6B300D7C3B000D4956300D3864F00D1804800D07C4100CA794100C07C
      4C00CA692C00C9612400C75B1F00C6541B00C44F1800C1491500BF491600B17C
      5300AC8C6F00AA8B6A00A7886900A38564009D7C5B00957353008F6D4C009A77
      5700A6866700AC8C6D00AA8B6C00A7886700A4856600A1826100A08060009D7D
      5C00A0805F00C7AA9100C1A68B00BA9D8000C6AD9500CAB39D00CAB49E00CAB3
      9D00CAB39D00CAB4A000D4C0AD00DDCDBC00DDCDBA00DBCAB700D7C4B000D3BF
      A900D4BFA900CFBCA900C7BDB300DFD7CF00E9E3DC00E2D1BF00EEE5D900FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00AAAAAA00F7F7F700D1D1D100CCCCCC00BCBC
      BC00ADA9A500F3E9E300F6EDE800F7EDE700F4EBE400F3E9E100F3E8E000F4E8
      E000FFF6EC006C646300645F5E00746E6B00857E7A00FFFEFE00EFECEB00EDDF
      CF00EDDDCF00ECDCCD00ECD9C900E9D6C400E0C4AF00CFA78A00D1AC8F00D6B0
      9200D7B39400D7B09400D3AD8F00D1AB8D00D0A98D00D4AF9000D7B19300D7B0
      9200D4AF9000D1AB8D00D0A98A00D1AB8B00D4AD8E00D6AF8E00D3AB8B00CFA5
      8600C9A18300C49D7B00C6A07E00F2EDEF00E5E3E0005B595900ECBB9700D1A5
      7300D8AB7200E4B17400BB977B00000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005C0000005C0000006D00001A8B2900B2DFB4005EBA610060B1
      4700CAF8F300D3FFFF00E0FFFF00D5FFFF00D7FFFF00D1FFFE009BD5A200238E
      2700005800000058000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FFFFFE00FFFFFE00FFFFFE00FAFAF900EAE8E600DDDBD800E1DDDC00DBDA
      DA00D4D5D900D1D2D600D2D3D700B4B5B900C7C8CC00EDEEF200F2F3F700F2F3
      F700EDEEF200F0F0F400F0EEF200EDEAEE00F2EDF200E9E5EA00E8E5EA00F0EC
      F000EEEAEE00EBE8ED00ECE8ED00EDE8ED00ECE8ED00EAE9ED00DEE3E800E3E5
      EA00EDE8ED00F2EDEF00F5F2F200EFF6F200E1F3EA00CAE4D900C5DED300C8E1
      D400C7E0D000C9DFD000CADFD100CADFD100CADED200CADFD100C8DFD100C4DD
      D000C3DCCF00C2DCCD00C1DCCE00C1DCCF00AACBBD008FB5A600B9D4C900D1DE
      D200D1D1C800E1DCD600E7E2DE00F5F4F100FEFEFE00FFFEFF00FDFAFE00FFFD
      FE00FFFEFF000000000000000000000000000000000000000000000000000000
      000000000000E7DFD500E1CFBA00F7F0E800FDF6EF00FBF3EB00E2D5C600D7C6
      B300D8C9B400D9CCB900DCC7B300D48E5B00D1804800CC7F4700C67D4C00CD6F
      3200CA692B00C9612400C75C1F00C6551C00C65C2300B7734700A48361009B7A
      5900957351009471500098765400B1957600C6AC9100D0B79E00C9AD9400C1A4
      8900BA9D8000B4987900B1957600AF917100AD8F7000B3947600BA9D8000C1A6
      8900C7AA9100CAAF9500BDA18500AA8C6C00BAA08500BFA78F00BFA68E00C3AC
      9500D4C1AD00E7D7C700E5D7C600E0D1BF00DFCFBD00E2D4C300D9C9B400DCCA
      B700D5C3B000C1B9B100D7D3CD00EFEAE600FAF4EF00D3C3B300F0E2D400FBFA
      F900000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00A0A0A00000000000EBEBEB00E3E3E300BDBDBD008685
      8500FAF6F000F6EDE800F6EFE900F4ECE500F4ECE500F6ECE400F4E9E100EDE3
      D900C4BDB8003B3A3A00746E6C006E676400F2EDEC00F0EFEC00F4E5DA00F0E3
      D700ECDDD000E9D9CA00E9D7C700EBD7C700EBD6C600D4AD9000D1AB8E00D0AB
      8D00D0AB8D00D4B09000D7B09200D7B09300D3AD8E00D0A98D00D0A98B00D3AD
      8E00D7B09000D6AF8F00D4AC8D00CFA88900D0A78800CFA88800D3A98A00D0A8
      8900CAA38300BF987700AD846100D9D0CA00FFFEFF0093929400C09C8400D8A9
      7200DAAC7500CC9B6700FBF0E900000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005F00005EA96100DBFBE800D9FFFE00D3FFFE00ACE2
      CD00EAE7C400E4F9F200E2FCFF00E2FBFF00E0F9FF00D5FBFC006CA874000054
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      00000000000000000000FAFAFA00FAFAFA00FEFEFE00FFFFFE00FEFEFE00FAFC
      FC00FDFFFF00FCFEFF00FDFFFF00D2D4D500C0C2C300F1F3F400E0E2E300E4E6
      E700EBEDED00ECEEEF00F0EFF100F9F4F500FCF5F800F8F2F500F8F3F500F6F0
      F300F4EEF000F4EFF100F5EFF100F5EEF100F4EFF100F3EEF300F1F1F700F3F1
      F700F8F1F600FCF1F400F9F2F300F3F1F000E7EFEA00E2EFEA00E0F1E800E2F1
      E600E6F2E800EAF2E900ECF2E900EBF2EA00EBF1EB00EAF2EA00E8F3E900E1EB
      E300E3EEE600E5F2E800E5F3EA00E7F5ED00C6DAD100ADC7BD00EEFDF700F5FC
      F600FFFDF800FFFEFC00FEFEFC00FBFEFF00F8FDFD00FCFEFE00FDFBFE00FCF9
      FB00FFFEFF000000000000000000000000000000000000000000000000000000
      000000000000E3D5C700DFCCB700FDF6F000FDF5EE00EFE5D800D7C6B100D8C7
      B400D8C9B600DBCCBA00E1D4C400D8AC8800D38F5C00BD825400CA773D00CC70
      3600CA764000CF835000D1946900D4A67F00D0AD8E00AF8F6F009D7D5C009471
      4F008C694700AC8C6D00E2D0BA00E3D0B900DDC7AF00D5BDA400CCB19800C4A9
      8E00BFA18300BA9B7F00B6987C00B4977A00C4A98C00C6A98E00C4A78C00C1A6
      8900C1A48800C1A48900CCB09500BFA18500B99E8200BCA38900BFA68E00CCB6
      A000E6D7C700E7D9CA00E2D4C100DDCFBC00DDCDBC00E5D7C600DCCAB600DBC9
      B700C4B9AC00C0B7B100D8D3CD00EFEBE900FBF6F200D8CCBC00EEDFCD00FBF9
      F700000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00C7C7C700FCFCFC00DFDFDF00B9B9B900ADAFB100C3BD
      B900EFE7E400F3EDE800F6EFE900F7EFE900F7ECE500F3EBE300F3E9E100FFFA
      F40058545100726E6B0067605E00E3E0DD00F6F6F700ECE1D900F2E5DC00F2E5
      DA00F0E1D400EDDDCF00E9D7C900E8D6C400E9D7C900D7AF9300D6B09300D4AF
      9200D0AB8E00D0AB8B00D0A98B00D3AC8E00D6AF9000D4AF8F00D1AB8D00D0A8
      8A00D0A88900D1AB8B00D6AD8E00D3AC8D00D1A88900CCA78400C9A18100C79F
      7E00C39C7B00BB977700B5906E00CCB5A300F0ECED00E3E4E50072675800DAAB
      7100E7B47600C8A88F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005800000055000037A57200CCFFFF00D3FFFE00D3FFFE00BFFB
      F700006F000000700400006E0600006F060000710600006B0600006100000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      00000000000000000000FDFDFD00FBFCFD00FAFBFC00FCFDFE00FEFFFF00FDFE
      FE00FDFEFE00FDFEFE00FEFFFF00CFD0CF00C6C7C600F1F2F200C7C9C800DADC
      DA00EEEFEE00E8E9E900F2F2F100F7F4F400F9F6F700EDEAEA00EBE7E700EFEC
      ED00F0EDEE00F0EDED00F0EDEE00F0EDEE00F0EDED00EFEDEE00E8EBED00ECEA
      ED00F2EAEE00F7EBEF00F7ECEF00F3EDF000EBECEC00E8F0EE00EDF6F200EEF5
      F200EDEFEC00EAEAE700E9EAE500E9EAE500E9E9E600E7EAE500E5EBE500E7EA
      E600EDF2EE00EFF5F000EBF1EC00EBF1EE00CDD9D400B9C6C100F5FCF900FDFC
      FC00FEFBFB00FEFBFD00FAFBFB00F9FEFE00F7FDFE00F8FDFD00FCFAFD00FEFC
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000E1D0BF00E1D0BD00FDF7F100F7EFE700DCCCBA00D8C7B300D9C9
      B600D9CAB700DBCCBC00E2D5C700E2D1C000D9BCA000BC8B6100B4896100B48F
      6C00BF9D7D00D7BC9E00D7BC9E00D7BC9E00CAAF9100A9896A00A3836000B99B
      7F00DDC7B300ECDDCC00E9D8C400E5D1BD00DFC9B000D5BFA600CDB49B00C7AD
      9100C1A68900BDA08300BC9D8000B79A7C00C3A68B00C1A68900C1A38800BFA0
      8500BCA08200BC9E8200BC9E8000C6AA9100D5BFAA00D0BAA400CCB6A000E2D1
      C000E8DBCD00E6D7C700DFCFBC00D9C9B400D9CAB700E2D4C300E0D1C000D7C4
      B100BAAFA400BAB4AC00CFC9C300E7E5E100F6F4F100E0D5CA00E8D5C300FAF9
      F600000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FAFAFA00E1E1E100D6D6D600CDCDCD00C3C3C30089868600E9E4
      DF00ECE7E300F6EFE900F8F2EB00F6EDE800F4ECE700F6ECE500F4EBE400D9D0
      CC0047444400746E6C00A098960000000000EBE4E000F4EBE400F2E5DD00F0E3
      D900EFE0D400EDDFD100ECDDCF00EBD7C900E7D3C300D4B49C00D1A88A00D4AD
      8F00D6AF8F00D3AD8F00D0A98B00CDA78900CFA88900D1AC8D00D6AC8E00D4AD
      8E00D1AB8A00CFA58800CDA58500CFA78800D0A88800D0A88600C9A08100BF98
      7800B5906E00AD896800A78464009C785900E4DFDD0000000000676A7000DFAD
      7600B88A5D00FBF4EF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005A00003DA97200CAFFFF00D3FFFE00D3FFFE00C7FF
      FF00006000000059000000550000005600000059000000560000005600000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000FDFFFF00FCFEFF00FBFDFE00FBFDFE00F9FA
      F900FAFBF900FBFCFA00FCFDFB00D0D1CF00C2C3C100F3F4F200E7E8E600E8E9
      E700ECEDEB00EFF0EE00EFF0EE00EEF1EF00E8EBE900CCCFCD00BCBFBD00C0C3
      C100BEC1BF00BCBFBD00BCBFBD00BCBFBD00BCBFBD00BBBFBD00BDC3C200C0C1
      C200C5BEC100C8BCC000C9BBBF00C6BEC100C8C6C800BDC1C200B7BBBC00BBBD
      BE00C5C4C500C6C2C300C5C1C000C4C1C000C3C1C000C1C2C000C1C2C000D3D5
      D300E1E4E200EAEDEB00E7EBE900EBF0EE00D7DCDA00C8CBC900FFFEFE00FFFC
      FE00FFF9FC00FFFDFF00F8FAFD00F4FBFE00F3FCFF00FAFFFF00FEFEFF00FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FCFCFB00E2CFB900E2D3C100FDF6F000EBE0D400D9C9B600DBCAB900DBCC
      BA00DBCCBA00DCCDBD00E2D7C900E7DBCF00DCCCB900B9987900B4947300B391
      7100B7987700D4B79A00D7BC9E00D7BC9E00CCAF9100AC8C6D00C1A68900D3B9
      A000E0CAB300EAD9C700E8D7C400E5D1BC00DFC9B100D7C0A700D1B79E00CAAF
      9500C4A98E00C1A68900C0A38600BD9E8200BDA08300BFA18500BC9E8200B99B
      7D00B7987C00B6987A00B4977700B6987A00CFB7A000DCCCBA00DFCFBD00E5D5
      C600E7D8C900E2D3C000D9C9B600D5C4AF00D7C6B100DDCFBC00DCCCB700D3BF
      AA00BFAD9D00B4AFA600C4BDB700DCD8D300F1EFEB00E9E3DC00E2CFBA00F7F4
      F000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F8F8F800EDEDED00E8E8E800BFBFBF00A8A8A900C0BCB800E3DF
      DC00ECE7E400F4EFE900F7F0EB00F6F0EB00F7EDE800F3EBE500F7F0E900615E
      5B00716B6A006F686400FFFCFC00E3DDE000F6F0EB00F4ECE400F4E9E000F2E5
      DC00EFE0D600ECDFD000EBDCCD00EBDACC00EBD6C600E5D0BD00CCA38300CDA8
      8900CFA98A00D3AB8D00D3AD8F00D4AC8D00D1A98A00CDA58600CCA78800D1A8
      8900D3AB8A00D4AB8A00CFA58600CAA18300C79F7E00C79D7D00C19B7B00BC96
      7500B18B6B00A48160009C7859008A5E4200E7E1E000FAF3F600ACB0B500DCAB
      7100D9C3B1000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A0000117F1F00CFEDCE00CAF0
      E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0
      E000C7F0DE00B7E7C9005BAB3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005C00004CA96700DBFFEF00D9FFFE00D3FDFD00C7F5
      E60000610000005A000000580000005800000059000000590000005800000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FFFFFE00FFFFFE00000000000000
      00000000000000000000FCFEFE00FAFCFD00FAFDFE00FAFEFF00F9FBFE00FBFC
      FB00FEFDFA00FDFCF900FFFEFB00D5D4D000CECDC900F0EEEC00F4F2EF00F6F5
      F100F2F0ED00F3F2EF00F0F2EE00EDF3EE00EDF4EF00E2E9E400DEE5E000DFE6
      E200DEE5E000DEE5E000DEE5E000DEE5E100DEE5E000DDE5E200DAE4E200DEE2
      E200E4E0E100E7DFE000E7DDE000E3DEE100DDDDE100D5D9DC00D7DBDF00DCDD
      E100DDDBDF00DEDBDD00DEDCDC00DDDCDC00DCDCDC00DCDCDC00DADCDC00DBDE
      DE00EAEEEE00EEF3F200E5EBEA00E5EBEA00D3D5D500C8C4C500FEF8FB00FFFB
      FE00FFFCFF00FEFBFF00FBFDFF00F6FEFF00F1FCFE00F6FCFE00FDFEFF00FFFD
      FE00000000000000000000000000000000000000000000000000000000000000
      0000F4F1EF00E9D5C000E5D5C400FDF6EF00E0D1C100DDCFBD00DFD0BF00DFD0
      C000DDCDBD00DDCFBF00E5D7C900E8DDD100DCCAB700BFA08000B99A7900B495
      7600B7977600CAAC8E00D7BC9E00D7BC9E00D1B69800C1A68900CDB39800CDB3
      9800CDB39800D1B79E00DCC4AD00DFCAB400DDC7B000D7C0A700D1B79E00CCB0
      9700C7AC9100C4A98E00C3A78B00C1A48800BA9D8000BA9D8000B79A7A00B394
      7600B0917300AF8F7100AF8F7100AF917300C3AA9100D3BDA900DCCAB900E1D1
      C000E3D4C400E0D0BF00D8C6B100D4C1AD00D7C4B000DCCAB700DCCCBA00CFBA
      A400CFBAA400BAB0A600BAB3AD00CDC9C300E7E3E100F0EBE700E1CCB700F0E9
      E300000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F3F3F300D8D8D800D0D0D000908F8D00D3CDCA00DDD9
      D300EBE5E100F6EFEB00F8F2EC00F6EFE900F6EFE800F7EFE800FCF8F6004B46
      4700746C6B00ABA5A300FCFCFC00F7EDE800F6EFE800F4EBE500F4EBE300F3E8
      DF00F2E4DA00EDE1D400E9DACD00E9D9C700E9D6C600EDDACD00D7B39800D3AC
      8D00CFA88800CCA58800CDA58600D0A98A00D3AB8D00D3AB8D00CFA78800CDA4
      8500CCA48300CDA48400CFA58500CFA48400C49D7D00BC947400B38D6B00AD88
      6500A8846300A07D5E009D785A00885C4000EFE8E500E0D7D400EBEBEB009B77
      5900FFFEFB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000580000007100007EBF6B0078C0
      800075C0800072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF
      7F006FC07E006FB972001D8B0900005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000298E3600ACD6A100CFEEE300B4E2C6008ACA
      8A00005D0000005A0000005A0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00FDFFFF00FFFEFF000000
      0000FDFEFC00FDFDFD00FEFEFD00D5D6D400C8C8C700EFEEEE00F1F0EF00F4F5
      F300EFEFEE00EEEEED00F4F5F300EEF1F000ECEFEF00D5D9D700D1D4D300CCD0
      CE00CED1D000CED1CF00CED1D000CED0D000CED1CF00CED0D000CED1D100CFD0
      D000D0CFCF00D2CFCF00D0CDCE00CFCDCD00CBCBCC00CBCDCF00CBCDCF00CAC9
      CB00C6C5C700C8C8C800C8C8C800C8C8C800C7C7C700C7C7C700C7C7C700CACC
      CC00DDDEDE00E2E5E400EAECEC00ECEEEE00D4D4D400C6C4C400FDFBFB00FFFD
      FD00FFFEFF00FFFEFF00FDFFFF00FCFFFF00FAFFFF00FDFFFF0000000000FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000E9E1D700F1DCC600E9DDD000FDF5EE00EEE2D700E6D8CA00E6D9CC00E2D3
      C300E0D1C100E1D3C300E6D9CD00EAE1D500DCC9B600C6A98C00C1A48600BF9E
      7F00BD9B7D00BD9E7D00D1B49700D7BC9E00D1B79A00CDB39800CDB39800CDB3
      9800CDB39800CDB39800CDB39800CDB39800CFB49A00D0B69B00D3B9A000D0B6
      9E00CFB49B00CDB19800CCB09500C9AF9400BFA38600AA8B6D00A38261009A79
      58009774540095735100957453009A775800B69B8000C1AC9400C4AD9700CDB7
      A100DBC9B600DDCDBA00DBC9B400DBC9B600DDCDBC00DFCFBD00D3BFAA00D9C7
      B300E2D3C100E6D8C900C0B7AD00BAB3AC00CFCAC400E9E6E300DFCAB700E3D4
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F3F3F300DFDFDF00A09E9900D1D1CC00D9D6
      D100E8E1E000F2ECE800F6F0EB00F8F2EC00F8F2EB00F7F0E900E8E0DA00635C
      5C006E656300F8F7F300E0DDDD00FAF3EF00F8F2EC00F4EDE800F3EBE300F3E7
      DF00F2E5DA00F0E3D700EFE0D400ECDDCD00E8D6C600E7D1C000E3C9B500D0A4
      8500D3AB8D00D3A98D00CDA58800CCA38500CCA58500D1A88900D3A98900D1A7
      8800CCA48500C79F7E00C39B7A00C0997800BD977500B8927100AD8A6700A37E
      5E009B77580097725500987555008F644400F4F0EC00D7CDCA00F8F8F800D2C8
      C200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000056000000560000005C0000005D
      0000005D0000005C0000005C0000005C0000005C0000005C0000005C0000005C
      0000005900000055000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000054000000560000006D000081CA860043A01C00006E
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400EFEFEF00F8F8F800E8E8E800E5E5E500E0E0
      E000E2E2E200E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E2E2E200E1E1
      E100E1E1E100E1E1E100E0E0E000E0E0E000DCDCDC00DFDFDF00E0E0E000DEDE
      DE00DBDBDB00DADADA00DBDBDB00DADADA00DADADA00DADADA00D9D9D900DDDD
      DD00E5E5E500DCDCDC00DFDFDF00DFDFDF00CBCBCB00C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8DCD000EBD7BF00EEE2D500FDF5EC00F1E7DB00E6D8C900E8DCCF00E3D5
      C600E2D4C400E3D5C600E7DBCD00EBE2D700DDC7B300CAAD9100C7AA8C00C3A3
      8300C0A08200C1A18200CDB09200D4B99D00CDB39800CCB19700C7AC9100C3A7
      8B00C1A68900C3A78B00C9AD9200CFB49B00D5BDA400DCC7AF00E1CDB700E3D0
      BA00E5D3BD00E5D0BC00E1CCB700DDC7B100D7C0A700CCB19700C3A78C00B99A
      7D00B0917100AA8B6C00A4836300A3826100BAA08500C0A99100BFA68E00C0A9
      9100C9B39D00D7C4B000D9C9B400DCCCB900DFCFBD00DDCDBA00D5C3AF00DFCF
      BC00E7D9CA00EFE2D400DBD0C100B7B0AA00CCC6C000E7E3E000E0CFBC00E0CF
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00B0AEAD00D3CECA00D8D4
      CD00E3DDDA00F0EBE700F6F0EC00F7F0EB00F6EFEB00FAF3ED00A7A09C00716B
      6800938A860000000000E4E0DD00F8F3F000F7F2EC00F7F0E900F6ECE500F3E8
      E100F0E4DA00EDE1D700EDDFD300EDDFD000ECD9CC00E9D6C400E8D3C400CFAB
      8E00CDA48600D0A88900D1A98A00D1A98900CFA48600C9A18100C7A08100C9A0
      8100CAA38100C6A08000BF987800B58F6C00B0896700A8846300A5816000A07D
      5B0099745600966F5100966F50008D5F3F00F7F2EC00D4CCC900FAFAFA00C3C2
      C300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000600000005F0000005C00000058
      0000005800000059000000590000005900000059000000590000005900000059
      000000590000005A000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000058000000590000005C00000068000000630000005D
      0000005D00000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400F0F0F000F3F3F300DDDDDD00DADADA00D5D5
      D500D8D8D800D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D6D6D600D5D5
      D500D5D5D500D4D4D400D4D4D400D3D3D300D3D3D300D3D3D300D3D3D300D1D1
      D100CFCFCF00CECECE00CECECE00CECECE00CDCDCD00CDCDCD00CCCCCC00D0D0
      D000DDDDDD00DBDBDB00DFDFDF00DEDEDE00C9C9C900C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00E8D9C900E3CFB700F1E7DC00FDF5EC00F1E7DB00DCCAB900E5D8C900E3D5
      C600E3D5C700E5D8C900E7DCCF00ECE2D700DDC9B300CFB19500CCAF9200C7A7
      8900C3A48500C3A48500CAAD8F00D1B69A00C9AF9200A38363009D7C5B00A686
      6600B0927300BA9D8000C4A98E00CFB49B00D7C0A700DDC9B100E2D0BA00E6D4
      C100E9D8C600EAD9C700E8D8C400E6D4C000E3D0BC00E0CCB600DDC9B100D9C4
      AC00D7C0A700D3BCA100D1B99E00DFCCB400E6D7C600E6D8C900CDB9A300BAA1
      8B00C1AA9200CDB9A300D5C3AD00D9C9B600DFCDBD00DDCDBC00D8C6B100E0D0
      BF00E7DBCC00EEE1D400F0E5D700C3BAB000CFCAC400EAE7E300E2D4C300E0C9
      B100FEFEFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D2CE00CFCD
      CA00DEDBD800EAE5E100F3EDEA00F8F3ED00F7F2EC00FBF4EF00716A68006863
      6100C3BCBB00F3F3F300FEFAF800F8F4F000F7F2ED00F7EFE900F6EDE500F4EB
      E400F3E7DF00EFE4DA00ECDFD400EBDDCD00E9D9CA00E9D7C700E8D4C300E8D1
      C000C99C7A00C7A08100C9A38100CDA58500CFA58800CCA48400C69D8000C099
      7800BC947400BB937200B7906E00B08B6A00A78361009D785A00987153009671
      530096715300997556009D785600966A4600F7EFEF00DAD0CD00FBFBFB00C5C5
      C400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C0000005C0000005A00000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000590000005900000059000000590000005900000059
      0000005A00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400F0F0F000F6F6F600E4E4E400E1E1E100DCDC
      DC00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DCDCDC00DCDC
      DC00DBDBDB00DBDBDB00DADADA00DBDBDB00D9D9D900D9D9D900D9D9D900DADA
      DA00DBDBDB00D7D7D700D5D5D500D4D4D400D4D4D400D4D4D400D3D3D300D4D4
      D400DEDEDE00D8D8D800DADADA00DADADA00C7C7C700C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      F900ECDCC900DCC7B000F4EBE100FDF4EC00EADDCF00D5C3B000E2D4C600E5D7
      C900E5D8C900E6D9CA00E8DCD000ECE3D800DDC7B300D3B79D00D0B49800CAAD
      9100C6A78800C6A68800C9AA8B00CFB39800CCB09700AF917100A07F5F00A685
      6400AF917100BA9D8000C4A98E00CFB49B00D7C0A700DFC9B100E2D0BC00E7D5
      C100EAD8C600EADBC900E9D8C600E7D5C100E5D3BF00E2CFBA00E0CAB400DCC6
      B000D9C3AA00DFCAB100E3D0BC00CAB09500D1BDA700E5D7C700E7D9CA00E2D1
      C100D5C1AD00C9B39B00CDB9A300D5C1AD00DBC9B600DDCDBA00D5C3AF00DBCA
      B700E1D1C000E7D9CA00E6D8C900C6BDB600DBD5D100F1EEEB00E8DCCF00E8D1
      B700F5F2F0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0E9
      E700DBD6D200E3E1DF00EEEAE600F5EDE900F7F2ED00FEFBF60059545100645C
      5A00E5E1DF00E9E8E700FFFCFB00FAF6F300F8F3EF00F6F0EB00F4EDE500F3EB
      E400F3E8E000F2E5DD00F0E1D700ECDFD000E8D9CA00E7D4C600E5D3C100E5CF
      C000DFC7B300CAA18100C6A08100C39C7D00C39B7B00C19C7B00C09C7B00BD97
      7700B48E6E00AC886500A5835F00A17D5C00A07A5B009B77580096715300936C
      4F00946E4F0098715100A37D5900B18E6A00F4F2F000DDD6D100FAFAFA00DBDA
      DA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F0F0F000F3F3F300DEDEDE00DBDBDB00D7D7
      D700D9D9D900D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D6D6D600D5D5
      D500D5D5D500D5D5D500D4D4D400D6D6D600DBDBDB00D6D6D600D2D2D200D0D0
      D000D1D1D100D0D0D000CFCFCF00CECECE00CECECE00CECECE00CDCDCD00D0D0
      D000DDDDDD00DBDBDB00E0E0E000DFDFDF00CBCBCB00C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F3
      F000F2DDC600D1BCA600FCF3EA00F5EEE300E8DCCD00E8DCCD00E7DBCD00E7D9
      CC00E8DBCF00E9DFD100EADFD300EFE6DC00E0CAB300D8C0A600D5BDA300D1B7
      9B00CCAF9100CAAC8E00CCAF9100CDB19500D0B49A00C0A48600A9896A009E7D
      5C0097745400AA896A00C3A68900CDB39800D5BFA700DFCAB300E3D1BD00E8D7
      C400EBDBC900EEDFCD00ECDDCC00EADBC700E9D8C600E6D4C100E6D4C000EBDD
      CA00E2CFBA00B39476009471500089674500A4886900B9A18800DCCAB900E3D5
      C400E5D7C700E8DBCC00EBE1D300E8DCCC00D8C6B300CFB9A400C9B39D00CDB6
      A000D1BCA600D3BFAC00C3B9B000D4CFC900ECE8E600FBF9F600EEE6DD00F3DD
      C300E9E0D7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFBFB00E4DAD200F0ECEA00F7F3ED00F9F7F10056514F00675E
      5C00FBF7F600E0DFDD00FBF8F700F8F6F300F8F3F000F7F0EC00F4EFE900F3EB
      E500F0E7E000EFE4DA00EDE1D700EDE0D600ECDDCD00E8D9C900E4D0C000E1CA
      BC00E0CAB900CCA99000C49C7B00C1997D00BB967400B48E6C00B18B6A00AD89
      6800AC896700A58361009F7A5A0097725400926E5000936E4F00977153009974
      54009D7755009F775500A77D5600D9C3B300EBE4E300E5E0DC00F6F6F600EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D6D6D600C6C6C600EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F0F0F000F0F0F000D8D8D800D4D4D400D0D0
      D000D2D2D200D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100CFCFCF00CECE
      CE00CECECE00CECECE00CDCDCD00CBCBCB00C2C2C200C3C3C300CBCBCB00D5D5
      D500DFDFDF00E3E3E300E3E3E300E3E3E300E2E2E200E2E2E200E1E1E100DADA
      DA00E6E6E600E0E0E000E0E0E000D9D9D900C5C5C500C5C5C500FBFBFB00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F1
      EC00EAD3BA00DBC6B100FBF2EA00E6D9CD00EADDD000E9DDCF00E6D9CA00E8DC
      CD00EADFD100ECE2D500ECE2D700F1E7DD00E1CCB400DCC4AA00D9C0A600D5BA
      9E00CFB19500CDAF9200CCAF9100D0B19400D7BC9E00CDB19200AD8F7100A483
      63009A79580094735100A07F5F00C9AF9500D5BFA600DDC9B000E5D3BD00E9D8
      C400ECDDCC00EFE1CF00EFE0CF00ECDCCC00EADBC900ECDCCA00F2E5D400DDC9
      B100AC8E6F009A79570092704F008E6C4900A78B6D00CFBAA400E6D7C700E1D3
      C100E2D4C100E5D7C600E8DBCC00EBDFD100EFE3D700EADFD100D9C7B300C6AF
      9800CAB49E00C4B3A300BFB6B000D4CFC700EBE8E500FAF7F500F1EAE500EBD7
      BD00E8DBCD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFBFA00EFEAE600F1E8E4005B5453006F67
      640000000000DCDAD900FBFAF800F8F6F400F6F3F000F4F0EC00F3EDE900F3EC
      E700F0E8E100EDE5DD00ECE0D600E8DCD300E7D9CC00E5D6C700E4D3C400E0CC
      BC00DCC7B700DAC4B500B9977B00B58D6C00B18E6E00AD896800A5836100A07B
      5B0099775800997556009874560098725400966E4F00926B4E00946C4F009B71
      5100A47B5900AC845F00AC7D5100F4EFEB00DDD4D000F3EFEF00ECEBEB00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F4F4F400EEEEEE00DFDFDF00DBDBDB00DCDC
      DC00DBDBDB00DCDCDC00DBDBDB00DBDBDB00DADADA00DADADA00D7D7D700D7D7
      D700D6D6D600D5D5D500D4D4D400D3D3D300D4D4D400D3D3D300D7D7D700DDDD
      DD00E4E4E400E5E5E500E2E2E200E6E6E600E7E7E700DFDFDF00DEDEDE00DEDE
      DE00DBDBDB00E0E0E000DBDBDB00D1D1D100C7C7C700C3C3C300FDFDFD00FBFB
      FB0000000000FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EE
      E800E3CAAF00E3D1BF00F3E9DF00EBE0D300EBE0D300E7DBCC00E7D9CA00E9DD
      D100ECE1D500EEE3D700EEE3D800F1E8DD00E2CDB600DDC6AD00DBC3A700D5BD
      A100D1B49800CFB19400C7AA8C00BD9D7F00C0A18200CDAF9100B6987A00AC8C
      6D00A38261009A795800916F4D00A1806000D0B7A000DDC7B000E5D1BD00E9D8
      C600EEDDCD00F0E1D100F0E1D000EFE0CF00F0E1D100F4E7D800F2E5D400BFA1
      86009E7F5F009A7958009573530092704F00B69B8000F1E6DB00E9DCCF00E1D3
      C000E1D3C000E2D5C300E5D7C700E7D9CA00E9DCCF00EFE3D700F2E8DD00EAE0
      D100D5C3B000BFB3A700BCB4AD00D0CAC300E8E5E100F9F6F400F5F1EB00E6D0
      B600E7D7C400FFFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000716D6C007B6E
      6A0000000000DAD9D700FBFAF800F8F7F400F7F3F200F4F0EC00F3EDE900F0EB
      E500EFE7E100ECE4DF00ECE0D900E8DDD000E4D6CC00E1D3C600DFCDC000DCCA
      BB00DAC6B700D3BFAF00D3BFAF00A98A6C009C7B5C00A07D5E00A07B5C009C78
      590097715400906C4F00926B4E00936C4F00976F51009C7554009F775500A178
      5600A77D5600AD835B00AF83590000000000D4C7C40000000000BEBCBA00FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F6F6F600F5F5F500F4F4F400F9F9F900F5F5
      F500F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00EEEEEE00ECECEC00EBEB
      EB00EBEBEB00EAEAEA00E8E8E800E8E8E800E7E7E700E3E3E300E1E1E100E1E1
      E100E3E3E300E1E1E100DDDDDD00DFDFDF00E2E2E200E0E0E000E5E5E500DDDD
      DD00DBDBDB00DEDEDE00DEDEDE00DFDFDF00C6C6C600C6C6C600FEFEFE00FDFD
      FD00FDFDFD00FDFDFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0E7
      DC00E0C6A900EBDDCD00F4EAE000EFE3D700E9DDCF00E5D8C900E8DCCF00ECE1
      D700EFE5D900EFE5D900EFE5D900F1E7DC00E2D0B900E0C9AF00DDC4AA00D9C0
      A400D4B79B00D1B39700B7987700A7856300A7866400B6957600BFA18300B395
      7600AA8C6C00A38261009A7958009E7D5D00CDB49A00DCC7AF00E3D1BD00E9D8
      C600EFDFCF00F1E2D300F2E3D400F4E6D700F5E8D900F5E8D900E5D3BD00AF91
      7100A38363009E7F5D009A7958009B7A5900DBC9B400F4EAE000ECE0D300E1D3
      C100E1D3C000E0D3C000E1D3C300E3D5C600E6D8C900E8DBCD00ECE1D500F1E6
      DC00F3E8DF00E8DFD300CCC3B900D1CAC400E9E6E100FAF7F400FAF6F300E0C9
      B000EAD8C300FCFBF90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099969600786B
      680000000000DCD7D400FCFBFB00FAF7F700F8F4F200F6F2F000F3EFEB00F0EB
      E700ECE5E100E9E3DC00E8DFD900E7DDD300E3D6CD00E0D1C600D9CABF00D6C3
      B700D1BFB100D0BBAC00CAB5A500CAB7A800A1806400906C4E00936E5300936E
      51009471530097715300946E5000946E4E00976F4F009F755300A77E5A00AF85
      5E00B4896100B3805600EFE9E400EFE8E700E1D9D30000000000ADAAAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400EFEFEF00EEEEEE00EAEAEA00EDEDED00ECEC
      EC00EAEAEA00EBEBEB00EBEBEB00EAEAEA00E9E9E900E9E9E900E7E7E700E6E6
      E600E6E6E600E5E5E500E3E3E300E4E4E400E7E7E700E4E4E400E2E2E200DEDE
      DE00DDDDDD00DFDFDF00DDDDDD00E1E1E100E3E3E300DBDBDB00DCDCDC00E3E3
      E300DADADA00DFDFDF00DADADA00E4E4E400CECECE00C6C6C600FCFCFC00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6D5
      C100D5BA9E00FBF1E700F3E9DF00E5D7C700E2D5C400E9DDD100EFE3D700EEE3
      D800E9DFD100E6D9CC00E3D7C700DDCDBA00C1A68900C7AA8C00D0B49800D8BF
      A300D3B69A00B0917000AC8B6A00AA8B6A00AA8B6900AC896600BA9B7A00B99B
      7C00B0917100A78669009D7D5D009B7D5D00B49B7F00BFA68C00C4AD9500CAB3
      9D00D0BAA600D4C0AC00D8C4B000D9C7B300DBC7B300CFB7A000AF927300A788
      6700A7866400A7856300B08F6F00EBDBC900F4E9DD00F5E9DF00F1E6DB00E1D1
      C000E1D3C000E1D3C000E0D3C000E1D1C000E1D1C000E2D3C300E3D5C600E6D8
      C900E9DDD000D5CABF00BDB4AD00D0C9C300E9E5E100FAF6F400FDFBF900DBC9
      B600F0DBC000F6F2EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCDCC006860
      5E0000000000D6D4D400FEFEFC00FBF8F800F7F6F400F7F3F000F4EFEC00F2EC
      E900EDE8E300EBE4DD00E5DDD700E4DAD000E1D6CC00DDD1C700DACABF00D4C4
      B800CFBFB000C9B7A900C6B4A400C1AD9F00C0AF9D00AC8F7A008F684B00926B
      4F00926C4F00986F53009C775500A17A5900A57B5800A77B5800A9805900B185
      5C00B98A6100BF96740000000000DCCFCA00F2EDED00EBE9E900EEEEEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F4F4F400F3F3F300ECECEC00D9D9D900D3D3D300D6D6
      D600D5D5D500D4D4D400D4D4D400D3D3D300D3D3D300D2D2D200D1D1D100D0D0
      D000D0D0D000CFCFCF00CDCDCD00CDCDCD00CCCCCC00CDCDCD00CECECE00CDCD
      CD00CCCCCC00C8C8C800CDCDCD00E2E2E200F0F0F000EDEDED00ECECEC00E8E8
      E800E6E6E600E1E1E100E5E5E500E2E2E200C8C8C800E1E1E100FEFEFE00FEFE
      FE00FDFDFD00FDFDFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3CD
      B300D9BFA300FCF3EA00EBE0D100DDCDBA00E3D5C700EADFD000E9DCCF00E8DB
      CC00E7DBCC00E6D9CC00E6D9CC00DFCDBC00C6A98C00C4A68600B7987A00AA8E
      6F00AD927600B39A7F00B49E8800B6A38E00B7A69400BDB0A300C6BAAF00CAC3
      BC00CFC9C100D0CAC300CCC7C300C7C3C000BFBDBC00B0B0AF00A0A0A0008C8C
      8C007979790063636300504F4F0041403F0033322F002826240024211E00221F
      1B00231F1A00241F1A0030261F004334280059493900735D4B008E745B009879
      5F00AD8F7100C3A68800D5B79B00DCC4AD00DCC9B600DFCFBD00E1D3C100E2D4
      C400E3D5C400C1B4A600B9B0A700C9C1BA00E2DDD800F6F3F000FDFBF900E3D4
      C600EBD3B600F5F1EB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB005951
      5000F8F6F400DFDDDC0000000000FCFBFA00FAF8F700F7F4F200F3F2F000F2ED
      EB00EFE9E500ECE7E100E8E1DC00E4DCD300E0D6CC00DCCFC700D7CAC000D4C7
      BB00D1C0B500CCB9AD00C6B4A500C0AD9D00BDA89800BCA79300BBA490009C6F
      5400997250009B725300A0755400A77D5900AF855E00B4896100B7896000B586
      6000AF7A4C00FCFEFE00F8F3F000D7CCC60000000000D6D3D300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800EFEFEF00F1F1F100F4F4
      F400EEEEEE00EDEDED00F5F5F500F5F5F500EFEFEF00E0E0E000DCDCDC00DADA
      DA00DBDBDB00DCDCDC00DCDCDC00DBDBDB00DBDBDB00DADADA00DADADA00D9D9
      D900D8D8D800D7D7D700D6D6D600D5D5D500D2D2D200D5D5D500D6D6D600D4D4
      D400D0D0D000CECECE00D4D4D400E6E6E600F2F2F200EFEFEF00EFEFEF00F5F5
      F500F1F1F100E8E8E800E0E0E000CFCFCF00D6D6D600FCFCFC0000000000FDFD
      FD00FBFBFB00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFD00E1C6
      A900E0C7AD00F7EFE500E2D4C100E5D7C600EADDCC00E3D4C100DCCDBC00DBCC
      BD00DBCFC100D9CFC400DBD3CA00DDD5CD00DDD7D000E1DFDB00E9E8E500F1F0
      EF00F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100EFEFEF00EBEB
      EB00E8E8E800E2E2E200DCDCDC00D1D1D100C4C4C400B4B4B400A3A3A3008E8E
      8E00797979006666660051515100404040002F2F2F00242424001D1D1D001A1A
      1A00171717001515150014141400131313001313130013131300131313001414
      1400161616001B1A1900221F1D00322B24004D433700675B4D00807163009E8C
      7C00AD9A8800B7A38F00B3A79A00C9C0B700E1DBD500F5F2EF00FDFBF900ECE1
      D700E3C9AC00F5EFE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B63
      6200DDD7D700E8E5E50000000000FCFCFC00FCFAFA00FAF7F400F7F4F000F3EF
      EC00EFEBE700ECE7E300EBE3DF00E7DFD900E3DAD100E0D3C900DACDC100D3C6
      BB00D3C1B700CFBFB000CDB9AC00C7B5A500C4AC9C00C0A89400BDA49200C1A7
      9000BB997D00A8805A00AC805900AD835B00B0845B00B5895F00BC8B6300B981
      4F00E0D0C400FCFBFB00D4CAC600F3F0EF0000000000CDCDCD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FDFDFD00FEFEFE00D8D8D800C8C8C800F0F0F000DFDFDF00EAEA
      EA00F1F1F100EDEDED00F5F5F500F2F2F200EAEAEA00DEDEDE00DBDBDB00D3D3
      D300D0D0D000D1D1D100D1D1D100D0D0D000D0D0D000CFCFCF00CECECE00CDCD
      CD00CDCDCD00CCCCCC00CACACA00CACACA00CCCCCC00CECECE00CECECE00CCCC
      CC00C8C8C800CBCBCB00CECECE00E3E3E300F3F3F300F0F0F000F2F2F200EFEF
      EF00E7E7E700EAEAEA00D1D1D100E0E0E000FCFCFC0000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F2F000E5C9
      AA00E5CFB600F3E9DD00E7DBCD00D1C7BC00C9C1BC00D4D1CF00E1E0DD00E5E3
      E200E9E9E800EFEFEF00F1F1F100F2F2F200F3F3F300F3F3F300F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100EFEFEF00ECEC
      EC00E8E8E800E3E3E300DCDCDC00D1D1D100C7C7C700B7B7B700A6A6A6009292
      92007D7D7D0069696900545454004343430032323200252525001F1F1F001A1A
      1A00181818001515150014141400131313001313130013131300131313001414
      140015151500171717001A1A1A001D1D1D002424240030303000414141005453
      5300696766007F7D7A008F8C8B009B979200BAB3AA00E3DCD400FDFAF500F4EF
      E900E0C3A600F1E7DC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEAA
      AB00B1ABA800F3F2F200F8F8F800FEFCFC00FCFBFA00FBF8F800FAF6F300F7F3
      F000F3EDEB00F0EBE500ECE5E000E9E1DC00E7DDD600E4DAD000E0D4CA00DCCD
      C100D7C6BB00D3C1B500D0BDAF00CFBBAB00CDB8A500CCB39F00C7AD9700C3A7
      9000C6A58D00CAA98F00C49D7D00BD8F6A00B9895F00B8885B00B4805000CDB4
      9F0000000000E5D9D700E3D9D60000000000CECCCB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F2F2F200CECECE00E0E0
      E000F2F2F200EEEEEE00F2F2F200EFEFEF00E9E9E900E0E0E000E2E2E200E5E5
      E500E6E6E600E7E7E700E6E6E600E6E6E600E5E5E500E5E5E500DFDFDF00DEDE
      DE00DEDEDE00DDDDDD00DBDBDB00DBDBDB00D8D8D800DADADA00DCDCDC00DADA
      DA00D8D8D800D3D3D300DADADA00EBEBEB00F1F1F100EFEFEF00E7E7E700EDED
      ED00E9E9E900CACACA00E3E3E300EBEBEB00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDB0AD007366
      6900868383009E9E9E00B3B3B300C6C6C600D4D4D400DDDDDD00E5E5E500E9E9
      E900ECECEC00F0F0EF00F1F0EC00F2F0EE00F2F2F000F3F0EE00F3F0EC00F3F2
      F100F2F0EE00EFEAE500EBE6DD00E8E1D900E5DFD800E1D7CF00DCD1C600ECE6
      E000EEE9E300E3DFD800DCD4CC00D4CDC300D1C9BD00CFC4BA00C6BCB000B4A7
      9A00AD9E8F00A99A8800A9988800B0A19200C1B6AA00BAAF9E00B1A39200CCC1
      B600BFB4A700ADA08F00D0C9C100E9E8E700E3E2E200E0DFDD00C9C4C100BCB7
      B400B9B6B100B6B1AF00A3A09B0082807D006A6764005C585500474544005151
      510063636300777777008B8B8B009D9D9D00ACACAC00B7B7B700C0C0C000C1C1
      C000BDB9B300C4B9AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000746D680000000000D1CFCF0000000000FEFCFB00FBFAF800FAF8F600F8F6
      F200F7F2ED00F3EFEB00F2E9E500EDE7DF00E9E0D700E5DCD400E4D7CF00E3D4
      C900E0D0C300DACCBD00D7C3B400D3BDAD00D3BCA800D3B9A500D3B7A100D0B4
      9C00CDAC9400CAA78E00C9A38600CCA78A00CCA48500C9976F00C0A48E000000
      0000EFE5E300DFD4D00000000000F2F2F200E3E3E30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E87C71001A540600005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B2F5D5000384140000590000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F2F2F200E3E3E300E9E9
      E900EFEFEF00F0F0F000F0F0F000F2F2F200EBEBEB00DEDEDE00DCDCDC00DBDB
      DB00D4D4D400D2D2D200D2D2D200D1D1D100D1D1D100D0D0D000D3D3D300D2D2
      D200D1D1D100D0D0D000CFCFCF00D2D2D200DCDCDC00DFDFDF00E0E0E000DFDF
      DF00DCDCDC00D9D9D900D6D6D600E1E1E100EEEEEE00F0F0F000E6E6E600E7E7
      E700D2D2D200C7C7C700FBFBFB00FCFCFC00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F5007C7C7C007171
      71008B8B8B00A3A3A300B6B6B600CAC9C900D8D7D700E0E0DF00E9E6E300ECE9
      E600EFEBE700EFECEA00F0ECEA00F0EBE600EEE9E300E7E0D800D8CAB900D3C3
      B000CFC0B000CDBFAF00CCBFAF00C9BCAC00C6B7A700C3B3A300C1B0A000E6E0
      DB00F2F0EE00E6E2DF00D9D3CC00CDC4B900C6BCAD00C0B3A700BCAFA100A798
      86009888740092806D00917F6A009B8B7700B3A69800AA9B8900A08F7D00CDC3
      B900B4A697009B8977008E7A6600C1B6A900F6F5F300F7F7F600C9BDB100C6BC
      AF00C9BFB100CCC1B600CDC3B900D5CDC400DFDBD400E5E0D900E9E6E200E3DD
      D700CCC7C100B9B4B000AAA7A600ACAAAA00B3B3B100B9B9B900C0C0C000C4C4
      C400C0C0C000BABABA00E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A09D9C00D6CCCA00ECEBEB00F7F7F600FFFEFE00FEFCFB00FCFAF800FAF7
      F400F8F4F000F6F0ED00F4EDE800F3EBE500EFE7E000ECE1DA00E7DDD300E7D7
      CA00E4D4C700E3D1C300E1CDBD00DDC6B700D9C0AD00D6BCA700D4B9A300D6B7
      9F00D6B59B00D3B09400CDAB8D00C7A38400C6977200C6B5A700FFFCFA00FAED
      EB00D9D0CD00FBFAF80000000000D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF8075002056070000600000067B
      000075BA68000059000000540000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005800000070
      0A00D9E5E3000C80180000590000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F1F1F100F2F2F200F0F0
      F000ECECEC00F0F0F000EFEFEF00F1F1F100ECECEC00E0E0E000DDDDDD00D9D9
      D900D9D9D900DADADA00DADADA00D9D9D900D8D8D800D8D8D800D8D8D800D7D7
      D700D6D6D600D6D6D600D4D4D400D6D6D600DADADA00DCDCDC00DEDEDE00DCDC
      DC00DADADA00DCDCDC00D7D7D700E9E9E900EEEEEE00E6E6E600F1F1F100D7D7
      D700D5D5D500F7F7F700FDFDFD00FEFEFE00FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00707070007777
      770092919100B7B4B300D0CFCD00E0DBD700E9E0D300F1E2D100F3EEE800F4F2
      EF00F4F2EE00F4F0EC00F2EFEB00F1ECE800EEE8E300E5DDD400D3C4B300D0C1
      B000D1C3B100D0C1B300D0C3B300CDC0B000CABDAD00C6B7A700CAB4A000ECE2
      D500FBFBFA00F2F0EE00E7E3DF00D9D3CC00CDC4BA00C4B9AD00C0B3A700BAAD
      A000AA9B8B00A1917F00A08F7C00B0A39200C3B6A900B0A19200B4A99A00CDC3
      B900B1A49400A18F7D0094826D008E796300A7988500C9BFB100BCAFA100C0B3
      A700C4B9AC00C7BDB000C9BFB300CCC1B600CCC3B700C9BAAD00CDBAA300E0C6
      AA00EED7BD00F3E1C900F4E5D100EEE1D400E2DDD700DCDBD900D3D1D000C7C7
      C600C3C3C300BFBFBF00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000837A770000000000B3AFAD00FBFAFB00FEFCFC00FEFBFB00FCFA
      F700FAF7F400F7F3EF00F7EFEC00F4EDE800F2E9E300F0E7E000EDE3D900EBDD
      D100E7D7CA00E4D1C400E3CFBF00E3CDBB00E1C9B500DFC3AF00D9BCA700D3B5
      9D00D3B19800D1AF9300D6AF9000C79F7E00D4D1CF00FAF2EB00F7F2E900E0D9
      D400F7F2F00000000000BBB9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8A7D0026590A00005A0000006E
      000084C38700005500000054000000580000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005800000071
      1100F7F0FA0006771F0000580000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900F1F1F100F5F5F500F3F3
      F300ECECEC00EEEEEE00ECECEC00E8E8E800EAEAEA00E8E8E800EDEDED00EEEE
      EE00E7E7E700E4E4E400E4E4E400E3E3E300E3E3E300E2E2E200E1E1E100E0E0
      E000DFDFDF00DEDEDE00DDDDDD00DCDCDC00DADADA00DDDDDD00DEDEDE00DDDD
      DD00DADADA00D8D8D800D9D9D900E2E2E200EAEAEA00ECECEC00DEDEDE00D0D0
      D000F6F6F600FEFEFE00FBFBFB00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D800707070009292
      9200C9C7C700E1D7CD00F1DCC100F9DDBA00F9DDBA00F9DDBA00F9E3C900F7F3
      EF00F6F4F200F4F1EF00F2EFEB00F1ECE800EFE9E500E3DCD100CFBFAC00CFBF
      AD00D1C1B000D0C1B100D0C3B300D0C1B100CDBFAF00D3BAA600E6C6A400F4E3
      D00000000000FBFAFA00F2F0EE00E6E2DF00D9D3CC00CDC4B900C4B9AC00C0B3
      A700B7AA9B00AA9B8C00AC9E8E00CCC3B900C9BFB300B7A99B00B4A69500C9BD
      B100B6A99A00A99A88009E8F7C009A88730095836F0097867000AC9D8B00B9AD
      9E00BFB1A400C1B6A900C4BAAD00C7BDB000C7BCAC00C7AA8C00DDBF9E00EFD1
      B000F6DBB900F9DCBA00F9DDBA00F9DDBA00F9DDBA00F3DCBF00E7D9CD00DDDD
      D900CCCACA00BDBDBC00B1B1B100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD9D900BCB5B300FEFEFC00B1AFAF0000000000FCFBFA00FCFB
      F800FBF7F400FAF6F200F8F2EF00F7EFE900F3EBE400F0E7E000EFE4DA00EDE1
      D700ECDFD100E8D7CA00E4D1C100E1CCB900E0C7B400DFC4B000DFC1AC00DCBC
      A400D6B59C00D6AF9000B8A79700DDD7DA00F8F0EB00F0E9E500E5DCDA00F8F4
      F30000000000C5C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9586002C5D0F00005A0000005D
      00007BC79700178E4E001A8C3C001A8F3900208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00148F3F004FA8
      7200F9FDF2000E751C0000580000005500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FDFDFD00FEFEFE00D9D9D900C9C9C900EFEFEF00EEEEEE00F3F3
      F300EDEDED00EAEAEA00EDEDED00EDEDED00EEEEEE00E8E8E800E9E9E900E6E6
      E600E6E6E600E8E8E800E7E7E700E7E7E700E6E6E600E6E6E600E2E2E200E1E1
      E100E0E0E000E0E0E000DEDEDE00DEDEDE00DDDDDD00DFDFDF00E0E0E000DFDF
      DF00DDDDDD00DCDCDC00D9D9D900E5E5E500E9E9E900DADADA00CCCCCC00EFEF
      EF0000000000F9F9F900F9F9F900FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D800A4A4A4008B8B
      8B005C5957006A6054009B887300C4A98C00DFBFA000EFD1B000F9DCBA00F7E5
      CD00F6F2EC00F4F1EF00F2EFEB00F1ECE800EFE9E500E0D7CC00C9B6A300CCBA
      A700CFBFAC00D0C1B000D0C3B100D0C1B100DBC1A700E8CAA900F1D4B300F7E3
      CA00FFFFFE00FEFEFE00FAFAFA00F2F0EE00E7E2DD00D9D3CC00CDC4BA00C4B9
      AD00BFB3A600B4A79800C0B3A700D7CFC600CCC1B700BFB1A400AA9B8B00BDB0
      A300C3B9AC00B9AC9D00B1A49500B0A19100A7988600A6958300AC9D8C00B4A7
      9800B9AC9E00BCAFA100C0B3A600C3B7A900CFB69B00DBBC9B00EACDAC00F5D8
      B600F9DCBA00F9DCBA00F2D5B300E5C6A600CFB19400B49E86009B8C7D00948E
      8900AFADAD00BABABA00B0B0B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0BFBE00E5E3E300F8F7F600ABA9A800F0F0F000FEFE
      FB00FAF8F600FAF6F300F8F3F000F7F2EC00F6EDE800F3EBE300EFE4DC00EDE1
      D700ECDFD300EBDCCD00E9D7C700E5D1C000E0C9B700DDC4B000E0C3AB00DDBC
      A500C7B3A000ACABAD00E7E0DD00F7EDE800F2EBE700F2E8E500FAF6F3000000
      0000C9C9C9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFA090003A631500006100000058
      00003DAF6B00A3E1D100A6DDAC009EE0A6009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009BDEB300BAE3
      D000B7DEA6001477060000580000005600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00F8F8F800FEFEFE00D5D5D500C7C7C700F0F0F000EFEFEF00EDED
      ED00EBEBEB00E9E9E900E8E8E800E7E7E700E7E7E700E6E6E600E5E5E500E5E5
      E500E6E6E600E5E5E500E5E5E500E4E4E400E4E4E400E3E3E300E1E1E100E1E1
      E100E0E0E000E0E0E000DFDFDF00DEDEDE00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DCDCDC00DADADA00E7E7E700DBDBDB00CECECE00F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00E6E6E600AFAF
      AF006F6F6F005757570057575700606060006C6C6C00767676007D7D7D008685
      85008C888500AFAAA900E8E3E100F0EBE700EEE9E300D0C0AD00C1AC9700C7B4
      A000C6B4A300BCAA9700CCB09400D9BC9B00E2C3A100E8C9A600EBCDAA00EED0
      AD00F0D1AF00F2D4B100F3D7B400F6E1CA00F5E9DC00F0E8E000E6E1DB00DBD4
      CC00CFC6BA00C3B9AC00C7BAAF00D0C6BC00C6BCAF00B6A99A00AA9B8B00A394
      8200B9ADA100DFD8D100E2DDD800E2DCD700D5CDC400D5CDC400D3C9C000D0C6
      BD00B7ACA10085715F0076695B00736455006457490054494000474037004440
      3C00474544004F4F4F005B5B5B0066666600717171007C7C7C00888888009898
      9800ADADAD00D3D3D300F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A19F9F00E7E5E400F8F7F700ABA7A500D6D3
      D100FAFAFA00F7F6F400F8F4F000F7F2EF00F6F0E900F4ECE700F3E9E100F0E4
      DA00EDE0D600E9DACC00E9D7C700EBD4C100EBD3C000DDC6B400B4ABA7009DA1
      A300B3AFAD00F4EBE500F8F2EF00F8F6F600F4EDEB00FAFAF800FAFAFA00C6C5
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFAD9B004F691B00006100000055
      0000005900000068000006730000067300000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C740000007700000063
      0000005C0000005A000000590000005900000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD0000000000FBFBFB0000000000D8D8D800C7C7C700F0F0F000F1F1F100F0F0
      F000F0F0F000EFEFEF00EEEEEE00EBEBEB00EBEBEB00EAEAEA00EAEAEA00E9E9
      E900E7E7E700E6E6E600E5E5E500E5E5E500E4E4E400E4E4E400E2E2E200E1E1
      E100E1E1E100E1E1E100E0E0E000DFDFDF00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00E0E0E000D6D6D600D3D3D300ECECEC00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F7F7
      F700E2E2E200BDBDBD00A4A4A40080828200767676007A7A7A00828282008B8B
      8B008F8F8F0095959500A7A6A600E0DCD800ECE7E200C4B19D00BDA79100B4A7
      9A00A09B98009B989500A39E9A00A7A19D00A7A19B00A6A09700A79D9200A49A
      8F00A3978B00A1958800A09182009D8E7F009A8B7A0095887A0092867C00A69E
      9800C4C0B900CDC4BA00C6BAAF00C6BAAF00C0B3A700B4A99A00B0A39200A99A
      8900A4958300C1BAB100ECE9E700EBE8E600E6E2DD00E6E2DD00DFD9D500ACA6
      A000484541001B1A1A001C1B1B001D1D1D001F1F1F00242424002C2C2C003737
      3700434343004F4F4F005B5B5B00676767007D7D7D009A9A9A00ADACAD00CDCD
      CD00EFEFEF00FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C800DCD7D600FBFBFA00D7D1
      D100A5A1A000B8B4B400E9E9E900F7F7F600E9EDEF00E0E1DF00E3DDDA00E0D9
      D300D9D0CC00CCC4BF00BDBCBB00BBBDBB00C0BDC100A4A4A4007B767600C3B9
      B500F7EFEC00FCFCFC00F8F6F400F2EBE70000000000EFECEC00E9E8E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB09E0052691B00005A00000058
      000000590000005C0000005D0000006100000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006400000059
      0000005C0000005A000000590000005900000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000FDFDFD00FEFEFE00DCDCDC00B0B0B000BBBBBB00BDBDBD00BDBD
      BD00BFBFBF00C1C1C100C1C1C100BBBBBB00BBBBBB00BABABA00BABABA00B9B9
      B900B8B8B800B6B6B600B6B6B600B5B5B500B5B5B500B4B4B400B4B4B400B3B3
      B300B3B3B300B3B3B300B2B2B200B2B2B200B0B0B000B0B0B000B0B0B000B0B0
      B000B0B0B000B3B3B300ABABAB00BBBBBB00EAEAEA00FEFEFE00F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F1F1F100E1E1E100D1D1D100BDBDBD00AAAAAA00A0A0
      A0009B9B9B009D9D9D009D9E9E00ACACAA00DCD8D300B4A49200A6A09A009D9D
      9D00A1A1A100A4A4A400A4A4A400A4A4A400A4A4A400A3A3A300A1A1A1009E9E
      9E009D9D9D0098989800949494008E8E8E00858585007C7C7C00737373006767
      67005D5D5D006C6A67008F898200A79E9400B3A69800BAADA000B6A99B00AFA1
      9200AA9B8B0051494100201F1F006F6D6C00A4A19E0066646300242424001616
      160017171700191919001B1B1B001D1D1D00242424002F2F2F003F3F3F004D4D
      4D00606060007D7D7D009E9E9E00B7B7B900CDCDCD00E3E3E300F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E7E700B5B2AF000000
      0000F0EDEC00D4D0CF00C6C1BF00B8B1B100B8B1AF00B8B5B400B0ADAD00ABA7
      A8009D9B9800A09B990099949200787372005D5A5900968B8900E4DFDF00FFFF
      FE00EFEBE900F2EBE800FEFEFC00EBE9E900CFCFCE00F5F4F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB49E00466A1B00005600000059
      0000005900000059000000580000005A00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000059
      0000005A00000059000000590000005900000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FCFCFC00FCFCFC00FEFEFE00F3F3F300D3D3D300CCCCCC00CDCDCD00CFCF
      CF00D0D0D000D2D2D200D2D2D200CECECE00CECECE00CDCDCD00CCCCCC00CCCC
      CC00CECECE00CFCFCF00CFCFCF00CECECE00CECECE00CDCDCD00CECECE00CDCD
      CD00CDCDCD00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CDCDCD00D0D0D000F0F0F000FEFEFE00FBFBFB00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F7F7F700F2F2F200EBEB
      EC00E2E2E200D4D4D400C6C6C600BABABA00B6B4B400AFADAC00AAAAAA00AAAA
      AA00A9A9A900A7A7A700A7A7A700A6A6A600A4A4A400A3A3A300A1A1A1009E9E
      9E009D9D9D0098989800949494008E8E8E00868686007D7D7D00747474006A6A
      6A005D5D5D005050500045454500444443005C575300AAA09400BCAFA000B4A7
      9800AFA192005B544C0011111100121212001A1A1A0020202000282828003333
      330044444400535353006363630073747300888888009E9E9E00B6B7B700D0D0
      D000E1E2E200ECECEC00F3F3F300FAFAFA00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00C2C0
      BF00CCCACA0000000000F6F0F000ECEBE700E4E0DC00D7D1CF00D9D3D100E5DD
      DD00F0ECE900E8E5E400DAD4D400D7CFCD00F4EDEB00F4F0F000F3EFEC00F2ED
      EC0000000000E1E1E000D7D5D300EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB59B00436A1800005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00FDFDFD00FEFEFE00FEFEFE00FBFBFB00FEFEFE000000000000000000FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FEFEFE0000000000000000000000000000000000FEFEFE00000000000000
      00000000000000000000FEFEFE00FEFEFE000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FCFCFC00FCFCFC00FAFAFA00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00F9F9F900F7F7
      F700F5F5F500F4F4F400F2F2F200F1F0F100F0F0F000EFEFEF00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F1F1F100F2F2F100E9E5
      E100E5E0D900E8E6E200F2F1F100F4F4F400FBFBFB00FEFEFE00F7F6F400DFD8
      D300E7E3DF00F7F7F700FAFAFA00FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0BFBF00C9C4C200F0F0F000FAFAFA00FFFFFE00F4F2EF00E8E4
      E300E9E5E400E9E3E100E9E5E400F6F3F200FFFCFB00F8F8F800F1F3F300DEDC
      DC00C1C1C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFBEAB0081753500005C0000005F
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900EDEDED000000000000000000FCFCFC00FAFAFA0000000000000000000000
      0000FDFDFD00FBFBFB00FBFBFB0000000000FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FEFEFE00FDFD
      FD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD0000000000FDFDFD000000000000000000FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F100D9D3CA00F9F7F700FBFBFB00FDFDFD00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECEC00C5C3C100B4B3B100B9B5
      B400B8B7B500B8B5B400BCBAB700BCB9B900CECBCB00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFE2E900FFABA400E27A7900E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7600424D3E000000000000003E000000
      2800000020010000200100000100010000000000802800000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFF00000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FF000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFF000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000FF07FFFFFFFFFFFFFF000000000000000000000000000000
      000000000000000000000000FE01FFFFFFFFFFFFFF0000000000000000000000
      00000000000000000000000000000000FE01FFFFFFFFFFFFFF00000000000000
      0000000000000000000000000000000000000000FC00FFFFFFFFFFFFFF000000
      000000000000000000000000000000000000000000000000F8007FFFFFFFFFFF
      FF000000000000000000000000000000000000000000000000000000F0003FFF
      FFFFFFFFFF000000000000000000000000000000000000000000000000000000
      F0000FFFFFFFFFFFFF0000000000000000000000000000000000000000000000
      00000000F00007FFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000F0000000000000007F000000000000000000000000000000
      000000000000000000000000F0000000000000001F0000000000000000000000
      00000000000000000000000000000000F00000FFFFFFFFF00F00000000000000
      0000000000000000000000000000000000000000F00000E003FFFFFF0F000000
      000000000000000000000000000000000000000000000000E000000000FFFFFF
      07000000000000000000000000000000000000000000000000000000C0000000
      003FFFFFC3000000000000000000000000000000000000000000000000000000
      8600000000000001E10000000000000000000000000000000000000000000000
      000000008E000000000000007100000000000000000000000000000000000000
      00000000000000008C0000000000000071000000000000000000000000000000
      0000000000000000000000009C00000000000000390000000000000000000000
      000000000000000000000000000000009C000000000000003900000000000000
      00000000000000000000000000000000000000009C0000000000000039000000
      0000000000000000000000000000000000000000000000009C00000000000000
      390000000000000000000000000000000000000000000000000000009C000000
      0000000039000000000000000000000000000000000000000000000000000000
      9C00000000000000390000000000000000000000000000000000000000000000
      000000009C000000000000003900000000000000000000000000000000000000
      00000000000000009C0000000000000039000000000000000000000000000000
      0000000000000000000000009C00000000000000390000000000000000000000
      000000000000000000000000000000009C000000004000003900000000000000
      00000000000000000000000000000000000000009C00000000C0000039000000
      0000000000000000000000000000000000000000000000009C00000003C00000
      390000000000000000000000000000000000000000000000000000009C000000
      0FC0000039000000000000000000000000000000000000000000000000000000
      9C0000000FC00000390000000000000000000000000000000000000000000000
      000000009C0000000FC000003900000000000000000000000000000000000000
      00000000000000009C0000001FC0000039000000000000000000000000000000
      0000000000000000000000009C0000003F800000390000000000000000000000
      000000000000000000000000000000009C0000003F8000003900000000000000
      00000000000000000000000000000000000000009C0000007F00000039000000
      0000000000000000000000000000000000000000000000009C0000007E000000
      390000000000000000000000000000000000000000000000000000009C000000
      7C00000039000000000000000000000000000000000000000000000000000000
      9C0000007C000000390000000000000000000000000000000000000000000000
      000000009C000000600000003900000000000000000000000000000000000000
      00000000000000009C0000000000000039000000000000000000000000000000
      0000000000000000000000009C00000000000000390000000000000000000000
      000000000000000000000000000000009C000000000000003900000000000000
      00000000000000000000000000000000000000009C0000000000000039000000
      0000000000000000000000000000000000000000000000009C00000000000000
      390000000000000000000000000000000000000000000000000000009C000000
      0000000039000000000000000000000000000000000000000000000000000000
      9C00000000000000390000000000000000000000000000000000000000000000
      000000009C000000000000003900000000000000000000000000000000000000
      00000000000000009C0000000000000039000000000000000000000000000000
      0000000000000000000000009C00000000000000390000000000000000000000
      000000000000000000000000000000009C000000000000003900000000000000
      00000000000000000000000000000000000000009C0000000000000039000000
      0000000000000000000000000000000000000000000000009C00000000000000
      390000000000000000000000000000000000000000000000000000009C000000
      0000000031000000000000000000000000000000000000000000000000000000
      8C00000000000000710000000000000000000000000000000000000000000000
      000000008E00000000000000F100000000000000000000000000000000000000
      0000000000000000C7C0000000000003E3000000000000000000000000000000
      000000000000000000000000C3C0000000000003C30000000000000000000000
      00000000000000000000000000000000C1FFFFFFFFFFFFFF8300000000000000
      0000000000000000000000000000000000000000E0FFFFFFFFFFFFFF07000000
      000000000000000000000000000000000000000000000000F000000000000000
      0F000000000000000000000000000000000000000000000000000000F8000000
      000000001F000000000000000000000000000000000000000000000000000000
      FF80000000000001FF0000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFF000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000
      00000000000000000000000000000000FFFE0001FFFFF01FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFFF0000000000000000
      00FFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFE000FFFFFFFFFE00000
      1FF000000FFFFF87FFFFFFF81FFFFFFFFE000001FFFFFFFFFFFFFA0003FFFFFF
      000000000000000000FFFC000000000007FFFFFFF80000003FFFFFFFFFFFF800
      01FFFFFF000000000000000000FFF0000000000001FFFFFF800000000FFFFFFF
      FFFFF00000FFFFFFFFFE0000000000003FFFE00000000000007FFFFF00000000
      07FFFFFFFFFFC000007FFFFF000000000000000000FFC00000000000003FFFFC
      0000000000FFFFFFFFFF8000003FFFFF001800000000000000FFC00000000000
      003FFFFC0000000000FFFFFFFFFF8000001FFFFFFF800000000000000FFFC000
      00000000001FFFF800000000007FFFFFFFFF0000000FFFFF0000000000000000
      00FF000000000000001FFFF000000000003FFFFFFFFE00000007FFFFE0000000
      0000000007FE000000000000000FFFE000000000001FFFFFFFFC00000003FFFF
      000000000000000000FE000000000000000FFFC000000000000FFFFFFFF80000
      0001FFFF000000000000000000FE0000000000000007FF00000000000007FFFF
      FFF800000001FFFFE00000000000000007FE0000000000000007FE0000000000
      0003FFFFFFF000000000FFFF000000000000000000FE0000000000000007FC00
      0001FE000001FFFFFFE0000000007FFF000000000002000000FE000000000000
      0007FC00001FFF800000FFFFFFC0000000007FFFE00000000001000007FE0000
      000000000007FC00007FFF8000007FFFFF80000000003FFF0000000000000000
      00FE0000000000000007F800007FFF8000007FFFFF80000000001FFF00000000
      0000800000FE0000000000000007F00001FFFF0000003FFFFF00000000001FFF
      F00000000000000007FE0000000000000007F00003FFFE0000003FFFFE000000
      00000FFF000000000000000000FE0000000000000007E00007FFFC0000001FFF
      FE000000000007FF000000000000030000FE0000000000000007E0000FFFF800
      00001FFFFC000000000007FFF0000000001007C01FFE0000000000000007C000
      3FFFE00000000FFFFC000000000007FF000000000000000000FE000000000000
      0007C0007FFFC00000000FFFF8000038000003FFF0000000000000003FFE0000
      000000000007C0007FFF800000000FFFF800003C000003FF0000000000000000
      00FE0000000000000007C000FFFF800000000FFFF800000C000001FF00000000
      0000000000FE0000000000000007C000FFFF0000000007FFF0000000000001FF
      F000400000000001FFFE00000000000000078001FFFE0000000007FFF0000000
      000001FF000000000000000000FE00000000000000078001FFFC0000000007FF
      F0000000000000FF000000000000000000FE00000000000000078001FFF80000
      0E0007FFE0000000000000FFF0007FE780000001FFFE00000000000000078003
      FFF000001F0007FFE0000000000000FF000000000000000000FE000000000000
      00078003FFC000003F0007FFE00000000000007F000000000000000000FE0000
      0000000000078003FF8000007F0007FFC00000000000007FF000006780000001
      FFFE00000000000000078003FF000000FF0003FFC00000000000007F00000000
      0000000000FE00000000000000078003FF000001FF0003FFC00000000000007F
      000000000000000000FE00000000000000078003FE000001FF0003FFC0000000
      0000003FF0007FE400000001FFFE00000000000000078003FC000007FF0003FF
      C00000000000003F000000000000000000FE00000000000000078003F800000F
      FF0003FFC00000000000003F00007C000000000000FE00000000000000078003
      F000001FFF0007FFC00000000000003E000000000000000000FE000000000000
      00078003E000003FFF0007FFC00000000000003E000000000000000000FE0000
      00000000000780038000007FFF0007FFC00000000000003EF0007FE700000001
      FFFE00000000000000078001000000FFFE0007FFC00000000000003E00000000
      0000000000FE00000000000000078000000001FFFE0007FFC00000000000003E
      000000000000000000FE00000000000000078000000003FFFE0007FFC0000000
      0000003EF0007FE7FF000001FFFE00000000000000078000000003FFFE0007FF
      C00000000000003E000000000000000000FE0000000000000007C00000000FFF
      F80007FFC00000000000003E000000000000000000FE0000000000000007C000
      00001FFFF8000FFFC00000000000003EF00000E7FF380001FFFE000000000000
      0007C00000003FFFF0000FFFC00000000000003E000000000000000000FE0000
      000000000007C00000007FFFE0000FFFC00000000000003E0000000000000000
      00FE0000000000000007E0000000FFFFC0001FFFC00000000000003EF0007FE7
      FF300001FFFE0000000000000007E0000001FFFF80001FFFC00000000000003E
      000000000000000000FE0000000000000007F0000003FFFF00003FFFC0000000
      0000003E000000000000000000FE0000000000000007F0000007FFFF00003FFF
      C00000000000007FF000000000000001FFFE0000000000000007F0000007FFFE
      00003FFFC00000000000007F000000000000000000FE0000000000000007F800
      000FFFF000007FFFC0000000000001FFF000000000000001FFFE000000000000
      0007FC000007FFC000007FFFC0000000000001FF000000000000000000FE0000
      00000000000FFC000001FE000001FFFFC0000000000003FF0000000000000000
      00FF000000000000000FFE00000000000003FFFFF0000000000007FFF0000000
      00000021FFFF000000000000001FFF00000000000007FFFFFF00000000007FFF
      000000000000000000FFC00000000000001FFFC000000000000FFFFFFFE00000
      0007FFFF000000000000000000FFC00000000000003FFFE000000000001FFFFF
      FFF80000001FFFFFF000000000000001FFFFE00000000000007FFFF000000000
      003FFFFFFFFE0000007FFFFF000000000000000000FFE00000000000007FFFF0
      00000000003FFFFFFFFE0000007FFFFF000000000000000000FFF00000000000
      01FFFFF800000000007FFFFFFFFF800000FFFFFFF000000000000001FFFFFC00
      0000000007FFFFFC0000000000FFFFFFFFFFC00003FFFFFF0000000000000000
      00FFFF80FFFFFFE03FFFFFFF0000000007FFFFFFFFFFF0000FFFFFFF00000000
      0000000000FFFFFFFFFFFFFFFFFFFFFFE00000000FFFFFFFFFFFF8001FFFFFFF
      F000000000000001FFFFFFFFFFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFE00
      3FFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFF
      FFFFFF80FFFFFFFF040000000000000200FFFFFFFFFFFFFFFFFFFFFFFFF0003F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000F1FFFFF000000000
      07FFFFFFFFFFFFFFFFC3FF800000000000000000FC0000000000000010FFFF80
      0000000000FFFFFFFFFFFFFFFF80FF000000000000000000FC00000000000000
      00FFFC0000000000001FFFFFFFFFFFFFFF007F000000000000000000FC000000
      0000000000FFF800000000000007FFFFFFFFFFFFFC003F000000000000000000
      FF800000000000000FFFF000000000000003FFFFFFFFFFFFF8005F0000000000
      00000000FF800000000000000FFFE000000000000001FFFFFFFFFFFFF0003F00
      0000000000000000FE000000000000008FFFC000000000000000FFFFFFFFFFFF
      E0001F000000000000000000FE000000000000000FFFC000000000000000FFFF
      FFFFFFFFC0000F000000000000000000FC000000000000000FFF800000000000
      0000FFFFFFFFFFFF80002F000000000000000000E80000000000000009FF8000
      000000000000FFFFFFFFFFFE00000F0000000000000000000000000000000000
      09FF8000000000000000FFFFFFFFFFFC00001F00000000000000000000000000
      0000000009FF8000000000000000FFFFFFFFFFF800001F000000000000000000
      200000000000000003FF8000000000000000FFFFFFFFFFF000003F0000000000
      00000000000000000000000002FF8000000000000000FFFFFFFFFFE000007F00
      0000000000000000800000000000000002FF8000000000000000FFFFFFFFFFC0
      0001FF000000000000000000000000000000000002FFC000000000000000FFFF
      FC3FFF800001FF000000000000000000200000000000000006FFC00000000000
      0000FFFFF80FFF000003FF000000000000000000200000000000000006FFC000
      000000000001FFFFF001FE000003FF0000000000000000002000000000000000
      00FF8000000000000001FFFFE200F8000007FF00000000000000000020000000
      0000000000FF800000000000000FFFFFE00030000007FF000000000000000000
      200000000000000000FF800000000000001FFFFFC0000000000FFF0000000000
      00000000200000000000000002FF800000000000007FFFFFC0000000000FFF00
      0000000000000000200000000000000002FF000000000000007FFFFF80000000
      001FFF000000000000000000200000000000000002FF00000000000000FFFFFF
      80000000003FFF000000000000000000200000000000000002FF000000000000
      00FFFFFF00000000003FFF000000000000000000200000000000000002FF0000
      0000000000FFFFFF20000000007FFF0000000000000000000000000000000000
      02FF000000000000007FFFFE00000000007FFF00000000000000000000000000
      0000000000FF000000000000007FFFFC4000000000FFFF000000000000000000
      000000000000000000FF000000000000007FFFFC0000000000FFFF0000000000
      00000000000000000000000004FF000000000000003FFFF80000000000FFFF00
      0000000000000000000000000000000006FE000000000000003FFFF800000000
      01FFFF000000000000000000000000000000000006FE000000000000007FFFF0
      00000000003FFF000000000000000000000000000000000005FE000000000000
      003FFFF000000000000FFF000000000000000000000000000000000005FE0000
      00000000003FFFE0000000000007FF0000000000000000000000000000000000
      05FE000000000000003FFFE4000000018001FF00000000000000000020000000
      0000000003FC000000000000003FFFC00000000080007F000000000000000000
      200000000000000003FC000000000000001FFFA80000000000003F0000000000
      00000000000000000000000002FC000000000000000FFF900000100000005F00
      0000000000000000000000000000000007FC000000000000000FFF0000000000
      20003F000000000000000000000000000000000007F8000000000000000FFF20
      0000000000003F000000000000000000000000000000000007F8000000000000
      001FFE000004000000007F000000000000000000000000000000000007F80000
      00000000001FFF000000000002007F0000000000000000002000000000000000
      07F8000000000000001FFC00000000000100FF00000000000000000010000000
      0000000007F8000000000000000FF800000000000001FF000000000000000000
      F00000000000000007F8000000000000000FF900000000000001FF0000000000
      00000000FC0000000000000007F8000000000000000FF000000000000003FF00
      0000000000000000FC000000000000000FF8000000000000000FF00001000000
      0043FF000000000000000000FE000000000000000FF0000000000000000FF000
      000000000007FF0000000000000000003C000000000000000FF0000000000000
      000FF800000000000007FF000000000000000000FF100000000000002FF00000
      00000000000FF80000000000000FFF000000000000000000FFF000000000000F
      FFF0000000000000000FFE0004000000000FFF000000000000000000FFF00000
      0000000FFFE00000000000000007FFC000000000000FFF000000000000000000
      FFF000000000000FFFE00000000000000007FFE000000000000FFF0000000000
      00000000FFF000000000000FFFE00000000000000007FFF800000000000FFF00
      0000000000000000FFF000000000000FFFE00000000000000007FFFE08000000
      000FFF000000000000000000FFF000000000000BFFE00000000000000003FFFF
      C8000000014FFF000000000000000000FFF0000000000003FFE0000000000000
      0003FFFFC8000000005FFF000000000000000000FFF000000000000FFFE00000
      000000000003FFFFC8000000021FFF000000000000000000FFF0000000000003
      FFE00000000000000003FFFFC200000000BFFF000000000000000000FFF00000
      00000023FFC00000000000000003FFFFE200000000BFFF000000000000000000
      FFF0000000000043FFC00000000000000003FFFFE0000000097FFF0000000000
      00000000FFF000000000007FFFC00000000000000003FFFFF5000000127FFF00
      0000000000000000FFF000000000007FFF800000000000000001FFFFF0000000
      02FFFF000000000000000000FFF000000000007FFF800000000000000001FFFF
      FA00000005FFFF000000000000000000FFF00000000000FFFF80000008000000
      0001FFFFF84000000BFFFF000000000000000000FFF000000000087FFF800000
      000000000001FFFFFC00000017FFFF000000000000000000FFF0000000001FFF
      FF800000000000000001FFFFFE0000000FFFFF000000000000000000FFEA0000
      00001FFFFFC00000000000000003FFFFFF0000009FFFFF000000000000000000
      FFE8000000001FFFFFF8000000000000001FFFFFFF9000003FFFFF0000000000
      00000000FFE0000000001FFFFFFF000000000000007FFFFFFFC40008FFFFFF00
      0000000000000000FFE06007BCF81FFFFFFFFFFF000000007FFFFFFFFFF80007
      FFFFFF000000000000000000FFE6710000059FFFFFFFFFFFFFFFFFE07FFFFFFF
      FFFF003FFFFFFF00000000000000000000000000000000000000000000000000
      000000000000}
  end
  object SQLSEdicao: TIBSQL
    Database = FBird.DBEDI
    Transaction = TSEdicao
    Left = 720
    Top = 8
  end
  object SQLConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = IBTra
    Left = 336
    Top = 72
  end
  object TEdicao: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = FBird.DBERP
    DefaultAction = TARollback
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 408
    Top = 40
  end
  object SQLEdicao: TIBSQL
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 440
    Top = 40
  end
  object SPEdicao: TIBStoredProc
    Database = FBird.DBERP
    Transaction = TEdicao
    Left = 472
    Top = 40
  end
end
