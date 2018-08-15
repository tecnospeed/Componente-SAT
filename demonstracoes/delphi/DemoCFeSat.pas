unit DemoCFeSat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, spdCFeSat, spdCFeSatDataSets, ComCtrls, ExtCtrls, spdCFeSatType, Clipbrd;

type
  TfrmPrincipal = class(TForm)
    btnAtivarSat: TButton;
    mmoRetornoSat: TMemo;
    lblRetornoSat: TLabel;
    lblNomeDll: TLabel;
    edtNomeDllSat: TEdit;
    lblCnpjContribuinte: TLabel;
    lblCnpjSoftwareHouse: TLabel;
    edtCnpjContribuinte: TEdit;
    edtCnpjSoftwareHouse: TEdit;
    lblCodigoAtivacao: TLabel;
    edtCodigoAtivacao: TEdit;
    btnBloquearSAT: TButton;
    btnConsultarStatusOperacional: TButton;
    btnConsultaNumeroSessao: TButton;
    mmoLogs: TMemo;
    btnConfigurarInterfaceDeRede: TButton;
    btnDesbloquearSat: TButton;
    btnTesteFimAFim: TButton;
    lblLog: TLabel;
    btnConsultarSAT: TButton;
    btnExtrairLogs: TButton;
    dlgOpenArqFimAFim: TOpenDialog;
    btnCancelarVenda: TButton;
    btnEnviarDadosVenda: TButton;
    dlgOpenArqCancelar: TOpenDialog;
    btnTrocarCodigoDeAtivacao: TButton;
    pnlConfigDemo: TPanel;
    pnlBotoesDemo: TPanel;
    btnComunicarCertificadoICP: TButton;
    cbcertificados: TComboBox;
    lblCertificados: TLabel;
    btnAssociarAssinatura: TButton;
    dlgOpenConfRede: TOpenDialog;
    btnAtualizarSoftwareSAT: TButton;
    btnImprimirCFe: TButton;
    dlgOpenArqImpressao: TOpenDialog;
    dlgOpenCertificadoICPBrasil: TOpenDialog;
    btnVisualizar: TButton;
    btnEditar: TButton;
    btnExportar: TButton;
    btnSalvarConfiguracoes: TButton;
    btnCopiarClipboard: TButton;
    btnConverteTx2ParaXml: TButton;
    editarCancelada: TButton;
    dlgOpenArqImpressaoCancelada: TOpenDialog;
    btnImprimirCancelada: TButton;
    btnVizualizarCancelada: TButton;
    btnExportarCancelada: TButton;
    pgcPaginasSAT: TPageControl;
    tsAtivacao: TTabSheet;
    tsConfiguracao: TTabSheet;
    tsImpressaoAD: TTabSheet;
    lblFuncoesPrincipais: TLabel;
    btnManual: TButton;
    btnGerarViaDataSet: TButton;
    btnAbrirIni: TButton;
    edtUltimoID: TEdit;
    Label1: TLabel;
    edtSessao: TEdit;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAtivarSatClick(Sender: TObject);
    procedure btnConfigurarDemoClick(Sender: TObject);
    procedure btnBloquearSATClick(Sender: TObject);
    procedure btnConsultarStatusOperacionalClick(Sender: TObject);
    procedure btnConsultaNumeroSessaoClick(Sender: TObject);
    procedure btnConfigurarInterfaceDeRedeClick(Sender: TObject);
    procedure btnTesteFimAFimClick(Sender: TObject);
    procedure btnDesbloquearSatClick(Sender: TObject);
    procedure btnConsultarSATClick(Sender: TObject);
    procedure btnExtrairLogsClick(Sender: TObject);
    procedure btnEnviarDadosVendaClick(Sender: TObject);
    procedure btnCancelarVendaClick(Sender: TObject);
    procedure btnTrocarCodigoDeAtivacaoClick(Sender: TObject);
    procedure btnComunicarCertificadoICPClick(Sender: TObject);
    procedure btnAssociarAssinaturaClick(Sender: TObject);
    procedure btnAtualizarSoftwareSATClick(Sender: TObject);
    procedure btnImprimirCFeClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnSalvarConfiguracoesClick(Sender: TObject);
    procedure btnCopiarClipboardClick(Sender: TObject);
    procedure btnConverteTx2ParaXmlClick(Sender: TObject);
    procedure editarCanceladaClick(Sender: TObject);
    procedure btnImprimirCanceladaClick(Sender: TObject);
    procedure btnVizualizarCanceladaClick(Sender: TObject);
    procedure btnExportarCanceladaClick(Sender: TObject);
    procedure btnManualClick(Sender: TObject);
    procedure btnAbrirIniClick(Sender: TObject);
    procedure cbcertificadosChange(Sender: TObject);
    procedure btnGerarViaDataSetClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    FCFeSat : TspdCFeSat;
    procedure DoOnProgress(const aLogMessage : String);
    function getNumeroSessao: integer;
    function ObterConteudo(aConteudo: WideString; aLinha: integer): WideString;
    function LoadXMLSAT(aChave: String): WideString;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Math, StrUtils, ShellAPI, inifiles;

