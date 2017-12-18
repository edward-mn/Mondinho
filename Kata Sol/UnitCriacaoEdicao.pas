unit UnitCriacaoEdicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao;

type
  TFormCriacaoEdicao = class(TForm)
    dbGridCriacaoEdicao: TDBGrid;
    dsToDo: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes :TDmClientes;
  end;

var
  FormCriacaoEdicao: TFormCriacaoEdicao;

implementation

{$R *.dfm}

procedure TFormCriacaoEdicao.FormShow(Sender: TObject);
begin
  dsToDo.DataSet := Clientes.cdsClientes;
  dbGridCriacaoEdicao.DataSource := dsToDo;
end;

end.
