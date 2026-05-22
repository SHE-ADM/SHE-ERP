inherited frmcad_pro_edi: Tfrmcad_pro_edi
  Left = 445
  Top = 22
  ActiveControl = edcart
  ClientHeight = 643
  ClientWidth = 954
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlcadastro: TPanel
    Width = 954
    Height = 624
    inherited PaintBox: TPaintBox
      Width = 954
      Height = 160
    end
    object Label1: TLabel [1]
      Tag = 1
      Left = 10
      Top = 77
      Width = 39
      Height = 14
      Hint = 'Referencia'
      Caption = 'Artigo'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel [2]
      Left = 10
      Top = 101
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
    object ladfor: TLabel [3]
      Left = 10
      Top = 149
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
    object Label6: TLabel [4]
      Left = 445
      Top = 173
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
    object Label18: TLabel [5]
      Left = 445
      Top = 149
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
    object Label33: TLabel [6]
      Left = 10
      Top = 173
      Width = 57
      Height = 14
      Caption = 'Refer'#234'ncia'
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
    object Label10: TLabel [7]
      Left = 10
      Top = 197
      Width = 27
      Height = 14
      Caption = 'NCM'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel [8]
      Left = 505
      Top = 77
      Width = 41
      Height = 14
      Caption = 'Status'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label45: TLabel [9]
      Left = 445
      Top = 197
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
    object Label12: TLabel [10]
      Left = 10
      Top = 125
      Width = 64
      Height = 14
      Caption = 'Composi'#231#227'o'
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
    inherited SBMenuPrincipal: TSpeedBar
      Width = 954
      TabOrder = 14
    end
    object edid: TdxEdit
      Tag = 1
      Left = 80
      Top = 72
      Width = 110
      Hint = 'Referencia'
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
      TabOrder = 13
      Visible = False
      CharCase = ecUpperCase
      MaxLength = 120
      StoredValues = 2
    end
    object eddcad: TdxMaskEdit
      Left = 595
      Top = 72
      Width = 110
      Hint = 'C'#243'digo'
      Color = clWhite
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
      TabOrder = 12
      Visible = False
      CharCase = ecUpperCase
      IgnoreMaskBlank = False
      MaxLength = 20
      StoredValues = 6
    end
    object edcfor: TdxMaskEdit
      Left = 85
      Top = 168
      Width = 150
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
      CharCase = ecUpperCase
      IgnoreMaskBlank = False
      MaxLength = 20
      StoredValues = 6
    end
    object edcomp: TdxEdit
      Tag = 1
      Left = 85
      Top = 120
      Width = 620
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
      TabOrder = 3
      CharCase = ecUpperCase
      MaxLength = 120
      StoredValues = 2
    end
    object eddpro: TdxEdit
      Left = 85
      Top = 96
      Width = 620
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
      OnKeyPress = eddproKeyPress
      CharCase = ecUpperCase
      MaxLength = 120
      StoredValues = 2
    end
    object cbdcol: TdxImageEdit
      Left = 505
      Top = 144
      Width = 200
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
      TabOrder = 7
      AutoSize = False
      Descriptions.Strings = (
        '')
      ImageIndexes.Strings = (
        '0')
      Values.Strings = (
        '')
      Height = 24
    end
    object cbdgrp: TdxImageEdit
      Left = 505
      Top = 168
      Width = 200
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
      AutoSize = False
      Descriptions.Strings = (
        '')
      ImageIndexes.Strings = (
        '0')
      Values.Strings = (
        '')
      Height = 24
    end
    object GroupBox6: TGroupBox
      Left = 720
      Top = 65
      Width = 225
      Height = 152
      Caption = 'C'#243'digo de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object edcbar: TACBrBarCode
        Left = 17
        Top = 32
        Width = 192
        Height = 81
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
    end
    object pnlpri: TPanel
      Left = 0
      Top = 225
      Width = 954
      Height = 399
      Align = alBottom
      TabOrder = 11
      object PCPrincipal: TdxPageControl
        Left = 345
        Top = 1
        Width = 608
        Height = 397
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
        TabOrder = 1
        TabPosition = dxtpTop
        TabWidth = 0
        object TSGrade: TdxTabSheet
          Caption = 'Grade'
          object SpeedBar4: TSpeedBar
            Left = 0
            Top = 0
            Width = 43
            Height = 373
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            BoundLines = [blTop, blBottom, blLeft, blRight]
            Align = alLeft
            Options = [sbAllowDrag, sbFlatBtns, sbGrayedBtns]
            BtnOffsetHorz = 2
            BtnOffsetVert = 2
            BtnWidth = 40
            BtnHeight = 40
            Images = ILMenuEdicao
            BevelOuter = bvNone
            TabOrder = 0
            InternalVer = 1
            object SpeedbarSection13: TSpeedbarSection
              Caption = 'Movimento'
            end
            object SpeedbarSection14: TSpeedbarSection
              Caption = 'Edicao'
            end
            object SpeedbarSection15: TSpeedbarSection
              Caption = 'Confirmacao'
            end
            object SpeedbarSection16: TSpeedbarSection
              Caption = 'Utilitarios'
            end
            object tecI: TSpeedItem
              Caption = 'Incluir'
              Hint = '[Ins] - Inclui'
              ImageIndex = 0
              Spacing = 1
              Left = 2
              Top = 2
              Visible = True
              OnClick = tecIClick
              SectionName = 'Movimento'
            end
            object tecA: TSpeedItem
              Caption = 'Alterar'
              Enabled = False
              Hint = '[Enter] - Altera'
              ImageIndex = 1
              Spacing = 1
              Left = 2
              Top = 42
              Visible = True
              OnClick = tecAClick
              SectionName = 'Movimento'
            end
            object tecE: TSpeedItem
              Caption = 'Excluir'
              Enabled = False
              Hint = '[Del] - Exclui'
              ImageIndex = 2
              Spacing = 1
              Left = 2
              Top = 82
              Visible = True
              OnClick = tecEClick
              SectionName = 'Movimento'
            end
            object tecS: TSpeedItem
              Caption = 'Salvar'
              Enabled = False
              Hint = '[Ctrl+S] - Salva'
              ImageIndex = 3
              Spacing = 1
              Left = 2
              Top = 122
              Visible = True
              OnClick = tecSClick
              SectionName = 'Movimento'
            end
            object tecC: TSpeedItem
              Caption = 'Cancelar'
              Enabled = False
              Hint = '[Esc] - Cancela'
              ImageIndex = 4
              Spacing = 1
              Left = 2
              Top = 162
              Visible = True
              OnClick = tecCClick
              SectionName = 'Movimento'
            end
          end
          object dbgtec: TdxDBGrid
            Left = 43
            Top = 0
            Width = 565
            Height = 373
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
            BorderStyle = bsNone
            Color = clWhite
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = dbgtecKeyDown
            AutoSearchColor = 9395
            AutoSearchTextColor = clWhite
            DataSource = dtscad_pro_grd
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            object dbgtecGRD_CPRO: TdxDBGridMaskColumn
              Color = clBtnFace
              DisableEditor = True
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRD_CPRO'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object dbgtecGRD_DCOR: TdxDBGridPickColumn
              CharCase = ecUpperCase
              Width = 180
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRD_DCOR'
            end
            object dbgtecGRD_PCOR: TdxDBGridMaskColumn
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRD_PCOR'
            end
            object dbgtecGRD_PREC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 55
              BandIndex = 0
              RowIndex = 0
              OnValidate = dbgtecGRD_PRECValidate
              FieldName = 'GRD_PREC'
            end
            object dbgtecGRD_PPRO: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 60
              BandIndex = 0
              RowIndex = 0
              OnValidate = dbgtecGRD_PPROValidate
              FieldName = 'GRD_PPRO'
            end
            object dbgtecGRD_VPRC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 50
              BandIndex = 0
              RowIndex = 0
              OnValidate = dbgtecGRD_VPRCValidate
              FieldName = 'GRD_VPRC'
            end
            object dbgtecGRD_RPRC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              OnValidate = dbgtecGRD_RPRCValidate
              FieldName = 'GRD_RPRC'
            end
            object dbgtecGRD_STAV: TdxDBGridPickColumn
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRD_STAV'
              Items.Strings = (
                'ATIVO'
                'INATIVO'
                'PR'#201'-CADASTRO')
            end
          end
        end
        object TSMedidas: TdxTabSheet
          Caption = 'Medidas'
          object Bevel2: TBevel
            Left = 0
            Top = 0
            Width = 608
            Height = 373
            Align = alClient
          end
          object Label15: TLabel
            Left = 54
            Top = 37
            Width = 62
            Height = 14
            Caption = 'Peso M'#233'dio'
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
          object Label8: TLabel
            Left = 50
            Top = 133
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
          object Label11: TLabel
            Left = 44
            Top = 181
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
          object lametr: TLabel
            Left = 61
            Top = 85
            Width = 55
            Height = 14
            Caption = 'Metragem'
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
          object Label9: TLabel
            Left = 45
            Top = 61
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
          object Label21: TLabel
            Left = 60
            Top = 109
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
          object Label24: TLabel
            Left = 55
            Top = 157
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
          object Label4: TLabel
            Left = 5
            Top = 13
            Width = 111
            Height = 14
            Caption = 'Unidade Comercial'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object edpeso: TdxEdit
            Left = 122
            Top = 32
            Width = 60
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
            Text = '0,00'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            StoredValues = 1
          end
          object edrend: TdxEdit
            Left = 122
            Top = 128
            Width = 60
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 5
            Text = '0,00'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            OnValidate = edrendValidate
            StoredValues = 1
          end
          object edlarg: TdxEdit
            Left = 122
            Top = 176
            Width = 60
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 7
            Text = '0,00'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            OnValidate = edlargValidate
            StoredValues = 1
          end
          object edmetr: TdxEdit
            Left = 122
            Top = 80
            Width = 60
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 3
            Text = '0,00'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            OnValidate = edmetrValidate
            StoredValues = 1
          end
          object edpscn: TdxEdit
            Left = 122
            Top = 56
            Width = 60
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 2
            Text = '0,00'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            OnValidate = edpscnValidate
            StoredValues = 1
          end
          object edgram: TdxEdit
            Left = 122
            Top = 104
            Width = 60
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 4
            Text = '0,00'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            OnValidate = edgramValidate
            StoredValues = 1
          end
          object edutil: TdxEdit
            Left = 122
            Top = 152
            Width = 60
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 6
            Text = '0,00'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            OnValidate = edutilValidate
            StoredValues = 1
          end
          object cbduni: TdxImageEdit
            Left = 122
            Top = 8
            Width = 120
            Hint = 'Unidade'
            Color = clInfoBk
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
            AutoSize = False
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '')
            Height = 24
          end
        end
        object TSPrecos: TdxTabSheet
          Caption = 'Pre'#231'os'
          object pcprc: TdxPageControl
            Left = 0
            Top = 0
            Width = 608
            Height = 373
            ActivePage = tsata
            Align = alClient
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 0
            TabPosition = dxtpTop
            TabWidth = 0
            object tsata: TdxTabSheet
              Caption = 'Atacado'
              object Bevel11: TBevel
                Left = 0
                Top = 0
                Width = 608
                Height = 349
                Align = alClient
              end
              object Label17: TLabel
                Tag = 1
                Left = 10
                Top = 9
                Width = 72
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Normal'
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
              object Label19: TLabel
                Tag = 1
                Left = 10
                Top = 33
                Width = 89
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Promo'#231#227'o'
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
              object Label16: TLabel
                Tag = 1
                Left = 220
                Top = 33
                Width = 78
                Height = 14
                Hint = 'Referencia'
                Caption = 'Desconto (%)'
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
              object Label47: TLabel
                Tag = 1
                Left = 220
                Top = 9
                Width = 73
                Height = 14
                Hint = 'Referencia'
                Caption = 'Reajuste (%)'
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
              object Label48: TLabel
                Tag = 1
                Left = 10
                Top = 57
                Width = 74
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o a Prazo'
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
              object edprec: TdxMaskEdit
                Left = 115
                Top = 4
                Width = 80
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edprecValidate
                Height = 24
                StoredValues = 7
              end
              object edppro: TdxMaskEdit
                Left = 115
                Top = 28
                Width = 80
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
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edpproValidate
                Height = 24
                StoredValues = 7
              end
              object edpdsc: TdxMaskEdit
                Left = 310
                Top = 28
                Width = 49
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
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edpdscValidate
                Height = 24
                StoredValues = 7
              end
              object edpper: TdxMaskEdit
                Left = 310
                Top = 4
                Width = 49
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
                TabOrder = 3
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edpperValidate
                Height = 24
                StoredValues = 7
              end
              object edpprz: TdxMaskEdit
                Left = 115
                Top = 52
                Width = 80
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
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edpprzValidate
                Height = 24
                StoredValues = 7
              end
            end
            object tsvar: TdxTabSheet
              Caption = 'Varejo'
              object Bevel12: TBevel
                Left = 0
                Top = 0
                Width = 604
                Height = 79
                Align = alClient
              end
              object Label22: TLabel
                Tag = 1
                Left = 10
                Top = 9
                Width = 72
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Normal'
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
              object Label23: TLabel
                Tag = 1
                Left = 10
                Top = 33
                Width = 89
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Promo'#231#227'o'
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
              object Label20: TLabel
                Tag = 1
                Left = 220
                Top = 33
                Width = 78
                Height = 14
                Hint = 'Referencia'
                Caption = 'Desconto (%)'
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
              object Label49: TLabel
                Tag = 1
                Left = 220
                Top = 9
                Width = 73
                Height = 14
                Hint = 'Referencia'
                Caption = 'Reajuste (%)'
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
              object Label52: TLabel
                Tag = 1
                Left = 10
                Top = 57
                Width = 74
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o a Prazo'
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
              object edvprc: TdxMaskEdit
                Left = 115
                Top = 4
                Width = 80
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edvprcValidate
                Height = 24
                StoredValues = 7
              end
              object edvpro: TdxMaskEdit
                Left = 115
                Top = 28
                Width = 80
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
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edvproValidate
                Height = 24
                StoredValues = 7
              end
              object edvdsc: TdxMaskEdit
                Left = 310
                Top = 28
                Width = 49
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
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edvdscValidate
                Height = 24
                StoredValues = 7
              end
              object edvper: TdxMaskEdit
                Left = 310
                Top = 4
                Width = 49
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
                TabOrder = 3
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edvperValidate
                Height = 24
                StoredValues = 7
              end
              object edvprz: TdxMaskEdit
                Left = 115
                Top = 52
                Width = 80
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
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edvprzValidate
                Height = 24
                StoredValues = 7
              end
            end
            object tsrep: TdxTabSheet
              Caption = 'Representa'#231#227'o'
              object Bevel15: TBevel
                Left = 0
                Top = 0
                Width = 604
                Height = 79
                Align = alClient
              end
              object Label42: TLabel
                Tag = 1
                Left = 10
                Top = 9
                Width = 72
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Normal'
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
              object Label43: TLabel
                Tag = 1
                Left = 10
                Top = 33
                Width = 89
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o Promo'#231#227'o'
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
              object Label44: TLabel
                Tag = 1
                Left = 220
                Top = 33
                Width = 78
                Height = 14
                Hint = 'Referencia'
                Caption = 'Desconto (%)'
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
              object Label53: TLabel
                Tag = 1
                Left = 220
                Top = 9
                Width = 73
                Height = 14
                Hint = 'Referencia'
                Caption = 'Reajuste (%)'
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
              object Label54: TLabel
                Tag = 1
                Left = 10
                Top = 57
                Width = 74
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o a Prazo'
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
              object edrprc: TdxMaskEdit
                Left = 115
                Top = 4
                Width = 80
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edrprcValidate
                Height = 24
                StoredValues = 7
              end
              object edrpro: TdxMaskEdit
                Left = 115
                Top = 28
                Width = 80
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
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edrproValidate
                Height = 24
                StoredValues = 7
              end
              object edrdsc: TdxMaskEdit
                Left = 310
                Top = 28
                Width = 49
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
                TabOrder = 4
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edrdscValidate
                Height = 24
                StoredValues = 7
              end
              object edrper: TdxMaskEdit
                Left = 310
                Top = 4
                Width = 49
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
                TabOrder = 3
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edrperValidate
                Height = 24
                StoredValues = 7
              end
              object edrprz: TdxMaskEdit
                Left = 115
                Top = 52
                Width = 80
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
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edrprzValidate
                Height = 24
                StoredValues = 7
              end
            end
            object tsout: TdxTabSheet
              Caption = 'Outros'
              object Bevel13: TBevel
                Left = 0
                Top = 0
                Width = 604
                Height = 79
                Align = alClient
              end
              object Label2: TLabel
                Tag = 1
                Left = 10
                Top = 9
                Width = 99
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o de Compras'
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
              object Label13: TLabel
                Tag = 1
                Left = 10
                Top = 33
                Width = 84
                Height = 14
                Hint = 'Referencia'
                Caption = 'Pre'#231'o de Custo'
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
              object Label66: TLabel
                Tag = 1
                Left = 10
                Top = 57
                Width = 86
                Height = 14
                Hint = 'Referencia'
                Caption = 'Custo Libera'#231#227'o'
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
              object edcust: TdxMaskEdit
                Left = 115
                Top = 28
                Width = 80
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
                TabOrder = 1
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edcustValidate
                Height = 24
                StoredValues = 7
              end
              object edpcom: TdxMaskEdit
                Left = 115
                Top = 4
                Width = 80
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
                TabOrder = 0
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edpcomValidate
                Height = 24
                StoredValues = 7
              end
              object edclib: TdxMaskEdit
                Left = 115
                Top = 52
                Width = 80
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
                TabOrder = 2
                Alignment = taRightJustify
                AutoSize = False
                CharCase = ecUpperCase
                IgnoreMaskBlank = False
                MaxLength = 20
                Text = '0,00'
                OnValidate = edclibValidate
                Height = 24
                StoredValues = 7
              end
            end
          end
        end
        object TSComposicao: TdxTabSheet
          Caption = 'Composi'#231#227'o'
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 608
            Height = 373
            Align = alClient
            TabOrder = 0
            object dbgcom: TdxDBGrid
              Left = 45
              Top = 1
              Width = 562
              Height = 371
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
              Color = clWhite
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnKeyDown = dbgcomKeyDown
              AutoSearchColor = 9395
              AutoSearchTextColor = clWhite
              DataSource = dtscad_pro_com
              Filter.Criteria = {00000000}
              GridLineColor = clSilver
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
              object dbgcomCOM_COMP: TdxDBGridMaskColumn
                CharCase = ecUpperCase
                Width = 210
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COM_COMP'
                SummaryFooterType = cstCount
                SummaryFooterField = 'ID'
                SummaryFooterFormat = 'Itens 0'
              end
              object dbgcomCOM_BASE: TdxDBGridMaskColumn
                Width = 210
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COM_BASE'
              end
              object dbgcomCOM_QTDE: TdxDBGridMaskColumn
                HeaderAlignment = taRightJustify
                Width = 82
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COM_QTDE'
                SummaryFooterType = cstSum
                SummaryFooterField = 'COM_QTDE'
                SummaryFooterFormat = '0.00'
              end
            end
            object SpeedBar1: TSpeedBar
              Left = 1
              Top = 1
              Width = 44
              Height = 371
              Cursor = crHandPoint
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              BoundLines = [blTop, blBottom, blLeft, blRight]
              Align = alLeft
              Options = [sbAllowDrag, sbFlatBtns, sbGrayedBtns]
              BtnOffsetHorz = 2
              BtnOffsetVert = 2
              BtnWidth = 40
              BtnHeight = 40
              Images = ILMenuEdicao
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
              object siINC: TSpeedItem
                Caption = 'Incluir'
                Hint = '[Ins] - Inclui'
                ImageIndex = 0
                Spacing = 1
                Left = 2
                Top = 2
                Visible = True
                OnClick = siINCClick
                SectionName = 'Movimento'
              end
              object siALT: TSpeedItem
                Caption = 'Alterar'
                Hint = '[Enter] - Altera'
                ImageIndex = 1
                Spacing = 1
                Left = 2
                Top = 42
                Visible = True
                OnClick = siALTClick
                SectionName = 'Movimento'
              end
              object siDEL: TSpeedItem
                Caption = 'Excluir'
                Hint = '[Del] - Exclui'
                ImageIndex = 2
                Spacing = 1
                Left = 2
                Top = 82
                Visible = True
                OnClick = siDELClick
                SectionName = 'Movimento'
              end
              object siS: TSpeedItem
                Caption = 'Salvar'
                Enabled = False
                Hint = '[Ctrl+S] - Salva'
                ImageIndex = 3
                Spacing = 1
                Left = 2
                Top = 122
                Visible = True
                OnClick = siSClick
                SectionName = 'Movimento'
              end
              object siC: TSpeedItem
                Caption = 'Cancelar'
                Enabled = False
                Hint = '[Esc] - Cancela'
                ImageIndex = 4
                Spacing = 1
                Left = 2
                Top = 162
                Visible = True
                OnClick = siCANClick
                SectionName = 'Movimento'
              end
            end
          end
        end
        object TSIMG_ILA: TdxTabSheet
          Caption = 'Instru'#231#227'o de Lavagem'
          object Bevel1: TBevel
            Left = 0
            Top = 0
            Width = 608
            Height = 373
            Align = alClient
          end
          object Bevel10: TBevel
            Left = 8
            Top = 259
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object Bevel9: TBevel
            Left = 8
            Top = 217
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object Bevel8: TBevel
            Left = 8
            Top = 173
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object Bevel7: TBevel
            Left = 8
            Top = 131
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object Bevel6: TBevel
            Left = 8
            Top = 89
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object Bevel5: TBevel
            Left = 8
            Top = 47
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object Bevel4: TBevel
            Left = 8
            Top = 5
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object img1: TImage
            Tag = 1
            Left = 10
            Top = 8
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object img3: TImage
            Tag = 3
            Left = 10
            Top = 92
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object img4: TImage
            Tag = 4
            Left = 10
            Top = 134
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object img5: TImage
            Tag = 5
            Left = 10
            Top = 176
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object img6: TImage
            Tag = 6
            Left = 10
            Top = 220
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object img7: TImage
            Tag = 7
            Left = 10
            Top = 262
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object img2: TImage
            Tag = 2
            Left = 10
            Top = 50
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object Bevel16: TBevel
            Left = 8
            Top = 301
            Width = 40
            Height = 40
            Style = bsRaised
          end
          object img8: TImage
            Tag = 8
            Left = 10
            Top = 304
            Width = 35
            Height = 35
            Cursor = crHandPoint
            Stretch = True
            OnClick = img1Click
          end
          object Label25: TLabel
            Left = 56
            Top = 18
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
          object Label59: TLabel
            Left = 56
            Top = 60
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
          object Label60: TLabel
            Left = 56
            Top = 102
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
          object Label61: TLabel
            Left = 56
            Top = 144
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
          object Label62: TLabel
            Left = 56
            Top = 186
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
          object Label63: TLabel
            Left = 56
            Top = 230
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
          object Label64: TLabel
            Left = 56
            Top = 272
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
          object Label65: TLabel
            Left = 56
            Top = 314
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
          object edons1: TdxEdit
            Tag = 1
            Left = 72
            Top = 13
            Width = 529
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
          object edons2: TdxEdit
            Tag = 1
            Left = 71
            Top = 55
            Width = 529
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
          object edons3: TdxEdit
            Tag = 1
            Left = 71
            Top = 97
            Width = 529
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
          object edons4: TdxEdit
            Tag = 1
            Left = 71
            Top = 139
            Width = 529
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
          object edons5: TdxEdit
            Tag = 1
            Left = 71
            Top = 181
            Width = 529
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
          object edons6: TdxEdit
            Tag = 1
            Left = 71
            Top = 225
            Width = 529
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
          object edons7: TdxEdit
            Tag = 1
            Left = 71
            Top = 267
            Width = 529
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
          object edons8: TdxEdit
            Tag = 1
            Left = 71
            Top = 309
            Width = 529
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
        object TSFiscal: TdxTabSheet
          Caption = 'Classifica'#231#245'es Fiscais'
          object Bevel3: TBevel
            Left = 0
            Top = 0
            Width = 608
            Height = 373
            Align = alClient
          end
          object Label26: TLabel
            Left = 10
            Top = 61
            Width = 34
            Height = 14
            Caption = 'C.S.T.'
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
          object Label31: TLabel
            Left = 10
            Top = 86
            Width = 53
            Height = 14
            Caption = 'I.P.I. (%)'
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
          object Label30: TLabel
            Left = 8
            Top = 35
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
          object Label46: TLabel
            Left = 10
            Top = 11
            Width = 52
            Height = 14
            Caption = 'Finalidade'
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
          object cbccst: TdxImageEdit
            Left = 80
            Top = 56
            Width = 500
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
            TabOrder = 2
            Text = '1'
            OnExit = cbccstExit
            AutoSize = False
            Descriptions.Strings = (
              'Nacional'
              'Estrangeira - Importa'#231#227'o Direta'
              'Estrangeira - Adiquirida no Mercado Interno')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            Values.Strings = (
              '0'
              '1'
              '2')
            Height = 25
          end
          object edpipi: TdxEdit
            Left = 80
            Top = 81
            Width = 60
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
            Text = '0'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            OnValidate = edpipiValidate
            StoredValues = 1
          end
          object cbdori: TdxImageEdit
            Left = 80
            Top = 32
            Width = 500
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
            AutoSize = False
            Descriptions.Strings = (
              '')
            ImageIndexes.Strings = (
              '0')
            Values.Strings = (
              '')
            Height = 24
          end
          object cbrepr: TdxImageEdit
            Left = 80
            Top = 8
            Width = 150
            Hint = 'Finalidade'
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
            Text = 'REVENDA'
            Alignment = taLeftJustify
            AutoSize = False
            Descriptions.Strings = (
              'PRODU'#199#195'O'
              'REVENDA')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              'P'
              'R')
            Height = 24
            StoredValues = 1
          end
        end
        object TSINFADCAD: TdxTabSheet
          Caption = 'Informa'#231#245'es Adicionais'
          object Bevel17: TBevel
            Left = 0
            Top = 0
            Width = 608
            Height = 144
            Align = alClient
          end
          object Label29: TLabel
            Left = 10
            Top = 13
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
          object Label3: TLabel
            Left = 10
            Top = 37
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
            Left = 10
            Top = 61
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
          object cbstal: TdxImageEdit
            Left = 96
            Top = 8
            Width = 250
            Color = clWhite
            Style.BorderColor = 14065456
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.Shadow = True
            TabOrder = 0
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
          object cbdens: TdxPickEdit
            Left = 96
            Top = 32
            Width = 250
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
            OnExit = cbcclfExit
            CharCase = ecUpperCase
          end
          object cbtitf: TdxPickEdit
            Left = 96
            Top = 56
            Width = 250
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
            TabOrder = 2
            OnExit = cbcclfExit
            CharCase = ecUpperCase
          end
          object pcobs: TdxPageControl
            Left = 0
            Top = 144
            Width = 608
            Height = 229
            ActivePage = tsobs
            Align = alBottom
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 3
            TabPosition = dxtpTop
            TabWidth = 0
            object tsobs: TdxTabSheet
              Caption = 'Observa'#231#245'es'
              object edobse: TdxMemo
                Left = 0
                Top = 0
                Width = 608
                Align = alClient
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 205
              end
            end
            object tsdadi: TdxTabSheet
              Caption = 'Descri'#231#227'o Adicional'
              object Bevel14: TBevel
                Left = 0
                Top = 0
                Width = 608
                Height = 132
                Align = alClient
              end
              object Label32: TLabel
                Left = 8
                Top = 10
                Width = 13
                Height = 14
                Caption = '2)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label35: TLabel
                Left = 8
                Top = 34
                Width = 13
                Height = 14
                Caption = '3)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label36: TLabel
                Left = 8
                Top = 58
                Width = 13
                Height = 14
                Caption = '4)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label38: TLabel
                Left = 8
                Top = 82
                Width = 13
                Height = 14
                Caption = '5)'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object eddpr2: TdxEdit
                Tag = 1
                Left = 24
                Top = 5
                Width = 577
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
                TabOrder = 0
                CharCase = ecUpperCase
                MaxLength = 120
                StoredValues = 2
              end
              object eddpr3: TdxEdit
                Tag = 1
                Left = 24
                Top = 29
                Width = 577
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
                TabOrder = 1
                CharCase = ecUpperCase
                MaxLength = 120
                StoredValues = 2
              end
              object eddpr4: TdxEdit
                Tag = 1
                Left = 24
                Top = 53
                Width = 577
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
                CharCase = ecUpperCase
                MaxLength = 120
                StoredValues = 2
              end
              object eddpr5: TdxEdit
                Tag = 1
                Left = 24
                Top = 77
                Width = 577
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
                CharCase = ecUpperCase
                MaxLength = 120
                StoredValues = 2
              end
            end
            object tsapro: TdxTabSheet
              Caption = 'Descri'#231#227'o T'#233'cnica Nota Fiscal'
              object edapro: TdxMemo
                Left = 0
                Top = 0
                Width = 608
                Align = alClient
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 115
              end
            end
            object tsobsf: TdxTabSheet
              Caption = 'Descri'#231#227'o Ficha T'#233'cnica'
              object edobsf: TdxMemo
                Left = 0
                Top = 0
                Width = 608
                Align = alClient
                Style.BorderStyle = xbsFlat
                Style.ButtonStyle = btsFlat
                Style.Shadow = True
                TabOrder = 0
                Height = 132
              end
            end
          end
        end
      end
      object gbfoto: TGroupBox
        Left = 1
        Top = 1
        Width = 344
        Height = 397
        Align = alLeft
        Caption = 'Imagem do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object pcimg: TdxPageControl
          Left = 2
          Top = 16
          Width = 340
          Height = 379
          ActivePage = tsfoto
          Align = alClient
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 0
          TabPosition = dxtpTop
          TabWidth = 0
          object tsfoto: TdxTabSheet
            Caption = 'Foto 1'
            object imag: TImage
              Left = 0
              Top = 0
              Width = 340
              Height = 355
              Align = alClient
              Stretch = True
              OnDblClick = imagDblClick
            end
            object sbfoto: TSpeedButton
              Left = 319
              Top = 331
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
              OnClick = sbfotoClick
            end
          end
          object tsfot2: TdxTabSheet
            Caption = 'Foto 2'
            object imag2: TImage
              Left = 0
              Top = 0
              Width = 340
              Height = 355
              Align = alClient
              Stretch = True
              OnDblClick = imag2DblClick
            end
            object sbfot2: TSpeedButton
              Left = 319
              Top = 331
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
              OnClick = sbfot2Click
            end
          end
          object tsfot3: TdxTabSheet
            Caption = 'Foto 3'
            object imag3: TImage
              Left = 0
              Top = 0
              Width = 340
              Height = 355
              Align = alClient
              Stretch = True
              OnDblClick = imag3DblClick
            end
            object sbfot3: TSpeedButton
              Left = 319
              Top = 331
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
              OnClick = sbfot3Click
            end
          end
          object tsfot4: TdxTabSheet
            Caption = 'Foto 4'
            object imag4: TImage
              Left = 0
              Top = 0
              Width = 340
              Height = 355
              Align = alClient
              Stretch = True
              OnDblClick = imag4DblClick
            end
            object sbfot4: TSpeedButton
              Left = 319
              Top = 331
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
              OnClick = sbfot4Click
            end
          end
          object tsfot5: TdxTabSheet
            Caption = 'Foto 5'
            object imag5: TImage
              Left = 0
              Top = 0
              Width = 340
              Height = 355
              Align = alClient
              Stretch = True
              OnDblClick = imag5DblClick
            end
            object sbfot5: TSpeedButton
              Left = 319
              Top = 331
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
              OnClick = sbfot5Click
            end
          end
          object tsfot6: TdxTabSheet
            Caption = 'Foto 6'
            object imag6: TImage
              Left = 0
              Top = 0
              Width = 340
              Height = 355
              Align = alClient
              Stretch = True
              OnDblClick = imag6DblClick
            end
            object sbfot6: TSpeedButton
              Left = 319
              Top = 331
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
              OnClick = sbfot6Click
            end
          end
          object tsfot7: TdxTabSheet
            Caption = 'Foto 7'
            object imag7: TImage
              Left = 0
              Top = 0
              Width = 340
              Height = 355
              Align = alClient
              Stretch = True
              OnDblClick = imag7DblClick
            end
            object sbfot7: TSpeedButton
              Left = 319
              Top = 331
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
              OnClick = sbfot7Click
            end
          end
        end
      end
    end
    object cbstav: TdxImageEdit
      Left = 555
      Top = 72
      Width = 150
      Color = 14065456
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsFlat
      Style.Shadow = True
      TabOrder = 0
      Text = 'ATIVO'
      OnExit = cbstavExit
      AutoSize = False
      Descriptions.Strings = (
        'ATIVO'
        'INATIVO'
        'PR'#201'-CADASTRO')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2')
      Values.Strings = (
        'A'
        'I'
        'P')
      Height = 24
    end
    object edcart: TdxEdit
      Left = 85
      Top = 72
      Width = 150
      Hint = 'Referencia'
      Color = clInfoBk
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
      OnExit = edcartExit
      CharCase = ecUpperCase
      MaxLength = 120
      StoredValues = 2
    end
    object cbdcat: TdxImageEdit
      Left = 505
      Top = 192
      Width = 200
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
      OnExit = cbdcatExit
      AutoSize = False
      Descriptions.Strings = (
        '')
      ImageIndexes.Strings = (
        '0')
      Values.Strings = (
        '')
      Height = 24
    end
    object cbcclf: TdxPickEdit
      Left = 85
      Top = 192
      Width = 150
      Color = clInfoBk
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
      OnExit = cbcclfExit
      CharCase = ecUpperCase
    end
    object cbdfor: TdxPickEdit
      Left = 85
      Top = 144
      Width = 300
      Color = clWhite
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
      OnExit = cbdforExit
      CharCase = ecUpperCase
    end
  end
  inherited sbMSG: TStatusBar
    Top = 624
    Width = 954
  end
  object OpenPictureDialogEdit: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    InitialDir = 'C:\DEV\FOTOS'
    Left = 376
  end
  object dtscad_pro_com: TDataSource
    DataSet = cad_pro_com
    Left = 344
    Top = 32
  end
  object cad_pro_com: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    AfterCancel = cad_pro_comAfterCancel
    AfterDelete = cad_pro_comAfterDelete
    AfterEdit = cad_pro_comAfterEdit
    AfterInsert = cad_pro_comAfterEdit
    AfterPost = cad_pro_comAfterPost
    BeforeCancel = cad_pro_comBeforeCancel
    OnNewRecord = cad_pro_comNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_PRO_COM'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_COM'
      '  (COM_BASE, COM_CART, COM_COMP, COM_QTDE, ID)'
      'values'
      '  (:COM_BASE, :COM_CART, :COM_COMP, :COM_QTDE, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  COM_CART,'
      '  COM_BASE,'
      '  COM_COMP,'
      '  COM_QTDE'
      'from CAD_PRO_COM '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_PRO_COM')
    ModifySQL.Strings = (
      'update CAD_PRO_COM'
      'set'
      '  COM_BASE = :COM_BASE,'
      '  COM_CART = :COM_CART,'
      '  COM_COMP = :COM_COMP,'
      '  COM_QTDE = :COM_QTDE,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 344
    object cad_pro_comID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_COM"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_comCOM_COMP: TIBStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'COM_COMP'
      Origin = '"CAD_PRO_COM"."COM_COMP"'
    end
    object cad_pro_comCOM_QTDE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'COM_QTDE'
      Origin = '"CAD_PRO_COM"."COM_QTDE"'
      DisplayFormat = '0.00'
      Precision = 9
      Size = 2
    end
    object cad_pro_comCOM_CART: TIBStringField
      FieldName = 'COM_CART'
      Origin = '"CAD_PRO_COM"."COM_CART"'
    end
    object cad_pro_comCOM_BASE: TIBStringField
      DisplayLabel = 'Especifica'#231#227'o'
      FieldName = 'COM_BASE'
      Origin = '"CAD_PRO_COM"."COM_BASE"'
    end
  end
  object tSHEILD: TIBTransaction
    DefaultDatabase = dmDADOS.bSHEILD
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 312
    Top = 32
  end
  object aux: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 696
  end
  object consulta_S: TIBQuery
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    Left = 696
    Top = 32
  end
  object cad_pro_grd: TIBDataSet
    Database = dmDADOS.bSHEILD
    Transaction = tSHEILD
    AfterCancel = cad_pro_grdAfterCancel
    AfterEdit = cad_pro_grdAfterInsert
    AfterInsert = cad_pro_grdAfterInsert
    AfterPost = cad_pro_grdAfterPost
    BeforeCancel = cad_pro_grdBeforeCancel
    BeforePost = cad_pro_grdBeforePost
    OnNewRecord = cad_pro_grdNewRecord
    DeleteSQL.Strings = (
      'delete from CAD_PRO_GRD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_GRD'
      
        '  (GRD_CART, GRD_CBAR, GRD_CCLF, GRD_CCOR, GRD_CFOR, GRD_CGRD, G' +
        'RD_CO10, '
      
        '   GRD_CO11, GRD_CO12, GRD_CO13, GRD_CO14, GRD_CO15, GRD_CO16, G' +
        'RD_CO17, '
      
        '   GRD_CO18, GRD_CO19, GRD_COL0, GRD_COL1, GRD_COL2, GRD_COL3, G' +
        'RD_COL4, '
      
        '   GRD_COL5, GRD_COL6, GRD_COL7, GRD_COL8, GRD_COL9, GRD_COMP, G' +
        'RD_CPRO, '
      
        '   GRD_DCOR, GRD_DGRD, GRD_DPRO, GRD_DUNI, GRD_ES10, GRD_ES11, G' +
        'RD_ES12, '
      
        '   GRD_ES13, GRD_ES14, GRD_ES15, GRD_ES16, GRD_ES17, GRD_ES18, G' +
        'RD_ES19, '
      
        '   GRD_EST0, GRD_EST1, GRD_EST2, GRD_EST3, GRD_EST4, GRD_EST5, G' +
        'RD_EST6, '
      
        '   GRD_EST7, GRD_EST8, GRD_EST9, GRD_ESTO, GRD_FOTO, GRD_IPRO, G' +
        'RD_PCOR, '
      
        '   GRD_PDSC, GRD_PPRO, GRD_PREC, GRD_RCOR, GRD_RPRC, GRD_SPRC, G' +
        'RD_STA, '
      '   GRD_STAV, GRD_TOTA, GRD_VPRC, ID)'
      'values'
      
        '  (:GRD_CART, :GRD_CBAR, :GRD_CCLF, :GRD_CCOR, :GRD_CFOR, :GRD_C' +
        'GRD, :GRD_CO10, '
      
        '   :GRD_CO11, :GRD_CO12, :GRD_CO13, :GRD_CO14, :GRD_CO15, :GRD_C' +
        'O16, :GRD_CO17, '
      
        '   :GRD_CO18, :GRD_CO19, :GRD_COL0, :GRD_COL1, :GRD_COL2, :GRD_C' +
        'OL3, :GRD_COL4, '
      
        '   :GRD_COL5, :GRD_COL6, :GRD_COL7, :GRD_COL8, :GRD_COL9, :GRD_C' +
        'OMP, :GRD_CPRO, '
      
        '   :GRD_DCOR, :GRD_DGRD, :GRD_DPRO, :GRD_DUNI, :GRD_ES10, :GRD_E' +
        'S11, :GRD_ES12, '
      
        '   :GRD_ES13, :GRD_ES14, :GRD_ES15, :GRD_ES16, :GRD_ES17, :GRD_E' +
        'S18, :GRD_ES19, '
      
        '   :GRD_EST0, :GRD_EST1, :GRD_EST2, :GRD_EST3, :GRD_EST4, :GRD_E' +
        'ST5, :GRD_EST6, '
      
        '   :GRD_EST7, :GRD_EST8, :GRD_EST9, :GRD_ESTO, :GRD_FOTO, :GRD_I' +
        'PRO, :GRD_PCOR, '
      
        '   :GRD_PDSC, :GRD_PPRO, :GRD_PREC, :GRD_RCOR, :GRD_RPRC, :GRD_S' +
        'PRC, :GRD_STA, '
      '   :GRD_STAV, :GRD_TOTA, :GRD_VPRC, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  GRD_IPRO,'
      '  GRD_CART,'
      '  GRD_CPRO,'
      '  GRD_CFOR,'
      '  GRD_CBAR,'
      '  GRD_DPRO,'
      '  GRD_CCOR,'
      '  GRD_RCOR,'
      '  GRD_DCOR,'
      '  GRD_DUNI,'
      '  GRD_COMP,'
      '  GRD_CGRD,'
      '  GRD_DGRD,'
      '  GRD_PCOR,'
      '  GRD_STAV,'
      '  GRD_CCLF,'
      '  GRD_PDSC,'
      '  GRD_PREC,'
      '  GRD_PPRO,'
      '  GRD_VPRC,'
      '  GRD_RPRC,'
      '  GRD_SPRC,'
      '  GRD_EST0,'
      '  GRD_COL0,'
      '  GRD_EST1,'
      '  GRD_COL1,'
      '  GRD_EST2,'
      '  GRD_COL2,'
      '  GRD_EST3,'
      '  GRD_COL3,'
      '  GRD_EST4,'
      '  GRD_COL4,'
      '  GRD_EST5,'
      '  GRD_COL5,'
      '  GRD_EST6,'
      '  GRD_COL6,'
      '  GRD_EST7,'
      '  GRD_COL7,'
      '  GRD_EST8,'
      '  GRD_COL8,'
      '  GRD_EST9,'
      '  GRD_COL9,'
      '  GRD_ES10,'
      '  GRD_CO10,'
      '  GRD_ES11,'
      '  GRD_CO11,'
      '  GRD_ES12,'
      '  GRD_CO12,'
      '  GRD_ES13,'
      '  GRD_CO13,'
      '  GRD_ES14,'
      '  GRD_CO14,'
      '  GRD_ES15,'
      '  GRD_CO15,'
      '  GRD_ES16,'
      '  GRD_CO16,'
      '  GRD_ES17,'
      '  GRD_CO17,'
      '  GRD_ES18,'
      '  GRD_CO18,'
      '  GRD_ES19,'
      '  GRD_CO19,'
      '  GRD_TOTA,'
      '  GRD_ESTO,'
      '  GRD_STA,'
      '  GRD_FOTO'
      'from CAD_PRO_GRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_PRO_GRD')
    ModifySQL.Strings = (
      'update CAD_PRO_GRD'
      'set'
      '  GRD_CART = :GRD_CART,'
      '  GRD_CBAR = :GRD_CBAR,'
      '  GRD_CCLF = :GRD_CCLF,'
      '  GRD_CCOR = :GRD_CCOR,'
      '  GRD_CFOR = :GRD_CFOR,'
      '  GRD_CGRD = :GRD_CGRD,'
      '  GRD_CO10 = :GRD_CO10,'
      '  GRD_CO11 = :GRD_CO11,'
      '  GRD_CO12 = :GRD_CO12,'
      '  GRD_CO13 = :GRD_CO13,'
      '  GRD_CO14 = :GRD_CO14,'
      '  GRD_CO15 = :GRD_CO15,'
      '  GRD_CO16 = :GRD_CO16,'
      '  GRD_CO17 = :GRD_CO17,'
      '  GRD_CO18 = :GRD_CO18,'
      '  GRD_CO19 = :GRD_CO19,'
      '  GRD_COL0 = :GRD_COL0,'
      '  GRD_COL1 = :GRD_COL1,'
      '  GRD_COL2 = :GRD_COL2,'
      '  GRD_COL3 = :GRD_COL3,'
      '  GRD_COL4 = :GRD_COL4,'
      '  GRD_COL5 = :GRD_COL5,'
      '  GRD_COL6 = :GRD_COL6,'
      '  GRD_COL7 = :GRD_COL7,'
      '  GRD_COL8 = :GRD_COL8,'
      '  GRD_COL9 = :GRD_COL9,'
      '  GRD_COMP = :GRD_COMP,'
      '  GRD_CPRO = :GRD_CPRO,'
      '  GRD_DCOR = :GRD_DCOR,'
      '  GRD_DGRD = :GRD_DGRD,'
      '  GRD_DPRO = :GRD_DPRO,'
      '  GRD_DUNI = :GRD_DUNI,'
      '  GRD_ES10 = :GRD_ES10,'
      '  GRD_ES11 = :GRD_ES11,'
      '  GRD_ES12 = :GRD_ES12,'
      '  GRD_ES13 = :GRD_ES13,'
      '  GRD_ES14 = :GRD_ES14,'
      '  GRD_ES15 = :GRD_ES15,'
      '  GRD_ES16 = :GRD_ES16,'
      '  GRD_ES17 = :GRD_ES17,'
      '  GRD_ES18 = :GRD_ES18,'
      '  GRD_ES19 = :GRD_ES19,'
      '  GRD_EST0 = :GRD_EST0,'
      '  GRD_EST1 = :GRD_EST1,'
      '  GRD_EST2 = :GRD_EST2,'
      '  GRD_EST3 = :GRD_EST3,'
      '  GRD_EST4 = :GRD_EST4,'
      '  GRD_EST5 = :GRD_EST5,'
      '  GRD_EST6 = :GRD_EST6,'
      '  GRD_EST7 = :GRD_EST7,'
      '  GRD_EST8 = :GRD_EST8,'
      '  GRD_EST9 = :GRD_EST9,'
      '  GRD_ESTO = :GRD_ESTO,'
      '  GRD_FOTO = :GRD_FOTO,'
      '  GRD_IPRO = :GRD_IPRO,'
      '  GRD_PCOR = :GRD_PCOR,'
      '  GRD_PDSC = :GRD_PDSC,'
      '  GRD_PPRO = :GRD_PPRO,'
      '  GRD_PREC = :GRD_PREC,'
      '  GRD_RCOR = :GRD_RCOR,'
      '  GRD_RPRC = :GRD_RPRC,'
      '  GRD_SPRC = :GRD_SPRC,'
      '  GRD_STA = :GRD_STA,'
      '  GRD_STAV = :GRD_STAV,'
      '  GRD_TOTA = :GRD_TOTA,'
      '  GRD_VPRC = :GRD_VPRC,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 344
    Top = 64
    object cad_pro_grdID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_GRD_001"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_grdGRD_IPRO: TIntegerField
      FieldName = 'GRD_IPRO'
      Origin = '"CAD_PRO_GRD_001"."GRD_IPRO"'
    end
    object cad_pro_grdGRD_CART: TIBStringField
      FieldName = 'GRD_CART'
      Origin = '"CAD_PRO_GRD_001"."GRD_CART"'
    end
    object cad_pro_grdGRD_CPRO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'GRD_CPRO'
      Origin = '"CAD_PRO_GRD_001"."GRD_CPRO"'
    end
    object cad_pro_grdGRD_CBAR: TIBStringField
      FieldName = 'GRD_CBAR'
      Origin = '"CAD_PRO_GRD_001"."GRD_CBAR"'
    end
    object cad_pro_grdGRD_CFOR: TIBStringField
      FieldName = 'GRD_CFOR'
      Origin = '"CAD_PRO_GRD_001"."GRD_CFOR"'
    end
    object cad_pro_grdGRD_DPRO: TIBStringField
      FieldName = 'GRD_DPRO'
      Origin = '"CAD_PRO_GRD_001"."GRD_DPRO"'
      Size = 120
    end
    object cad_pro_grdGRD_COMP: TIBStringField
      FieldName = 'GRD_COMP'
      Origin = '"CAD_PRO_GRD_001"."GRD_COMP"'
      Size = 120
    end
    object cad_pro_grdGRD_CGRD: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRD_CGRD'
      Origin = '"CAD_PRO_GRD_001"."GRD_CGRD"'
      Size = 2
    end
    object cad_pro_grdGRD_DGRD: TIBStringField
      FieldName = 'GRD_DGRD'
      Origin = '"CAD_PRO_GRD_001"."GRD_DGRD"'
      Size = 15
    end
    object cad_pro_grdGRD_CCOR: TSmallintField
      FieldName = 'GRD_CCOR'
      Origin = '"CAD_PRO_GRD_001"."GRD_CCOR"'
    end
    object cad_pro_grdGRD_RCOR: TIBStringField
      FieldName = 'GRD_RCOR'
      Origin = '"CAD_PRO_GRD_001"."GRD_RCOR"'
      Size = 3
    end
    object cad_pro_grdGRD_DCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'GRD_DCOR'
      Origin = '"CAD_PRO_GRD_001"."GRD_DCOR"'
      Size = 30
    end
    object cad_pro_grdGRD_FOTO: TBlobField
      FieldName = 'GRD_FOTO'
      Origin = '"CAD_PRO_GRD_001"."GRD_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_grdGRD_DUNI: TIBStringField
      FieldName = 'GRD_DUNI'
      Origin = '"CAD_PRO_GRD_001"."GRD_DUNI"'
      Size = 3
    end
    object cad_pro_grdGRD_EST0: TIntegerField
      FieldName = 'GRD_EST0'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST0"'
    end
    object cad_pro_grdGRD_COL0: TSmallintField
      FieldName = 'GRD_COL0'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL0"'
    end
    object cad_pro_grdGRD_EST1: TIntegerField
      FieldName = 'GRD_EST1'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST1"'
    end
    object cad_pro_grdGRD_COL1: TSmallintField
      FieldName = 'GRD_COL1'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL1"'
    end
    object cad_pro_grdGRD_EST2: TIntegerField
      FieldName = 'GRD_EST2'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST2"'
    end
    object cad_pro_grdGRD_COL2: TSmallintField
      FieldName = 'GRD_COL2'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL2"'
    end
    object cad_pro_grdGRD_EST3: TIntegerField
      FieldName = 'GRD_EST3'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST3"'
    end
    object cad_pro_grdGRD_COL3: TSmallintField
      FieldName = 'GRD_COL3'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL3"'
    end
    object cad_pro_grdGRD_EST4: TIntegerField
      FieldName = 'GRD_EST4'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST4"'
    end
    object cad_pro_grdGRD_COL4: TSmallintField
      FieldName = 'GRD_COL4'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL4"'
    end
    object cad_pro_grdGRD_EST5: TIntegerField
      FieldName = 'GRD_EST5'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST5"'
    end
    object cad_pro_grdGRD_COL5: TSmallintField
      FieldName = 'GRD_COL5'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL5"'
    end
    object cad_pro_grdGRD_EST6: TIntegerField
      FieldName = 'GRD_EST6'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST6"'
    end
    object cad_pro_grdGRD_COL6: TSmallintField
      FieldName = 'GRD_COL6'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL6"'
    end
    object cad_pro_grdGRD_EST7: TIntegerField
      FieldName = 'GRD_EST7'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST7"'
    end
    object cad_pro_grdGRD_COL7: TSmallintField
      FieldName = 'GRD_COL7'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL7"'
    end
    object cad_pro_grdGRD_EST8: TIntegerField
      FieldName = 'GRD_EST8'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST8"'
    end
    object cad_pro_grdGRD_COL8: TSmallintField
      FieldName = 'GRD_COL8'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL8"'
    end
    object cad_pro_grdGRD_EST9: TIntegerField
      FieldName = 'GRD_EST9'
      Origin = '"CAD_PRO_GRD_001"."GRD_EST9"'
    end
    object cad_pro_grdGRD_COL9: TSmallintField
      FieldName = 'GRD_COL9'
      Origin = '"CAD_PRO_GRD_001"."GRD_COL9"'
    end
    object cad_pro_grdGRD_TOTA: TSmallintField
      FieldName = 'GRD_TOTA'
      Origin = '"CAD_PRO_GRD_001"."GRD_TOTA"'
      DisplayFormat = '#,0.00'
    end
    object cad_pro_grdGRD_PDSC: TIBBCDField
      DisplayLabel = 'Desconto (%)'
      FieldName = 'GRD_PDSC'
      Origin = '"LAN_GRD_004"."GRD_PDSC"'
      DisplayFormat = '#,0.00'
      Precision = 9
      Size = 2
    end
    object cad_pro_grdGRD_ESTO: TSmallintField
      FieldName = 'GRD_ESTO'
      Origin = '"CAD_PRO_GRD_001"."GRD_ESTO"'
      DisplayFormat = '#,0.00'
    end
    object cad_pro_grdGRD_STA: TIBStringField
      FieldName = 'GRD_STA'
      Origin = '"CAD_PRO_GRD_001"."GRD_STA"'
      FixedChar = True
      Size = 1
    end
    object cad_pro_grdGRD_PCOR: TIBStringField
      DisplayLabel = 'Pantone'
      FieldName = 'GRD_PCOR'
      Origin = '"CAD_PRO_GRD"."GRD_PCOR"'
      Size = 30
    end
    object cad_pro_grdGRD_STAV: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'GRD_STAV'
      Origin = '"CAD_PRO_GRD"."GRD_STAV"'
      Size = 15
    end
    object cad_pro_grdGRD_CCLF: TIBStringField
      DisplayLabel = 'NCM'
      FieldName = 'GRD_CCLF'
      Origin = '"CAD_PRO_GRD"."GRD_CCLF"'
      Size = 10
    end
    object cad_pro_grdGRD_ES10: TIntegerField
      FieldName = 'GRD_ES10'
      Origin = '"CAD_PRO_GRD"."GRD_ES10"'
    end
    object cad_pro_grdGRD_CO10: TSmallintField
      FieldName = 'GRD_CO10'
      Origin = '"CAD_PRO_GRD"."GRD_CO10"'
    end
    object cad_pro_grdGRD_ES11: TIntegerField
      FieldName = 'GRD_ES11'
      Origin = '"CAD_PRO_GRD"."GRD_ES11"'
    end
    object cad_pro_grdGRD_CO11: TSmallintField
      FieldName = 'GRD_CO11'
      Origin = '"CAD_PRO_GRD"."GRD_CO11"'
    end
    object cad_pro_grdGRD_ES12: TIntegerField
      FieldName = 'GRD_ES12'
      Origin = '"CAD_PRO_GRD"."GRD_ES12"'
    end
    object cad_pro_grdGRD_CO12: TSmallintField
      FieldName = 'GRD_CO12'
      Origin = '"CAD_PRO_GRD"."GRD_CO12"'
    end
    object cad_pro_grdGRD_ES13: TIntegerField
      FieldName = 'GRD_ES13'
      Origin = '"CAD_PRO_GRD"."GRD_ES13"'
    end
    object cad_pro_grdGRD_CO13: TSmallintField
      FieldName = 'GRD_CO13'
      Origin = '"CAD_PRO_GRD"."GRD_CO13"'
    end
    object cad_pro_grdGRD_ES14: TIntegerField
      FieldName = 'GRD_ES14'
      Origin = '"CAD_PRO_GRD"."GRD_ES14"'
    end
    object cad_pro_grdGRD_CO14: TSmallintField
      FieldName = 'GRD_CO14'
      Origin = '"CAD_PRO_GRD"."GRD_CO14"'
    end
    object cad_pro_grdGRD_ES15: TIntegerField
      FieldName = 'GRD_ES15'
      Origin = '"CAD_PRO_GRD"."GRD_ES15"'
    end
    object cad_pro_grdGRD_CO15: TSmallintField
      FieldName = 'GRD_CO15'
      Origin = '"CAD_PRO_GRD"."GRD_CO15"'
    end
    object cad_pro_grdGRD_ES16: TIntegerField
      FieldName = 'GRD_ES16'
      Origin = '"CAD_PRO_GRD"."GRD_ES16"'
    end
    object cad_pro_grdGRD_CO16: TSmallintField
      FieldName = 'GRD_CO16'
      Origin = '"CAD_PRO_GRD"."GRD_CO16"'
    end
    object cad_pro_grdGRD_ES17: TIntegerField
      FieldName = 'GRD_ES17'
      Origin = '"CAD_PRO_GRD"."GRD_ES17"'
    end
    object cad_pro_grdGRD_CO17: TSmallintField
      FieldName = 'GRD_CO17'
      Origin = '"CAD_PRO_GRD"."GRD_CO17"'
    end
    object cad_pro_grdGRD_ES18: TIntegerField
      FieldName = 'GRD_ES18'
      Origin = '"CAD_PRO_GRD"."GRD_ES18"'
    end
    object cad_pro_grdGRD_CO18: TSmallintField
      FieldName = 'GRD_CO18'
      Origin = '"CAD_PRO_GRD"."GRD_CO18"'
    end
    object cad_pro_grdGRD_ES19: TIntegerField
      FieldName = 'GRD_ES19'
      Origin = '"CAD_PRO_GRD"."GRD_ES19"'
    end
    object cad_pro_grdGRD_CO19: TSmallintField
      FieldName = 'GRD_CO19'
      Origin = '"CAD_PRO_GRD"."GRD_CO19"'
    end
    object cad_pro_grdGRD_VPRC: TFloatField
      DisplayLabel = 'Pre'#231'o Varejo'
      FieldName = 'GRD_VPRC'
      Origin = '"CAD_PRO_GRD"."GRD_VPRC"'
      DisplayFormat = '#,0.00#######'
    end
    object cad_pro_grdGRD_PREC: TFloatField
      DisplayLabel = 'Pre'#231'o Atacado'
      FieldName = 'GRD_PREC'
      Origin = '"CAD_PRO_GRD"."GRD_PREC"'
      DisplayFormat = '#,0.00#######'
    end
    object cad_pro_grdGRD_RPRC: TFloatField
      DisplayLabel = 'Pre'#231'o Representante'
      FieldName = 'GRD_RPRC'
      Origin = '"CAD_PRO_GRD"."GRD_RPRC"'
      DisplayFormat = '#,0.00#######'
    end
    object cad_pro_grdGRD_SPRC: TFloatField
      DisplayLabel = 'Pre'#231'o Site'
      FieldName = 'GRD_SPRC'
      Origin = '"CAD_PRO_GRD"."GRD_SPRC"'
      DisplayFormat = '#,0.00#######'
    end
    object cad_pro_grdGRD_PPRO: TFloatField
      DisplayLabel = 'Pre'#231'o Promo'#231#227'o'
      FieldName = 'GRD_PPRO'
      Origin = '"CAD_PRO_GRD"."GRD_PPRO"'
    end
  end
  object dtscad_pro_grd: TDataSource
    DataSet = cad_pro_grd
    Left = 312
    Top = 64
  end
  object cad_pro: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM CAD_PRO'
      'WHERE ID = 0')
    Left = 376
    Top = 64
    object cad_proID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_proPRO_DCAD: TDateField
      FieldName = 'PRO_DCAD'
      Origin = '"CAD_PRO"."PRO_DCAD"'
    end
    object cad_proPRO_DALT: TDateField
      FieldName = 'PRO_DALT'
      Origin = '"CAD_PRO"."PRO_DALT"'
    end
    object cad_proPRO_DENT: TDateField
      FieldName = 'PRO_DENT'
      Origin = '"CAD_PRO"."PRO_DENT"'
    end
    object cad_proPRO_DPRG: TDateField
      FieldName = 'PRO_DPRG'
      Origin = '"CAD_PRO"."PRO_DPRG"'
    end
    object cad_proPRO_DULT: TDateField
      FieldName = 'PRO_DULT'
      Origin = '"CAD_PRO"."PRO_DULT"'
    end
    object cad_proPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO"."PRO_CART"'
    end
    object cad_proPRO_CPRO: TIBStringField
      FieldName = 'PRO_CPRO'
      Origin = '"CAD_PRO"."PRO_CPRO"'
    end
    object cad_proPRO_CFOR: TIBStringField
      FieldName = 'PRO_CFOR'
      Origin = '"CAD_PRO"."PRO_CFOR"'
    end
    object cad_proPRO_CBAR: TIBStringField
      FieldName = 'PRO_CBAR'
      Origin = '"CAD_PRO"."PRO_CBAR"'
    end
    object cad_proPRO_DPRO: TIBStringField
      FieldName = 'PRO_DPRO'
      Origin = '"CAD_PRO"."PRO_DPRO"'
      Size = 120
    end
    object cad_proPRO_DPR2: TIBStringField
      FieldName = 'PRO_DPR2'
      Origin = '"CAD_PRO"."PRO_DPR2"'
      Size = 120
    end
    object cad_proPRO_DPR3: TIBStringField
      FieldName = 'PRO_DPR3'
      Origin = '"CAD_PRO"."PRO_DPR3"'
      Size = 120
    end
    object cad_proPRO_DPR4: TIBStringField
      FieldName = 'PRO_DPR4'
      Origin = '"CAD_PRO"."PRO_DPR4"'
      Size = 120
    end
    object cad_proPRO_DPR5: TIBStringField
      FieldName = 'PRO_DPR5'
      Origin = '"CAD_PRO"."PRO_DPR5"'
      Size = 120
    end
    object cad_proPRO_COMP: TIBStringField
      FieldName = 'PRO_COMP'
      Origin = '"CAD_PRO"."PRO_COMP"'
      Size = 120
    end
    object cad_proPRO_APRO: TMemoField
      FieldName = 'PRO_APRO'
      Origin = '"CAD_PRO"."PRO_APRO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_proPRO_OBSE: TMemoField
      FieldName = 'PRO_OBSE'
      Origin = '"CAD_PRO"."PRO_OBSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_proPRO_DUNI: TIBStringField
      FieldName = 'PRO_DUNI'
      Origin = '"CAD_PRO"."PRO_DUNI"'
      Size = 3
    end
    object cad_proPRO_GRAD: TIBStringField
      FieldName = 'PRO_GRAD'
      Origin = '"CAD_PRO"."PRO_GRAD"'
      Size = 3
    end
    object cad_proPRO_CEMB: TIntegerField
      FieldName = 'PRO_CEMB'
      Origin = '"CAD_PRO"."PRO_CEMB"'
    end
    object cad_proPRO_DEMB: TIBStringField
      FieldName = 'PRO_DEMB'
      Origin = '"CAD_PRO"."PRO_DEMB"'
      Size = 30
    end
    object cad_proPRO_CGRP: TIntegerField
      FieldName = 'PRO_CGRP'
      Origin = '"CAD_PRO"."PRO_CGRP"'
    end
    object cad_proPRO_RGRP: TIBStringField
      FieldName = 'PRO_RGRP'
      Origin = '"CAD_PRO"."PRO_RGRP"'
      Size = 5
    end
    object cad_proPRO_DGRP: TIBStringField
      FieldName = 'PRO_DGRP'
      Origin = '"CAD_PRO"."PRO_DGRP"'
      Size = 30
    end
    object cad_proPRO_CCOR: TIntegerField
      FieldName = 'PRO_CCOR'
      Origin = '"CAD_PRO"."PRO_CCOR"'
    end
    object cad_proPRO_RCOR: TIBStringField
      FieldName = 'PRO_RCOR'
      Origin = '"CAD_PRO"."PRO_RCOR"'
      Size = 3
    end
    object cad_proPRO_DCOR: TIBStringField
      FieldName = 'PRO_DCOR'
      Origin = '"CAD_PRO"."PRO_DCOR"'
      Size = 30
    end
    object cad_proPRO_CCOL: TIntegerField
      FieldName = 'PRO_CCOL'
      Origin = '"CAD_PRO"."PRO_CCOL"'
    end
    object cad_proPRO_DCOL: TIBStringField
      FieldName = 'PRO_DCOL'
      Origin = '"CAD_PRO"."PRO_DCOL"'
      Size = 30
    end
    object cad_proPRO_DORI: TIBStringField
      FieldName = 'PRO_DORI'
      Origin = '"CAD_PRO"."PRO_DORI"'
      Size = 30
    end
    object cad_proPRO_CCST: TIBStringField
      FieldName = 'PRO_CCST'
      Origin = '"CAD_PRO"."PRO_CCST"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_CCLF: TIBStringField
      FieldName = 'PRO_CCLF'
      Origin = '"CAD_PRO"."PRO_CCLF"'
      Size = 10
    end
    object cad_proPRO_METR: TIBBCDField
      FieldName = 'PRO_METR'
      Origin = '"CAD_PRO"."PRO_METR"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"CAD_PRO"."PRO_PESO"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_UTIL: TIBBCDField
      FieldName = 'PRO_UTIL'
      Origin = '"CAD_PRO"."PRO_UTIL"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_LARG: TIBBCDField
      FieldName = 'PRO_LARG'
      Origin = '"CAD_PRO"."PRO_LARG"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_GRAM: TIBBCDField
      FieldName = 'PRO_GRAM'
      Origin = '"CAD_PRO"."PRO_GRAM"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_REND: TIBBCDField
      FieldName = 'PRO_REND'
      Origin = '"CAD_PRO"."PRO_REND"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_PSCN: TIBBCDField
      FieldName = 'PRO_PSCN'
      Origin = '"CAD_PRO"."PRO_PSCN"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_PSMR: TIBBCDField
      FieldName = 'PRO_PSMR'
      Origin = '"CAD_PRO"."PRO_PSMR"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_ELAS: TIBBCDField
      FieldName = 'PRO_ELAS'
      Origin = '"CAD_PRO"."PRO_ELAS"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_ELAC: TIBBCDField
      FieldName = 'PRO_ELAC'
      Origin = '"CAD_PRO"."PRO_ELAC"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_STLN: TIBStringField
      FieldName = 'PRO_STLN'
      Origin = '"CAD_PRO"."PRO_STLN"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_STAL: TIBStringField
      FieldName = 'PRO_STAL'
      Origin = '"CAD_PRO"."PRO_STAL"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_LAVA: TIBStringField
      FieldName = 'PRO_LAVA'
      Origin = '"CAD_PRO"."PRO_LAVA"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_STA: TIBStringField
      FieldName = 'PRO_STA'
      Origin = '"CAD_PRO"."PRO_STA"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_STAV: TIBStringField
      FieldName = 'PRO_STAV'
      Origin = '"CAD_PRO"."PRO_STAV"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_PCOM: TFloatField
      FieldName = 'PRO_PCOM'
      Origin = '"CAD_PRO"."PRO_PCOM"'
    end
    object cad_proPRO_CUST: TFloatField
      FieldName = 'PRO_CUST'
      Origin = '"CAD_PRO"."PRO_CUST"'
    end
    object cad_proPRO_PDSC: TIBBCDField
      FieldName = 'PRO_PDSC'
      Origin = '"CAD_PRO"."PRO_PDSC"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_PREC: TFloatField
      FieldName = 'PRO_PREC'
      Origin = '"CAD_PRO"."PRO_PREC"'
    end
    object cad_proPRO_PPRO: TFloatField
      FieldName = 'PRO_PPRO'
      Origin = '"CAD_PRO"."PRO_PPRO"'
    end
    object cad_proPRO_VDSC: TIBBCDField
      FieldName = 'PRO_VDSC'
      Origin = '"CAD_PRO"."PRO_VDSC"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_VPRC: TFloatField
      FieldName = 'PRO_VPRC'
      Origin = '"CAD_PRO"."PRO_VPRC"'
    end
    object cad_proPRO_VPRO: TFloatField
      FieldName = 'PRO_VPRO'
      Origin = '"CAD_PRO"."PRO_VPRO"'
    end
    object cad_proPRO_RDSC: TIBBCDField
      FieldName = 'PRO_RDSC'
      Origin = '"CAD_PRO"."PRO_RDSC"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_RPRC: TFloatField
      FieldName = 'PRO_RPRC'
      Origin = '"CAD_PRO"."PRO_RPRC"'
    end
    object cad_proPRO_RPRO: TFloatField
      FieldName = 'PRO_RPRO'
      Origin = '"CAD_PRO"."PRO_RPRO"'
    end
    object cad_proPRO_PIPI: TSmallintField
      FieldName = 'PRO_PIPI'
      Origin = '"CAD_PRO"."PRO_PIPI"'
    end
    object cad_proPRO_VOCX: TSmallintField
      FieldName = 'PRO_VOCX'
      Origin = '"CAD_PRO"."PRO_VOCX"'
    end
    object cad_proPRO_VOSC: TSmallintField
      FieldName = 'PRO_VOSC'
      Origin = '"CAD_PRO"."PRO_VOSC"'
    end
    object cad_proPRO_VOFD: TSmallintField
      FieldName = 'PRO_VOFD'
      Origin = '"CAD_PRO"."PRO_VOFD"'
    end
    object cad_proPRO_CDFO: TIntegerField
      FieldName = 'PRO_CDFO'
      Origin = '"CAD_PRO"."PRO_CDFO"'
    end
    object cad_proPRO_CCAT: TIntegerField
      FieldName = 'PRO_CCAT'
      Origin = '"CAD_PRO"."PRO_CCAT"'
    end
    object cad_proPRO_RCAT: TIBStringField
      FieldName = 'PRO_RCAT'
      Origin = '"CAD_PRO"."PRO_RCAT"'
      Size = 5
    end
    object cad_proPRO_DCAT: TIBStringField
      FieldName = 'PRO_DCAT'
      Origin = '"CAD_PRO"."PRO_DCAT"'
      Size = 30
    end
    object cad_proPRO_REPR: TIBStringField
      FieldName = 'PRO_REPR'
      Origin = '"CAD_PRO"."PRO_REPR"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_DCOM: TDateField
      FieldName = 'PRO_DCOM'
      Origin = '"CAD_PRO"."PRO_DCOM"'
    end
    object cad_proPRO_CNA1: TIBStringField
      FieldName = 'PRO_CNA1'
      Origin = '"CAD_PRO"."PRO_CNA1"'
      Size = 4
    end
    object cad_proPRO_CNA2: TIBStringField
      FieldName = 'PRO_CNA2'
      Origin = '"CAD_PRO"."PRO_CNA2"'
      Size = 4
    end
    object cad_proPRO_PCOR: TIBStringField
      FieldName = 'PRO_PCOR'
      Origin = '"CAD_PRO"."PRO_PCOR"'
      Size = 30
    end
    object cad_proPRO_PPRZ: TFloatField
      FieldName = 'PRO_PPRZ'
      Origin = '"CAD_PRO"."PRO_PPRZ"'
    end
    object cad_proPRO_PPER: TIBBCDField
      FieldName = 'PRO_PPER'
      Origin = '"CAD_PRO"."PRO_PPER"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_VPRZ: TFloatField
      FieldName = 'PRO_VPRZ'
      Origin = '"CAD_PRO"."PRO_VPRZ"'
    end
    object cad_proPRO_VPER: TIBBCDField
      FieldName = 'PRO_VPER'
      Origin = '"CAD_PRO"."PRO_VPER"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_RPRZ: TFloatField
      FieldName = 'PRO_RPRZ'
      Origin = '"CAD_PRO"."PRO_RPRZ"'
    end
    object cad_proPRO_RPER: TIBBCDField
      FieldName = 'PRO_RPER'
      Origin = '"CAD_PRO"."PRO_RPER"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_OBSF: TMemoField
      FieldName = 'PRO_OBSF'
      Origin = '"CAD_PRO"."PRO_OBSF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cad_proPRO_SPRC: TFloatField
      FieldName = 'PRO_SPRC'
      Origin = '"CAD_PRO"."PRO_SPRC"'
    end
    object cad_proPRO_SPRO: TFloatField
      FieldName = 'PRO_SPRO'
      Origin = '"CAD_PRO"."PRO_SPRO"'
    end
    object cad_proPRO_SDSC: TIBBCDField
      FieldName = 'PRO_SDSC'
      Origin = '"CAD_PRO"."PRO_SDSC"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_SPER: TIBBCDField
      FieldName = 'PRO_SPER'
      Origin = '"CAD_PRO"."PRO_SPER"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_SPRZ: TFloatField
      FieldName = 'PRO_SPRZ'
      Origin = '"CAD_PRO"."PRO_SPRZ"'
    end
    object cad_proPRO_CLIB: TFloatField
      FieldName = 'PRO_CLIB'
      Origin = '"CAD_PRO"."PRO_CLIB"'
    end
    object cad_proPRO_DUSU: TIBStringField
      FieldName = 'PRO_DUSU'
      Origin = '"CAD_PRO"."PRO_DUSU"'
      Size = 40
    end
    object cad_proPRO_APRC: TIBStringField
      FieldName = 'PRO_APRC'
      Origin = '"CAD_PRO"."PRO_APRC"'
      FixedChar = True
      Size = 1
    end
    object cad_proPRO_LDSC: TIBBCDField
      FieldName = 'PRO_LDSC'
      Origin = '"CAD_PRO"."PRO_LDSC"'
      Precision = 9
      Size = 2
    end
    object cad_proPRO_DMAP: TIBStringField
      FieldName = 'PRO_DMAP'
      Origin = '"CAD_PRO"."PRO_DMAP"'
    end
    object cad_proPRO_DENS: TIBStringField
      FieldName = 'PRO_DENS'
      Origin = '"CAD_PRO"."PRO_DENS"'
    end
    object cad_proPRO_TITF: TIBStringField
      FieldName = 'PRO_TITF'
      Origin = '"CAD_PRO"."PRO_TITF"'
    end
  end
  object cad_pro_img: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT * FROM CAD_PRO_IMG'
      'WHERE ID = 0')
    Left = 376
    Top = 32
    object cad_pro_imgID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_IMG"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_imgPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO_IMG"."PRO_CART"'
    end
    object cad_pro_imgPRO_FOTO: TBlobField
      FieldName = 'PRO_FOTO'
      Origin = '"CAD_PRO_IMG"."PRO_FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_FOT2: TBlobField
      FieldName = 'PRO_FOT2'
      Origin = '"CAD_PRO_IMG"."PRO_FOT2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_FOT3: TBlobField
      FieldName = 'PRO_FOT3'
      Origin = '"CAD_PRO_IMG"."PRO_FOT3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_FOT4: TBlobField
      FieldName = 'PRO_FOT4'
      Origin = '"CAD_PRO_IMG"."PRO_FOT4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_FOT5: TBlobField
      FieldName = 'PRO_FOT5'
      Origin = '"CAD_PRO_IMG"."PRO_FOT5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_FOT6: TBlobField
      FieldName = 'PRO_FOT6'
      Origin = '"CAD_PRO_IMG"."PRO_FOT6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_FOT7: TBlobField
      FieldName = 'PRO_FOT7'
      Origin = '"CAD_PRO_IMG"."PRO_FOT7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_FOT8: TBlobField
      FieldName = 'PRO_FOT8'
      Origin = '"CAD_PRO_IMG"."PRO_FOT8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF1: TBlobField
      FieldName = 'PRO_DEF1'
      Origin = '"CAD_PRO_IMG"."PRO_DEF1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF2: TBlobField
      FieldName = 'PRO_DEF2'
      Origin = '"CAD_PRO_IMG"."PRO_DEF2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF3: TBlobField
      FieldName = 'PRO_DEF3'
      Origin = '"CAD_PRO_IMG"."PRO_DEF3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF4: TBlobField
      FieldName = 'PRO_DEF4'
      Origin = '"CAD_PRO_IMG"."PRO_DEF4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF5: TBlobField
      FieldName = 'PRO_DEF5'
      Origin = '"CAD_PRO_IMG"."PRO_DEF5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF6: TBlobField
      FieldName = 'PRO_DEF6'
      Origin = '"CAD_PRO_IMG"."PRO_DEF6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF7: TBlobField
      FieldName = 'PRO_DEF7'
      Origin = '"CAD_PRO_IMG"."PRO_DEF7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_DEF8: TBlobField
      FieldName = 'PRO_DEF8'
      Origin = '"CAD_PRO_IMG"."PRO_DEF8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS1: TBlobField
      FieldName = 'PRO_INS1'
      Origin = '"CAD_PRO_IMG"."PRO_INS1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS2: TBlobField
      FieldName = 'PRO_INS2'
      Origin = '"CAD_PRO_IMG"."PRO_INS2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS3: TBlobField
      FieldName = 'PRO_INS3'
      Origin = '"CAD_PRO_IMG"."PRO_INS3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS4: TBlobField
      FieldName = 'PRO_INS4'
      Origin = '"CAD_PRO_IMG"."PRO_INS4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS5: TBlobField
      FieldName = 'PRO_INS5'
      Origin = '"CAD_PRO_IMG"."PRO_INS5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS6: TBlobField
      FieldName = 'PRO_INS6'
      Origin = '"CAD_PRO_IMG"."PRO_INS6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS7: TBlobField
      FieldName = 'PRO_INS7'
      Origin = '"CAD_PRO_IMG"."PRO_INS7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_INS8: TBlobField
      FieldName = 'PRO_INS8'
      Origin = '"CAD_PRO_IMG"."PRO_INS8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cad_pro_imgPRO_ONS1: TIBStringField
      FieldName = 'PRO_ONS1'
      Origin = '"CAD_PRO_IMG"."PRO_ONS1"'
      Size = 60
    end
    object cad_pro_imgPRO_ONS2: TIBStringField
      FieldName = 'PRO_ONS2'
      Origin = '"CAD_PRO_IMG"."PRO_ONS2"'
      Size = 60
    end
    object cad_pro_imgPRO_ONS3: TIBStringField
      FieldName = 'PRO_ONS3'
      Origin = '"CAD_PRO_IMG"."PRO_ONS3"'
      Size = 60
    end
    object cad_pro_imgPRO_ONS4: TIBStringField
      FieldName = 'PRO_ONS4'
      Origin = '"CAD_PRO_IMG"."PRO_ONS4"'
      Size = 60
    end
    object cad_pro_imgPRO_ONS5: TIBStringField
      FieldName = 'PRO_ONS5'
      Origin = '"CAD_PRO_IMG"."PRO_ONS5"'
      Size = 60
    end
    object cad_pro_imgPRO_ONS6: TIBStringField
      FieldName = 'PRO_ONS6'
      Origin = '"CAD_PRO_IMG"."PRO_ONS6"'
      Size = 60
    end
    object cad_pro_imgPRO_ONS7: TIBStringField
      FieldName = 'PRO_ONS7'
      Origin = '"CAD_PRO_IMG"."PRO_ONS7"'
      Size = 60
    end
    object cad_pro_imgPRO_ONS8: TIBStringField
      FieldName = 'PRO_ONS8'
      Origin = '"CAD_PRO_IMG"."PRO_ONS8"'
      Size = 60
    end
  end
  object aux2: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    Left = 728
  end
  object ped_ven_ite: TIBQuery
    Database = dmDADOS.ibDB
    Transaction = IBTra
    SQL.Strings = (
      'SELECT   PRO_CART FROM PED_VEN_ITE,CAD_PRO'
      'WHERE    CAD_PRO.ID = ROM_CPRO'
      'AND      PRO_CART   = :PRO_CART'
      'GROUP BY CAD_PRO.PRO_CART'
      'UNION'
      'SELECT   PRO_CART FROM PED_VEN_ITE_002,CAD_PRO'
      'WHERE    CAD_PRO.ID = ROM_CPRO'
      'AND      PRO_CART   = :PRO_CART'
      'GROUP BY CAD_PRO.PRO_CART'
      'UNION'
      'SELECT   PRO_CART FROM PED_VEN_ITE_003,CAD_PRO'
      'WHERE    CAD_PRO.ID = ROM_CPRO'
      'AND      PRO_CART   = :PRO_CART'
      'GROUP BY CAD_PRO.PRO_CART'
      'UNION'
      'SELECT   PRO_CART FROM PED_VEN_ITE_004,CAD_PRO'
      'WHERE    CAD_PRO.ID = ROM_CPRO'
      'AND      PRO_CART   = :PRO_CART'
      'GROUP BY CAD_PRO.PRO_CART'
      'UNION'
      'SELECT   PRO_CART FROM PED_VEN_ITE_005,CAD_PRO'
      'WHERE    CAD_PRO.ID = ROM_CPRO'
      'AND      PRO_CART   = :PRO_CART'
      'GROUP BY CAD_PRO.PRO_CART'
      'UNION'
      'SELECT   PRO_CART FROM PED_VEN_ITE_006,CAD_PRO'
      'WHERE    CAD_PRO.ID = ROM_CPRO'
      'AND      PRO_CART   = :PRO_CART'
      'GROUP BY CAD_PRO.PRO_CART')
    Left = 632
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRO_CART'
        ParamType = ptInput
      end>
  end
  object tab_clf: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from TAB_CLF'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TAB_CLF'
      '  (CLF_CCLF, CLF_UF, CLF_VI04, CLF_VI07, CLF_VI12, ID)'
      'values'
      '  (:CLF_CCLF, :CLF_UF, :CLF_VI04, :CLF_VI07, :CLF_VI12, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLF_CCLF,'
      '  CLF_VI04,'
      '  CLF_VI07,'
      '  CLF_VI12,'
      '  CLF_UF'
      'from TAB_CLF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_CLF')
    ModifySQL.Strings = (
      'update TAB_CLF'
      'set'
      '  CLF_CCLF = :CLF_CCLF,'
      '  CLF_UF = :CLF_UF,'
      '  CLF_VI04 = :CLF_VI04,'
      '  CLF_VI07 = :CLF_VI07,'
      '  CLF_VI12 = :CLF_VI12,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 312
    object tab_clfID: TIntegerField
      FieldName = 'ID'
      Origin = '"TAB_CLF"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tab_clfCLF_CCLF: TIBStringField
      FieldName = 'CLF_CCLF'
      Origin = '"TAB_CLF"."CLF_CCLF"'
      Size = 10
    end
    object tab_clfCLF_VI04: TIBBCDField
      FieldName = 'CLF_VI04'
      Origin = '"TAB_CLF"."CLF_VI04"'
      Precision = 9
      Size = 2
    end
    object tab_clfCLF_VI07: TIBBCDField
      FieldName = 'CLF_VI07'
      Origin = '"TAB_CLF"."CLF_VI07"'
      Precision = 9
      Size = 2
    end
    object tab_clfCLF_VI12: TIBBCDField
      FieldName = 'CLF_VI12'
      Origin = '"TAB_CLF"."CLF_VI12"'
      Precision = 9
      Size = 2
    end
    object tab_clfCLF_UF: TIBStringField
      FieldName = 'CLF_UF'
      Origin = '"TAB_CLF"."CLF_UF"'
      Size = 2
    end
  end
  object cad_pro_ori: TIBDataSet
    Database = dmDADOS.ibDB
    Transaction = IBTra
    DeleteSQL.Strings = (
      'delete from CAD_PRO_ORI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CAD_PRO_ORI'
      '  (ID, PRO_CART, PRO_CDEP, PRO_ORIG)'
      'values'
      '  (:ID, :PRO_CART, :PRO_CDEP, :PRO_ORIG)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRO_CDEP,'
      '  PRO_CART,'
      '  PRO_ORIG'
      'from CAD_PRO_ORI '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_PRO_ORI')
    ModifySQL.Strings = (
      'update CAD_PRO_ORI'
      'set'
      '  ID = :ID,'
      '  PRO_CART = :PRO_CART,'
      '  PRO_CDEP = :PRO_CDEP,'
      '  PRO_ORIG = :PRO_ORIG'
      'where'
      '  ID = :OLD_ID')
    Left = 344
    Top = 96
    object cad_pro_oriID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_PRO_CST"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_pro_oriPRO_CDEP: TIntegerField
      FieldName = 'PRO_CDEP'
      Origin = '"CAD_PRO_CST"."PRO_CDEP"'
    end
    object cad_pro_oriPRO_CART: TIBStringField
      FieldName = 'PRO_CART'
      Origin = '"CAD_PRO_CST"."PRO_CART"'
    end
    object cad_pro_oriPRO_ORIG: TIBStringField
      FieldName = 'PRO_ORIG'
      Origin = '"CAD_PRO_ORI"."PRO_ORIG"'
      FixedChar = True
      Size = 1
    end
  end
end