{$R *.dfm}

function TfrmPrincipal.getNumeroSessao: integer;
var aux: integer;
begin
  Randomize;
  aux := RandomRange(100000, 999999);
  edtSessao.Text := IntToStr(aux);
  result := aux;
end;

function TfrmPrincipal.LoadXMLSAT(aChave: String): WideString;
var
  _file : TStringList;
  _fileName : string;
begin
  _file := TStringList.Create;
  aChave := StringReplace(aChave, 'CFe', 'AD', [rfReplaceAll]);
  try
    _fileName := FCFeSat.DiretorioCopiaSeguranca + aChave + '.xml';
    if not FileExists(_fileName) then
      raise Exception.CreateFmt('Nao foi possivel encontrar o arquivo XML %s .Verifique se NFe esta autorizada.',[_fileName]);

    _file.LoadFromFile(_fileName);
    Result := _file.Text;
  finally
    _file.Free;
  end;
end;

procedure TfrmPrincipal.btnAssociarAssinaturaClick(Sender: TObject);
begin
  if cbcertificados.Text = '' then
    ShowMessage('Por favor configure o certificado.')
  else
  begin
    FCFeSat.NomeCertificado.Text := cbcertificados.Text;
    mmoRetornoSat.Text := FCFeSat.AssociarAssinatura(getNumeroSessao);
  end;
end;

procedure TfrmPrincipal.btnAtivarSatClick(Sender: TObject);
var
  _opcao : STRING;
  _opcaoKind : TCertificadoAtivacaoSat;
begin
  _opcao := InputBox('Trocar Código de ativação', 'Informe a opção do certificado de ativação. (1 - AC SAT SEFAZ, 2 - ICP BRASIL, 3 - RENOVAÇÃO ICP BRASIL)','2');
  case AnsiIndexText(_opcao,['1','2','3']) of
    0: _opcaoKind := caACSATSEFAZ;
    1: _opcaoKind := caICPBRASIL;
    2: _opcaoKind := caRENOVACAOICPBRASIL;
  else
    raise Exception.Create('Opcao do certificado de ativação deve ser 1 ,2 ou 3');
  end;
  mmoRetornoSat.Text := FCFeSat.AtivarSat(getNumeroSessao,_opcaoKind);
end;

procedure TfrmPrincipal.btnAtualizarSoftwareSATClick(Sender: TObject);
begin
  mmoRetornoSat.Text := FCFeSat.AtualizarSoftwareSAT(getNumeroSessao);
end;

procedure TfrmPrincipal.btnBloquearSATClick(Sender: TObject);
begin
  mmoRetornoSat.Text := FCFeSat.BloquearSAT(getNumeroSessao);
end;

procedure TfrmPrincipal.btnCancelarVendaClick(Sender: TObject);
var
  _chave,_CNPJSoftwareHouse, _CNPJCPFDestinatario, _NumeroCaixa, _SignAC, SignAC : string;
