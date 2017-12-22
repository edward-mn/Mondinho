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
<<<<<<< HEAD:Kata Sol/UnitEditarTarefas.pas
  Clientes.cdsTodo.Insert;
=======
  Clientes.cdsToDo.Insert;
>>>>>>> master:Kata Sol/UnitCriacaoEdicao.pas
end;

procedure TFormEditarTarefas.btnAtualizarClick(Sender: TObject);
begin
<<<<<<< HEAD:Kata Sol/UnitEditarTarefas.pas
  Clientes.cdsTodo.ApplyUpdates(0);
  Clientes.cdsTodo.Refresh;
=======
  Clientes.cdsToDo.ApplyUpdates(0);
  Clientes.cdsToDo.Refresh;
>>>>>>> master:Kata Sol/UnitCriacaoEdicao.pas
end;

procedure TFormEditarTarefas.btnCancelarClick(Sender: TObject);
begin
<<<<<<< HEAD:Kata Sol/UnitEditarTarefas.pas
  Clientes.cdsTodo.Cancel;
=======
  Clientes.cdsToDo.Cancel;
>>>>>>> master:Kata Sol/UnitCriacaoEdicao.pas
end;

procedure TFormEditarTarefas.btnSalvarClick(Sender: TObject);
begin
<<<<<<< HEAD:Kata Sol/UnitEditarTarefas.pas
  Clientes.cdsTodo.ApplyUpdates(0);
=======
  Clientes.cdsToDo.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicao.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
  Clientes.cdsToDoid_todo.Visible := True;
>>>>>>> master:Kata Sol/UnitCriacaoEdicao.pas
end;

procedure TFormEditarTarefas.FormShow(Sender: TObject);
begin
<<<<<<< HEAD:Kata Sol/UnitEditarTarefas.pas
  dsCriarTarefas.DataSet := Clientes.cdsTodo;
=======
  Clientes.cdsToDoid_todo.Visible := False;
  dsCriarTarefas.DataSet := Clientes.cdsToDo;
>>>>>>> master:Kata Sol/UnitCriacaoEdicao.pas
  dbGridCriacaoEdicao.DataSource := dsCriarTarefas;
end;

end.
