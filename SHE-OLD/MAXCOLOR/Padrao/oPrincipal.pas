unit oPrincipal;

{$LONGSTRINGS ON}

interface

uses
  Windows, Messages, SysUtils, Variants, StrUtils, Math, MidasLib, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, Db, DBTables, DBClient, StdCtrls, dxEdLib, Registry,
  DBCtrls, Buttons, Menus, Mask,   IBCustomDataSet, IBTable, dxEditor, dxsbar, dxBar,
  IBdatabase, IBEvents, IBQuery, RxSpeedBar, ActnList,imglist,MaskUtils, TypInfo, Jpeg, quickrpt, IBSQL,
  ShellApi, RXDBCtrl, dxDBELib, DateUtils, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,dxPageControl, RXCtrls,
  dxDockControl,dxDockPanel, IBStoredProc,
  QRCtrls,QRPDFFilt, QRExport, WinSpool,
  ActiveX, ComObj, ShlObj, Printers,
  XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm, OleCtrls,
  StrInt, StrIntImp, IDGlobal, Clipbrd;

type
  aNFe = Array of Array of shortstring;
  
Type
   TReturning          = (lrNone,lrVariant,lrString,lrInteger,lrFloat);
   TWarning            = (lwNone,lwShowWarning);
   TFormShow           = (lcShow,lcShowModal);
   TFormPosition       = (lcDesigned,lcDefault);
   TValidateAction     = (lvNone,lvAbort,lvRaise);
   TAlign              = (lcLeft,lcRight,lcCenter);
   TDefaultTransaction = (ltNone,ltRead_Only,ltRead_Only_Release_Commit,ltRead_Only_Release_Rollback,ltRead_Committed,ltCommit,ltCommitRetaining,ltRollback,ltRollbackRetaining); { Define o tipo de execução da transação }
   TDefaultAction      = (laNone,laOpen,laClose,laEnableControls,laDisableControls,laOpenEnableControls,laCloseEnableControls,laOpenDisableControls,laCloseDisableControls,laSavePoint); { Define se será usado ponteiro de bookmark (lcSavePoint) }
  
Type TRECParametros = record
     Id,
     IDCaixa,
     IDCliente,
     IDFornecedor,
     IDVendedor,
     IDRepresentante,
     IDPrazo,
     IDTransportadora,
     EstoquePecas,
     EstoqueCompartilhado,
     EstoqueCDI,
     EstoqueDI,
     CDST,
     CDSP,
     CDSI,
     CDSD: Variant;
     EstoqueTipo,
     COR_PADRAO,
     COR_PRECO: Word;
     SecondsIdle: DWord;
     PRZBancario,
     PRZCarteira,
     PRZCheques,
     PRZPagamentos,
     PRZExpedicao: Word;
     VCreditoMaximo,
     PCreditoMaximo,
     PCreditoICMS,
     PICMS: Double;
     Fantasia,
     RazaoSocial,
     Cliente,
     RSCliente,
     Fornecedor,
     Vendedor,
     Representante,
     Prazo,
     Transportadora,
     Email,
     EmailContabil,
     EmailXMLCofre,
     LKSite,
     LKFacebook,
     LKInstagram,
     LKTWitter,
     TokenSoftwareHouse: String[60];
     RamoDeAtividade,
     NoSerieCertificado,
     C_Fantasia,
     C_Nome: String[120];
     RegimeTributario,
     REST,
     RESP,
     RESI,
     RESD: String[1];
     SerieNF: String[3];
     TimeZone: String[6];
     STCaixa,
     IPCaixa,
     TipoPedido,
     TipoCobranca: String[30];
     Cnpj,
     CNPJSoftWareHouse: String[14];
     DEST,
     DESP,
     DESI,
     DESD: String[12];
     C_Cnpj,
     IE,
     Volume,
     C_Fone: String[25];
     UnidadeFederada,
     UnidadeFederadaCodigo: String[2];
     CodMunicipio,
     CFOPDentroUF,
     CFOPForaUF,
     COR_SISTEMA: String[10];
     Municipio,
     LocalIP,
     ServerIP,
     LocalHost,
     ServerHost,
     RELPedido: String[60];
     SwHAssinatura: AnsiString;
     PathPrincipal,
     PathDocumentos,
     PathImagens,
     PathNotaFiscal,
     PathCupomFiscal,
     C_Endereco,
     C_Complemento: ShortString;
     DTServidor,
     DTCaixa,
     DTLimite,
     DTMes1,
     DTMes2,
     DTSemana1,
     DTSemana2: TDateTime;
     Grade,
     CTRLLimite,
     SQLAllClientes,
     SQLAllProdutos,
     BxPagAuto,
     EnvMail: Boolean;
     Foto,
     Fot2,
     Fot3,
     Fot4,
     FTSite,
     FTFacebook,
     FTInstagram,
     FTTWitter: TBlobField;

    IMG_JPG_SPLASH,
    IMG_JPG_REL,
    IMG_JPG_ETQ,
    IMG_JPG_BLANK,
    IMG_BMP_ETQ,
    IMG_BMP_ETQ_MONO,
    IMG_BMP_BLANK,
    IMG_BMP_BLANK_MONO: TBlobField;

    IP,
    HOST,
    REL_PAD: String[60];

    LOG_ID    : Variant;
    LOG_TIPO  : String[36];
    LOG_NO    : String[76];

    LOG_NU    : String[15];
    LOG_NU_CPL: String[40];
    LOG_CEP   : String[8];

    LOG_BAI_NO,
    LOG_LOC_NO: String[72];
    LOG_LOC_CMUN: String[7];

    LOG_UF_NU : Variant;
    LOG_UF_NO : String[60];
    LOG_UF    : String[2];

    NFE_API: Boolean;
    NFE_API_TOKEN: String[40];
    NFE_TIMEZONE: String[6];

    NFE_API_SEFAZ,              { Situação de Disponibilidade }
    NFE_API_CSTAT: ShortString; { Situação de Processamento }

    NFE_VER_PROC: String[10];
    NFE_VER_PROC_EDT: TDate;

    NFE_CRT,
    NFE_MODELO,
    NFE_SERIE,
    NFE_CFOP_IDFIN: Variant;
    NFE_CFOP_REFIN,
    NFE_CFOPDUF,
    NFE_CFOPFUF: String[10];
    NFE_CFOP_DEFIN: String[60];

    NFE_MODFRETE: Variant;
    NFE_MODFRETE_REF: String[10];
    NFE_MODFRETE_DESC,
    NFE_ESPECIE: String[60];

    NFE_ICMS: Word;
    NFE_CREDITO_ICMS: Double;
    NFE_REDUCAO_PISCOFINS: Boolean;

    NFE_CABECALHO,
    NFE_CANHOTO,
    NFE_FONT_SIZE_ITEM,
    NFE_FONT_SIZE_INFADCAD,
    NFE_TIPO_DESCONTO: Variant;
    NFE_FORMAT_QTDE,
    NFE_FORMAT_VUNIT: String[15];
    NFE_TOTAL_PISCOFINS,
    NFE_TOTAL_CFOP: Variant;

    NFE_ENV_EMAIL_AUTO: Variant;
    NFE_CAD_PRO_DI: Boolean;
    NFE_LOGO: String[60];

    { PASTHS NOTAS FISCAIS }
    NFE_PATH,                      { Principal                   }
    NFE_PATH_XML,                  { Arquivos XML Compartilhados }
    NFE_PATH_XML_PROCNFE,          { Arquivos XML Gerados        }
    NFE_PATH_DANFE,                { PDF Nota Fiscal             }
    NFE_PATH_CCE,                  { PDF Carta de Correção       }
    NFE_PATH_DATA_PACKET,          { Pacotes Principais          }
    NFE_PATH_DATA_PACKET_CCE,      { Pacotes Carta de Correção   }
    NFE_PATH_DATA_PACKET_FORM_SEG, { Pacotes de Formulários      }
    NFE_PATH_DATA_PACKET_FS,       { Pacotes Gerais              }
    NFE_PATH_SCHEMAS,              { Schemas Nota Fiscal         }
    NFE_PATH_LOGO: ShortString;    { Arquivo de Imagem           }

    { SISTEMA }
    SHE_CNPJ: String[14];
    SHE_RESPONSAVEL: String[40];
    SHE_EMAIL: String[40];
    SHE_TEL_NU: String[11];

    { LICENCIAMENTOS }
    SHE_LIC_VENCIMENTO: TDate;
    SHE_LIC_VENCIDO,
    SHE_LIC_AVISAR,
    SHE_LIC_SUSPENSO: Boolean;

    { WEB }
    SHE_FTP_USER,
    SHE_FTP_TOKEN,
    SHE_FTP_LINK: String[60];

    { PATHS }
    SHE_PATH_DESKTOP,
    SHE_PATH_DOCUMENTS: String; { Desktop }

    SHE_PATH,     { Local }
    SHE_PATH_LAN, { Rede Interna }
    SHE_PATH_WAN, { Rede Externa }
    SHE_PATH_FTP, { FTP }

    SHE_PATH_APP, { Aplicativos }
    SHE_PATH_FBD, { Base de Dados }

    SHE_PATH_CLT, { Coletores }
    SHE_PATH_DOC, { Documentos }
    SHE_PATH_IMG, { Imagens }
    SHE_PATH_BKP, { Backup }
    SHE_PATH_TMP: ShortString; { Arquivos Temporários }
End;

Type TRECUsuarios = record
     ID,
     IDEP: Variant;
     DTAcesso: TDate;
     DEEP: String[60];

     Login: String[30];
     Nome : String[60];

     Cargo,
     Departamento: String[60];
     
     Grupo: String[3];
     Comprador,
     Caixa: Boolean;

     PED_DESCONTO,
     PED_TOTALIZADOR,
     PED_RELATORIOS: Boolean;
     PED_DESCONTO_LIMITE: Double;
     PED_GRID_FOCUSED: Word;

     FIN_LIMITE_CREDITO: Boolean;
     FIN_LIMITE_CREDITO_VMAX: Double;

     API_BOLETO: Boolean;
     API_BANCO,
     API_AMBIENTE: String[30];

     API_B2B,
     API_B2C,
     API_MKP: Boolean;

     EMAIL,
     EMAIL_NOME,
     EMAIL_SMTP: String[60];

     EMAIL_PORTA,
     EMAIL_SSL  : String[5];
     EMAIL_TOKEN: String[15];

     NUDDD,
     NUDDDCEL: String[2];

     NUTEL,
     NUCEL: String[9];

     { PERMISSÕES DE EVENTOS }
     IS_EVENT,     { Temporário }

    IS_EVE_CAD,          { Cadastros    }
    IS_EVE_PRO,          { Produtos     }
    IS_EVE_EST,          { Estoque      }
    IS_EVE_EXP,          { Expedição    }
    IS_EVE_PDC,          { Compras      }
    IS_EVE_PDP,          { Programações }
    IS_EVE_PDV,          { Vendas       }
    IS_EVE_RDV,          { Romaneios    }
    IS_EVE_FIS,          { Fiscal       }
    IS_EVE_FIN,          { Financeiro   }
    IS_EVE_ADM: Boolean; { Admin        }

     Relatorio,
     CurrentPrinter: String[60];

     Selected: Boolean;
End;

Type TRECDefault = record
     ID: Variant;
     CD: String[30];

     IDEP,
     IDPK,
     IDFK,
     IDAK,
     IDEK: Variant;

     GEN_ID: String[30];

     IDEV,
     CDEV: Variant;
     REEV: String[30];
     DEEV: String[60];

     Tabela: String[60];

     { Acessos e Permissões }
     Funcao,
     Rotina,
     Nome,
     InsertValue: String[120];

     View,
     Append,
     Edit,
     Delete,
     Post,
     Print,
     Auto,

     Editing,
     Edited,

     Selected: Boolean;

     { Grid }
     GridOptionsEdit: Boolean;

     { Pesquisa }
     PSQValue: String[120];
     PSQField: String[30];

     PSQDTField: String[30];
     PSQDTINI,
     PSQDTFIM: TDate;

     { Screen }
     WorkArea,
     MainArea: Boolean;
     FrmPosition: TPosition;

     Top ,
     Left,
     FHeight,
     FWidth : Word;
     PBCount: Integer;

     { Motivos e Justificativas }
     Justificativa: TStringList;

     { IBX }
     ASQLConsulta,
     ASQLEdicao: TIBSQL;

     { Firebird Server }
     FB_EventAlert: Boolean;
     FB_Event: String;

     { Outros }
     EventAlert: Boolean;
     Event: String;

     ForceClose: Boolean;
End;

Type TRECPrincipal = record
     IDPK,
     IDFK,
     IDEV,
     CDEV: Variant;
     IDCA,
     IDED,
     Credito: word;
     PSQTexto,
     PSQTextoCaption,
     PSQComplemento,
     PSQComplemento2,
     PSQComplementoCaption,
     PSQComplementoCaption2,
     Funcao,
     Rotina,
     Nome,
     CDPK,
     CDFK,
     Tipo,
     Cobranca,
     Status: String[60];
     PSQComplementoSelect,
     PSQComplementoSelect2,
     InsertValue: String[120];
     Field,
     Event,
     Perfil,
     Tabela,
     PSQWhere,
     PSQLike1,
     PSQLike2,
     PSQData,
     PSQTextoField: String[30];
     PSQDT1,
     PSQDT2: TDate;
     Append,
     Edit,
     Delete,
     View,
     Print,
     Auto,
     Selected,
     Edited,
     Fatura,
     EventAlert,
     TBPrincipal,
     PNLPrincipal,
     WorkArea,
     MainArea,
     GridOptionsBehavior: Boolean;
     FrmStyle: TFormStyle;
     FrmPosition: TPosition;
     Lista: TList;
End;

Type TRECRelatorios = record
     Id,
     IDEmpresa,
     SyncMain,
     SyncChild,
     PEC1CodigoText,
     PEC2CodigoText,
     PEC1ConsultaText,
     PEC2ConsultaText,
     PEC3ConsultaText,
     PEC4ConsultaText: Variant;
     Event,
     TAB_FK,
     TAB_PK,
     TAB_ORD_PK,
     TAB_ORD_FK,
     PEC1CodigoCaption,
     PEC2CodigoCaption,
     IEC1ConsultaCaption,
     IEC2ConsultaCaption,
     IEC3ConsultaCaption,
     IEC4ConsultaCaption,
     PEC1CodigoField,
     PEC1CodigoFieldTable,
     PEC2CodigoField,
     PEC2CodigoFieldTable,
     IEC1ConsultaField,
     IEC1ConsultaTable,
     IEC2ConsultaField,
     IEC2ConsultaTable,
     IEC3ConsultaField,
     IEC3ConsultaTable,
     IEC4ConsultaField,
     IEC4ConsultaTable,
     IEDataCaption,
     IEDataField,
     IEDataTable: String[40];
     IEC1ConsultaWhere,
     IEC1ConsultaLike1,
     IEC1ConsultaLike2,
     IEC2ConsultaWhere,
     IEC2ConsultaLike1,
     IEC2ConsultaLike2,
     IEC3ConsultaWhere,
     IEC3ConsultaLike1,
     IEC3ConsultaLike2,
     IEC4ConsultaWhere,
     IEC4ConsultaLike1,
     IEC4ConsultaLike2: String[10];
     IEDataAnd,
     IEDataAndFK,
     TAB_COL,
     TAB_SQL: String[120];
     IEC1ConsultaAnd,
     IEC2ConsultaAnd,
     IEC3ConsultaAnd,
     IEC4ConsultaAnd,
     IEC5ConsultaAnd: String;
     Modelo,
     Tipo,
     Status,
     Nome,
     DEEmpresa: String[60];
     Titulo: String[120];
     CNPJEmpresa,
     CDArtigo,
     CDProduto,
     CEAN: String[20];
     IEDataText1,
     IEDataText2: TDate;
     TAGPrint,
     Perfil: Word;
     Handle,
     SyncMRecNo,
     SyncMRecordCount,
     SyncCRecNo,
     SyncCRecordCount,
     Copias,
     Pecas,
     ForDO: Integer;
     Quantidade,
     Estoque,
     Preco,
     Desconto,
     Total: Double;
     Editado: Boolean;
     FrmArea: TRect;
     FrmStyle: TFormStyle;
     FrmPosition: TPosition;
End;

Type TRECCadastros = record
     Tabela: String[30];
     Selected,
     Eof: Boolean;
     Id: Variant;
     Fantasia,
     Razao_Social: String[60];
     Ramo: String[120];
     Tipo: String[20];
     Porte: String[20];
     Limite: Double;
     IDCV: Integer;
     DECV: String[60];
     IDCR: Integer;
     DECR: String[60];
     DTCA,
     DTFU,
     DTMV: TDate;
     CNPJ: String[14];
     IE: String[20];
     INDIEDEST: String[1];
     REGIMETRIB: String[1];
     CREDICMS: String[1];
     ISUF: String[20];
     CPF: String[11];
     CONTATO: String[30];
     DDD: String[2];
     TELEFONE: String[9];
     FONE: String[14];
     EMAIL: String[60];
     FONE2: String[14];
     EMAIL2: String[60];
     FONE3: String[14];
     EMAIL3: String[60];
     CELULAR: String[14];
     EMAILCEL: String[60];
     ILGR: Integer;
     TLGR: String[15];
     XLGR: String[60];
     NRO: String[10];
     XCPL: String[40];
     CEP: String[9];
     XBAIRRO: String[40];
     XMUN: String[40];
     CMUN: String[7];
     UF: String[2];
     LE_ILGR: Integer;
     LE_TLGR: String[15];
     LE_XLGR: String[60];
     LE_NRO: String[10];
     LE_XCPL: String[40];
     LE_CEP: String[9];
     LE_XBAIRRO: String[40];
     LE_XMUN: String[40];
     LE_CMUN: String[7];
     LE_UF: String[2];
     CPAIS: Integer;
     XPAIS: String[60];
     INFADCAD: WideString;
     INFADFIN: WideString;
     IDST: Integer;
     DEST: String[30];
End;

Type TRECVendedores = record
     Id,
     IDEmpresa: Variant;
     Vendedor,
     Tipo,
     STCadastro: String[30];
     Nome: String[60];
     DTCadastro: TDate;
     DTAcesso: TDateTime;
     Limite: Word;
     Menu: String[3];
     Admin: String[1];
End;

Type TRECEndereco = record
     Id: LongInt;
     Tipo_Log: String[36];
     Logradouro: String[100];
     Logradouro_Abrev: String[36];
     Complemento: String[100];
     Cep: String[8];
     Bairro: String[72];
     Bairro_Abrev: String[36];
     Cidade: String[72];
     Cidade_Abrev: String[36];
     CMUN: String[7];
     IDUFE: Word;
     SGUFE: String[2];
     NOUFE: String[20];
     AFIELD: String[10]; { campo }
     AKEY: String[60];   { chave }
     Selected: Boolean;
End;

Type TRECProdutos = record
     Id,
     IDTingido,
     IDCor,
     IDCorTingido: Variant;
     CFOP,
     NCM: String[10];
     CEAN: String[20];
     CST,
     TabPreco: String[1];
     Artigo,
     Produto: String[20];
     CProd: String[60];
     Cor,
     CorTingido: String[30];
     XProd: String[120];
     UCom: String[6];
     Orig,
     Composicao: ShortString;
     InfAdProd: WideString;
     RCom,
     RSep: Word;
     QCom,
     QSep,
     VUNCom,
     VPrec,
     PDesc,
     VDesc,
     VProd,
     PIPI,
     Metr,
     Rend,
     Peso,
     PSCN: Double;
End;
TPTRProdutos = ^TRECProdutos;