begin
  SignAC := 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' + 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';
  _chave := InputBox('Chave para cancelamento', 'Informe a chave do CFe','');
  _CNPJSoftwareHouse := InputBox('CNPJ Software House do cancelamento', 'Informe o CNPJ da Software house do CFe',edtCnpjSoftwareHouse.Text);
  _CNPJCPFDestinatario := InputBox('CNPJ ou CPF do destinatario do cancelamento', 'Informe a CNPJ ou CPF do destinatário do CFe','');
  _NumeroCaixa := InputBox('Número do caixa do cancelamento', 'Informe o caixa do CFe','123');
  _SignAC := InputBox('Assinatura do aplicativo comercial do cancelamento', 'Informe a assinatura do aplicativo comercial do CFe', SignAC);

  mmoRetornoSat.Text := FCFeSat.CancelarUltimaVenda(getNumeroSessao,_chave,_CNPJSoftwareHouse, _CNPJCPFDestinatario, _NumeroCaixa, _SignAC);
end;

procedure TfrmPrincipal.btnComunicarCertificadoICPClick(Sender: TObject);
var
  _arquivo : TStringList;
begin
  _arquivo := TStringList.Create;
  begin
    try
      dlgOpenCertificadoICPBrasil.InitialDir := ExtractFilePath(ParamStr(0));
      dlgOpenCertificadoICPBrasil.Execute;
      if dlgOpenCertificadoICPBrasil.FileName <> '' then
      begin
        _arquivo.LoadFromFile(dlgOpenCertificadoICPBrasil.FileName);
        mmoRetornoSat.Text := FCFeSat.ComunicarCertificadoICPBRASIL(getNumeroSessao,_arquivo.Text);
      end
    finally
      _arquivo.Free;
    end;
  end;
end;

procedure TfrmPrincipal.btnConfigurarDemoClick(Sender: TObject);
begin
  FCFeSat.LoadConfig;
  edtNomeDllSat.Text := FCFeSat.NomeDllSat;
  edtCnpjContribuinte.Text := FCFeSat.CnpjContribuinte;
  edtCnpjSoftwareHouse.Text := FCFeSat.CnpjSoftwareHouse;
  edtCodigoAtivacao.Text := FCFeSat.CodigoAtivacao;
  cbcertificados.Text := FCFeSat.NomeCertificado.Text;
  cbcertificados.ItemIndex := cbcertificados.Items.IndexOf(Trim(FCFeSat.NomeCertificado.Text));
end;

procedure TfrmPrincipal.btnConfigurarInterfaceDeRedeClick(Sender: TObject);
var
  _arquivo: TStringList;
begin
  _arquivo := TStringList.Create;
  try
    dlgOpenConfRede.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenConfRede.Execute;
    if dlgOpenConfRede.FileName <> '' then
    begin
      _arquivo.LoadFromFile(dlgOpenConfRede.FileName);
      mmoRetornoSat.Text := FCFeSat.ConfigurarInterfaceDeRede(getNumeroSessao,_arquivo.Text)
    end
  finally
    _arquivo.Free;
  end;
end;

procedure TfrmPrincipal.btnConsultaNumeroSessaoClick(Sender: TObject);
var
  _numeroSessaoConsultar : string;
begin
  _numeroSessaoConsultar := InputBox('Consultar numero sessao','Número sessão a ser consultado','');
  mmoRetornoSat.Text := FCFeSat.ConsultarNumeroSessao(getNumeroSessao,StrToInt(_numeroSessaoConsultar));
end;

procedure TfrmPrincipal.btnConsultarSATClick(Sender: TObject);
begin
  mmoRetornoSat.Text := FCFeSat.ConsultarSat(getNumeroSessao);
end;

procedure TfrmPrincipal.btnConsultarStatusOperacionalClick(Sender: TObject);
begin
  mmoRetornoSat.Text := FCFeSat.ConsultarStatusOperacional(getNumeroSessao);
