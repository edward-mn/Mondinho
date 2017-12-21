unit UnitCriacaoEdicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao, Vcl.StdCtrls;

type
  TFormCriacaoEdicao = class(TForm)
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
  FormCriacaoEdicao: TFormCriacaoEdicao;

implementation

{$R *.dfm}

procedure TFormCriacaoEdicao.btnAdicionarClick(Sender: TObject);
begin
  Clientes.cdsToDo.Insert;
end;

procedure TFormCriacaoEdicao.btnAtualizarClick(Sender: TObject);
begin
  Clientes.cdsToDo.ApplyUpdates(0);
  Clientes.cdsToDo.Refresh;
end;

procedure TFormCriacaoEdicao.btnCancelarClick(Sender: TObject);
begin
  Clientes.cdsToDo.Cancel;
end;

procedure TFormCriacaoEdicao.btnSalvarClick(Sender: TObject);
begin
  Clientes.cdsToDo.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicao.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
  Clientes.cdsToDoid_todo.Visible := True;
end;

procedure TFormCriacaoEdicao.FormShow(Sender: TObject);
begin
  Clientes.cdsToDoid_todo.Visible := False;
  dsCriarTarefas.DataSet := Clientes.cdsToDo;
  dbGridCriacaoEdicao.DataSource := dsCriarTarefas;
end;

end.
