unit UnitPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DataModuleClientes, DataModuleConexao,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormPessoas = class(TForm)
    dbGridPessoas: TDBGrid;
    dsPessoas: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clintes : TDmClientes;
  end;

var
  FormPessoas: TFormPessoas;

implementation

{$R *.dfm}

procedure TFormPessoas.FormShow(Sender: TObject);
begin
  Clintes.cdsPessoas.Open;
  dsPessoas.DataSet := Clintes.cdsPessoas;
  dbGridPessoas.DataSource := dsPessoas;
end;

end.