end;

procedure TfrmPrincipal.btnConverteTx2ParaXmlClick(Sender: TObject);
var
  _arquivo: TStringList;
begin
  _arquivo := TStringList.Create;
  try
    dlgOpenConfRede.InitialDir := ExtractFilePath(ParamStr(0)) + 'Exemplos\';
    dlgOpenConfRede.Execute;
    if dlgOpenConfRede.FileName <> '' then
    begin
      _arquivo.LoadFromFile(dlgOpenConfRede.FileName);
      mmoRetornoSat.Text := FCFeSat.ConverterLoteParaXml(_arquivo.Text,ve0006);
    end
  finally
    _arquivo.Free;
  end;
end;

procedure TfrmPrincipal.btnCopiarClipboardClick(Sender: TObject);
begin
  Clipboard.AsText := mmoRetornoSat.Text;
end;

procedure TfrmPrincipal.btnDesbloquearSatClick(Sender: TObject);
begin
  mmoRetornoSat.Text := FCFeSat.DesbloquearSAT(getNumeroSessao);
end;

procedure TfrmPrincipal.btnEditarClick(Sender: TObject);
var
  _arquivo : TStringList;
begin
  _arquivo := TStringList.Create;
  try
    if edtUltimoID.Text = '' then
    begin
      dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
      dlgOpenArqImpressao.DefaultExt := '.xml';
      dlgOpenArqImpressao.Execute;
      if dlgOpenArqImpressao.FileName <> '' then
      begin
        _arquivo.LoadFromFile(dlgOpenArqImpressao.FileName);

        FCFeSat.EditarCFeSAT(_arquivo.Text);
      end
    end
    else
      FCFeSat.EditarCFeSAT(LoadXMLSAT(edtUltimoID.Text));
  finally
    _arquivo.Free;
  end;
end;

procedure TfrmPrincipal.btnEnviarDadosVendaClick(Sender: TObject);
var aux: widestring;
begin
   aux := FCFeSat.EnviarDadosVenda(getNumeroSessao, mmoRetornoSat.Text);
   mmoRetornoSat.Text := aux;
   edtUltimoID.Text := ObterConteudo(aux, 8);
end;

procedure TfrmPrincipal.btnExportarCanceladaClick(Sender: TObject);
var
  _ADnota, _ADCnota : TStringList;
  _formato : string;
begin
  _ADnota := TStringList.Create;
  _ADCnota := TStringList.Create;
  try
    dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressao.DefaultExt := '.xml';
    dlgOpenArqImpressao.Execute;

    dlgOpenArqImpressaoCancelada.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressaoCancelada.DefaultExt := '.xml';
    dlgOpenArqImpressaoCancelada.Execute();
    if ((dlgOpenArqImpressao.FileName <> '') and (dlgOpenArqImpressaoCancelada.FileName <> '')) then
    begin
      _ADnota.LoadFromFile(dlgOpenArqImpressao.FileName);
      _ADCnota.LoadFromFile(dlgOpenArqImpressaoCancelada.FileName);
      _formato := InputBox('Exportar CFe','Informe o número 1 - PDF ou 2 - HTML','1');
      if (_formato = '1') then
        FCFeSat.ExportarCFeSATCancelada(_ADnota.Text, _ADCnota.Text ,'',fePDF,'')
      else if (_formato = '2') then
        FCFeSat.ExportarCFeSATCancelada(_ADnota.Text, _ADCnota.Text,'',feHTML,'')
      else
        Exception.Create('O formato para exportação deve ser 1 ou 2');
    end
  finally
    _ADnota.Free;
    _ADCnota.Free;
  end;
end;

procedure TfrmPrincipal.btnExportarClick(Sender: TObject);
var
  _arquivo : TStringList;
  _formato : string;
