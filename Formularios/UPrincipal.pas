unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro2: TMenuItem;
    Cliente1: TMenuItem;
    Sair1: TMenuItem;
    tlbMenu: TToolBar;
    btnCliente: TToolButton;
    btnSair: TToolButton;
    ImageIcons: TImageList;
    ImageIcons16: TImageList;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    procedure Sair1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses UCadastroClientes;

procedure TPrincipal.Cliente1Click(Sender: TObject);
begin
  fCadastroClientes := TfCadastroClientes.Create(Self);
  fCadastroClientes.ShowModal;
  fCadastroClientes.Release;
  fCadastroClientes.Free;
end;

procedure TPrincipal.Sair1Click(Sender: TObject);
begin
    Application.Terminate;
    Close;
end;

end.
