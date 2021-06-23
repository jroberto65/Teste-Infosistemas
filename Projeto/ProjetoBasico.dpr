program ProjetoBasico;

uses
  Vcl.Forms,
  UPrincipal in '..\Formularios\UPrincipal.pas' {Principal},
  uFuncao in '..\Formularios\uFuncao.pas',
  UCadastroClientes in '..\Formularios\UCadastroClientes.pas' {fCadastroClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