begin
  _arquivo := TStringList.Create;
  try
    if edtUltimoID.Text = '' then
    begin
		  dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
		  dlgOpenArqImpressao.DefaultExt := '.xml';
		  dlgOpenArqImpressao.Execute;
		  if dlgOpenArqImpressao.FileName <> '' then
		  begin
		    _arquivo.LoadFromFile(dlgOpenArqImpressao.FileName);
		    _formato := InputBox('Exportar CFe','Informe o número 1 - PDF ou 2 - HTML','1');
		    if (_formato = '1') then
			    FCFeSat.ExportarCFeSAT(_arquivo.Text,'',fePDF,'')
		    else if (_formato = '2') then
			    FCFeSat.ExportarCFeSAT(_arquivo.Text,'',feHTML,'')
		    else
			    Exception.Create('O formato para exportação deve ser 1 ou 2');
		  end
    end
    else
      FCFeSat.ExportarCFeSAT(LoadXMLSAT(edtUltimoID.Text),'',fePDF,'');
  finally
    _arquivo.Free;
  end;
end;

procedure TfrmPrincipal.btnExtrairLogsClick(Sender: TObject);
begin
  mmoRetornoSat.Text := FCFeSat.ExtrairLogs(getNumeroSessao);
end;

procedure TfrmPrincipal.btnImprimirCanceladaClick(Sender: TObject);
var
  _ADnota, _ADCnota : TStringList;
begin
  _ADnota := TStringList.Create;
  _ADCnota := TStringList.Create;
  try
    dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressao.DefaultExt := '.xml';
    dlgOpenArqImpressao.Execute;

    dlgOpenArqImpressaoCancelada.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressaoCancelada.DefaultExt := '.xml';
    dlgOpenArqImpressaoCancelada.Execute();
    if ((dlgOpenArqImpressao.FileName <> '') and (dlgOpenArqImpressaoCancelada.FileName <> '')) then
    begin
      _ADnota.LoadFromFile(dlgOpenArqImpressao.FileName);
      _ADCnota.LoadFromFile(dlgOpenArqImpressaoCancelada.FileName);

      FCFeSat.ImprimirCFeSATCancelada(_ADnota.Text, _ADCnota.Text,'','');
    end
  finally
    _ADnota.Free;
    _ADCnota.Free;
  end;
end;

procedure TfrmPrincipal.btnImprimirCFeClick(Sender: TObject);
var
  _arquivo : TStringList;
begin
  _arquivo := TStringList.Create;
  try
    if edtUltimoID.Text = '' then
    begin
      dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
      dlgOpenArqImpressao.DefaultExt := '.xml';
      dlgOpenArqImpressao.Execute;
      if dlgOpenArqImpressao.FileName <> '' then
      begin
        _arquivo.LoadFromFile(dlgOpenArqImpressao.FileName);

        FCFeSat.ImprimirCFeSAT(_arquivo.Text);
      end
    end
    else
      FCFeSat.ImprimirCFeSAT(LoadXMLSAT(edtUltimoID.Text));
  finally
    _arquivo.Free;
  end;
end;

procedure TfrmPrincipal.btnManualClick(Sender: TObject);
var
  url : string;
begin
  url := 'https://atendimento.tecnospeed.com.br/hc/pt-br/categories/360000564074-CF-e-SAT';
  ShellExecute(self.WindowHandle,'open',PChar(url),nil,nil, SW_SHOWNORMAL);
end;

procedure TfrmPrincipal.btnSalvarConfiguracoesClick(Sender: TObject);
begin
  FCFeSat.NomeCertificado.Text := cbcertificados.Text;
  FCFeSat.NomeDllSat := edtNomeDllSat.Text;
  FCFeSat.CodigoAtivacao := edtCodigoAtivacao.Text;
  FCFeSat.CnpjContribuinte := edtCnpjContribuinte.Text;
  FCFeSat.CnpjSoftwareHouse := edtCnpjSoftwareHouse.Text;
  FCFeSat.UF := 'SP';
  FCFeSat.SaveConfig;
end;

procedure TfrmPrincipal.DoOnProgress(const aLogMessage: String);
begin
  mmoLogs.Lines.Insert(0,aLogMessage);
end;

