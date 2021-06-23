unit UDataModulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr,
  Data.Win.ADODB;

type
  TfDataModulo = class(TDataModule)
    Conexao: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDataModulo: TfDataModulo;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
