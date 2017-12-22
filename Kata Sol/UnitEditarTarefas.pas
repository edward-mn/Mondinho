unit UnitEditarTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao, Vcl.StdCtrls;

type
  TFormEditarTarefas = class(TForm)
    dbGridCriacaoEdicao: TDBGrid;
    dsCriarTarefas: TDataSource;
    btnAtualizar: TButton;
    btnSalvar: TButton;
    btnAdicionar: TButton;
    btnCancelar: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes :TDmClientes;
  end;

var
  FormEditarTarefas: TFormEditarTarefas;

implementation

{$R *.dfm}

procedure TFormEditarTarefas.btnAdicionarClick(Sender: TObject);
begin
  Clientes.cdsTodo.Insert;
end;

procedure TFormEditarTarefas.btnAtualizarClick(Sender: TObject);
begin
  Clientes.cdsTodo.ApplyUpdates(0);
  Clientes.cdsTodo.Refresh;
end;

procedure TFormEditarTarefas.btnCancelarClick(Sender: TObject);
begin
  Clientes.cdsTodo.Cancel;
end;

procedure TFormEditarTarefas.btnSalvarClick(Sender: TObject);
begin
  Clientes.cdsTodo.ApplyUpdates(0);
end;

procedure TFormEditarTarefas.FormShow(Sender: TObject);
begin
  dsCriarTarefas.DataSet := Clientes.cdsTodo;
  dbGridCriacaoEdicao.DataSource := dsCriarTarefas;
end;

end.