procedure TfrmPrincipal.editarCanceladaClick(Sender: TObject);
var
  _ADnota, _ADCnota : TStringList;
begin
  _ADnota := TStringList.Create;
  _ADCnota := TStringList.Create;
  try
    dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressao.DefaultExt := '.xml';
    dlgOpenArqImpressao.Execute;

    dlgOpenArqImpressaoCancelada.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressaoCancelada.DefaultExt := '.xml';
    dlgOpenArqImpressaoCancelada.Execute();
    if ((dlgOpenArqImpressao.FileName <> '') and (dlgOpenArqImpressaoCancelada.FileName <> '')) then
    begin
      _ADnota.LoadFromFile(dlgOpenArqImpressao.FileName);
      _ADCnota.LoadFromFile(dlgOpenArqImpressaoCancelada.FileName);
      FCFeSat.EditarCFeSATCancelada(_ADnota.Text, _ADCnota.Text,'');
    end
  finally
    _ADnota.Free;
    _ADCnota.Free;
  end;
end;

procedure TfrmPrincipal.btnTesteFimAFimClick(Sender: TObject);
var
  _arquivo: TStringList;
begin
  _arquivo := TStringList.Create;
  try
    dlgOpenArqFimAFim.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqFimAFim.Execute;
    if dlgOpenArqFimAFim.FileName <> '' then
    begin
      _arquivo.LoadFromFile(dlgOpenArqFimAFim.FileName);
      mmoRetornoSat.Text := FCFeSat.TesteFimAFim(getNumeroSessao, _arquivo.Text);
    end
  finally
    _arquivo.Free;
  end;
end;

procedure TfrmPrincipal.btnTrocarCodigoDeAtivacaoClick(Sender: TObject);
var
  _codigo, _confirmacao, _opcao : string;
  _opcaoKind : TOpcaoCodigoAtivacaoSat;
begin
  _codigo := InputBox('Trocar Código de ativação', 'Informe o novo código de ativação','');
  _confirmacao := InputBox('Trocar Código de ativação', 'Informe a confirmação do novo código de ativação','');
  _opcao := InputBox('Trocar Código de ativação', 'Informe a opção do código de ativação. (1 - para caráter normal, 2 - para caráter emergencial)','1');
  case AnsiIndexText(_opcao,['1','2']) of
    0: _opcaoKind := caNormal;
    1: _opcaoKind := caEmergencia;
  else
    raise Exception.Create('Opcao do código de ativação deve ser 1 ou 2');
  end;
  mmoRetornoSat.Text := FCFeSat.TrocarCodigoDeAtivacao(getNumeroSessao,_opcaoKind,_codigo,_confirmacao);
end;

procedure TfrmPrincipal.btnVisualizarClick(Sender: TObject);
var
  _arquivo : TStringList;
begin
  _arquivo := TStringList.Create;
  try
    if edtUltimoID.Text = '' then
    begin
      dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
      dlgOpenArqImpressao.DefaultExt := '.xml';
      dlgOpenArqImpressao.Execute;
      if dlgOpenArqImpressao.FileName <> '' then
      begin
        _arquivo.LoadFromFile(dlgOpenArqImpressao.FileName);

        FCFeSat.VisualizarCFeSAT(_arquivo.Text);
      end
    end
    else
      FCFeSat.VisualizarCFeSAT(LoadXMLSAT(edtUltimoID.Text));
  finally
    _arquivo.Free;
  end;
end;

procedure TfrmPrincipal.btnVizualizarCanceladaClick(Sender: TObject);
var
  _ADnota, _ADCnota : TStringList;
