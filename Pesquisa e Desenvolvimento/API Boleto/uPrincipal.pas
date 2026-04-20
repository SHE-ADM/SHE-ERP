unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxEdLib, dxCntner, dxEditor, StdCtrls;

type
  TForm1 = class(TForm)
    edtBaseURL: TdxEdit;
    edtCnpjSh: TdxEdit;
    edtCnpjCedente: TdxEdit;
    edtTokenSh: TdxEdit;
    edtChunkSize: TdxEdit;
    edtDB: TdxEdit;
    edtDBUser: TdxEdit;
    edtDBPass: TdxEdit;
    edtWebhookURL: TdxEdit;
    edtWebhookAuthHeader: TdxEdit;
    edtWebhookAuthValue: TdxEdit;
    memJson: TdxMemo;
    memResp: TdxMemo;
    btnTestPost: TButton;
    btnEnviarLote: TButton;
    btnPollOnce: TButton;
    btnCadastrarWebhook: TButton;
    btnInitDB: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

memJson.Lines.Text :=
    '[' +
    ' {' +
    '  "CedenteContaNumero":"54321",' +
    '  "CedenteContaNumeroDV":"0",' +
    '  "CedenteConvenioNumero":"321",' +
    '  "CedenteContaCodigoBanco":"341",' +
    '  "TituloCarteira":"17",' +
    '  "SacadoCPFCNPJ":"28436161661",' +
    '  "SacadoEmail":"email@sacado.com",' +
    '  "SacadoNome":"Teste de Souza",' +
    '  "TituloDataEmissao":"01/01/2020",' +
    '  "TituloDataVencimento":"01/02/2020",' +
    '  "TituloNumeroDocumento":"01012020",' +
    '  "TituloValor":"0,02"' +
    ' }' +
    ']';

end;

end.
