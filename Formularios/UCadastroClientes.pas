unit UCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.Mask, xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type
  TfCadastroClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    edtnome: TEdit;
    Label3: TLabel;
    edtendereco: TEdit;
    Label4: TLabel;
    edtnumero: TEdit;
    edtcidade: TEdit;
    Label6: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    edtCep: TEdit;
    edtbairro: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    edtcodigo: TEdit;
    Panel1: TPanel;
    btnNovo: TButton;
    btncancelar: TButton;
    btnFechar: TButton;
    Label12: TLabel;
    edtEmail: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    edtPais: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    edtComplemento: TEdit;
    cbbUf: TComboBox;
    btnEnviaEmail: TButton;
    OpenDialog1: TOpenDialog;
    Label10: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edtIdentidade: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    edtComCopia: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    edtCpf: TMaskEdit;
    edtTelefone: TMaskEdit;
    edtCelular: TMaskEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LimpaTela(sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure edtcodigoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCepExit(Sender: TObject);
    procedure edtnumeroExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure btnEnviaEmailClick(Sender: TObject);
    procedure edtnomeExit(Sender: TObject);
    procedure edtIdentidadeExit(Sender: TObject);
    procedure edtCelularExit(Sender: TObject);
    procedure cbbUfExit(Sender: TObject);
    procedure btnconfirmarClick(Sender: TObject);
    procedure edtComCopiaExit(Sender: TObject);
    procedure criarArquivoXML;
  private
    { Private declarations }
  public
    { Public declarations }
    cadastroNovo : Boolean;
    retorno, emailOk: Boolean;
    arquivoXML : string;
  end;

var
  fCadastroClientes: TfCadastroClientes;

implementation

{$R *.dfm}

uses uFuncao, UPrincipal;

procedure TfCadastroClientes.btnNovoClick(Sender: TObject);
begin
  LimpaTela(btnNovo);
  edtnome.SetFocus;
end;

procedure TfCadastroClientes.cbbUfExit(Sender: TObject);
begin
  if (btnFechar.Focused) or (ActiveControl.Tag < cbbUf.Tag) then
    Exit;
  if trim(cbbUf.Text) = '' then
  begin
    Application.MessageBox('Campo UF ? obrigat?rio, verifique!', 'Aten??o',
                           MB_OK + MB_ICONWARNING);
    cbbUf.SetFocus;
    Abort;
  end;
end;

procedure TfCadastroClientes.criarArquivoXML;
var
  XMLDocument: TXMLDocument;
  NodeTabela, NodeCliente, NodeEndereco: IXMLNode;
  I: Integer;
  XMLText : string;
begin
  arquivoXML := '';
  XMLDocument := TXMLDocument.Create(Self);
  try
    XMLDocument.Active := True;
    XMLDocument.Version  := '1.0';
    XMLDocument.Encoding := 'UTF-16';
    NodeTabela := XMLDocument.AddChild('Clientes');
    //exporta as informa??es cadastradas
    //Dados do cliente
    NodeCliente := XMLDocument.CreateNode('Cliente');
    NodeCliente.AddChild('Codigo').Text := edtcodigo.Text;
    NodeCliente.AddChild('Nome').Text := trim(edtnome.Text);
    NodeCliente.AddChild('Identidade').Text := trim(edtIdentidade.Text);
    NodeCliente.AddChild('CPF').Text := edtCpf.Text;
    NodeCliente.AddChild('Telefone').Text := edtTelefone.Text;
    NodeCliente.AddChild('Celular').Text := edtCelular.Text;
    NodeCliente.AddChild('Email').Text := Trim(edtEmail.Text);
    //Dados do endere?o do cliente
    NodeEndereco := NodeCliente.AddChild('Endereco');
    NodeEndereco.AddChild('Cep').Text := Trim(edtCep.Text);
    NodeEndereco.AddChild('Logradouro').Text := Trim(edtendereco.Text);
    NodeEndereco.AddChild('Numero').Text := Trim(edtnumero.Text);
    NodeEndereco.AddChild('Complemento').Text := Trim(edtComplemento.Text);
    NodeEndereco.AddChild('Bairro').Text := trim(edtbairro.Text);
    NodeEndereco.AddChild('Cidade').Text := trim(edtCidade.Text);
    NodeEndereco.AddChild('Estado').Text := trim(cbbUf.Text);
    NodeEndereco.AddChild('Pais').Text := trim(edtPais.Text);

    NodeTabela.ChildNodes.Add(NodeCliente);

    XMLText := StringReplace(XMLDocument.XML.Text,'UTF-16','UTF-8',[rfReplaceAll]);
    XMLText := StringReplace(StringReplace(XMLText, #10, '', [rfReplaceAll]), #13, '', [rfReplaceAll]);
    arquivoXML := '..\..\ArquivoXML\cliente' + Tfuncoes.Strzero(edtcodigo.Text,8) + '.xml';
    if not DirectoryExists('..\..\ArquivoXML\') then
      CreateDir('..\..\ArquivoXML\');
    XMLDocument.SaveToFile(arquivoXML);
  finally
    XMLDocument.Active := False;
    XMLDocument.Free;
  end;
end;

procedure TfCadastroClientes.edtComCopiaExit(Sender: TObject);
var
  i, valor : Integer;
  email, letra, texto : string;
begin
  if trim(edtComCopia.Text) > '' then
  begin
    valor := length(trim(edtComCopia.Text));
    letra := Copy(trim(edtComCopia.Text), valor,1);
    if letra <> ',' then
      edtComCopia.Text := trim(edtComCopia.Text) +',';
    texto := trim(edtComCopia.Text);
    while Trim(texto) > '' do
    begin
      i := Pos(',', texto);
      email := copy(texto,1,i-1);
      emailOk := TFuncoes.ValidarEMail(email);
      texto := Copy(texto,i+1,Length(texto));
      if not emailOk then
       begin
         Application.MessageBox(PChar('Email ' + email + ' n?o ? v?lido, verifique'), 'Aten??o',
                                MB_OK + MB_ICONWARNING);
         edtComCopia.SetFocus;
         Abort;
      end;
    end;
  end;
end;

procedure TfCadastroClientes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfCadastroClientes.btnconfirmarClick(Sender: TObject);
begin
  edtnomeExit(Self);
  edtIdentidadeExit(Self);
  edtCpfExit(Self);
  edtCelularExit(Self);
  edtEmailExit(Self);
  edtCepExit(Self);
  cbbUfExit(Self);
end;

procedure TfCadastroClientes.btnEnviaEmailClick(Sender: TObject);
var
  anexoEmail : array[0..99] of string;
  ind : Integer;
begin
  //Confirma se os campos obrigat?rios foram preenchidos
  edtnomeExit(Self);
  edtIdentidadeExit(Self);
  edtCpfExit(Self);
  edtCelularExit(Self);
  edtEmailExit(Self);
  edtCepExit(Self);

  //Faz as tratativas para envio do email
  anexoEmail[0] := '';
  OpenDialog1.Title := 'Arquivos para anexar ao email';
  try
    criarArquivoXML;
    if Trim(arquivoXML) > '' then
    begin
      if FileExists(arquivoXML) then
        anexoEmail[0] := arquivoXML;
    end;
  except

  end;
  emailok := tfuncoes.enviarEmail('', '', trim(edtEmail.text), Trim(edtComCopia.Text),
                                  'teste envio email', 'segue o email de teste', '',
                                  fCadastroClientes.Caption, anexoemail, 465);
end;

procedure TfCadastroClientes.edtCelularExit(Sender: TObject);
begin
  if (btnFechar.Focused) or (ActiveControl.Tag < edtCelular.Tag) then
    Exit;
  if trim(edtCelular.Text) = '' then
  begin
    Application.MessageBox('O campo Celular ? obrigat?rio, verifique', 'Aten??o',
                           MB_OK + MB_ICONWARNING);
    edtCelular.setfocus;
    abort;
  end;
end;

procedure TfCadastroClientes.edtCepExit(Sender: TObject);
var
  Endereco: TStringList;
  i : Integer;
begin
  if (btnFechar.Focused) or (ActiveControl.Tag < edtCep.Tag) then
    Exit;
  edtCep.Text := FormatFloat('00000000',StrToIntDef(edtCep.Text, 0));
  if strToIntdef(edtCEP.Text, 0) = 0 then
  begin
    Application.MessageBox('O campo CEP ? obrigat?rio, verifique!',
                           'Aten??o', MB_OK + MB_ICONWARNING);
    edtCep.SetFocus;
    Abort;
  end;
  edtendereco.Text := '';
  edtnumero.Text := '';
  edtBairro.Text := '';
  cbbUf.ItemIndex := -1;
  edtCidade.Text := '';
  edtComplemento.Text := '';

  try
    Endereco := TFuncoes.BuscarCEPNoViaCEP(edtCep.Text);
  except
    Application.MessageBox('N?o foi poss?vel estabelecer comunica??o com o site Viacep, verifique!',
                           'Aten??o', MB_OK + MB_ICONWARNING);
  end;
  if Endereco.Count = 5 then
  begin
    edtendereco.Text := Endereco[0];
    edtBairro.Text := Endereco[1];
    for i := 0 to cbbUf.Items.Count -1 do
    begin
      if cbbUf.Items[i] = Endereco[2] then
        cbbUf.ItemIndex := i;
    end;
    edtCidade.Text := Endereco[3];
    edtComplemento.Text := Endereco[4];
    edtnumero.SetFocus;
  end else
  begin
    Application.MessageBox('Cep n?o encontrado no site Viacep, verifique!',
                           'Aten??o', MB_OK + MB_ICONWARNING);
    edtCep.SetFocus;
    Abort;
  end;
end;

procedure TfCadastroClientes.edtcodigoExit(Sender: TObject);
begin
  if (btncancelar.Focused) or (ActiveControl.Tag <= edtcodigo.Tag) then
    exit;
  edtcodigo.Text := FormatFloat('#######0',StrToIntDef(edtcodigo.Text, 0));
  if StrToIntDef(edtcodigo.Text, 0) = 0 then
  begin
    if Application.MessageBox('Deseja criar um novo cadastro?', 'Aten??o',
                              MB_YESNO + MB_ICONQUESTION) = mrNo then
      edtcodigo.SetFocus
    else
      btnNovoClick(Self);
    exit;
  end;
  LimpaTela(nil);
end;

procedure TfCadastroClientes.edtCpfExit(Sender: TObject);
var
  cpfOk : Boolean;
begin
  if (btnFechar.Focused) or (ActiveControl.Tag < edtCpf.Tag) then
    Exit;
  if (edtCpf.Text = '') or (edtCpf.Text = '   .   .   -  ') then
  begin
      Application.MessageBox('Campo CPF ? obrigat?rio, verifique!',
                             'Aten??o', MB_OK + MB_ICONWARNING);
      edtCpf.SetFocus;
      Abort;
  end;
  cpfok := TFuncoes.CpfOk(TFuncoes.SoNumero(edtCpf.Text));
  if not cpfOk then
  begin
    Application.MessageBox('CPF digitado n?o ? v?lido, verifique!', 'Aten??o',
                            MB_OK + MB_ICONWARNING);
    edtCpf.SetFocus;
    Abort;
  end;
end;

procedure TfCadastroClientes.edtEmailExit(Sender: TObject);
begin
  if (btncancelar.Focused) or (ActiveControl.Tag < edtEmail.Tag) then
    exit;
  if trim(edtEmail.text) = '' then
  begin
    Application.MessageBox('O campo Email ? obrigat?rio, verifique', 'Aten??o',
                           MB_OK + MB_ICONWARNING);
    edtEmail.SetFocus;
    Abort;
  end;
  emailOk := TFuncoes.ValidarEMail(edtEmail.Text);
 if not emailOk then
  begin
    Application.MessageBox('Email digitado n?o ? v?lido, verifique', 'Aten??o',
                           MB_OK + MB_ICONWARNING);
    edtEmail.SetFocus;
    Abort;
  end;
end;

procedure TfCadastroClientes.edtIdentidadeExit(Sender: TObject);
begin
  if (btnFechar.Focused) or (ActiveControl.Tag < edtIdentidade.Tag) then
    Exit;
  retorno := TFuncoes.confereCampos(edtIdentidade, 'Identidade', False, True);
  if not retorno then
  begin
    edtIdentidade.setfocus;
    abort;
  end;
end;

procedure TfCadastroClientes.edtnomeExit(Sender: TObject);
begin
  if (btnFechar.Focused) or (ActiveControl.Tag < edtnome.Tag) then
    Exit;
  retorno := TFuncoes.confereCampos(edtnome, 'Nome', False, True);
  if not retorno then
  begin
    edtnome.setfocus;
    abort;
  end;
end;

procedure TfCadastroClientes.edtnumeroExit(Sender: TObject);
begin
  edtnumero.Text := FormatFloat('#####0',StrToIntDef(edtnumero.Text, 0));
end;

procedure TfCadastroClientes.btncancelarClick(Sender: TObject);
begin
  LimpaTela(nil);
  edtcodigo.SetFocus;
end;

procedure TfCadastroClientes.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  edtcodigo.SetFocus;
end;

procedure TfCadastroClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfCadastroClientes.LimpaTela(sender: TObject);
begin
  TFuncoes.limpaTela(fCadastroClientes);
  if sender <> nil then
    edtcodigo.Text := '1';
  cadastroNovo := True;
end;

end.