begin
  _ADnota := TStringList.Create;
  _ADCnota := TStringList.Create;
  try
    dlgOpenArqImpressao.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressao.DefaultExt := '.xml';
    dlgOpenArqImpressao.Execute;

    dlgOpenArqImpressaoCancelada.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpenArqImpressaoCancelada.DefaultExt := '.xml';
    dlgOpenArqImpressaoCancelada.Execute();
    if ((dlgOpenArqImpressao.FileName <> '') and (dlgOpenArqImpressaoCancelada.FileName <> '')) then
    begin
      _ADnota.LoadFromFile(dlgOpenArqImpressao.FileName);
      _ADCnota.LoadFromFile(dlgOpenArqImpressaoCancelada.FileName);

      FCFeSat.VisualizarCFeSATCancelada(_ADnota.Text, _ADCnota.Text,'');
    end
  finally
    _ADnota.Free;
    _ADCnota.Free;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FCFeSat := TspdCFeSat.Create(nil);
  FCFeSat.OnProgressLog := DoOnProgress;
  FCFeSat.ListarCertificados(cbcertificados.Items);
  FCFeSat.LoadConfig;
  edtNomeDllSat.Text := FCFeSat.NomeDllSat;
  edtCnpjContribuinte.Text := FCFeSat.CnpjContribuinte;
  edtCnpjSoftwareHouse.Text := FCFeSat.CnpjSoftwareHouse;
  edtCodigoAtivacao.Text := FCFeSat.CodigoAtivacao;
  cbcertificados.Text := FCFeSat.NomeCertificado.Text;
  cbcertificados.ItemIndex := cbcertificados.Items.IndexOf(Trim(FCFeSat.NomeCertificado.Text));

end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCFeSat);
end;

procedure TfrmPrincipal.btnAbrirIniClick(Sender: TObject);
begin
  ShellExecute(Handle,'Open',PCHAR('cfesatConfig.ini'), '','', SW_SHOWNORMAL);
end;

procedure TfrmPrincipal.cbcertificadosChange(Sender: TObject);
var
  _Ini : TIniFile;
begin
  _ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'cfesatConfig.ini');
  _Ini.WriteString('CFESAT','NomeCertificado',cbcertificados.Text);
end;

procedure TfrmPrincipal.btnGerarViaDataSetClick(Sender: TObject);
var
  _dataSet : TspdCFeSatDataSets;
  SignAC : String;
