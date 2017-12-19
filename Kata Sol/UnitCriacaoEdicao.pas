unit UnitCriacaoEdicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao, Vcl.StdCtrls;

type
  TFormCriacaoEdicao = class(TForm)
    dbGridCriacaoEdicao: TDBGrid;
    dsToDo: TDataSource;
    btnAtualizar: TButton;
    btnSalvar: TButton;
    btnAdicionar: TButton;
    btnCancelar: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
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

procedure TFormCriacaoEdicao.btnAdicionarClick(Sender: TObject);
begin
  Clientes.cdsClientes.Insert;
end;

procedure TFormCriacaoEdicao.btnAtualizarClick(Sender: TObject);
begin
  Clientes.cdsClientes.Refresh;
end;

procedure TFormCriacaoEdicao.btnCancelarClick(Sender: TObject);
begin
  Clientes.cdsClientes.Cancel;
end;

procedure TFormCriacaoEdicao.btnSalvarClick(Sender: TObject);
begin
  Clientes.cdsClientes.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicao.FormShow(Sender: TObject);
begin
  dsToDo.DataSet := Clientes.cdsClientes;
  dbGridCriacaoEdicao.DataSource := dsToDo;
end;

end.