Const
  WM_AFTER_CREATE    = WM_USER + 1; // custom message
  WM_SHOW            = WM_USER + 2; // custom message
  WM_AFTER_SHOW      = WM_USER + 3; // custom message
  WM_AFTER_ACTIVATE  = WM_USER + 4; // custom message
  WM_THREADMSG1 = WM_USER + 1;

  KEY_WOW64_64KEY = $0100;
  KEY_WOW64_32KEY = $00200;

  dllNFe = 'C:\Sheild\NotaFiscal\NFe.dll';

  olMailItem   = 0;
  olTo         = 1;
  olCC         = 2;
  olBCC        = 3;
  olImportanceLow = 0;
  olImportanceNormal = 1;
  olImportanceHigh = 2;
  olFormatPlain = 1;
  olFormatHTML  = 2;

  aSequenciaL: Array [1..12] of String = ('A','B','C','D','E','F','G',
                                          'H','I','J','K','L');
  aSequenciaN: Array [1..12] of String = ('1','2','3' ,'4' ,'5','6','7',
                                          '8','9','10','11','12');

  { Matriz para pesquisas avançadas
      aPesquisa[i,00] - Perfil
      aPesquisa[i,01] - Descrição
      aPesquisa[i,02] - Campo
      aPesquisa[i,03] - Default RGPesquisaCampo
      aPesquisa[i,04] - Default RGPesquisaLike
      aPesquisa[i,05] - Default IEDataCampo
      aPesquisa[i,06] - Default Tipo de Campo
      aPesquisa[i,07] - Where
      aPesquisa[i,08] - Like1
      aPesquisa[i,09] - Like2
      aPesquisa[i,10] - Texto
      aPesquisa[i,11] - Data Inicial
      aPesquisa[i,12] - Data Final
  }

  aPerfilPesquisa: Array[00..68,00..05] of String = (('Produtos'  ,'Código'               ,'ID'        ,'' ,'2','N'),
                                                     ('Produtos'  ,'Artigo'               ,'_CART'     ,'1','1','S'),  { Default = Artigo(1) }
                                                     ('Produtos'  ,'Produto'              ,'_CPRO'     ,'' ,'1','S'),  { Like    = Ambos(0)   Inicio (1) Exato(2) Final(3) }
                                                     ('Produtos'  ,'Descrição'            ,'_DPRO'     ,'' ,'1','S'),  { Tipo    = Numeros(N) String(S)  Datas(D) }
                                                     ('Produtos'  ,'Referencia Fornecedor','_CFOR'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Nome Fornecedor'      ,'_DEFO'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Coleção'              ,'_DCOL'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Grupo'                ,'_DGRP'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Sub Grupo'            ,'_DSGP'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Categoria'            ,'_DCAT'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Cor'                  ,'_DCOR'     ,'' ,'1','S'),
                                                     ('Produtos'  ,'Dt. Cadastro'         ,'_DCAD'     ,'' ,'' ,'D'),  { Default = Dt. Cadastro }
                                                     ('Produtos'  ,'Dt. Alteração'        ,'_DALT'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Entrada'          ,'_DENT'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Venda'            ,'_DULT'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Programado'       ,'_DPRG'     ,'' ,'' ,'D'),
                                                     ('Produtos'  ,'Dt. Compra'           ,'_DCOM'     ,'' ,'' ,'D'),
                                                     ('Cadastros' ,'Código'               ,'ID'        ,'' ,'2','N'),
                                                     ('Cadastros' ,'Fantasia'             ,'_FANT'     ,'1','0','S'),  
                                                     ('Cadastros' ,'Nota Fiscal'          ,'_CDNF'     ,'' ,'2','N'),
                                                     ('Cadastros' ,'Razão Social'         ,'_RAZA'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Grupo Comercial'      ,'_DEGP'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Cnpj'                 ,'_CNPJ'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Cpf'                  ,'_CPF'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'Fone'                 ,'_TEL1'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Celular'              ,'_CEL'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'Logradouro'           ,'_LOGR'     ,'' ,'0','S'),
                                                     ('Cadastros' ,'Bairro'               ,'_BAI'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'Cidade'               ,'_CID'      ,'' ,'0','S'),
                                                     ('Cadastros' ,'UF'                   ,'_ESTA'     ,'' ,'2','S'),
                                                     ('Cadastros' ,'Dt. Cadastro'         ,'_DCAD'     ,'' ,'' ,'D'),  
                                                     ('Cadastros' ,'Dt. Alteração'        ,'_DALT'     ,'' ,'' ,'D'),
                                                     ('Cadastros' ,'Dt. Venda'            ,'_DULT'     ,'' ,'' ,'D'),
                                                     ('Financeiro','Título'               ,'FIN_TITU'  ,'1','1','S'),
                                                     ('Financeiro','Fatura'               ,'FIN_DOCT'  ,'' ,'1','S'),
                                                     ('Financeiro','Container'            ,'FIN_CTNR'  ,'' ,'1','S'),  
                                                     ('Financeiro','Cód. Cliente'         ,'FIN_CCLI'  ,'' ,'2','N'),  
                                                     ('Financeiro','Fantasia'             ,'CLI_FANT'  ,'' ,'0','S'),
                                                     ('Financeiro','Razão Social'         ,'CLI_RAZA'  ,'' ,'0','S'),
                                                     ('Financeiro','Grupo Comercial'      ,'CLI_DEGP'  ,'' ,'0','S'),
                                                     ('Financeiro','Cnpj'                 ,'CLI_CNPJ'  ,'' ,'0','S'),
                                                     ('Financeiro','Vendedor'             ,'USU_DUSU'  ,'' ,'0','S'),
                                                     ('Financeiro','Representante'        ,'REP_FANT'  ,'' ,'0','S'),
                                                     ('Financeiro','Status Documento'     ,'FIN_STFI'  ,'' ,'0','S'),
                                                     ('Financeiro','Status Boleto'        ,'STINTEGRACAO','' ,'0','S'),
                                                     ('Financeiro','Dt. Fatura'           ,'FIN_DCAD'  ,'' ,'' ,'D'),  
                                                     ('Financeiro','Dt. Vencimento'       ,'FIN_DVEN'  ,'' ,'' ,'D'),
                                                     ('Financeiro','Dt. Pagamento'        ,'FIN_DPAG'  ,'' ,'' ,'D'),
                                                     ('Financeiro','Dt. Baixa'            ,'FIN_DBAI'  ,'' ,'' ,'D'),
                                                     ('Entradas'  ,'Romaneio'             ,'EST.ID'    ,'1','2','N'),  
                                                     ('Entradas'  ,'Documento'            ,'PRO_CDNF'  ,'' ,'1','S'),
                                                     ('Entradas'  ,'Container'            ,'PRO_CTNR'  ,'' ,'1','S'),
                                                     ('Entradas'  ,'Fornecedor'           ,'FOR_FANT'  ,'' ,'0','S'),
                                                     ('Entradas'  ,'Nº Etiqueta'          ,'PRO_CDET'  ,'' ,'0','S'),
                                                     ('Entradas'  ,'Artigo'               ,'PRO_CART'  ,'' ,'2','S'),
                                                     ('Entradas'  ,'Dt. Lancto'           ,'PRO_DCAD'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Pedido'               ,'ROM_DERO'  ,'1','0','S'),
                                                     ('Pedidos'   ,'Nota Fiscal'          ,'ROM_CDNF'  ,'' ,'2','N'),
                                                     ('Pedidos'   ,'Cliente'              ,'CLI_FANT'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Vendedor'             ,'USU_DUSU'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Representante'        ,'REP_FANT'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Transportadora'       ,'TRA_FANT'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Código Produto'       ,'PRO_CPRO'  ,'' ,'1','S'),
                                                     ('Pedidos'   ,'Descrição Produto'    ,'PRO_DPRO'  ,'' ,'0','S'),
                                                     ('Pedidos'   ,'Dt. Pedido'           ,'ROM_DROM'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Nota Fiscal'      ,'ROM_DNFS'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Separação'        ,'ROM_DROM'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Baixa'            ,'ROM_DBAI'  ,'' ,'' ,'D'),
                                                     ('Pedidos'   ,'Dt. Cancelamento'     ,'ROM_DCAN'  ,'' ,'' ,'D'));

aTiposPrecos: Array[00..07,00..01] of String = (('ATACADO - NORMAL'        ,'0'),
                                                ('ATACADO - PROMOÇÃO'      ,'1'),
                                                ('VAREJO - NORMAL'         ,'2'),
                                                ('VAREJO - PROMOÇÃO'       ,'3'),
                                                ('REPRESENTAÇÃO - NORMAL'  ,'4'),
                                                ('REPRESENTAÇÃO - PROMOÇÃO','5'),
                                                ('COMPRA'                  ,'6'),
                                                ('CUSTO'                   ,'7'));

aAlfabeto: Array[00..35,00..01] of String = (('A','0'),
                                             ('B','1'),
                                             ('C','2'),
                                             ('D','3'),
                                             ('E','4'),
                                             ('F','5'),
                                             ('G','6'),
                                             ('H','7'),
                                             ('I','8'),
                                             ('J','9'),
                                             ('K','10'),
                                             ('L','11'),
                                             ('M','12'),
                                             ('N','13'),
                                             ('O','14'),
                                             ('P','15'),
                                             ('Q','16'),
                                             ('R','17'),
                                             ('S','18'),
                                             ('T','19'),
                                             ('U','20'),
                                             ('V','21'),
                                             ('W','22'),
                                             ('X','23'),
                                             ('Y','24'),
                                             ('Z','25'),
                                             ('0','0'),
                                             ('1','1'),
                                             ('2','2'),
                                             ('3','3'),
                                             ('4','4'),
                                             ('5','5'),
                                             ('6','6'),
                                             ('7','7'),
                                             ('8','8'),
                                             ('9','9'));

  { Criptografia }
  Crypt1 = 52845;
  Crypt2 = 22719;

  { Numérica }
  Numeros = '0123456789';

  { Caracteres Especiais }

  iso    : array[0..93] of string = ( 'Æ',  'Á', 'Â',
                                      'Å',  'Ã', 'Ä',
                                      'Ç', 'Ð',    'É',
                                      'Ê',  'È', 'Í',
                                      'Î',  'Ì', 'Ï',
                                      'Ñ', 'Ô',  'Ò',
                                      'Ø', 'Ö',   'Þ',
                                      'Ú', 'Û',  'Ù',
                                      'Ü',   'Ý', 'á',
                                      'â',  'æ',  'à',
                                      'å',  'ã', 'ä',
                                      'ç', 'é', 'ê',
                                      'è', 'ð',    'ë',
                                      'í', 'î',  'ì',
                                      'ï',   'ñ', 'ó',
                                      'ô',  'ò', 'õ',
                                      'ö',   'ß',  'þ',
                                      'ú', 'û',  'ù',
                                      'ü',   'ý', '¡',
                                      '¢',   '£',   '¥',
                                      '¦',   '§',   '¨',
                                      '©',   '©',   'ª',
                                      '«',   '­',   '®',
                                      '®',    '¯',   '°',
                                      '±',   '²',   '³',
                                      '´',   'µ',   '¶',
                                      '·',   '¸',   '¹',
                                      'º',   '»',   '¼',
                                      '½',   '¾',   '¿',
                                      '×',   'Þ',   '÷',
                                      '&',    '<',     '>',
                                      '"'
                                     );


  aCarLW : Array[01..15] of String = ('á','â','ã','à','é','ê','í','ó','ô','õ','ú','ü','û','ç','ñ');
  aCarUP : Array[01..15] of String = ('Á','Â','Ã','À','É','Ê','Í','Ó','Ô','Õ','Ú','Ü','Û','Ç','Ñ');
  aCarEsp: Array[01..40] of String = ('á','à','ã','â','ä','Á','À','Ã','Â','Ä','é','è','ê','É','È','Ê','í','ì','Í','Ì','ó','ò','ö','õ','ô','Ó','Ò','Ö','Õ','Ô','ú','ù','ü','Ú','Ù','Ü','ç','Ç','ñ','Ñ');
  aCarTro: Array[01..40] of String = ('a','a','a','a','a','A','A','A','A','A','e','e','e','E','E','E','i','i','I','I','o','o','o','o','o','O','O','O','O','O','u','u','u','u','u','u','c','C','n','N');
  aCarExt: array[01..47] of string = ('<','>','!','@','#','$','%','¨','&','*','_','+','=','{','}','[',']','?',';',':',',','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿','®','½','¼','ß','µ','þ','ý','Ý','''');

  { de Calendário }
  aSemana  : Array[00..07] of String = ('','Domingo','Segunda Feira','Terça Feira','Quarta Feira','Quinta Feira','Sexta Feira','Sábado');
  aMes     : Array[00..12] of String = ('','Janeiro','Fevereiro'    ,'Março'      ,'Abril'       ,'Maio'        ,'Junho'      ,'Julho',
                                           'Agosto' ,'Setembro'     ,'Outubro'    ,'Novembro'    ,'Dezembro');
  { de Valor Por Extenso }
	aUnidades: Array[01..19] of String = ('Um'    ,'Dois'    ,'Tres'     ,'Quatro'      ,'Cinco'     ,'Seis'      ,'Sete'      ,'Oito'      ,'Nove'   ,
                                        'Dez'   ,'Onze'    ,'Doze'     ,'Treze'       ,'Quatorze'  ,'Quinze'    ,'Dezesseis' ,'Dezessete' ,'Dezoito','Dezenove');
	aDezenas : Array[02..09] of String = ('Vinte' ,'Trinta'  ,'Quarenta' ,'Cinquenta'   ,'Sessenta'  ,'Setenta'   ,'Oitenta'   ,'Noventa'                        );
  aCentenas: Array[01..09] of String = ('Cento' ,'Duzentos','Trezentos','Quatrocentos','Quinhentos','Seiscentos','Setecentos','Oitocentos','Novecentos'        );
	aMilhar  : Array[00..05] of String = ('','Mil','Milhao'  ,'Bilhao'   ,'Trilhao'     ,'Quatrilhao' );
	aMilhares: Array[00..05] of String = ('','Mil','Milhoes' ,'Bilhoes'  ,'Trilhoes'    ,'Quatrilhoes');

{ nfedlldel-v7.1.3-Rev1 - 24/02/2026 }
function GeraNFe(ide, emit, dest : Array of shortstring; detProd : ANFe;
                 total, transp, cobr, pag, infAdic, autXML : array of shortstring; assinar : boolean = false) : shortstring; StdCall; External dllNfe; far;

function AssinaArquivoXML(pathArquivo,tagURI : shortstring) : shortstring; stdcall; External dllNfe; far;

function GerarLote(idLote : integer; pathNFe : shortstring; listarArquivos : boolean = true) : integer; stdcall; External dllNfe; far;

function GeraDPEC(pathNFe : ShortString) : Integer;  stdcall; External dllNfe; far;

function GeraEPEC(pathNFe : ShortString) : Integer;  stdcall; External dllNfe; far;

function ImprimeDanfe(pathXML,pathPDF: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;

function ImprimeDanfeEscolheImp(pathXML,pathPDF,nomeImp: shortstring; tipoImp : integer; formSeguranca : boolean) : boolean; stdcall; External dllNfe; far;

function ImprimeDPEC(pathXML, pathPDF: ShortString; tipoImp : integer; nProtDpec: shortstring) : boolean; stdcall; External dllNfe; far;

function ImprimeEPEC(pathXML, pathPDF: ShortString; tipoImp : integer; nProtDpec: shortstring) : boolean; stdcall; External dllNfe; far;

function ImprimeCCe(pathCCe, pathPDF : shortstring; tipoImp : integer) : boolean; stdcall; External dllNfe; far;

function ValidarArquivoXML(pathArquivo : shortstring; schema : shortstring; exbForm : boolean = true) : ShortString; stdcall; External dllNfe; far;

function NfeStatusServico : shortstring; stdcall; External dllNfe; far;

function NFeRecepcao(pathLoteXML : shortstring) : shortstring; stdcall; External dllNfe; far

function NFeAutorizacao(pathLoteXML : shortstring) : WideString; stdcall; External dllNfe; far

function NfeRetAutorizacao(nRec : shortstring) : WideString; stdcall; External dllNfe; far

function RecepcaoDPEC(pathDPECXML : shortstring) : shortstring; stdcall; External dllNfe; far

function RecepcaoEPEC(pathDPECXML : shortstring) : shortstring; stdcall; External dllNfe; far

function NFeConsulta(chNFe : WideString) : WideString; stdcall; External dllNfe; far;

Function DPECConsulta(ChaveRegDPEC:ShortString):ShortString;stdcall external dllNfe; far;

function EPECConsulta(chaveRegEPEC : ShortString) : ShortString; stdcall; external dllNfe; far;

function NfeInutilizacao(ano, nNFIni, nNFFin, xJust : shortstring; serie : shortstring = '') : shortstring; stdcall; External dllNfe; far;

function NFeCancelamento(chNFe, nProt, xJust : shortstring) : shortstring; stdcall; External dllNfe; far;

function NFeCancelamentoEvento(chNFe, nProt, idLote, nSeqEvento,  xJust : shortstring) : shortstring; stdcall; External dllNfe; far;

function NfeRetRecepcao(nRec : shortstring) : boolean; stdcall; External dllNfe; far;

function ArquivoDistribuicaoNFe(chNFe : shortstring) : shortstring; stdcall; External dllNfe; far;

function EnviaEmail(emailDest, assunto, msg, pathFile : IString) : boolean; stdcall; External dllNfe; far; overload; //v6.3.2

function NFeCadastro(UF, CNPJ : shortstring) : IString; stdcall; External dllNfe; far; //v6.4.1

function GeraCCe(chnfe, seq, tpEvento, dhEvento : shortstring; xCorrecao : array of shortstring) : shortstring; stdcall; External dllNfe; far; //v6.4.1

function GeraManifestacao(chnfe, seq, tpEvento, dhEvento, xJust : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function NFeDistribuicaoDFe(DFechNFe, DFeNSU : ShortString; DFeultNSU : boolean)  : ShortString; stdcall; External dllNfe; far;

function ConsultaDest(indNFe, indEmi, ultNSU : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function DonwloadNFe(chNFe, pathNFe : ShortString) : ShortString; stdcall; External dllNfe; far; //v6.6.5

function CarregaFCI(pathXml, pathFile : shortstring) : boolean; stdcall; External dllNfe; far; //v6.6.5

function ConsultaVersao : ShortString; stdcall; external dllNfe; far;

function EventoEntrega(idLote, chNfe, seqEvento, dhEntrega, nDoc, xNome, latlongGps : shortstring) : shortstring; stdcall;  external dllNfe; far;

function EventoEntregaInsucesso(idLote, chNfe, seqEvento, dhEntregaTentativa, nTentativa, tpMotivo, xMotivo, latlongGps : shortstring) : shortstring; stdcall;  external dllNfe; far;

function VersaoDLL () : WideString; stdcall; external dllNfe; far;

function ImprimeDanfeSimplificado(pathXML : ShortString; tipoImp : integer; formSeguranca : boolean) : boolean;  stdcall;  external dllNfe; far;

function ConsultaGtin(chave : shortstring) : shortstring; stdcall; External dllNfe; far;

  { Biblioteca de Funções Gerais - Última Versão 13/03/2019 15:07 - oRefresh }
  Function oFillAllForm(ASender: TWinControl;ANotNull,ANotEnabled,AEnabled: Boolean): Boolean; STDCall;
  Function oTreeGetItem(var Sender: TTreeView; ItemList: TStrings): TTreeNode; STDCall;
  Function oTreeFindItem(var Sender: TTreeView; NodeItem: TTreeNode; Name: String): TTreeNode; STDCall;
  Function oTreeAddItem(var Sender: TTreeView; ItemList: TStrings; Bookmark: TBookmark; Resort: Boolean): TTreeNode; STDCall;
  Function oREPZero(ATexto,ATexto2: String; nInt,nTam: Integer): String; STDCall;
  Function oREPAcentos(ATexto: String): String; STDCall;
  Function oREPMemoEsp(ATexto: String): String; STDCall;
  Function oDELCharEsp(ATexto: String): String; STDCall;
  Function oREPApostrofos(ATexto: String;ASQLSelect: Boolean = False): String; STDCall;
  Function oREPLowerCase(ATexto: String): String; STDCall;
  Function oREPUpperCase(ATexto: String): String; STDCall;
  Function oREPPrimeiraLetraMaiuscula(ATexto: String): String; STDCall;
  Function oREPTXT(ATexto: String): String; STDCall;
  Function oTXTMemo(ATexto: String; Largura: Integer):TStringList; STDCall;
  Function oTXTBreakApart(BaseString,BreakString: String; StringList: TStringList): TStringList; STDCall;
  Function oTryStrToDate(AValue: String): Variant; STDCall;
  Function oRETDia(Data:TDateTime): Integer; STDCall;
  Function oRETMes(Data:TDateTime): Integer; STDCall;
  Function oRETAno(Data:TDateTime): Integer; STDCall;
  Function oRETDataExtenso(Data : TDate): String; STDCall;
  Function oRETDataBetWeen(Data: TDate;Dia: Integer;SouE: String): TDate; STDCall;
  Function oRETMesExtenso(Data : TDate): String; STDCall;
  Function oRETValorExtenso(Valor: Real) : String; STDCall;
  Function oPosCount(const ASubTexto: string; ATexto: string): Integer; STDCall;
  Function oCPF(ATexto: String): Boolean; STDCall;
  Function oCNPJ(ATexto: String): Boolean; STDCall;
  Function oCNPJouCPF(ATexto: String): Boolean; STDCall;
  Function oEMail(ATexto: String): Boolean; STDCall;
  Function oRETMaskCPF(ATexto: String): String; STDCall;
  Function oRETMaskCNPJ(ATexto: String): String; STDCall;
  Function oRETMaskCNPJouCPF(ATexto: String): String; STDCall;
  Function oRETMaskCepouFone(ATexto: String): String; STDCall;
  Function oRETBarCode(AIDProduto,ACDProduto: String): String; STDCall;
  Function oRETEAN13(ABarCode: String): String; STDCall;
  Function oRETComposicao(AComposicao: String; ATamMaxLin: Word = 55): String; STDCall;
  Function oRETQComposicao(AComposicao: String;AQTPos: Word): String; STDCall;
  Function oEncrypt(ATexto: String; Key: Word): String; STDCall;
  Function oDecrypt(ATexto: String; Key: Word): String; STDCall;
  Function oEmpty(AValue: Variant): Boolean; STDCall;
  Function oDecimalCount(AValor: Extended): Integer; STDCall;
  Function oDecimalDelete(AValor: Extended): Real; STDCall;
  Function oTruncValor(AValor: Double; ADigitos: Integer): Double; STDCall;
  Function oTrimValor(AValor: String;AReturning: TReturning = lrVariant): Variant; STDCall;
  Function oFloatToText(AValor: Extended; APrecisao,ADigitos: Word): String; STDCall;
  Function oCurrToText(AValor: Currency; APrecisao,ADigitos: Word): String; STDCall;
  Function oTextToValor(AValor: Variant; ADigitos: Word = 2;AXmlFormat: Boolean = False): Variant; STDCall;
  Function oAviso(AHandle: Integer; AMensagem: String): Integer; STDCall;
  Function oErro(AHandle: Integer; AMensagem: String): Integer; STDCall;
  Function oYesNo(AHandle: Integer; AMensagem: String): Integer; STDCall;
  Function oOkCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
  Function oYesNoCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
  Function oBWinMemory(WndTit : String): Boolean ; STDCall;
  Function oFileExec(Arquivo: String;Estado: Integer):Cardinal; STDCall;
  Function oRETNumero(ATexto: String): String ; STDCall;
  Function oEditNumero(Key: Char; ATexto: String; ADigitos: Boolean = False): Char; STDCall;
  Function oBSONumero(ATexto: String): Boolean; STDCall;
  Function oRETCodigo(ATexto: String): String ; STDCall;
  Function oRETRegiao(AUf,ACep: String): String ; STDCall;
  Function oRETXYPoint(var AControl: TObject): TPoint; STDCall;
  Function oPesquisaPerfil(APerfil,ACampo: String): String ; STDCall;
  Function oTdxDBGrid_ColumnWidth(AdxDBGrid: TdxDBGrid): Word; STDCall;
  Function oRETTiposPrecos(ATipoPreco: String): Word; STDCall;
  Function oFBException(AMensagem: String): String; STDCall;
  Function oRETFileSize(const AFileName: String): LongInt; STDCall;
  Function oGetPCNome: String; STDCall;
  Function oGetLinha(AValue: String;ADelimitador: String = ';'): String; STDCall;
  Function oUTF8ToStr(const AValue: AnsiString): WideString; STDCall;
  Function oStrToUTF8(const AValue: WideString): AnsiString; STDCall;
  Function oStrZero(nInt,nTam: Integer): String; STDCall;
  Function oStrTran(InString : String; Search: String; New: String): String; STDCall;
  Function oStrFormat(AValue,ACaracter: String; Size: Word; Local: TAlign): String; STDCall;
  Function oPadr(AString: String; AQuant: Integer): String; STDCall;
  Function oJPEGLoad(ACampo: TField; AImagem: TPicture;ARETPadrao: Boolean = True): LongInt; STDCall;
  function _oLoadJPG(FIMG_ID,FIMG_PAD: TField; AIMG_PAD: TObject;AIMG_PAD_SHOW: Boolean = False): String; STDCall;
  Function oBITMAPLoad(ACampo: TField; AImagem: TPicture): LongInt; STDCall;
  Function oNullIF(AValue: Variant): Variant; STDCall;
  Function oOdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''): String; STDCall;
  Function oRdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''): String; STDCall;
  Function oCdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''): String; STDCall;
  Function oLast(AIBSQL: TIBSQL): Integer; STDCAll;
  function oPrimeiraLetraMaiuscula(ATexto: String): String; STDCall;
  function oLowerCase(ATexto: String): String; STDCall;
  function oUpperCase(ATexto: String): String; STDCall;

  { Biblioteca de Procedures - Última Versão 21/09/2017 09:42 }
  Procedure oTreeDeleteItem(var Sender: TTreeView; ItemList: TStrings; Level: Integer); STDCall;

  procedure oState(AIBCustomDataSet: TIBCustomDataSet; ASpeedBar: TSpeedBar); STDCall;
  procedure oRefresh(AIBCustomDataSet: TIBCustomDataSet;ACommit: Boolean = True;AInsertValue: String = ''; ABMRecord: TBookMark = Nil); STDCAll;
  Procedure oAppend(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  Procedure oEdit(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  Procedure oDelete(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  Procedure oPost(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
  Procedure oCancel(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem,ABTNSaida: TSpeedItem); STDCall;
  Procedure oGrid_OptionsBehavior(AdxDBGrid: TdxDBGrid; AEditing: Boolean); STDCall;


  Procedure oSTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laNone)              ; STDCall;
  Procedure oOTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltRead_Committed ;ADefaultAction: TDefaultAction = laNone)              ; STDCall;
  Procedure oRTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laOpenEnableControls); STDCall;
  Procedure oCTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laNone)              ; STDCall;
  Procedure oFTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit         ;ADefaultAction: TDefaultAction = laClose)             ; STDCall;

  Procedure oFileCopy(ArqEnt,ArqSai: String); STDCall;
  Procedure oDirectoryDel(Pasta: String); STDCall;
  Procedure oRETFormatBancos(var Sender: TObject); STDCall;
  Procedure oFormatValorEnter(var Sender: TObject); STDCall;
  Procedure oFormatValorKeyDown(var Sender: TObject; var Key: Word); STDCall;
  Procedure oFormatValorKeyPress(var Sender: TObject; var Key: Char); STDCall;
  Procedure oFormatValor(var Sender: TObject); STDCall;
  Procedure oRETRateio(var ARECPrincipal: TRECPrincipal;ADigitos: Word = 2); STDCall;
  procedure oFillEdicao(var Sender: TIBQuery); STDCall;

  procedure oException(ASender: TWinControl;AMensagem: String;ATitulo: String = ''); STDCall;
  procedure oExceptionFocus(ASender: TWinControl); STDCall;
  procedure oLockWindowUpdate; STDCall;
  procedure oUnLockWindowUpdate; STDCall;

  procedure oIRECDefault(var ARECDefault: TRECDefault); STDCall;
  procedure oFRECDefault(var ARECDefault: TRECDefault); STDCall;

  procedure oRegister_Export; STDCall;
  procedure oRegister_Export_Usuario; STDCall;
  procedure oRegister_Import_Usuario(var ARECUSuarios: TRECUsuarios); STDCall;
  procedure oRegister_DEL_Email; STDCall;
  procedure oRegister_UPD_SizeFont(ACount: Word); STDCall;

var
  RECUsuarios      : TRECUsuarios;
  RECParametros    : TRECParametros;
  SLPrincipal      : TStringList;
  aNumeros         : Array[0..10] of Integer;
  aPesquisa        : Array of Array of String;
  sExtensoParcial  : String;
  sExtensoTotal    : String;
  Delimitador      : Integer;
  ALockWindowUpdate: LongBool;

  Aweek_start_date,
  Aweek_end_date: TDate;

implementation

{ Inicializa TRecord Default - Principal }
(*************************************************************)
procedure oIRECDefault(var ARECDefault: TRECDefault); STDCall;
(*************************************************************)
begin
  Initialize(ARECDefault);
  FillChar  (ARECDefault,SizeOf(ARECDefault),0);

  with ARECDefault do
  begin
     ID   := '0';
     IDEP := RECParametros.ID;
     
     IDPK := '0';
     IDFK := '0';

     IDAK := '0';
     IDEK := '0';

     IDEV := '0';
     CDEV := '0';

     { Pesquisa }
     PSQValue := '0' ;
     PSQField := 'ID';

     PSQDTField := EmptyStr;
     PSQDTINI   := 0;
     PSQDTFIM   := 0;

     { Motivos e Justificativas }
     Justificativa := TStringList.Create;
     Justificativa.Clear;
  end;
end;

{ Finaliza TRecord Default - Principal }
(*************************************************************)
procedure oFRECDefault(var ARECDefault: TRECDefault); STDCall;
(*************************************************************)
begin
  with ARECDefault do
  begin
    { Motivos e Justificativas }
    if Justificativa <> Nil then
       FreeAndNil(Justificativa);

    { IBX }
    if ASQLConsulta <> Nil  then
       ASQLConsulta := Nil;

    if ASQLEdicao <> Nil  then
       ASQLEdicao := Nil;
  end;

  Finalize(ARECDefault);
  FillChar(ARECDefault,SizeOf(ARECDefault),0);
end;

{ Consisteência dos campos }
(*******************************************************************************************************)
Function oFillAllForm(ASender: TWinControl;ANotNull,ANotEnabled,AEnabled: Boolean): Boolean; STDCall;
(*******************************************************************************************************)
var
   aEntrada : Array [0..500] of TControl;
   iLoop    : Integer;
   iIndice  : Integer;
   Objeto   : TWinControl;
   ObjetoAux: TWinControl;
   iWhile   : Integer;
begin
  Result  := False;
  objeto  := ASender;
  iIndice := 0;
  iWhile  := 0;

  for iLoop := 0 to 500 do
  aEntrada[iLoop] := Nil;

  for iLoop := 0 to (ASender.ControlCount - 1) do
  begin
    if (((ASender.Controls[iLoop] is TdxEdit) or
        (ASender.Controls[iLoop] is TdxDBEdit) or
        (ASender.Controls[iLoop] is TdxMaskEdit) or
        (ASender.Controls[iLoop] is TdxDBMaskEdit) or
        (ASender.Controls[iLoop] is TdxMemo) or
        (ASender.Controls[iLoop] is TdxDBMemo) or
        (ASender.Controls[iLoop] is TdxDateEdit) or
        (ASender.Controls[iLoop] is TdxDBDateEdit) or
        (ASender.Controls[iLoop] is TdxButtonEdit) or
        (ASender.Controls[iLoop] is TdxDBButtonEdit) or
        (ASender.Controls[iLoop] is TdxImageEdit) or
        (ASender.Controls[iLoop] is TdxDBImageEdit) or
        (ASender.Controls[iLoop] is TdxSpinEdit) or
        (ASender.Controls[iLoop] is TdxDBSpinEdit) or
        (ASender.Controls[iLoop] is TdxPickEdit) or
        (ASender.Controls[iLoop] is TdxDBPickEdit) or
        (ASender.Controls[iLoop] is TdxTimeEdit) or
        (ASender.Controls[iLoop] is TdxDBTimeEdit) or
        (ASender.Controls[iLoop] is TdxCurrencyEdit) or
        (ASender.Controls[iLoop] is TdxDBCurrencyEdit) or
        (ASender.Controls[iLoop] is TdxPopUpEdit) or
        (ASender.Controls[iLoop] is TdxDBPopUpEdit) or
        (ASender.Controls[iLoop] is TdxLookUpEdit) or
        (ASender.Controls[iLoop] is TdxDBLookUpEdit)) and
        (ASender.Controls[iLoop].HelpContext = 1)) then
    begin
       aEntrada[iIndice] := ASender.Controls[iLoop];
       inc (iIndice);
    end else
    if ((ASender.Controls[iLoop] is TGroupBox) or
        (ASender.Controls[iLoop] is TPanel) or
        (ASender.Controls[iLoop] is TRadioGroup) or
        (ASender.Controls[iLoop] is TdxPageControl) or
        (ASender.Controls[iLoop] is TdxTabSheet)) then
    begin
      if ASender.Controls[iLoop] is TGroupBox then
      Objeto := ASender.Controls[iLoop] as TGroupBox;

      if ASender.Controls[iLoop] is TPanel then
      Objeto := ASender.Controls[iLoop] as TPanel;

      if ASender.Controls[iLoop] is TRadioGroup then
      Objeto := ASender.Controls[iLoop] as TRadioGroup;

      if ASender.Controls[iLoop] is TdxPageControl then
      Objeto := ASender.Controls[iLoop] as TdxPageControl;

      if ASender.Controls[iLoop] is TdxTabSheet then
      Objeto := ASender.Controls[iLoop] as TdxTabSheet;

      oFillAllForm(Objeto,ANotNull,ANotEnabled,AEnabled);
    end;
  end;

  if  iIndice <> 0 then
  for iLoop := 0 to (iIndice - 1) do
  begin
    if not (aEntrada[iLoop] is TRadioGroup) then
    begin
       if ((aEntrada[iLoop] is TdxEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxEdit(aEntrada[iLoop]).Text)) and (TdxEdit(aEntrada[iLoop]).Enabled) and (TdxEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBEdit(aEntrada[iLoop]).Text)) and (TdxDBEdit(aEntrada[iLoop]).Enabled) and (TdxDBEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxMaskEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxMaskEdit(aEntrada[iLoop]).Text)) and (TdxMaskEdit(aEntrada[iLoop]).Enabled) and (TdxMaskEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxMaskEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxMaskEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBMaskEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBMaskEdit(aEntrada[iLoop]).Text)) and (TdxDBMaskEdit(aEntrada[iLoop]).Enabled) and (TdxDBMaskEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBMaskEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBMaskEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxMemo)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxMemo(aEntrada[iLoop]).Text)) and (TdxMemo(aEntrada[iLoop]).Enabled) and (TdxMemo(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxMemo(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxMemo(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBMemo)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBMemo(aEntrada[iLoop]).Text)) and (TdxDBMemo(aEntrada[iLoop]).Enabled) and (TdxDBMemo(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBMemo(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBMemo(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDateEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDateEdit(aEntrada[iLoop]).Text)) and (TdxDateEdit(aEntrada[iLoop]).Enabled) and (TdxDateEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDateEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDateEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBDateEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBDateEdit(aEntrada[iLoop]).Text)) and (TdxDBDateEdit(aEntrada[iLoop]).Enabled) and (TdxDBDateEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBDateEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBDateEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxButtonEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxButtonEdit(aEntrada[iLoop]).Text)) and (TdxButtonEdit(aEntrada[iLoop]).Enabled) and (TdxButtonEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxButtonEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxButtonEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBButtonEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBButtonEdit(aEntrada[iLoop]).Text)) and (TdxDBButtonEdit(aEntrada[iLoop]).Enabled) and (TdxDBButtonEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBButtonEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBButtonEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxImageEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxImageEdit(aEntrada[iLoop]).Text)) and (TdxImageEdit(aEntrada[iLoop]).Enabled) and (TdxImageEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxImageEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxImageEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBImageEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBImageEdit(aEntrada[iLoop]).Text)) and (TdxDBImageEdit(aEntrada[iLoop]).Enabled) and (TdxDBImageEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBImageEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBImageEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxSpinEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxSpinEdit(aEntrada[iLoop]).Text)) and (TdxSpinEdit(aEntrada[iLoop]).Enabled) and (TdxSpinEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxSpinEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxSpinEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBSpinEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBSpinEdit(aEntrada[iLoop]).Text)) and (TdxDBSpinEdit(aEntrada[iLoop]).Enabled)  and (TdxDBSpinEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBSpinEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBSpinEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxPickEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxPickEdit(aEntrada[iLoop]).Text)) and (TdxPickEdit(aEntrada[iLoop]).Enabled) and (TdxPickEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxPickEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxPickEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBPickEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBPickEdit(aEntrada[iLoop]).Text)) and (TdxDBPickEdit(aEntrada[iLoop]).Enabled) and (TdxDBPickEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBPickEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBPickEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxTimeEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxTimeEdit(aEntrada[iLoop]).Text)) and (TdxTimeEdit(aEntrada[iLoop]).Enabled) and (TdxTimeEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxTimeEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxTimeEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBTimeEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBTimeEdit(aEntrada[iLoop]).Text)) and (TdxDBTimeEdit(aEntrada[iLoop]).Enabled) and (TdxDBTimeEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBTimeEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBTimeEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxCurrencyEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxCurrencyEdit(aEntrada[iLoop]).Text)) and (TdxCurrencyEdit(aEntrada[iLoop]).Enabled) and (TdxCurrencyEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxCurrencyEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxCurrencyEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBCurrencyEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBCurrencyEdit(aEntrada[iLoop]).Text)) and (TdxDBCurrencyEdit(aEntrada[iLoop]).Enabled) and (TdxDBCurrencyEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBCurrencyEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBCurrencyEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxPopUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxPopUpEdit(aEntrada[iLoop]).Text)) and (TdxPopUpEdit(aEntrada[iLoop]).Enabled) and (TdxPopUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxPopUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxPopUpEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBPopUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBPopUpEdit(aEntrada[iLoop]).Text)) and (TdxDBPopUpEdit(aEntrada[iLoop]).Enabled) and (TdxDBPopUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBPopUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBPopUpEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxLookUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxLookUpEdit(aEntrada[iLoop]).Text)) and (TdxLookUpEdit(aEntrada[iLoop]).Enabled) and (TdxLookUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxLookUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxLookUpEdit(aEntrada[iLoop]).Enabled := True;
       end;

       if ((aEntrada[iLoop] is TdxDBLookUpEdit)) then
       begin
         if ANotNull then
         Result := ((oEmpty(TdxDBLookUpEdit(aEntrada[iLoop]).Text)) and (TdxDBLookUpEdit(aEntrada[iLoop]).Enabled) and (TdxDBLookUpEdit(aEntrada[iLoop]).Tag = 1));
         if ANotEnabled then
         TdxDBLookUpEdit(aEntrada[iLoop]).Enabled := False;
         if AEnabled then
         TdxDBLookUpEdit(aEntrada[iLoop]).Enabled := True;
       end;
    end else
    if (TDBRadioGroup(aEntrada[iLoop]).Itemindex = -1) and
       (TDBRadioGroup(aEntrada[iLoop]).Enabled = True) then
    Result := True;

    if ((Result) and (ANotNull)) then
    begin
      oErro(ASender.handle,GetShortHint(TWinControl(aEntrada[iLoop]).Hint)+#13+'Campo Obrigatório.');
      ObjetoAux := ASender.parent;
      while (ObjetoAux is TPanel) or
            (ObjetoAux is TGroupBox) or
            (ObjetoAux is TRadioGroup) do
      begin
        inc(iWhile);
        ObjetoAux := ASender.Parent;
        if (objeto is TdxTabSheet) or
           (iWhile > 500) then
        Break;
      end;

      if ObjetoAux is TdxTabSheet then
      TdxPageControl(TdxTabSheet(ObjetoAux).Parent).Activepage := TdxTabSheet(ObjetoAux);

      TWinControl(aEntrada[iLoop]).SetFocus;
      Abort;
    end;
  end;
end;

{ Exclui Item }
(********************************************************************************************)
Procedure oTreeDeleteItem(var Sender: TTreeView; ItemList: TStrings; Level: Integer); STDCall;
(********************************************************************************************)
var
  Node,Parent: TTreeNode;
begin
  Node := oTreeGetItem(Sender, ItemList);
  while Node.level >= Level do
  begin
    Parent := Node.parent;
    Node.delete;
    if (Parent = Nil) or (Parent.hasChildren) then Break;
    Node := Parent;
  end;
end;

{ Pega o nó da arvore }
(***********************************************************************************)
Function oTreeGetItem(var Sender: TTreeView; ItemList: TStrings): TTreeNode; STDCall;
(***********************************************************************************)
begin
  Result := oTreeAddItem(Sender, ItemList, Nil, false);
end;

{ Adiciona Itens }
(*************************************************************************************************************************)
Function oTreeAddItem(var Sender: TTreeView; ItemList: TStrings; Bookmark: TBookmark; Resort: Boolean): TTreeNode; STDCall;
(*************************************************************************************************************************)
var
  ThisNode,Node: TTreeNode;
  i: Integer;
begin
  Node := Nil;

  for i := 0 to ItemList.count -1 do
  begin
    ThisNode := oTreeFindItem(Sender, node, ItemList[i]);

    if ThisNode <> Nil then Node := ThisNode else
    begin
      if i < ItemList.count -1 then
      begin
        if i = 0 then
        Node := Sender.items.Add(Node, ItemList[i]) else
        Node := Sender.items.AddChild(Node, ItemList[i]);
      end else
      begin
        if i = 0 then
        Node := Sender.items.AddObject(Node, ItemList[i], Bookmark) else
        Node := Sender.items.AddChildObject(Node, ItemList[i], Bookmark);
      end;

      Node.stateIndex := Node.level + 1;
      if Resort and (Node.parent <> Nil) then
      Node.parent.alphasort;
    end;
  end;

  Result := Node;
end;

{ Pesquisa Itens }
(***************************************************************************************************)
Function oTreeFindItem(var Sender: TTreeView; NodeItem: TTreeNode; Name: String): TTreeNode; STDCall;
(***************************************************************************************************)
begin
  if NodeItem =  Nil then
  NodeItem := Sender.Items.GetFirstNode else
  NodeItem := NodeItem.GetFirstChild;

  if (NodeItem <> Nil) and (NodeItem.text <> Name) then
  repeat NodeItem := NodeItem.GetNextSibling;
  until (NodeItem = Nil) or (NodeItem.text = Name);

  Result := NodeItem;
end;

{ ir até o último registro  }
(***********************************************)
Function oLast(AIBSQL: TIBSQL): Integer; STDCAll;
(***********************************************)
begin
  result := 0;
  while not AIBSQL.Eof do
  begin
    result := result + 1;
    AIBSQL.Next;
  end;  
end;

{ Propriedade SpeedBar de Edição }
(**********************************************************************************)
procedure oState(AIBCustomDataSet: TIBCustomDataSet; ASpeedBar: TSpeedBar); STDCall;
(**********************************************************************************)
var
  i: Word;
begin
  if (not ALockWindowUpdate) then
  if (ASpeedBar.Enabled) and (ASpeedBar.Visible) then
  begin
    for i := 0 to ASpeedBar.ItemsCount(0)  -  1 do
    if ASpeedBar.Items(0,i).GroupIndex =  0 then
    if ASpeedBar.Items(0,i).Tag        <> 9 then { não mexe com quem tá quieto }
    begin
      ASpeedBar.Items(0,i).Enabled := ((AIBCustomDataSet.State = dsBrowse)           and (ASpeedBar.Items(0,i).Tag = 0)) or
                                      ((AIBCustomDataSet.State = dsBrowse)           and (ASpeedBar.Items(0,i).Tag = 1)) or
                                      ((AIBCustomDataSet.State in [dsInsert,dsEdit]) and (ASpeedBar.Items(0,i).Tag = 2));

      if TAction(ASpeedBar.Items(0,i).Action) <> Nil then
         TAction(ASpeedBar.Items(0,i).Action).Enabled := ASpeedBar.Items(0,i).Enabled;
    end;
  end;
end;

{ Refresh Records }
(********************************************************************************************************************************************)
procedure oRefresh(AIBCustomDataSet: TIBCustomDataSet;ACommit: Boolean = True;AInsertValue: String = ''; ABMRecord: TBookMark = Nil); STDCall;
(********************************************************************************************************************************************)
begin
  if (AIBCustomDataSet <> Nil) and (not ALockWindowUpdate) then
  if not (AIBCustomDataSet.State in [dsInsert,dsEdit]) then
  begin
    if ABMRecord = Nil then
    if AIBCustomDataSet.State  = dsBrowse then
    if AIBCustomDataSet.RecNo > 0 then
       ABMRecord := AIBCustomDataSet.GetBookmark;

    if ACommit then
       oRTransact(AIBCustomDataSet.Transaction,ltRead_Only_Release_Commit) else
       oRTransact(AIBCustomDataSet.Transaction,ltRead_Only_Release_Rollback);

    if AIBCustomdataSet.State = dsInactive then
       AIBCustomdataSet.Open;

    if AIBCustomDataSet.RecNo = 0 then
    begin
      AIBCustomDataSet.FreeBookmark(ABMRecord);
      ABMRecord := Nil;
    end;

    if AInsertValue <> EmptyStr then
       AIBCustomdataSet.Locate('Descricao',AInsertValue,[]) else
    begin
      if ABMRecord <> Nil then
      begin
        AIBCustomDataSet.GotoBookmark(ABMRecord);
        AIBCustomDataSet.FreeBookmark(ABMRecord);
      end else
      AIBCustomDataSet.Last;
    end;
  end;
end;

{ Append Registros }
(**************************************************************************************************)
Procedure oAppend(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(**************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State = dsBrowse) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Append;
  end;
end;

{ Altera Edição Registros }
(************************************************************************************************)
Procedure oEdit(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State = dsBrowse) and (not AIBCustomDataSet.Fields[0].IsNull) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Edit;
  end;
end;

{ Delete Registros }
(**************************************************************************************************)
Procedure oDelete(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(**************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State = dsBrowse) and (not AIBCustomDataSet.Fields[0].IsNull) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Delete;
  end;
end;

{ Grava Edição Registros }
(************************************************************************************************)
Procedure oPost(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem: TSpeedItem); STDCall;
(************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State in [dsInsert,dsEdit]) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Post;
  end;
end;

{ Cancela Edição Registros }
(*********************************************************************************************************************)
Procedure oCancel(AIBCustomDataSet: TIBCustomDataSet; AdxDBGrid: TdxDBGrid; ASpeedItem,ABTNSaida: TSpeedItem); STDCall;
(*********************************************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if ASpeedItem.Owner is TForm then
  Form := ASpeedItem.Owner as TForm;
  if Form <> Nil then
  with Form do
  if (ASpeedItem.Enabled) and (ASpeedItem.Visible) and (AIBCustomDataSet.State in [dsInsert,dsEdit]) then
  begin
    AdxDBGrid.SetFocus;
    AIBCustomDataSet.Cancel;
  end else
  if ABTNSaida <> Nil then
     ABTNSaida.Click;
end;

{ Habilita ou desabilita Edição automática do Grid }
(*************************************************************************************)
Procedure oGrid_OptionsBehavior(AdxDBGrid: TdxDBGrid; AEditing: Boolean); STDCall;
(*************************************************************************************)
var
  Form: TForm;
begin
  { Descobre quem é o pai da criança }
  Form := Nil;
  if AdxDBGrid.Owner is TForm then
  Form := AdxDBGrid.Owner as TForm;
  if Form <> Nil then
  with Form do
  begin
    if AEditing then
       AdxDBGrid.OptionsBehavior := ([edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEditing,edgoEnterShowEditor,
                                      edgoImmediateEditor,edgoSeekDetail    ,edgoShowHourGlass,edgoTabThrough,edgoVertThrough])
    else
       AdxDBGrid.OptionsBehavior := ([edgoAutoSearch     ,edgoAutoSort       ,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,
                                      edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail     ,edgoShowHourGlass  ,edgoTabThrough  ,edgoVertThrough]);

    Application.ProcessMessages;
  end;
end;

{ Abre database }
(******************************************************************************************************************)
Function oOdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''): String; STDCall;
(******************************************************************************************************************)
begin
  result := '';
  if not Adatabase.TestConnected then
     try
       with Adatabase do
       try
         if not oEmpty(Adatabasename) then
         begin
           databasename := '';
           databasename := PChar(Adatabasename);
         end;

         Connected := True;
       except
         result := 'Erro ao tentar abertura de conexão com o banco de dados ! '+FormatDateTime('dd/mm/yy hh:mm:ss',Now)+#13+
                   'Banco de Dados: '+databasename;
       end;
     finally
       if ((not oEmpty(result)) and (AWarning = lwShowWarning)) then
            oException(Nil,result);
     end;
end;

{ Re-Abre database }
(******************************************************************************************************************)
Function oRdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''): String; STDCall;
(******************************************************************************************************************)
begin
  result := oCdatabase(Adatabase,AWarning,Adatabasename);
  if oEmpty(result) then
     result := oOdatabase(Adatabase,AWarning,Adatabasename);
end;

{ Fecha database }
(******************************************************************************************************************)
Function oCdatabase(Adatabase: TIBdatabase;AWarning: TWarning = lwNone;Adatabasename: String = ''): String; STDCall;
(******************************************************************************************************************)
var
  i: Word;
begin
  result := '';
  if Adatabase.TestConnected then
     try
       with Adatabase do
       try
         CloseDataSets;
         for i := 0 to Pred(TransactionCount) do
             if Transactions[i].InTransaction then
                Transactions[i].Commit;
         Connected := False;
         ForceClose;
       except
         result := 'Erro ao tentar fechamento de conexão com o banco de dados ! '+FormatDateTime('dd/mm/yy hh:mm:ss',Now)+#13+
                   'Banco de Dados: '+databasename;
       end;
     finally
       if ((not oEmpty(result)) and (AWarning = lwShowWarning)) then
            oException(Nil,result);
     end;       
end;

{ Seta Controles das Querys }
(********************************************************************************************************************************************************)
Procedure oSTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laNone); STDCall;
(********************************************************************************************************************************************************)
var
  Component: TComponent;
  i   : Word;
  Nome: String;
begin
  if ADefaultTransaction   = ltRead_Only then oLockWindowUpdate;
  if ((ADefaultTransaction = ltRead_Only_Release_Commit) or (ADefaultTransaction = ltRead_Only_Release_Rollback)) then oUnLockWindowUpdate;

  if ADefaultAction <> laNone then
  try
    Component := AIBTransaction.Owner;
    with Component do
         for i := 0 to ComponentCount - 1 do
         begin
           if Components[i].ClassType = TIBSQL then
              if TIBSQL(Components[i]).Transaction = AIBTransaction then
                 Case ADefaultAction of
                   laCloseEnableControls,laCloseDisableControls,
                   laClose: begin
                              Nome := TIBSQL(Components[i]).Name;
                              TIBSQL(Components[i]).Close;
                              TIBSQL(Components[i]).Unprepare;
                            end;
                 end;

           if ((Components[i].ClassType = TIBQuery) or (Components[i].ClassType = TIBDataSet) or (Components[i].ClassType = TIBTable)) then
                if TIBCustomDataSet(Components[i]).Transaction = AIBTransaction then
                begin
                  Nome := TIBCustomDataSet(Components[i]).Name;
                  Case ADefaultAction of
                    laEnableControls ,laOpenEnableControls ,laCloseEnableControls : TIBCustomDataSet(Components[i]).EnableControls;
                    laDisableControls,laOpenDisableControls,laCloseDisableControls: TIBCustomDataSet(Components[i]).DisableControls;
                  end;

                  Case ADefaultAction of
                    laOpenEnableControls,laOpenDisableControls,
                    laOpen:  if ((TIBCustomDataSet(Components[i]).Tag = 1) and (TIBCustomDataSet(Components[i]).State = dsInactive)) then
                             begin
                               if Components[i].ClassType = TIBQuery   then
                                  TIBQuery(Components[i]).Prepare;
                               if Components[i].ClassType = TIBDataSet then
                                  TIBDataSet(Components[i]).Prepare;
                               TIBCustomDataSet(Components[i]).Open;
                             end;
                    laCloseEnableControls,laCloseDisableControls,
                    laClose: begin
                               TIBCustomDataSet(Components[i]).Close;
                               if Components[i].ClassType = TIBQuery   then
                                  TIBQuery(Components[i]).UnPrepare;
                               if Components[i].ClassType = TIBDataSet then
                                  TIBDataSet(Components[i]).UnPrepare;
                             end;
                  end;
                end;
         end;
  except
    oUnLockWindowUpdate;
  end;
end;

{ Abre Transação }
(****************************************************************************************************************************************************************)
Procedure oOTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltRead_Committed;ADefaultAction: TDefaultAction = laNone); STDCall;
(****************************************************************************************************************************************************************)
begin
  if AIBTransaction <> Nil then
  try
    if not AIBTransaction.InTransaction then
       AIBTransaction.StartTransaction;

    if ADefaultAction <> laOpenDisableControls then
       if ADefaultTransaction = ltRead_Only then
          ADefaultAction := laDisableControls;

    oSTransact(AIBTransaction,ADefaultTransaction,ADefaultAction);
  except
    oUnLockWindowUpdate;
  end;
end;

{ Reabre transação }
(**********************************************************************************************************************************************************************)
Procedure oRTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laOpenEnableControls); STDCall;
(**********************************************************************************************************************************************************************)
begin
  if ADefaultTransaction = ltRead_Only then
     ADefaultAction := laOpenDisableControls;

  try     oCTransact(AIBTransaction,ADefaultTransaction,laClose);
  finally oOTransact(AIBTransaction,ADefaultTransaction,ADefaultAction);
  end;
end;

{ Fecha Transação }
(********************************************************************************************************************************************************)
Procedure oCTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laNone); STDCall;
(********************************************************************************************************************************************************)
begin
  if AIBTransaction <> Nil then
     if AIBTransaction.InTransaction then
     try
       oSTransact(AIBTransaction,ADefaultTransaction,ADefaultAction);
       Case ADefaultTransaction of
         ltRead_Only_Release_Commit  ,
         ltCommit                    : AIBTransaction.Commit;
         ltCommitRetaining           : AIBTransaction.CommitRetaining;
         ltRead_Only_Release_Rollback,
         ltRollback                  : AIBTransaction.Rollback;
         ltRollbackRetaining         : AIBTransaction.RollbackRetaining;
       end;
     except
       oUnLockWindowUpdate;
     end;
end;

{ Fecha Todas as transações }
(*********************************************************************************************************************************************************)
Procedure oFTransact(AIBTransaction: TIBTransaction;ADefaultTransaction: TDefaultTransaction = ltCommit;ADefaultAction: TDefaultAction = laClose); STDCall;
(*********************************************************************************************************************************************************)
var
  Component: TComponent;
  i: Word;
begin
  Component := AIBTransaction.Owner;
  with Component do
       for i := 0 to ComponentCount - 1 do
           if (Components[i]).ClassName = 'TIBTransaction' then
           begin
             AIBTransaction.Tag := 0;
             oCTransact(TIBTransaction(Components[i]),ADefaultTransaction,ADefaultAction);
           end;
end;

{ Alinha String }
(****************************************************************************************)
Function oStrFormat(AValue,ACaracter: String; Size: Word; Local: TAlign): String; STDCall;
(****************************************************************************************)
var
  i: Integer;
begin
  AValue := Trim(AValue);
  Result := Copy(AValue,1,Size);
  for i := Length( AValue ) to Size - 1 do
      case Local of
        lcLeft  : Result := ACaracter + Result;
        lcRight : Result := Result    + ACaracter;
        lcCenter: if (i mod 2) = 0 then Result := Result + ACaracter else
                                        Result := ACaracter + Result;
      end;
end;

{ Preencher com zeros à esquerda }
(****************************************************)
Function oStrZero(nInt,nTam: Integer):String; STDCall;
(****************************************************)
var
  x : String;
  nI: Integer;
begin
  For nI := 1 To nTam Do x := x + '0';
      x  := x + IntToStr(nInt);

  if nInt > 0 then
  Result := Trim(Copy(x,Length(x)-nTam+1,nTam)) else
  Result := '';
end;

{ Retorna 0 a Direita }
(****************************************************************)
Function oPadr(AString: String; AQuant: Integer): String; STDCall;
(****************************************************************)
begin
  Result := AString;
  AQuant  := AQuant - Length(Result);
  if AQuant > 0 then
  Result := Result + StringOfChar('0', AQuant);
end;

{ Substitui caracteres selecionados }
(*******************************************************************************)
Function oStrTran(InString: String;Search: String; New: String): String; STDCall;
(*******************************************************************************)
begin
  Search   := Trim(Search);
  New      := Trim(New);
  InString := Trim(InString);
  result   := Trim(StringReplace(InString,Search,New,[rfreplaceall]));
end;

{ Preencher com textos zeros à esquerda }
(******************************************************************************)
Function  oREPZero(ATexto,ATexto2: String; nInt,nTam: Integer): String; STDCall;
(******************************************************************************)
begin
  Result := Trim(ATexto);
  if nInt > 1 then
  Result := Trim(ATexto+ATexto2+oStrZero(nInt,3));
end;

{ Substitui acentos }
(****************************************************)
Function oREPAcentos(ATexto: String): String; STDCall;
(****************************************************)
var
  i: Word;
begin
  ATexto := Trim(ATexto);
  for i  := 1 to 40 do
  ATexto := StringReplace(ATexto, aCarEsp[i],aCarTro[i],[rfreplaceall]);
  Result := Trim(ATexto);
end;

{ Substitui Apostrofos}
(***********************************************************************************)
Function oREPApostrofos(ATexto: String;ASQLSelect: Boolean = False): String; STDCall;
(***********************************************************************************)
var
  NewStr: String;
begin
  NewStr := IFThen(ASQLSelect,QuotedStr(''' '),''' ');
  ATexto := Trim(ATexto);
  ATexto := StringReplace(ATexto,Char(39),NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'¨'     ,NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'"'     ,NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'´'     ,NewStr,[rfReplaceAll]);
  ATexto := StringReplace(ATexto,'`'     ,NewStr,[rfReplaceAll]);
  Result := Trim(ATexto);
end;

{ Exclui caracteres especiais }
(****************************************************)
Function oDELCharEsp(ATexto: String): String; STDCall;
(****************************************************)
var
  i: Word;
begin
  ATexto := Trim(ATexto);
  for i  := 1 to 49 do
  ATexto := StringReplace(ATexto,aCarExt[i],' ',[rfreplaceall]);
  ATexto := StringReplace(ATexto,Char(39)  ,' ',[rfReplaceAll]);
  Result := Trim(ATexto);
end;

{ Limpa a string retirando os caracters especiais e inválidos }
(*************************************************************)
Function oREPMemoEsp(ATexto: String): String; STDCall;
(*************************************************************)
begin
  ATexto := StringReplace(ATexto,Char(0)   ,' ',[rfReplaceAll]);
  ATexto := StringReplace(ATexto,''#$D#$A'',' ',[rfReplaceAll]);
  ATexto := StringReplace(ATexto,''#$D''   ,' ',[rfReplaceAll]);
  ATexto := StringReplace(ATexto,''#$A''   ,' ',[rfReplaceAll]);
  Result := Trim(ATexto);
end;

{ Converte para minúsculo - Considera Acentos }
(******************************************************)
Function oREPLowerCase(ATexto: String): String; STDCall;
(******************************************************)
var
  i: Word;
begin
  ATexto := Trim(LowerCase(ATexto));
  for i  := 1 to High(aCarUP) do
  ATexto := StringReplace(ATexto, aCarUP[i],aCarLW[i],[rfreplaceall]);
  result := Trim(ATexto);
end;

{ Converte para maiúsculo - Considera Acentos }
(******************************************************)
Function oREPUpperCase(ATexto: String): String; STDCall;
(******************************************************)
var
  i: Word;
begin
  ATexto := Trim(UpperCase(ATexto));
  for i  := 1 to High(aCarLW) do
  ATexto := StringReplace(ATexto, aCarLW[i],aCarUP[i],[rfreplaceall]);
  result := Trim(ATexto);
end;

{ Formata String }
(*******************************************************************)
Function oREPPrimeiraLetraMaiuscula(ATexto: String): String; STDCall;
(*******************************************************************)
var
  i: Integer;
begin
  ATexto :=  oREPLowerCase(ATexto);
  for i  :=  1 to Length(ATexto) do
      if i = 1 then ATexto[i] := UpCase(ATexto[i]) else
      if i <> Length(ATexto) then
      if (ATexto[i] = ' ') then
      if (ATexto[i+1]+ATexto[i+2]+ATexto[i+3] <> 'de ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'por ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'pôr ') and (not oEmpty(ATexto[i+2])) then
      ATexto[i+1] := UpCase(ATexto[i+1]) else
      ATexto[i+1] := ATexto[i+1];
  Result := ATexto;
end;

{ Limpa as sugeiras (-./) de uma string }
(************************************************)
Function oREPTXT(ATexto: String): String; STDCall;
(************************************************)
begin
  ATexto := Trim(ATexto);

  While Pos(' ',ATexto) <> 0 Do
  Delete(ATexto,Pos(' ',ATexto),1);

  While Pos('-',ATexto) <> 0 Do
  Delete(ATexto,Pos('-',ATexto),1);

  While Pos('_',ATexto) <> 0 Do
  Delete(ATexto,Pos('_',ATexto),1);

  While Pos('=',ATexto) <> 0 Do
  Delete(ATexto,Pos('=',ATexto),1);

  While Pos('.',ATexto) <> 0 Do
  Delete(ATexto,Pos('.',ATexto),1);

  While Pos(',',ATexto) <> 0 Do
  Delete(ATexto,Pos(',',ATexto),1);

  While Pos(';',ATexto) <> 0 Do
  Delete(ATexto,Pos(';',ATexto),1);

  While Pos('/',ATexto) <> 0 Do
  Delete(ATexto,Pos('/',ATexto),1);

  While Pos('\',ATexto) <> 0 Do
  Delete(ATexto,Pos('\',ATexto),1);

  While Pos('|',ATexto) <> 0 Do
  Delete(ATexto,Pos('|',ATexto),1);

  result := Trim(ATexto);
end;

{ Imprime ATexto com quebra de linha }
(***********************************************************************)
Function oTXTMemo(ATexto: String; Largura: Integer):TStringList; STDCall;
(***********************************************************************)
var
  Original,Quebrado: TStringList;
  i,esp: Integer;
  Frase  : String;
begin
  ATexto   := oREPMemoEsp(ATexto);
  Original := TStringList.Create;
  Quebrado := TStringList.Create;
  Esp      := Largura;
  
  oTXTBreakApart(ATexto,' ',Original);

  Frase := '';
  for i := 0 to Original.Count - 1 do
  begin
    if Length(Frase) = Esp then
    begin
      Quebrado.Add(Frase);
      Frase := '';
    end;
    if( Length(Frase+' '+Original.Strings[i]) > Esp) then
    begin
      Quebrado.Add(Frase);
      Frase := '';
    end;
    Frase := Frase+' '+Original.Strings[i];
    if i = Original.Count-1 then
    Quebrado.Add(Frase);
  end;

  Result := Quebrado;
end;

{ Separa as Strings }
(*****************************************************************************************************)
Function oTXTBreakApart(BaseString,BreakString: String; StringList: TStringList): TStringList; STDCall;
(*****************************************************************************************************)
var
  EndOfCurrentString: Byte;
begin
  Repeat
    EndOfCurrentString := Pos(BreakString, BaseString);
    if EndOfCurrentString = 0 then
    StringList.add(BaseString) else
    StringList.add(Copy(BaseString,1,EndOfCurrentString - 1));
    BaseString :=  Copy(BaseString,  EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);
  Until EndOfCurrentString = 0;

  Result := StringList;
end;

{ Verifica a validade de uma data }
(********************************************************)
Function oTryStrToDate(AValue: String): Variant; STDCall;
(********************************************************)
var
  dtTemp: TDateTime;
  stTemp: String;
begin
  stTemp := AValue;
  if Length(stTemp) >= 6 then
  try
    if ((stTemp[3] <> '/') or (stTemp[6] <> '/')) then
    Result := Copy(stTemp,1,2)+'/'+Copy(stTemp,3,2)+'/'+Copy(stTemp,5,4);

    TryStrToDate(stTemp,dtTemp);
    Result := VarToDateTime(stTemp);
  except
    ;
  end;
end;

{ Retorna a Data por Extenso }
(*****************************************************)
Function oRETDataExtenso(Data: TDate): String; STDCall;
(*****************************************************)
var
  DiaSemana: Word;
begin
  if Data > 0 then
  DiaSemana := DayOfWeek(Data) else
  DiaSemana := 0;
  Result    := aSemana[DiaSemana];
end;

{ Retorna a data limite (anterior e posterior) conforme data selecionada }
(********************************************************************************)
Function oRETDataBetWeen(Data: TDate; Dia: Integer; SouE: String): TDate; STDCall;
(********************************************************************************)
var
  DRet: TDate;
begin
  DRet   := IncDay(Data,0-Dia);
  if (Dia = 0) and (SouE = 'S') then
  DRet   := StartOfTheMonth(DRet);
  if (Dia = 0) and (SouE = 'E') then
  DRet   := EndOfTheMonth(DRet);
  Result := DRet;
end;

{ Sub Function MesPorExtenso(Ano) }
(*************************************************)
Function oRETAno(Data:TDateTime): Integer; STDCall;
(*************************************************)
var
  d,m,a: Word;
begin
  DecodeDate(Data,a,m,d);
  oRETAno := a;
end;

{ Sub Function MesPorExtenso(Mes) }
(*************************************************)
Function oRETMes(Data:TDateTime): Integer; STDCall;
(*************************************************)
var
  d,m,a: Word;
begin
  DecodeDate(Data,a,m,d);
  oRETMes := m;
end;

{ Sub Function MesPorExtenso(Dia) }
(*************************************************)
Function oRETDia(Data:TDateTime): Integer; STDCall;
(*************************************************)
var
  d,m,a: Word;
begin
  DecodeDate(Data,a,m,d);
  oRETDia := d;
end;

{ Retorna o Mes por Extenso }
(****************************************************)
Function oRETMesExtenso(Data: TDate): String; STDCall;
(****************************************************)
var
  Mes: Word;
begin
  if Data > 0 then
  Mes    := oRETMes(Data) else
  Mes    := 0;
  Result := aMes[Mes];
end;

{ Sub Function ValorExtenso(valores menores ou iguais a 19) }
(***************************************************)
Function oRETUnidade(ValorUN: Real): String; STDCall;
(***************************************************)
var
  iIndice: Integer;
begin
  iIndice     := Trunc(ValorUN);
  oRETUnidade := aUnidades[iIndice];
end;

{ Sub Function ValorExtenso(valores maiores ou iguais a 20) }
(**************************************************)
Function oRETDezena(ValorDZ: Real): String; STDCall;
(**************************************************)
var
  iIndice    : Integer;
  sExtensoAux: String;
begin
  {Quebrar Numero em Dezena e Unidade}
  iIndice     := StrToInt(copy(IntToStr(Trunc(ValorDZ)),1,1));
  sExtensoAux := aDezenas[iIndice];
  iIndice     := StrToInt(Copy(IntToStr(Trunc(ValorDZ)),2,1));

  {Verifica se 2º Dígito é maior que zero}
  if iIndice > 0 then
  sExtensoAux := sExtensoAux + ' e ' + oRETUnidade(iIndice);
  oRETDezena  := sExtensoAux;
end;

{ Sub Function ValorExtenso(valores de centenas) }
(**************************************************)
Function oRETCentena(ValorCE:Real): String; STDCall;
(**************************************************)
var
  iIndCentena       : Integer;
  iIndDezena        : Integer;
  sExtParcialDezena : String;
  sExtParcialCentena: String;
begin
  {Quebrar Numero em Centena e Dezena}
  iIndCentena        := StrToInt(Copy(IntToStr(Trunc(ValorCE)),1,1));
  iIndDezena         := StrToInt(Copy(IntToStr(Trunc(ValorCE)),2,2));
  sExtParcialCentena := aCentenas[iIndCentena];

  if iIndDezena <> 0 then
  begin
    {Irá Processar números menores ou iguais a dezenove}
    if iIndDezena <= 19 then
    sExtParcialDezena  := oRETUnidade(iIndDezena);

    {Irá Processar números maiores ou iguais a vinte}
    if iIndDezena >= 20 then
    sExtParcialDezena  := oRETDezena (iIndDezena);

	  sExtParcialCentena := sExtParcialCentena + ' e ' + sExtParcialDezena;
	end;

  oRETCentena := sExtParcialCentena;
end;

{ Sub Function ValorExtenso(valores de milhares) }
(*******************************************************)
Function oRETMilhar(iCasasMI: Integer): Boolean; STDCall;
(*******************************************************)
var
  iLoopMI: Integer;
begin
  Result := False;
  for iLoopMI := iCasasMI to 9 do
  begin
    if aNumeros[iLoopMI] = 0 then
    Result := True else
    Result := False;

    if not (Result) then
    Break;
  end;
end;

{ Sub Function ValorExtenso
(valores de milhares II) }
(*********************************************************)
Function oRETMilharII(iCasasMI: Integer): Boolean; STDCall;
(*********************************************************)
var
  iLoopMI: Integer;
begin
  Result := False;
  if (aNumeros[9] <> 1) then
  begin
    Result := True;
    exit;
  end;

  for iLoopMI := iCasasMI to 8 do
  begin
    if aNumeros[iLoopMI] <> 0 then
    Result := True else
    Result := False;

    if (Result) then
    Break;
  end;
end;

{ Retorna o Valor por Extenso }
(******************************************************)
Function oRETValorExtenso(Valor: Real): String; STDCall;
(******************************************************)
var
  iLoop,iControle: Integer; {Controla o grupo de três números}
  iCasas         : Integer; {Controla o numero de casas de milhares}
  iTamanho       : Integer; {O número de caracteres digitados}
  iPosPonto      : Integer;
  iNumeroAux     : Real;
  sNumeroAux     : String;
begin
  sExtensoTotal   := '';
  sExtensoParcial := '';
	sNumeroAux      := FormatFloat('000000000000000000000000000000.00',Valor);
  sNumeroAux      := copy(sNumeroAux,1,Pos(',',sNumeroAux));
  iCasas          := 0;

  iLoop := 1;
  fillChar(aNumeros,SizeOF(aNumeros),0);
  while iLoop <= 30 do
  begin
    {Recebe sub-número do numero principal}
    aNumeros[iCasas] := StrToInt(Copy(sNumeroAux,iLoop,3));
    iLoop := iLoop + 3;
    Inc(iCasas);
  end;

  iCasas    := 9;
  iControle := 0;
  iLoop     := 1;
  while iLoop <= 30 do
  begin
    if (aNumeros[iControle] <= 019) and (aNumeros[iControle]  > 000) then
    sExtensoParcial := oRETUnidade(aNumeros[iControle]);

    if (aNumeros[iControle] >= 020) and (aNumeros[iControle] <= 099) then
    sExtensoParcial:=oRETDezena  (aNumeros[iControle]);

    if aNumeros[iControle]   > 100 then
    sExtensoParcial:=oRETCentena (aNumeros[iControle]);

    if aNumeros[iControle]   = 100 then
    sExtensoParcial:='Cem ';

    if aNumeros[iControle]  <> 000 then
    begin
      {Acrescenta na forma de plural}
      if aNumeros[iControle] > 001 then
      sExtensoParcial := sExtensoParcial + ' ' + aMilhares[iCasas];

      {Acrescenta na forma de singular}
      if aNumeros[iControle] = 001 then
      sExtensoParcial := sExtensoParcial + ' ' + aMilhar[iCasas];
    end;

    iLoop := iLoop + 3;

    if (Trim(LowerCase(sExtensoParcial)) = 'Um') and (iControle = 9) and (Trim(sExtensoTotal) = '') then
    begin
      sExtensoTotal := sExtensoTotal + sExtensoParcial;
      Break;
    end;

    if (iControle = 9) and (aNumeros[iControle] =  1) then
	  Insert(' e ',sExtensoParcial,1);

    sExtensoTotal := sExtensoTotal + sExtensoParcial;

    if (oRETMilhar (iControle+1))  then
    begin
      if (iControle <= 7)  then
      sExtensoTotal := sExtensoTotal + ' de ';
      Break;
    end else
    if (iControle <= 8) and (aNumeros[iControle] <> 0) and (oRETMilharII(iControle+1)) then
    sExtensoTotal   := sExtensoTotal +  ', ';
	  sExtensoParcial :='';

    Dec(iCasas);
    Inc(iControle);
  end;

  if Trim(LowerCase(sExtensoTotal)) = 'Um'  then
  sExtensoTotal := sExtensoTotal + ' Real ' else
  sExtensoTotal := sExtensoTotal + ' Reais ';

  // Processa centavos
  sExtensoParcial := '';
  sNumeroAux      := FormatFloat('000000000000000000000000000000.00',Valor);
	iTamanho        := Length( sNumeroAux);
	iPosPonto       := Pos('.',sNumeroAux);
	if iPosPonto = 0 then
  iPosPonto       := Pos(',',sNumeroAux);

	if iPosPonto <> 0 then
	begin
 	  iNumeroAux := StrToFloat(Copy(sNumeroAux,(iPosPonto+1),iTamanho));
    if iNumeroAux <> 0 then
    begin
      sExtensoParcial := sExtensoParcial + ' e ';

      if (iNumeroAux <= 019) and (iNumeroAux  > 000) then
      sExtensoParcial := sExtensoParcial + oRETUnidade(iNumeroAux);

      if (iNumeroAux >= 020) and (iNumeroAux <= 099) then
      sExtensoParcial := sExtensoParcial + oRETDezena(iNumeroAux);

      if iNumeroAux   > 100 then
      sExtensoParcial := sExtensoParcial + oRETCentena(iNumeroAux);

      if iNumeroAux   = 100 then
      sExtensoParcial := sExtensoParcial + 'Cem ';

      if iNumeroAux  >= 100 then
      sExtensoParcial := sExtensoParcial + 'centesimos de reais ' else
      begin
    	  if iNumeroAux = 1 then
	   	  sExtensoParcial := sExtensoParcial + ' Centavo';

	   	  if iNumeroAux > 1 then
        sExtensoParcial := sExtensoParcial + ' Centavos';
      end;
    end;
    sExtensoTotal := sExtensoTotal + sExtensoParcial;
  end;

  Result := sExtensoTotal
end;

{ Retorna Verdadeiro para CPF Válido }
(*********************************************)
Function oCPF(ATexto: String): Boolean; STDCall;
(*********************************************)
var
  B: Boolean;
  i, Soma, Digito: Integer;
  CalcCPF, S1, S2: String;
  C: Char;
begin
  ATexto  := Trim(ATexto);
  Result := False;

  { CPF somente com dígitos }
  S1    := '';
  for i := 1 to Length(ATexto) do
  begin
    S2  := Copy(ATexto,i,1);
    if Pos(S2,Numeros) > 0 then
    S1  := S1 + S2;
  end;
  S1    := Trim(S1);

  { Não é CPF, pois não são 11 dígitos }
  if S1 = '' then
  begin
    Result := True;
    Exit;
  end;

  if Length(S1) <> 11 then
  Exit;

  if S1 = '00000000000' then
  Exit;

  { Teste se os 11 dígitos são iguais }
  B     := true;
  C     := S1[1];
  for i := 2 to 11 do
  begin
    B   := B and (S1[i] = C);
    C   := S1[I];
  end;

  { Todos dígitos iguais }
  if B then
  Exit;

  CalcCPF := Copy(S1,1,9);

  { Cálculo do 1º dígito }
  Soma    := 0;
  for   i := 1 to 9 do
  Soma    := Soma + StrToInt(Copy(CalcCPF,i,1)) * (11 - i);

  Digito  := 11   - (Soma mod 11);
  if Digito in [10,11] then
  CalcCPF := CalcCPF + '0' else
  CalcCPF := CalcCPF + IntToStr(Digito);

  { Cálculo do 2º dígito }
  Soma    := 0;
  for   i := 1 to 10 do
  Soma    := Soma + StrToInt(Copy(CalcCPF,i,1)) * (12 - i);

  Digito  := 11   - (Soma mod 11);
  if Digito in [ 10, 11 ] then
  CalcCPF := CalcCPF + '0' else
  CalcCPF := CalcCPF + IntToStr(Digito);

  if CalcCPF = S1 then
  Result  := True;
end;

{ Retorna Verdadeiro para CNPJ Válido }
(***********************************************)
Function oCNPJ(ATexto: String): Boolean; STDCall;
(***********************************************)
var
  CalcCNPJ,S1,S2: String;
  i,Soma,Digito : Integer;
begin
  ATexto  := Trim(ATexto);
  Result := False;

  { CNPJ somente com dígitos }
  S1    := '';
  for i := 1 to Length(ATexto) do
  begin
    S2  := Copy(ATexto,i,1);
    if Pos(S2,Numeros) > 0 then
    S1  := S1 + S2;
  end;
  S1    := Trim(S1);

  { Não é CNPJ, pois não são 14 dígitos }
  if S1 = '' then
  begin
    Result := True;
    Exit;
  end;
    
  if Length(S1) <> 14 then
  Exit;

  if S1 = '00000000000000' then
  Exit;

  CalcCNPJ := Copy(S1,1,12);

  { Cálculo do 1º dígito }
  Soma     := 0;
  for    i := 1 to 4 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i,1))     * (6 - i);

  for    i := 1 to 8 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i + 4,1)) * (10 - I);

  Digito   := 11   - (Soma mod 11);
  if Digito in [10,11] then
  CalcCNPJ := CalcCNPJ + '0' else
  CalcCNPJ := CalcCNPJ + IntToStr(Digito);

  { Cálculo do 2º dígito }
  Soma     := 0;
  for    i := 1 to 5 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i,1))     * (7 - i);

  for    i := 1 to 8 do
  Soma     := Soma + StrToInt(Copy(CalcCNPJ,i + 5,1)) * (10 - i);

  Digito   := 11 - (Soma mod 11);
  if Digito in [ 10, 11 ] then
  CalcCNPJ := CalcCNPJ + '0' else
  CalcCNPJ := CalcCNPJ + IntToStr(Digito);

  if CalcCNPJ = S1 then
  Result   := True;
end;

{ Retorna Verdadeiro para CPF OU CNPJ Válido }
(****************************************************)
Function oCNPJouCPF(ATexto: String): Boolean; STDCall;
(****************************************************)
begin
  ATexto  := Trim(ATexto);
  Result := (oCPF(ATexto) or oCNPJ(ATexto));
end;

{ Validar Email }
(************************************************)
Function oEMail(ATexto: String): Boolean; STDCall;
(************************************************)
var
  i,cont: integer;
  EMail : ShortString;
begin
  Result := True;
  cont   := 0;
  EMail  := ATexto;

  if EMail <> '' then
     if (Pos('@', EMail)<>0) and (Pos('.', EMail)<>0) then    // existe @ .
     begin
       if (Pos('@', EMail)=1) or (Pos('@', EMail)= Length(EMail)) or (Pos('.', EMail)=1) or (Pos('.', EMail)= Length(EMail)) or (Pos(' ', EMail)<>0) or (Pos('''', EMail)<>0) then
         Result := False
       else                                   // @ seguido de . e vice-versa
         if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
           Result := False
         else
           begin
             for i := 1 to 40 do            // se existe Caracter Especial
               if Pos(aCarEsp[i], EMail)<>0 then
                  Result := False;
             for i := 1 to 40 do            // se existe Caracter Especial
               if (Pos(aCarExt[i], EMail)<>0) and (aCarExt[i] <> '@') then
                  Result := False;
             for i := 1 to length(EMail) do
             begin                                 // se existe apenas 1 @
               if EMail[i] = '@' then
                  cont := cont + 1;                    // . seguidos de .
               if (EMail[i] = '.') and (EMail[i+1] = '.') then
                  Result := false;
             end;
                                   // . no f, 2ou+ @, . no i, - no i, _ no i
             if (cont >=2) or ( EMail[length(EMail)]= '.' )
               or ( EMail[1]= '.' ) or ( EMail[1]= '_' )
               or ( EMail[1]= '-' )  then
                 Result := false;
                                            // @ seguido de COM e vice-versa
             if (abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
                Result := False;
                                              // @ seguido de - e vice-versa
             if (abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
                Result := False;
                                              // @ seguido de _ e vice-versa
             if (abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
                Result := False;
           end;
     end else
     Result := False;
end;
{ Retorna String Formatada como CPF }
(****************************************************)
Function oRETMaskCPF(ATexto: String): String; STDCall;
(****************************************************)
var
  SRet: String;
begin
  SRet   := '';
  ATexto  := oRETNumero(ATexto);

  if Length(ATexto) = 11 then
  SRet   := Copy(ATexto,01,03) + '.' +
            Copy(ATexto,04,03) + '.' +
            Copy(ATexto,07,03) + '-' +
            Copy(ATexto,10,02);
  Result := SRet;
end;

{ Retorna a String formatada como CNPJ }
(*****************************************************)
Function oRETMaskCNPJ(ATexto: String): String; STDCall;
(*****************************************************)
var
  SRet: String;
begin
  SRet   := '';
  ATexto  := oRETNumero(Trim(ATexto));

  if Length(ATexto) = 14 then
  SRet   := Copy(ATexto,01,02) + '.' +
            Copy(ATexto,03,03) + '.' +
            Copy(ATexto,06,03) + '/' +
            Copy(ATexto,09,04) + '-' +
            Copy(ATexto,13,02);
  Result := SRet;
end;

{ Retorna a String formatada como CPF se tiver 11 dígitos, ou
  como CNPJ se tiver 14 dígitos }
(**********************************************************)
Function oRETMaskCNPJouCPF(ATexto: String): String; STDCall;
(**********************************************************)
var
  SRet: String;
begin
  ATexto := oRETNumero(Trim(ATexto));
  SRet  := '';

  case Length(ATexto) of
    11: SRet := oRETMaskCPF (ATexto);
    14: SRet := oRETMaskCNPJ(ATexto);
  end;
  Result := SRet;
end;

{ Retorna a String formatada como CNPJ }
(**********************************************************)
Function oRETMaskCepouFone(ATexto: String): String; STDCall;
(**********************************************************)
var
  SRet: String;
begin
  ATexto  := oRETNumero(Trim(ATexto));
  SRet   := '';

  if Length(ATexto) = 8 then
  SRet   := Copy(ATexto,01,04)+'-'+
            Copy(ATexto,05,04) else
  if Length(ATexto) = 9 then
  SRet   := Copy(ATexto,01,05)+'-'+
            Copy(ATexto,06,04);

  Result := SRet;
end;

{ Criptografia - usar nas senhas de usuários }
(***********************************************************)
Function oEncrypt(ATexto: String; Key: Word): String; STDCall;
(***********************************************************)
var
  SRet: String;
  i   : LongInt;
begin
  ATexto     := Trim(ATexto);
  SRet      := '';

  for     i := 1 to Length(ATexto) do
  begin
    SRet[i] := Char(Byte(ATexto[i]) xor (Key shr 8));
    Key     := (Byte(SRet[i])+Key) * Crypt1 + Crypt2;
  end;
  Result    := SRet;
end;

{ DesCriptografia - usar nas senhas de usuários }
(***********************************************************)
Function oDecrypt(ATexto: String; Key: Word): String; STDCall;
(***********************************************************)
var
  SRet: String;
  i   : LongInt;
begin
  ATexto     := Trim(ATexto);
  SRet      := '';
  for     i := 1 to Length(ATexto) do
  begin
    SRet[i] := Char(Byte(ATexto[i]) xor (Key shr 8));
    Key     := (Byte(SRet[i])+Key) * Crypt1 + Crypt2;
  end;
  Result    := SRet;
end;

{ Avisos padrões de warnings }
(*********************************************************************)
Function oAviso(AHandle: Integer; AMensagem: String): Integer; STDCall;
(*********************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Aviso',
            MB_ICONWARNING+MB_OK);
end;

{ Avisos padrões de erros }
(********************************************************************)
Function oErro(AHandle: Integer; AMensagem: String): Integer; STDCall;
(********************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Erro !',
            MB_ICONERROR+MB_OK);
end;

(*********************************************************************)
Function oYesNo(AHandle: Integer; AMensagem: String): Integer; STDCall;
(*********************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Atenção !',
            MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON1);
end;

(************************************************************************)
Function oOkCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
(************************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Atenção !',
            MB_ICONQUESTION+MB_OKCANCEL);
end;

(***************************************************************************)
Function oYesNoCancel(AHandle: Integer; AMensagem: String): Integer; STDCall;
(***************************************************************************)
begin
  oUnLockWindowUpdate;
  Result := MessageBox(AHandle,PChar(AMensagem),'Atenção !',
            MB_ICONQUESTION+MB_YESNOCANCEL+MB_DEFBUTTON1);
end;

{ Avisos padrões de exceptions + abort }
(*****************************************************************************************)
procedure oException(ASender: TWinControl;AMensagem: String;ATitulo: String = ''); STDCall;
(*****************************************************************************************)
begin
  oUnLockWindowUpdate;
  if oEmpty(ATitulo) then
  begin
    ATitulo := 'Sheild';
    if Application.MainForm <> Nil then
       ATitulo := Application.MainForm.Caption;
  end;

  if not oEmpty(AMensagem) then
  try
    Application.MessageBox(PChar(AMensagem),PChar(ATitulo),MB_ICONERROR+MB_OK);
    oExceptionFocus(ASender);
  finally Abort;
  end;
end;

{ Avisos padrões de exceptions do FBird }
(********************************************************)
Function oFBException(AMensagem: String): String; STDCall;
(********************************************************)
begin
  oUnLockWindowUpdate;
  AMensagem := oREPPrimeiraLetraMaiuscula(Copy(AMensagem,Pos('[',AMensagem) + 1,(Pos(']',AMensagem) - Pos('[',AMensagem)) - 1));
  result    := AMensagem;
end;

{ Constrol Avançado de Foco }
(*******************************************************)
procedure oExceptionFocus(ASender: TWinControl); STDCall;
(*******************************************************)
var
  OBJParent: TWinControl;
  BRet: Boolean;
begin
  if ASender = Nil then
  Exit;

  { Descobre quem é o pai da criança e o amante }
  BREt := ((ASender.ClassType = TdxEdit)         or (ASender.ClassType = TdxDBEdit)         or
           (ASender.ClassType = TdxMaskEdit)     or (ASender.ClassType = TdxDBMaskEdit)     or
           (ASender.ClassType = TdxMemo)         or (ASender.ClassType = TdxDBMemo)         or
           (ASender.ClassType = TdxDateEdit)     or (ASender.ClassType = TdxDBDateEdit)     or
           (ASender.ClassType = TdxButtonEdit)   or (ASender.ClassType = TdxDBButtonEdit)   or
           (ASender.ClassType = TdxImageEdit)    or (ASender.ClassType = TdxDBImageEdit)    or
           (ASender.ClassType = TdxSpinEdit)     or (ASender.ClassType = TdxDBSpinEdit)     or
           (ASender.ClassType = TdxPickEdit)     or (ASender.ClassType = TdxDBPickEdit)     or
           (ASender.ClassType = TdxTimeEdit)     or (ASender.ClassType = TdxDBTimeEdit)     or
           (ASender.ClassType = TdxCurrencyEdit) or (ASender.ClassType = TdxDBCurrencyEdit) or
           (ASender.ClassType = TdxPopUpEdit)    or (ASender.ClassType = TdxDBPopUpEdit)    or
           (ASender.ClassType = TdxLookUpEdit)   or (ASender.ClassType = TdxDBLookUpEdit)   or
           (ASender.ClassType = TdxDBGrid));

  OBJParent := Nil;
  if ASender.Parent is TPanel then
  OBJParent := ASender.Parent as TPanel;

  if ASender.Parent is TGroupBox then
  OBJParent := ASender.Parent as TGroupBox;

  if ASender.Parent is TRadioGroup then
  OBJParent := ASender.Parent as TRadioGroup;

  if ASender.Parent is TdxDockPanel then
  OBJParent := ASender.Parent as TdxDockPanel;

  if (ASender.Parent is TdxTabSheet) or (OBJParent.Parent is TdxTabSheet) then
  begin
    if (OBJParent <> Nil) and (OBJParent.Parent is TdxTabSheet) then
    OBJParent := OBJParent.Parent as TdxTabSheet else
    OBJParent := ASender.Parent as TdxTabSheet;
    TdxPageControl(TdxTabSheet(OBJParent).Parent).Activepage := TdxTabSheet(OBJParent);

    if TdxPageControl(TdxTabSheet(OBJParent).Parent).Parent is TdxTabSheet then
    begin
      OBJParent := TdxPageControl(TdxTabSheet(OBJParent).Parent).Parent as TdxTabSheet;
      TdxPageControl(TdxTabSheet(OBJParent).Parent).Activepage := TdxTabSheet(OBJParent);
    end;
  end;

  if BRet then
     if OBJParent <> Nil then
     BRet := (OBJParent.Enabled) and (OBJParent.Visible);

  if (BRet) and (ASender.Enabled) and (ASender.Visible) then
  begin
    PostMessage(TWinControl(ASender).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(ASender).SetFocus;
  end;
end;

{ Verificar Programa que já Esteja em Execução }
(******************************************************)
Function oBWinMemory(WndTit: String): Boolean ; STDCall;
(******************************************************)
var
  hSem  : THandle;
  hWndMe: HWnd;
begin
  Result := False;
  hSem   := CreateSemaphore(Nil,0,1,'NomeDoSemaforo');

  if (hSem <> 0) and (GetLastError() = ERROR_ALREADY_EXISTS) then
  begin
    CloseHandle(hSem);
    hWndMe := FindWindow(Nil,PChar(WndTit));
    if hWndMe <> 0 then
    begin
      if IsIconic(hWndMe) then
      ShowWindow (hWndMe,SW_SHOWNORMAL) else
      SetForegroundWindow(hWndMe);

      Result := True;
    end;
  end;
end;

{ Executar arquivos externos }
(**********************************************************************)
Function oFileExec(Arquivo: String; Estado: Integer): Cardinal; STDCall;
(**********************************************************************)
var
  Programa   : Array[0..512] of Char;
  CurDir     : Array[0..255] of Char;
  WorkDir    : String;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
{
    SW_SHOWNORMAL - Janela em modo normal
    SW_MAXIMIZE - Janela maximizada
    SW_MINIMIZE - Janela minimizada
    SW_HIDE - Janela Escondida
}

  StrPCopy(Programa   ,Arquivo);
  GetDir  (0          ,WorkDir);
  StrPCopy(CurDir     ,WorkDir);
  FillChar(StartupInfo,SizeOF(StartupInfo),#0);

  StartupInfo.cb          := SizeOF(StartupInfo);
  StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Estado;

  if not CreateProcess(Nil,Programa,Nil,Nil,false,CREATE_New_CONSOLE or NORMAL_PRIORITY_CLASS,Nil,Nil,StartupInfo,ProcessInfo) then
  Result := 0 else
  begin
    WaitForSingleObject(ProcessInfo.hProcess,Infinite);
    GetExitCodeProcess (ProcessInfo.hProcess,Result  );
  end;
end;

{ Copiar arquivos }
(**************************************************)
Procedure oFileCopy(ArqEnt,ArqSai: String); STDCall;
(**************************************************)
var
  Dados: TSHFileOpStruct;
begin
  SetLength(ArqEnt,Length(ArqEnt)+1);
  ArqEnt[Length(ArqEnt)] := #0;
  FillChar(Dados,SizeOF(Dados), 0);

  with Dados do
  begin
    wFunc  := FO_COPY;
    pFrom  := PChar(ArqEnt);
    pTo    := PChar(ArqSai);
    fFlags := FOF_ALLOWUNDO+FOF_NOCONFIRMATION;
  end;

  SHFileOperation(Dados);
end;

{ Excluir Pastas }
(**********************************************)
Procedure oDirectoryDel(Pasta: String); STDCall;
(**********************************************)
var
  Arquivo: TSearchRec;
begin
  if FindFirst(pasta+'*.*',0,Arquivo) = 0 then
  begin
    repeat
      DeleteFile(pasta+Arquivo.Name);
    until
      FindNext (Arquivo) <> 0;
      FindClose(Arquivo);
  end;
end;

{ Retorna Formatação dos bancos }
(*******************************************************)
Procedure oRETFormatBancos(var Sender: TObject); STDCall;
(*******************************************************)
var
  Count,
  Posic,
  Tamanho: Integer;
  ATexto1,
  ATexto2,
  ATexto  : String;
  BRet   : Boolean;
begin
  BRet := false;
  if Sender.ClassType = TdxEdit then
  begin
    BRet  := (TdxEdit(Sender).Tag = 0);
    ATexto := TdxEdit(Sender).Text;
  end;

  if BRet then
  begin
    Tamanho := Length(ATexto);
    ATexto1  := ATexto;
    ATexto2  := '';

    { Remove pontos }
    if Tamanho > 6 then
    begin
      Delete(ATexto, Pos('.',ATexto), 1);
      ATexto := ATexto;
    end;

    { Retira pontos e reformata a string }
    Posic := 0;
    for Count := Length(ATexto1) downto 1 do
        if (Copy(ATexto1,Count,1) >= '0') and (Copy(ATexto1,Count,1) <= '9') then
        begin
          Posic := Posic + 1;
          if Posic = 3 then ATexto2 := Copy(ATexto1,Count,1)+','+ATexto2 else
          if Posic = 6 then ATexto2 := Copy(ATexto1,Count,1)+'.'+ATexto2 else
          if Posic = 9 then ATexto2 := Copy(ATexto1,Count,1)+'.'+ATexto2 else
          ATexto2 := Copy(ATexto1,Count,1)+ATexto2;
        end;

    ATexto := ATexto2;

    { Ajusta os zeros }
    if Tamanho = 1  then ATexto := '00,0'+ATexto;
    if Tamanho = 2  then ATexto := '0'   +ATexto;
    if ATexto   = '' then ATexto := '000';

    if Tamanho <= 6 then
    ATexto := FormatFloat('#,##0.00', StrToCurr(ATexto));
  end;

  if Sender.ClassType = TdxEdit then
  begin
    TdxEdit(Sender).Text     := IFThen(ATexto='','0,00',ATexto);
    TdxEdit(Sender).SelStart := Length(TdxEdit(Sender).Text);
  end;
end;

{ Retorna apenas os números }
(***************************************************)
Function oRETNumero(ATexto: String): String ; STDCall;
(***************************************************)
var
  SRet: String;
  i   : Word;
begin
  ATexto := Trim(ATexto);
  SRet   := '';
  for i  := 1 to Length(ATexto) do
  if Pos(ATexto[i],Numeros) > 0 then  SRet   := SRet + ATexto[i];

  Result := SRet;
end;

{ Retorna verdadeiro para string que possuam apenas números }
(************************************/**************)
Function oBSONumero(ATexto: String): Boolean; STDCall;
(************************************/**************)
var
  BRet: Boolean;
  i   : Word;
begin
  ATexto  := TRIM(ATexto);
  BRet   := False;
  for i  := 1 to Length(ATexto) do
  begin
    BRet := (Pos(ATexto[i],Numeros) > 0);
    if not BRet then
    Break;
  end;
  Result := BRet;
end;

{ Permite apenas números }
(*****************************************************************************************)
Function oEditNumero(Key: Char; ATexto: String; ADigitos: Boolean = False): Char; STDCall;
(*****************************************************************************************)
begin
  if not ADigitos then
  begin
    if  not (Key in ['0'..'9',Chr(8),Chr(13)]) then
    Key := #0
  end else
  begin
    if  Key = #46 then
    Key := DecimalSeparator;
    if  not (Key in ['0'..'9',Chr(8),Chr(13)]) then
    Key := #0 else
    if (Key = DecimalSeparator) and (Pos(Key,ATexto) > 0) then
    Key := #0;
  end;
  Result := Key;
end;

{ Retorna código de produto formatado }
(***************************************************)
Function oRETCodigo(ATexto: String): String ; STDCall;
(***************************************************)
var
  cCOR: String;
  cART: String;
  i,j : Word;
begin
  j      := 0;
  ATexto := Trim(ATexto);
  cART   := ATexto;

  if not oBSoNumero(LeftStr(ATexto,1)) then
  begin
    for i := 0 to Length(ATexto) do
    if copy(ATexto,i,1) = '.' then
    Inc(j);

    if j <= 2 then
    begin
      j      := 0;
      cART   := '';
      for i  := 1 to Length(ATexto) do
      begin
        cART := cART+copy(ATexto,i,1);
        if copy(ATexto,i,1) = '.' then
        Inc(j);

        if j = 2 then
        Break;
      end;

      if j <> 2 then
      cART := ATexto else
      begin
        Inc(i);
        cCOR := Trim(copy(ATexto,i,4));

        if not oBSONumero(cCOR) then
        cART := ATexto else
        cART := cART+oStrZero(StrToInt(cCOR),4);
      end;
    end;
  end;
  Result := cART;
end;

{ Retorna as regiões conforme estado ou cep }
(*****************************************************)
Function oRETRegiao(AUf,ACep: String): String; STDCall;
(*****************************************************)
var
  SRet: String;
begin
  AUf   := Trim(AUf);
  ACep  := Trim(ACep);
  SRet := '';

  if AUf <> '' then
  begin
    if (AUf = 'AM') or (AUf = 'AC') or (AUf = 'RO') or (AUf = 'RR') or (AUf = 'PA') or (AUf = 'AP') or (AUf = 'TO') then
    SRet := 'REGIÃO NORTE'        else
    if (AUf = 'MT') or (AUf = 'MS') or (AUf = 'DF') or (AUf = 'GO') then
    SRet := 'REGIÃO CENTRO-OESTE' else
    if (AUf = 'MA') or (AUf = 'PI') or (AUf = 'CE') or (AUf = 'RN') or (AUf = 'PB') or (AUf = 'PE') or (AUf = 'AL') or (AUf = 'SE') or (AUf = 'BA') then
    SRet := 'REGIÃO NORDESTE'     else
    if (AUf = 'SP') or (AUf = 'RJ') or (AUf = 'MG') or (AUf = 'ES') then
    SRet := 'REGIÃO SUDESTE'      else
    if (AUf = 'PR') or (AUf = 'SC') or (AUf = 'RS') then
    SRet := 'REGIÃO SUL';
  end;

  if Length(Trim(ACep)) >= 8 then
  begin
    if (StrToInt(copy(ACep,1,5)) >= 01000) and (StrToInt(copy(ACep,1,5)) <= 09999) then
    SRet := 'CAPITAL DE SÃO PAULO';

    if (StrToInt(copy(ACep,1,5)) >= 12000) and (StrToInt(copy(ACep,1,5)) <= 19999) then
    SRet := 'INTERIOR DE SÃO PAULO';
  end;

  Result := SRet;
end;

{ Retorna campo ou descriçao de pesquisa }
(*****************************************************************)
Function oPesquisaPerfil(APerfil,ACampo: String): String ; STDCall;
(*****************************************************************)
var
  SRet: String;
begin
  SRet   := '';
  if APerfil = 'Produtos' then
  begin
    if ACampo = 'Código de Barras' then
    SRet := 'PRO_CBAR' else
    if ACampo = 'Produto' then
    SRet := 'PRO_CPRO' else
    if ACampo = 'Referencia' then
    SRet := 'PRO_CART' else
    if ACampo = 'Ref. Fornecedor' then
    SRet := 'PRO_CFOR' else
    if ACampo = 'Descrição' then
    SRet := 'PRO_DPRO' else
    if ACampo = 'Grupo' then
    SRet := 'PRO_DGRP' else
    if ACampo = 'Categoria (Sub Grupo)' then
    SRet := 'PRO_DCAT' else
    if ACampo = 'Coleção' then
    SRet := 'PRO_DCOL';
  end else
  if APerfil = 'Fornecedores' then
  begin
    if ACampo = 'Código' then
    SRet := 'ID' else
    if ACampo = 'Fantasia' then
    SRet := 'FOR_FANT' else
    if ACampo = 'Razão Social' then
    SRet := 'FOR_RAZA' else
    if ACampo = 'CNPJ' then
    SRet := 'FOR_CNPJ' else
    if ACampo = 'CPF' then
    SRet := 'FOR_CPF' else
    if ACampo = 'Telefone ( sem DDD )' then
    SRet := 'FOR_TEL1' else
    if ACampo = 'Celular ( sem DDD )' then
    SRet := 'FOR_CEL' else
    if ACampo = 'Logradouro' then
    SRet := 'FOR_LOGR' else
    if ACampo = 'Bairro' then
    SRet := 'FOR_BAI' else
    if ACampo = 'Cidade' then
    SRet := 'FOR_CID';
  end else
  if APerfil = 'Nota Fiscal' then
  begin
    if ACampo = 'Nota Fiscal' then
    SRet := 'NFE_CAB.NFE_CDNF' else
    if ACampo = 'Dt. Emissão' then
    SRet := 'NFE_CAB.NFE_DEMI' else
    if ACampo = 'Dt. Cancelamento' then
    SRet := 'NFE_CAB.NFE_DCAN' else
    if ACampo = 'Favorecido' then
    SRet := 'NFE_CAB.NFE_DFAV' else
    if ACampo = 'Vendedor' then
    SRet := 'NFE_CAB.NFE_DVEN' else
    if ACampo = 'Representante' then
    SRet := 'NFE_CAB.NFE_DREP';
  end else
  if APerfil = 'Pedidos' then
  begin
    if ACampo = 'Dt. Pedido' then
    SRet := 'Pedidos.ROM_DROM' else
    if ACampo = 'Dt. Venda' then
    SRet := 'Pedidos.ROM_DBAI' else
    if ACampo = 'Dt. Nota Fiscal' then
    SRet := 'Pedidos.ROM_DNFE';
  end;

  Result := SRet;
end;

{ Retorna Posição X,Y }
(***********************************************************)
Function oRETXYPoint(var AControl: TObject): TPoint; STDCall;
(***********************************************************)
var
  XY: TPoint;
begin
  XY := Point(0,0);
  XY := TControl(AControl).ClientToScreen(XY);

  Result := XY
end;

{ Retorna a soma das dos widths das colunas visíveis }
(*******************************************************************)
Function oTdxDBGrid_ColumnWidth(AdxDBGrid: TdxDBGrid): Word; STDCall;
(*******************************************************************)
var
  i: Word;
begin
  result := 0;
  if AdxDBGrid.ColumnCount > 0 then
     for i := 0 to AdxDBGrid.ColumnCount - 1 do
         if ((AdxDBGrid.Columns[i].Tag = 0) and (AdxDBGrid.Columns[i].Visible)) then
              Result := Result + AdxDBGrid.Columns[i].Width;
end;

{ Verificar se a variável está vazia }
(*************************************************)
Function oEmpty(AValue: Variant): Boolean; STDCall;
(*************************************************)
begin
  Result := VarIsClear(AValue) or VarIsEmpty(AValue ) or VarIsNull(AValue ) or (VarCompareValue (AValue , Unassigned) = vrEqual);
  if (not Result) then
      if VarIsStr(AValue) then
         Result := (Trim(AValue) = '') else
         if oPosCount('/',AValue) = 2 then
            Result := (AValue <= '12/30/1899') or (AValue <= '30/12/1899') or (AValue <= '17/11/1858')
         else
            Result := (AValue = 0) or (AValue = -700000);
end;

{ Retorna a quantidade de casas decimais }
(*********************************************************)
Function oDecimalCount(AValor: Extended): Integer; STDCall;
(*********************************************************)
Var
  x: String;
  i,
  c: Word;
begin
  i := Length(FloatToStr(Trunc(AValor)))+2;
  x := FloatToStr(AValor);
  c := Length(Trim(Copy(x,i,10)));

  Result := IFThen(c = 1,2,c);
end;

{ Elimina casas decimais de números reais }
(*******************************************************)
Function oDecimalDelete(AValor: Extended): Real; STDCall;
(*******************************************************)
begin
  Result := (Trunc(AValor*100)/100);
end;

{ Retorna o valor conforme o número de casas decimais desejadas }
(***********************************************************************)
Function oTruncValor(AValor: Double; ADigitos: Integer): Double; STDCall;
(***********************************************************************)
var
  DFactor: Double;
begin
  if oDecimalCount(AValor) <> ADigitos then
  begin
    ADigitos := ADigitos * -1;
    DFactor := IntPower(10, ADigitos);
    Result  := AValor / DFactor;
    Result  := Trunc(Result);
    Result  := Result * DFactor;
  end else
  begin
    DFactor := AValor;
    Result  := DFactor;
  end;
end;

{ Retorna valor formatado Extended }
(*********************************************************************************)
Function oFloatToText(AValor: Extended; APrecisao,ADigitos: Word): String; STDCall;
(*********************************************************************************)
var
  FormatSettings: TFormatSettings;
  Buffer: Array[0..63] of Char;
begin
  AValor := oTruncValor(AValor,ADigitos);
  GetLocaleFormatSettings(GetUserDefaultLCID, FormatSettings);
  SetString(Result, Buffer, FloatToText(Buffer, AValor, fvExtended, ffGeneral, APrecisao, ADigitos, FormatSettings));
end;

{ Retorna valor formatado Currency }
(*********************************************************************************)
Function oCurrToText(AValor: Currency; APrecisao,ADigitos: Word): String; STDCall;
(*********************************************************************************)
var
  FormatSettings: TFormatSettings;
  Buffer: Array[0..63] of Char;
begin
  AValor := oTruncValor(AValor,ADigitos);
  GetLocaleFormatSettings(GetUserDefaultLCID, FormatSettings);
  SetString(Result, Buffer, FloatToText(Buffer, AValor, fvCurrency, ffGeneral, 0, ADigitos, FormatSettings));
end;

{ Retorna apenas os números e a vírgula }
(***************************************************************************************)
Function oTrimValor(AValor: String;AReturning: TReturning = lrVariant): Variant; STDCall;
(***************************************************************************************)
var
  i   : Word;
  SRet: String;
begin
  if ((AValor = Null) or (oEmpty(AValor))) then
       AValor := '0';
       AValor := Trim(AValor);

  SRet   := '';
  for i  := 1 to Length(AValor) do
      if (Pos(AValor[i],Numeros) > 0) or
         (Pos(AValor[i],',') > 0) or
         (Pos(AValor[i],'-') > 0) then
  SRet   := SRet + AValor[i];
  SRet   := IFThen(SRet = '','0',SRet);

  if AReturning = lrFloat then
     Result := StrToFloat(SRet) else
  if AReturning = lrInteger then
     Result := StrToInt(SRet)
  else
     Result := SRet;
end;

{ Retorna valor formatado - até 4 casas decimais = currency, > 4 Extended }
(*******************************************************************************************************)
Function oTextToValor(AValor: Variant; ADigitos: Word = 2;AXmlFormat: Boolean = False): Variant; STDCall;
(*******************************************************************************************************)
var
  WPrecisao: Word;
begin
    {
      Precisões
      Digitos de 0 até 2 = 13 - Currency
      Digitos de 3 até 4 = 12 - Currency
      Digitos Acima de 4 = 11 - Extended

      Decidi tratar como currency os digitos até 4, pois assim terei menos problemas com arredondamentos
    }

  try
    Result := IFThen(ADigitos > 0,'0,00','0');
    if not oEmpty(AValor) then
    begin
      if (Pos('.',AValor) > 0) and (Pos(',',AValor) = 0) then
      AValor := oStrTran(AValor,'.',',');

      Case ADigitos of
        1..2: begin
                ADigitos  := 02;
                WPrecisao := 13;
              end;
        3..4: WPrecisao := 12;
        else  WPrecisao := 18;
      end;

      if ADigitos = 0 then
      begin
        Result := oFloatToText(StrToFloat(oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat('0',StrToFloat(oTrimValor(Result)));
      end else
      if ADigitos = 2 then
      begin
        Result := oCurrToText (StrToCurr (oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.00',',##,0.00'),StrToCurr(oTrimValor(Result)));
      end else
      if ADigitos = 3 then
      begin
        Result := oCurrToText (StrToCurr (oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.000',',##,0.000'),StrToCurr(oTrimValor(Result)));
      end else
      if ADigitos = 4 then
      begin
        Result := oCurrToText (StrToCurr (oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.0000',',##,0.0000'),StrToCurr(oTrimValor(Result)));
      end else
      begin
        Result := oFloatToText(StrToFloat(oTrimValor(AValor)),WPrecisao,ADigitos);
        Result := FormatFloat(IFThen(AXMLFormat,'0.########',',##,0.########'),StrToFloat(oTrimValor(Result)));
      end;
    end;
  except
    Result := IFThen(ADigitos > 0,'0,00','0');
  end;

  if ADigitos > 0 then
  begin
    if Pos(',',Result) = 0 then
    Result := Result + ',00';

    if AXmlFormat then //and (VarType(AValor) = varString) then
    begin
      if Result = 0 then Result := '0,00';
      Result := oStrTran(Result,',','.');
    end;
  end;
end;

{ Obter a versão do Windows }
(***********************************)
Function oGetPCNome: String; STDCall;
(***********************************)
var ipbuffer : string;
      nsize : dword;
begin
  nsize := 255;
  SetLength(ipbuffer,nsize);
  if GetComputerName(pchar(ipbuffer),nsize) then
  result := LeftStr(ipbuffer,nSize);
end;

{ Formata key conforme padrão dos bancos }
(*************************************************************************)
Procedure oFormatValorKeyDown(var Sender: TObject; var Key: Word); STDCall;
(*************************************************************************)
begin
  if Sender.ClassType = TdxEdit then
  TdxEdit(Sender).Tag := IFThen((key = vk_back) or (key = vk_delete),1,0) else
  if Sender.ClassType = TdxMaskEdit then
  TdxMaskEdit(Sender).Tag := IFThen((key = vk_back) or (key = vk_delete),1,0) else
  if Sender.ClassType = TdxCurrencyEdit then
  TdxCurrencyEdit(Sender).Tag := IFThen((key = vk_back) or (key = vk_delete),1,0);
end;

{ Formata key conforme padrão dos bancos }
(**************************************************************************)
Procedure oFormatValorKeyPress(var Sender: TObject; var Key: Char); STDCall;
(**************************************************************************)
begin
  if not (key in ['0'..'9',',',#8]) then key := #0;
end;


{ Formata key conforme padrão dos bancos }
(********************************************************)
Procedure oFormatValorEnter(var Sender: TObject); STDCall;
(********************************************************)
begin
  if Sender.ClassType = TdxEdit then
  TdxEdit(Sender).SelStart := Length(TdxEdit(Sender).Text) else
  if Sender.ClassType = TdxMaskEdit then
  TdxMaskEdit(Sender).SelStart := Length(TdxMaskEdit(Sender).Text) else
  if Sender.ClassType = TdxCurrencyEdit then
  TdxCurrencyEdit(Sender).SelStart := Length(TdxCurrencyEdit(Sender).Text);
end;

{ Formata valor conforme padrão dos bancos }
(***************************************************)
Procedure oFormatValor(var Sender: TObject); STDCall;
(***************************************************)
var
  WCount,
  WPosic,
  WTamanho: Integer;
  SATexto,
  SATexto1,
  SATexto2: String;
  BRet    : Boolean;
begin
  BRet := False;
  if Sender.ClassType = TdxEdit then
  begin
    BRet   := (TdxEdit(Sender).Tag = 0);
    SATexto :=  TdxEdit(Sender).Text;
  end else
  if Sender.ClassType = TdxMaskEdit then
  begin
    BRet   := (TdxMaskEdit(Sender).Tag = 0);
    SATexto :=  TdxMaskEdit(Sender).Text;
  end else
  if Sender.ClassType = TdxCurrencyEdit then
  begin
    BRet   := (TdxCurrencyEdit(Sender).Tag = 0);
    SATexto :=  TdxCurrencyEdit(Sender).Text;
  end;

  if BRet then
  begin
    if SATexto <> '' then
       if SATexto[Length(SATexto)] = '0' then
          if Pos(',',SATexto) = 0 then
          SATexto := SATexto+'00' else
          if Length(Copy(SATexto,Pos(',',SATexto)+1,3)) = 2 then
          SATexto := SATexto+'0';

    WTamanho := Length(SATexto);
    SATexto1  := SATexto;
    SATexto2  := '';

    { Remove pontos }
    if WTamanho > 6 then
    begin
      Delete(SATexto, Pos('.',SATexto), 1);
      SATexto := SATexto;
    end;

    { Retira pontos e reformata a string }
    WPosic := 0;
    for WCount := Length(SATexto1) downto 1 do
        if (Copy(SATexto1,WCount,1) >= '0') and (Copy(SATexto1,WCount,1) <= '9') then
        begin
          WPosic := WPosic + 1;
          if WPosic = 3 then SATexto2 := Copy(SATexto1,WCount,1)+','+SATexto2 else
          if WPosic = 6 then SATexto2 := Copy(SATexto1,WCount,1)+'.'+SATexto2 else
          if WPosic = 9 then SATexto2 := Copy(SATexto1,WCount,1)+'.'+SATexto2 else
          SATexto2 := Copy(SATexto1,WCount,1)+SATexto2;
        end;

    SATexto := SATexto2;

    { Ajusta os zeros }
    if WTamanho = 1  then SATexto := '00,0'+SATexto;
    if WTamanho = 2  then SATexto := '0'   +SATexto;
    if SATexto   = '' then SATexto := '000';

    if WTamanho <= 6 then
    SATexto := FormatFloat('#,##0.00', StrToCurr(oTrimValor(SATexto)));
  end;

  SATexto := IFThen(SATexto = '','0,00', SATexto);

  if Sender.ClassType = TdxEdit then
  begin
    TdxEdit(Sender).Text     := SATexto;
    TdxEdit(Sender).SelStart := Length(SATexto);
  end else
  if Sender.ClassType = TdxMaskEdit then
  begin
    TdxMaskEdit(Sender).Text     := SATexto;
    TdxMaskEdit(Sender).SelStart := Length(SATexto);
  end else
  if Sender.ClassType = TdxCurrencyEdit then
  begin
    TdxCurrencyEdit(Sender).Value    := oTrimValor(SATexto);
    TdxCurrencyEdit(Sender).SelStart := Length(SATexto);
  end;
end;

{ Preenche os Edits do Form }
(***************************************************)
procedure oFillEdicao(var Sender: TIBQuery); STDCall;
(***************************************************)
var
  Form : TForm;
  Value: Variant;
  i: Word;
begin
  { Descobre quem é o pai da criança }
  if Sender.FieldCount = 0 then
  Exit;

  Form := Sender.Owner as TForm;
  if Form <> Nil then
  with Form do
  for i := 0 to Sender.FieldCount - 1 do
  begin
    Value := Sender.Fields[i].Value;
    if Sender.Fields[i].IsNull then
    begin
      Value := '';
      if (Sender.Fields[i].DataType = ftSmallint) or (Sender.Fields[i].DataType = ftWord)     or (Sender.Fields[i].DataType = ftInteger)  or (Sender.Fields[i].DataType = ftLargeint) then
      Value := '0' else
      if (Sender.Fields[i].DataType = ftFloat)    or (Sender.Fields[i].DataType = ftCurrency) or (Sender.Fields[i].DataType = ftBCD) then
      Value := 0;

      { Sender.Fields[i].Tag = 1 - usado para inclusões, ele será instanciado antes do chamado da função oFillEdicao }
      if (Sender.Fields[i].DataType = ftDate) or (Sender.Fields[i].DataType = ftDateTime) then
         if Sender.Fields[i].Tag = 1 then Value := Date else Value := 0;
    end;

    { Tag Componente e Tag do Form <> 0 enabled = false nas alterações }
    if Copy(Sender.Fields[i].FieldName,1,2) = 'ED' then
    begin
      if (Form.Tag <> 0) and (TdxEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Trim(Value);
    end else
    if Copy(Sender.Fields[i].FieldName,1,1) = 'M'  then
    begin
      if (Form.Tag <> 0) and (TdxMemo(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxMemo(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxMemo(FindComponent(Sender.Fields[i].FieldName)).Text    := Trim(Value);
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'BE' then
    begin
      if (Form.Tag <> 0) and (TdxButtonEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxButtonEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxButtonEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'IE' then
    begin
      if (Form.Tag <> 0) and (TdxImageEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxImageEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxImageEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'PE' then
    begin
      if (Form.Tag <> 0) and (TdxPickEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxPickEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxPickEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'CE' then
    begin
      if (Form.Tag <> 0) and (TdxCurrencyEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxCurrencyEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      TdxCurrencyEdit(FindComponent(Sender.Fields[i].FieldName)).Text    := Value;
    end else
    if Copy(Sender.Fields[i].FieldName,1,2) = 'DE' then
    begin
      if (Form.Tag <> 0) and (TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Tag <> 0) then
      TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Enabled := False;
      if Value > 0 then
      TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Date := Value else
      TdxDateEdit(FindComponent(Sender.Fields[i].FieldName)).Clear;
    end;
  end;
end;

{ Retorna Dígito para EAN13 }
(****************************************************)
Function oRETEAN13(ABarCode: String): String; STDCall;
(****************************************************)
var nX    : Integer;
   nPeso  : Integer;
   nSoma  : Double;
   nMaior : Double;
   nDigito: Integer;
Begin
  nPeso := 3;
  nSoma := 0;

  For nX := 12 DownTo 1 do
  Begin
    nSoma := nSoma + StrToInt( ABarCode[ nX ] ) * nPeso;
    If nPeso = 3 Then
    nPeso := 1 Else
    nPeso := 3;
  End;

  nMaior  := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
  nDigito := Trunc( nMaior ) - Trunc( nSoma );
  If nDigito = 10 Then
  nDigito := 0;

  Result := IntToStr( nDigito );
End;

{ Retorna BarCode Conforme Alfabeto }
(*******************************************************************)
Function oRETBarCode(AIDProduto,ACDProduto: String): String; STDCall;
(*******************************************************************)
var
  i,j    : Word;
  BarCode: String;
begin
  if oEmpty(ACDProduto) then
  oException(Nil,'Código do Produto não Informado !');

  if oEmpty(AIDProduto) then
  oException(Nil,'Identificação do Produto não Informado !');

  ACDProduto := Trim(UpperCase(ACDProduto));
  ACDProduto := Trim(StringReplace(ACDProduto,'.','',[rfReplaceAll,rfIgnoreCase]));
  ACDProduto := Trim(StringReplace(ACDProduto,'/','',[rfReplaceAll,rfIgnoreCase]));
  ACDProduto := Trim(StringReplace(ACDProduto,'\','',[rfReplaceAll,rfIgnoreCase]));
  ACDProduto := Trim(StringReplace(ACDProduto,'-','',[rfReplaceAll,rfIgnoreCase]));
  ACDProduto := Trim(StringReplace(ACDProduto,'_','',[rfReplaceAll,rfIgnoreCase]));
  ACDProduto := Trim(StringReplace(ACDProduto,',','',[rfReplaceAll,rfIgnoreCase]));
  ACDProduto := Trim(StringReplace(ACDProduto,'`','',[rfReplaceAll,rfIgnoreCase]));
  ACDProduto := Trim(StringReplace(ACDProduto,'´','',[rfReplaceAll,rfIgnoreCase]));

  BarCode := '';
  for i := 1 to Length(ACDProduto) do
      for j := Low(aAlfabeto) to High(aAlfabeto) do
             if aAlfabeto[j,0] = UpperCase(ACDProduto[i]) then
             begin
               BarCode := BarCode + aAlfabeto[j,1];
               Break;
             end;

  BarCode := Trim(StringReplace(BarCode,'0','',[rfReplaceAll,rfIgnoreCase]));
  BarCode := LeftStr('789' + AIDProduto + oStrZero(StrToInt(LeftStr(BarCode,8)),9-Length(AIDProduto)),12);
  BarCode := BarCode + oRETEAN13(BarCode);

  result := BarCode;
end;

{ Retorna Número de repetições de uma String }
(*******************************************************************************)
Function oPosCount(const ASubTexto: string; ATexto: string): Integer; STDCall;
(*******************************************************************************)
begin
  if (Length(ASubTexto) = 0) or (Length(ATexto) = 0) or (Pos(ASubTexto, ATexto) = 0) then
  Result := 0 else
  Result := (Length(ATexto) - Length(StringReplace(ATexto,ASubTexto,'',
      [rfReplaceAll]))) div Length(ASubTexto);
end;

{ Retorna Tipo de Preço }
(**********************************************************)
Function oRETTiposPrecos(ATipoPreco: String): Word; STDCall;
(**********************************************************)
var
  i: Word;
begin
  result     := 0;
  ATipoPreco := Trim(ATipoPreco);
  for i := Low(aTiposPrecos) to High(aTiposPrecos) do
      if (aTiposPrecos[i,0] = ATipoPreco) or (aTiposPrecos[i,1] = ATipoPreco) then
      begin
        result := StrToInt(aTiposPrecos[i,1]);
        Break;
      end;
end;

{ Retorna Saldo do Rateio }
(*********************************************************************************)
Procedure oRETRateio(var ARECPrincipal: TRECPrincipal;ADigitos: Word = 2); STDCall;
(*********************************************************************************)
begin
{  ARECPrincipal.VLRRateio := oTextToValor(ARECPrincipal.TOTRateio / ARECPrincipal.QTDRateio,ADigitos);
  ARECPrincipal.SLDRateio := ARECPrincipal.VLRRateio + (ARECPrincipal.TOTRateio - (ARECPrincipal.VLRRateio * ARECPrincipal.QTDRateio));




  try
    RECPrincipal.TOTRateio := oTextToValor(edvfrete.Text);
    RECPrincipal.QTDRateio := EDTRCom.Tag;
    oRETRateio(RECPrincipal);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE NFE_ITE');
      SQL.Add('SET    NFE_VFRETE = '''+oTextToValor(RECPrincipal.VLRRateio,2,True)+'''');
      ExecQuery;

      SQL.Add('UPDATE NFE_ITE');
      SQL.Add('SET    NFE_VFRETE = '''+oTextToValor(RECPrincipal.SLDRateio,2,True)+'''');
      SQL.Add('WHERE )
      ExecQuery;

select t.* from tab_cor t
where t.id = (select first 1 t2.id
              from tab_cor t2
              order by t2.id desc)
 }
end;

{ Retorna Composicao }
(***********************************************************************************)
Function oRETComposicao(AComposicao: String; ATamMaxLin: Word = 55): String; STDCall;
(***********************************************************************************)
var
  QTLin: Word;
begin
  AComposicao := Trim(StringReplace(AComposicao,',00%','%',[rfreplaceall]));

  QTLin := IFThen(oPosCount('%',AComposicao) < 4,1,
           IFThen(oPosCount('%',AComposicao) > 4,2,
           IFThen((Length(AComposicao) > ATamMaxLin) and
                  (ATamMaxLin > 0),2,1)));

  if QTLin = 1 then
  result := AComposicao else
  begin
    result := oRETQComposicao(AComposicao,3);
    result := result + '|' + Trim(Copy(AComposicao,Length(result) + 1,Length(AComposicao)));
  end;
end;

{ Retorna Quebra de Composicao }
(**************************************************************************)
Function oRETQComposicao(AComposicao: String;AQTPos: Word): String; STDCall;
(**************************************************************************)
var
  i,
  QTPos: word;
begin
  QTPos  := 0;
  result := '';
  for i  := 1 to Length(AComposicao) do
  begin
    result := Trim(LeftStr(AComposicao,i));
    if (AComposicao[i]   = '%') then inc(QTPos);
    if (QTPos = AQTPos) and
       ((AComposicao[i+1] = '%') or (AComposicao[i+2] = '%') or
        (AComposicao[i+3] = '%')) then
    Break;
  end;
end;

{ Retorna em KB o tamanho de um arquivo }
(***************************************************************)
Function oRETFileSize(const AFileName: String): LongInt; STDCall;
(***************************************************************)
var
  SearchRec: TSearchRec;
begin
  try
    if FindFirst(ExpandFileName(AFileName), faAnyFile, SearchRec) = 0 then
    Result := SearchRec.Size else
    Result := -1;
  finally
    SysUtils.FindClose(SearchRec);
  end;
end;

{ Retorna Linha Delimitada }
(*****************************************************************************)
Function oGetLinha(AValue: String;ADelimitador: String = ';'): String; STDCall;
(*****************************************************************************)
begin
  result := '';
  AValue := Trim(AValue);

  inc(Delimitador);
  if not oEmpty(AValue) then
  while AValue[Delimitador] >= ' ' do
  begin
    if AValue[Delimitador] = ADelimitador then Break;
    result := result + AValue[Delimitador];
    inc(Delimitador);
  end;
  result := Trim(Result);                                     
end;

{ Converte String para UTF8 }
(*****************************************************************)
Function oStrToUTF8(const AValue: WideString): AnsiString; STDCall;
(*****************************************************************)
var
  BufferLen: Integer;
begin
  result := '';
  if AValue <> '' then
  begin
    BufferLen := WideCharToMultiByte(CP_UTF8, 0, PWideChar(AValue), -1, nil, 0, nil, nil);
    SetLength(Result, BufferLen - 1);
    if BufferLen > 1 then
    WideCharToMultiByte(CP_UTF8, 0, PWideChar(AValue), -1, PAnsiChar(Result), BufferLen - 1, nil, nil);
    result := Trim(result);
  end;
end;

{ Converte UTF8 para String }
(*****************************************************************)
Function oUTF8ToStr(const AValue: AnsiString): WideString; STDCall;
(*****************************************************************)
var
  BufferLen: integer;
begin
  result := '';
  if AValue <> '' then
  begin
    BufferLen := MultiByteToWideChar(CP_UTF8, 0, PAnsiChar(AValue), -1, nil, 0);
    SetLength(Result, BufferLen - 1);
    if BufferLen > 1 then
    MultiByteToWideChar(CP_UTF8, 0, PAnsiChar(AValue), -1, PWideChar(Result), BufferLen - 1);
    result := Trim(result);
  end;
end;

{ Assign Imagem Jpeg }
(*************************************************************************************************)
Function oJPEGLoad(ACampo: TField; AImagem: TPicture;ARETPadrao: Boolean = True): LongInt; STDCall;
(*************************************************************************************************)
var
  FTJpeg: TJpegImage;
  FTStream: TMemoryStream;
begin
  FTJpeg   := TJpegImage.Create;
  FTStream := TMemoryStream.Create;
  FTStream.Clear;

  try
    if not ACampo.IsNull then
           TBlobField(ACampo).SaveToStream(FTStream)
    else
      if ((ARETPadrao) and (not oEmpty(RECParametros.Id))) then
           TBlobField(RECParametros.Fot2).SaveToStream(FTStream);

    FTStream.Position := 0;
    if FTStream.Size > 0 then
    begin
      FTJpeg.LoadFromStream(FTStream);
      AImagem.Assign(FTJpeg);
    end else AImagem.Assign(Nil);
  finally
    Result := FTStream.Size;

    FreeAndNil(FTStream);
    FreeAndNil(FTJpeg);
  end;
end;

{ Assign Imagem Bitmap }
(************************************************************************)
Function oBITMAPLoad(ACampo: TField; AImagem: TPicture): LongInt; STDCall;
(************************************************************************)
var
  FTBitmap: TBitmap;
  FTStream: TMemoryStream;
begin
  FTBitmap    := TBitmap.Create;
  FTStream := TMemoryStream.Create;
  FTStream.Clear;

  try
    if not ACampo.IsNull then
    TBlobField(ACampo).SaveToStream(FTStream);
    FTStream.Position := 0;

    if FTStream.Size > 0 then
    begin
      FTBitmap.LoadFromStream(FTStream);
      AImagem.Assign(FTBitmap);
    end else AImagem.Assign(Nil);
  finally
    Result := FTStream.Size;

    FreeAndNil(FTStream);
    FreeAndNil(FTBitmap);
  end;
end;

{ Retorna Null para variáveis vazias - Usado em Insert/Update Querys }
(*********************************************************************)
Function oNullIF(AValue: Variant): Variant; STDCall;
(*********************************************************************)
begin
  result := IFThen(oEmpty(AValue),NullAsStringValue,Trim(AValue));
end;

{ Ativa trava de repaginação }
(***********************************)
Procedure oLockWindowUpdate; STDCall;
(***********************************)
begin
  if Application.MainForm <> Nil then
     with Application.MainForm do
     begin
       Screen.Cursor := crAppStart;
       if not ALockWindowUpdate then
              ALockWindowUpdate := LockWindowUpdate(GetDesktopWindow());
     end else
     begin
       Screen.Cursor := crAppStart;
       if not ALockWindowUpdate then
              ALockWindowUpdate := LockWindowUpdate(GetDesktopWindow());
     end;  
end;

{ Desativa trava de repaginação }
(*************************************)
Procedure oUnLockWindowUpdate; STDCall;
(*************************************)
begin
  if Application.MainForm <> Nil then
     with Application.MainForm do
     begin
       Screen.Cursor := crDefault;
       if ALockWindowUpdate then
       begin
         ALockWindowUpdate := False;
         LockWindowUpdate(0);
         Repaint;
       end;
     end else
     begin
       Screen.Cursor := crDefault;
       if ALockWindowUpdate then
       begin
         ALockWindowUpdate := False;
         LockWindowUpdate(0);
       end;
     end;  
end;

{ Assign Imagem Jpeg }
(*************************************************************************************************************)
function _oLoadJPG(FIMG_ID,FIMG_PAD: TField; AIMG_PAD: TObject;AIMG_PAD_SHOW: Boolean = False): String; STDCall;
(*************************************************************************************************************)
var
  FTStream: TMemoryStream;
  FTJpeg  : TJpegImage;
begin
  if (not ALockWindowUpdate) or (AIMG_PAD_SHOW) then
      if not (TDataSetState(FIMG_ID) in [dsInsert,dsEdit]) then
         if  (FIMG_PAD.Tag = 0) or (FIMG_ID.Tag <> FIMG_ID.AsInteger) then
              try
                FTJpeg   := TJpegImage.Create;
                FTStream := TMemoryStream.Create;
                FTStream.Clear;

                FIMG_ID.Tag  := FIMG_ID.AsInteger;
                FIMG_PAD.Tag := 1;

                if not FIMG_PAD.IsNull then
                   TBlobField(FIMG_PAD).SaveToStream(FTStream)
                else
                   if (AIMG_PAD_SHOW) and (RECParametros.Id > 0) then
                       TBlobField(RECParametros.IMG_JPG_BLANK).SaveToStream(FTStream);

                   FTStream.Position := 0;
                if FTStream.Size      > 0 then
                begin
                  FTJpeg.LoadFromStream(FTStream);
                  if AIMG_PAD.ClassType = TImage then
                  begin
                    TImage(AIMG_PAD).Picture.Assign(FTJpeg);
                    TImage(AIMG_PAD).Hint := 'Dimensões: ' + IntToStr(FTJpeg.Width) + 'x' + IntToStr(FTJpeg.Height) + ' - ' + FormatFloat('Tamanho: ,##,0 KB',Trunc(FTStream.Size / 1000));  // Format('Tamanho: %f KB',[FTStream.Size / 1000]);
                  end;
                end else
                if AIMG_PAD.ClassType = TImage then
                begin
                  TImage(AIMG_PAD).Picture.Assign(Nil);
                  TImage(AIMG_PAD).Hint := EmptyStr;
                end;
              finally
                FreeAndNil(FTStream);
                FreeAndNil(FTJpeg);
              end;

  if AIMG_PAD.ClassType = TImage then
     result := TImage(AIMG_PAD).Hint else
     result := EmptyStr;
end;

{ Exporta Register de parâmetros }
(**********************************)
procedure oRegister_Export; STDCall;
(**********************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;
begin
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { NFe }
    if not RegEdit.KeyExists('NFe\') then
       oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !' + #13 +
                                 'Chave: NFe' + #13 +
                                 'Favor entrar em contato com o administrador do sistema.');

    if not RegEdit.OpenKey('NFe\',False) then
           oAviso(Application.Handle,'Falha ao tentar acessar o seu dispositivo !' + #13 +
                                     'Chave: NFe' + #13 +
                                     'Favor entrar em contato com o administrador do sistema.') else

       try
         RegEdit.WriteString('CNPJ'                 ,RECParametros.CNPJ);
         RegEdit.WriteString('DanfeCanhoto'         ,RECParametros.NFE_CANHOTO);
         RegEdit.WriteString('DanfeRepCabecalho'    ,RECParametros.NFE_CABECALHO);
         RegEdit.WriteString('DanfeTpDesc'          ,RECParametros.NFE_TIPO_DESCONTO);
         RegEdit.WriteString('FormatoItemQtd'       ,RECParametros.NFE_FORMAT_QTDE );
         RegEdit.WriteString('FormatoItemUnt'       ,RECParametros.NFE_FORMAT_VUNIT);
         RegEdit.WriteString('IE'                   ,RECParametros.IE);
         RegEdit.WriteString('Modelo'               ,RECParametros.NFE_MODELO);
         RegEdit.WriteString('NoSerieCertificado'   ,RECParametros.NFE_API_TOKEN);
         RegEdit.WriteString('Serie'                ,RECParametros.NFE_SERIE);
         RegEdit.WriteString('SizeDescItem'         ,RECParametros.NFE_FONT_SIZE_ITEM);
         RegEdit.WriteString('SizeFontObs'          ,RECParametros.NFE_FONT_SIZE_INFADCAD);
         RegEdit.WriteString('TimeZone'             ,RECParametros.NFE_TIMEZONE);
         RegEdit.WriteString('TotalizadorPisCofins' ,RECParametros.NFE_TOTAL_PISCOFINS);
         RegEdit.WriteString('TotalizarCfop'        ,RECParametros.NFE_TOTAL_CFOP);
         RegEdit.WriteString('UnidadeFederada'      ,RECParametros.LOG_UF);
         RegEdit.WriteString('UnidadeFederadaCodigo',RECParametros.LOG_UF_NU);
         RegEdit.WriteString('VerProc'              ,RECParametros.NFE_VER_PROC);

         RegEdit.WriteString('PathPrincipal',RECParametros.SHE_PATH + '\' + RECParametros.NFE_PATH);
         RegEdit.WriteString('DanfeLogo',RECParametros.NFE_LOGO);
         RegEdit.WriteString('CCeLogo',RECParametros.NFE_LOGO);

         RegEdit.WriteString('DataPacket'       ,RECParametros.SHE_PATH + '\' + RECParametros.NFE_PATH_DATA_PACKET          + '\NfeDtPkt.xtr'   );
         RegEdit.WriteString('DataPacketCCe'    ,RECParametros.SHE_PATH + '\' + RECParametros.NFE_PATH_DATA_PACKET_CCE      + '\CCeDtPkt.xtr'   );
         RegEdit.WriteString('DataPacketFormSeg',RECParametros.SHE_PATH + '\' + RECParametros.NFE_PATH_DATA_PACKET_FORM_SEG + '\NfeDtPkt-FS.xtr');
         RegEdit.WriteString('DataPacketFS'     ,RECParametros.SHE_PATH + '\' + RECParametros.NFE_PATH_DATA_PACKET_FS       + '\NfeDtPkt-FS.xtr');

         RegEdit.WriteString('Schemas',RECParametros.SHE_PATH + '\' + RECParametros.NFE_PATH_SCHEMAS + '\');
       finally
         RegEdit.CloseKey;
       end;

    { NFe\Path
    if not RegEdit.KeyExists('NFe\Path\') then
       try
         REGEdit.CreateKey('NFe\Path\');
         RegEdit.OpenKey  ('NFe\Path\',False);
         RegEdit.WriteString('Path','C:\Sheild');
       finally
         RegEdit.CloseKey;
       end;
    }

    { NFeApp }
    if RegEdit.KeyExists('NFe\NFeApp\') then
    begin
      if not RegEdit.OpenKey('NFe\NFeApp\',False) then
             oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                       'Chave: NFeApp'+#13+
                                       'Favor entrar em contato com o administrador do sistema.') else
      try
        RegEdit.WriteString('CodMunicipio',RECParametros.LOG_LOC_CMUN);
        RegEdit.WriteString('Municipio'   ,RECParametros.LOG_LOC_NO);
        RegEdit.WriteString('IE'          ,RECParametros.IE);
      finally
        RegEdit.CloseKey;
      end;
    end;

    { RespTec }
    if not RegEdit.KeyExists('NFe\RespTec\') then
       oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                 'Chave: RespTec'+#13+
                                 'Favor entrar em contato com o administrador do sistema.') else

       if not RegEdit.OpenKey('NFe\RespTec\',False) then
              oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                        'Chave: RespTec'+#13+
                                        'Favor entrar em contato com o administrador do sistema.') else
       try
         RegEdit.WriteString('CNPJ'    ,RECParametros.SHE_CNPJ);
         RegEdit.WriteString('CSRT'    ,'');
         RegEdit.WriteString('CSRTid'  ,'');
         RegEdit.WriteString('email'   ,RECParametros.SHE_EMAIL );
         RegEdit.WriteString('fone'    ,RECParametros.SHE_TEL_NU);
         RegEdit.WriteString('xContato',RECParametros.SHE_RESPONSAVEL);
       finally
         RegEdit.CloseKey;
       end;
  finally
    Regedit.Free;
  end;

  { Em alguns computadores não funciona
    SendMessage(HWND_BROADCAST      , WM_SETTINGCHANGE, 0,lParam);
  }

  { Vou usar esse, mas dizem q está ocioso }
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);

  { Esse aguardo o tempo estabelecido

   SendMessageTimeout(
       HWND_BROADCAST,
       WM_SETTINGCHANGE,
       0,
       lParam,
       SMTO_NORMAL,
       1000,
       aresult);
  }
end;

{ Exporta Register de Usuários }
(******************************************)
procedure oRegister_Export_Usuario; STDCall;
(******************************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;

begin
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { User }
    if not RegEdit.KeyExists('NFe\FBird\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: User'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\FBird\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: User'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('User'   ,RECUsuarios.Login);
             RegEdit.WriteString('Empresa',RECParametros.ID+' - '+RECParametros.Fantasia);
           finally
             RegEdit.CloseKey;
           end;

    { eMail }
    if not RegEdit.KeyExists('NFe\eMail\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: eMail'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\eMail\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: eMail'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('eMail'       ,RECUsuarios.EMAIL);
             RegEdit.WriteString('NomeExibicao',RECUsuarios.EMAIL_NOME);
             RegEdit.WriteString('Porta'       ,RECUsuarios.EMAIL_PORTA);
             RegEdit.WriteString('Senha'       ,RECUsuarios.EMAIL_TOKEN);
             RegEdit.WriteString('ServidorSMTP',RECUsuarios.EMAIL_SMTP);
             RegEdit.WriteString('SSL'         ,RECUsuarios.EMAIL_SSL);
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);
end;

{ Retira Envio Email Automático }
(*************************************)
procedure oRegister_DEL_Email; STDCall;
(*************************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;

begin
  { Desabilita Envio Automático }
  RECParametros.NFE_ENV_EMAIL_AUTO := '0';

  { Retira todos os dados de email do Register }
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { eMail }
    if not RegEdit.KeyExists('NFe\eMail\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: eMail'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\eMail\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: eMail'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('eMail'       ,EmptyStr);
             RegEdit.WriteString('NomeExibicao',EmptyStr);
             RegEdit.WriteString('Porta'       ,EmptyStr);
             RegEdit.WriteString('Senha'       ,EmptyStr);
             RegEdit.WriteString('ServidorSMTP',EmptyStr);
             RegEdit.WriteString('SSL'         ,EmptyStr);
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);
end;

{ Altera o tamanho da fonte da NFe }
(******************************************************)
procedure oRegister_UPD_SizeFont(ACount: Word); STDCall;
(******************************************************)
var
  RegEdit: TRegistry;
        lParam: Integer;
        Buf : Array[0..10] of Char;
        //aResult : cardinal;
begin
  RegEdit := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_WRITE;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  Buf    := 'Environment';
  lParam := Integer(@Buf[0]);

  try
    { NFe }
    if not RegEdit.KeyExists('NFe\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: NFe'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: NFe'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             RegEdit.WriteString('SizeFontObs',IFThen(ACount > 3,'6',RECParametros.NFE_FONT_SIZE_INFADCAD));
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;

  { Em alguns computadores não funciona
    SendMessage(HWND_BROADCAST      , WM_SETTINGCHANGE, 0,lParam);
  }

  { Vou usar esse, mas dizem q está ocioso }
  SendNotifyMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,lParam);
  //Application.ProcessMessages;

  { Esse aguardo o tempo estabelecido

   SendMessageTimeout(
       HWND_BROADCAST,
       WM_SETTINGCHANGE,
       0,
       lParam,
       SMTO_NORMAL,
       1000,
       aresult);
  }
end;

{ Importa Register }
(**************************************************************************)
procedure oRegister_Import_Usuario(var ARECUSuarios: TRECUsuarios); STDCall;
(**************************************************************************)
var
  RegEdit: TRegistry;
begin
  RegEdit := TRegistry.Create(KEY_READ OR KEY_WOW64_64KEY);
  RegEdit.Access  := KEY_READ;
  RegEdit.RootKey := HKEY_CURRENT_USER;

  try
    { User }
    if not RegEdit.KeyExists('NFe\FBird\') then
           oAviso(Application.Handle,'Regitry de Parâmetros para exportação não encontrado !'+#13+
                                     'Chave: User'+#13+
                                     'Favor entrar em contato com o administrador do sistema.') else
           if not RegEdit.OpenKey('NFe\FBird\',False) then
                  oAviso(Application.Handle,'Falha ao tentar abrir as configurações da NFe !'+#13+
                                            'Chave: User'+#13+
                                            'Favor entrar em contato com o administrador do sistema.') else
           try
             ARECUsuarios.DEEP  := RegEdit.ReadString('Empresa');
             ARECUsuarios.Login := RegEdit.ReadString('User');
           finally
             RegEdit.CloseKey;
           end;
  finally
    Regedit.Free;
  end;
end;

{ Formata String }
(****************************************************************)
function oPrimeiraLetraMaiuscula(ATexto: String): String; STDCall;
(****************************************************************)
var
  i: Integer;
begin
  ATexto :=  oLowerCase(ATexto);
  for i  :=  1 to Length(ATexto) do
      if i = 1 then ATexto[i] := UpCase(ATexto[i]) else
      if i <> Length(ATexto) then
      if (ATexto[i] = ' ') then
      if (ATexto[i+1]+ATexto[i+2]+ATexto[i+3] <> 'de ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'pôr ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'por ') and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'até ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'ate ') and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'não ') and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'nao ') and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'já ' ) and (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'ja ' ) and
                                                            (ATexto[i+1]+ATexto[i+2]+ATexto[i+3]+ATexto[i+4] <> 'sim ') and
                                                            (not oEmpty(ATexto[i+2])) then
      ATexto[i+1] := UpCase(ATexto[i+1]) else
      ATexto[i+1] := ATexto[i+1];
  Result := ATexto;
end;

{ Converte para minúsculo - Considera Acentos }
(***************************************************)
function oLowerCase(ATexto: String): String; STDCall;
(***************************************************)
var
  i: Word;
begin
  ATexto := Trim(LowerCase(ATexto));
  for i  := 1 to High(aCarUP) do
  ATexto := StringReplace(ATexto, aCarUP[i],aCarLW[i],[rfreplaceall]);
  result := Trim(ATexto);
end;

{ Converte para maiúsculo - Considera Acentos }
(***************************************************)
function oUpperCase(ATexto: String): String; STDCall;
(***************************************************)
var
  i: Word;
begin
  ATexto := Trim(UpperCase(ATexto));
  for i  := 1 to High(aCarLW) do
  ATexto := StringReplace(ATexto, aCarLW[i],aCarUP[i],[rfreplaceall]);
  result := Trim(ATexto);
end;

end.