begin
  _dataSet := TspdCFeSatDataSets.Create(nil);
  SignAC := 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' + 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';
  try
    _dataSet.VersaoEsquema := ve0007;
    _dataSet.ArquivoConversorXml := FCFeSat.DiretorioTemplates + 'Conversor\CFeSatDataSets.xml';
    _dataSet.LoteCFeSat.Clear;
    _dataSet.Incluir;
    _dataSet.Campo('versaoDadosEnt_A03').Value := '0.07';
    _dataSet.Campo('CNPJ_B11').Value := '00611455000143';
    _dataSet.Campo('signAC_B12').Value := SignAC;
    _dataSet.Campo('numeroCaixa_B14').Value := '123';

    _dataSet.Campo('CNPJ_C02').Value := '11111111111111';
    _dataSet.Campo('IE_C12').Value := '111111111111';
    _dataSet.Campo('IM_C13').Value := '123123';
    _dataSet.Campo('cRegTribISSQN_C15').Value := '';
    _dataSet.Campo('indRatISSQN_C16').Value := 'N';

    _dataSet.Campo('CNPJ_E02').Value := '10575716000170';
    _dataSet.Campo('CPF_E03').Value := '';
    _dataSet.Campo('xNome_E04').Value := 'Fazenda';

    _dataSet.Campo('xLgr_G02').Value := '';
    _dataSet.Campo('nro_G03').Value := '';
    _dataSet.Campo('xCpl_G04').Value := '';
    _dataSet.Campo('xBairro_G05').Value := '';
    _dataSet.Campo('xMun_G06').Value := '';
    _dataSet.Campo('UF_G07').Value := '';

    _dataSet.IncluirItem;
    _dataSet.Campo('nItem_H02').Value := '1';
    _dataSet.Campo('cProd_I02').Value := '0001';
    _dataSet.Campo('cEAN_I03').Value := '0012345678905';
    _dataSet.Campo('xProd_I04').Value := 'Trib ICMS Integral Aliquota 10.00% - PIS e COFINS cod 04 - Orig 0';
    _dataSet.Campo('NCM_I05').Value := '47061000';
    _dataSet.Campo('CFOP_I06').Value := '5001';
    _dataSet.Campo('uCom_I07').Value := 'kg';
    _dataSet.Campo('qCom_I08').Value := '1.0000';
    _dataSet.Campo('vUnCom_I09').Value := '100.00';
    _dataSet.Campo('indRegra_I11').Value := 'A';
    _dataSet.Campo('vDesc_I12').Value := '';
    _dataSet.Campo('vOutro_I13').Value := '';

    _dataSet.Campo('vItem12741_M02').Value := '1.00';

    _dataSet.Campo('Orig_N06').Value := '0';
    _dataSet.Campo('CST_N07').Value := '00';
    _dataSet.Campo('pICMS_N08').Value := '10.00';
    _dataSet.Campo('CSOSN_N10').Value := '';

    _dataSet.Campo('CST_Q07').Value := '04';
    _dataSet.Campo('vBC_Q08').Value := '';
    _dataSet.Campo('pPIS_Q09').Value := '';
    _dataSet.Campo('qBCProd_Q11').Value := '';
    _dataSet.Campo('vAliqProd_Q12').Value := '';

    _dataSet.Campo('CST_S07').Value := '04';
    _dataSet.Campo('vBC_S08').Value := '';
    _dataSet.Campo('pCOFINS_S09').Value := '';
    _dataSet.Campo('qBCProd_S11').Value := '';
    _dataSet.Campo('vAliqProd_S12').Value := '';

    _dataSet.Campo('vBC_T02').Value := '';
    _dataSet.Campo('pCOFINS_T03').Value := '';
    _dataSet.Campo('qBCProd_T04').Value := '';
    _dataSet.Campo('vAliqProd_T05').Value := '';

    _dataSet.Campo('vDeducISSQN_U02').Value := '';
    _dataSet.Campo('vAliq_U04').Value := '';
    _dataSet.Campo('cMunFG_U06').Value := '';
    _dataSet.Campo('cListServ_U07').Value := '';
    _dataSet.Campo('cServTribMun_U08').Value := '';
    _dataSet.Campo('cNatOp_U09').Value := '';
    _dataSet.Campo('indIncFisc_U10').Value := '';

    _dataSet.Campo('infAdProd_V01').Value := '';
    _dataSet.SalvarItem;

    _dataSet.IncluirPart('PAGAMENTO');
    _dataSet.Campo('cMP_WA03').Value := '01';
    _dataSet.Campo('vMP_WA04').Value := '100.00';
    _dataSet.Campo('cAdmC_WA05').Value := '';
    _dataSet.SalvarPart('PAGAMENTO');

    _dataSet.Campo('vDescSubTot_W20').Value := '';
    _dataSet.Campo('vAcresSubtot_W21').Value := '';
    _dataSet.Campo('vCFeLei12741_W22').Value := '';

    _dataSet.Campo('infCpl_Z02').Value := '';
    _dataSet.Salvar;
    mmoRetornoSat.Text := _dataSet.LoteCFeSat.Text;
  finally
    FreeAndNil(_dataSet);
  end;
end;

function TfrmPrincipal.ObterConteudo(aConteudo: WideString;
  aLinha: integer): WideString;
var _trata: TStringlist;
begin
  _trata := TStringList.Create;
  try
    _trata.Delimiter := '|';
    _trata.QuoteChar := '"';
    aConteudo := StringReplace(aConteudo, ' ', '"', [rfReplaceAll]);
    _trata.DelimitedText := aConteudo;
    result := _trata[aLinha];
  finally
    FreeAndNil(_trata);
  end;
end;

procedure TfrmPrincipal.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked then
  begin
    tsAtivacao.TabVisible := true;
    tsConfiguracao.TabVisible := true;
  end
  else
  begin
    tsAtivacao.TabVisible := false;
    tsConfiguracao.TabVisible := false;
  end;
end;

end.
