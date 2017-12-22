unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
<<<<<<< HEAD
  DataModuleConexao, DataModuleClientes,UnitEditarTarefas, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitVendas;
=======
  DataModuleConexao, DataModuleClientes, UnitCriacaoEdicao, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitPessoas;
>>>>>>> master

type
  TFormView = class(TForm)
    dbGridPrincipal: TDBGrid;
    dsToDo: TDataSource;
    Panel1: TPanel;
    btnTarefas: TButton;
<<<<<<< HEAD
    btnVendas: TButton;
=======
    btnPessoas: TButton;
    procedure btnPessoasClick(Sender: TObject);
>>>>>>> master
    procedure btnTarefasClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FConexao : TdmConexao;
    FClientes : TDmClientes;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CriarFormTarefas;
<<<<<<< HEAD
    procedure CriarFormVendas;
=======
    procedure CriarFormPessoas;
>>>>>>> master
  end;

var
  FormView: TFormView;

implementation

{$R *.dfm}

uses
  UnitToDoFuncoes;

constructor TFormView.Create(AOwner: TComponent);
begin
  inherited;
  FConexao := TdmConexao.Create(Self);
  FClientes := TDmClientes.Create(Self);

<<<<<<< HEAD
  FClientes.cdstodo.SetProvider(FConexao.sqlProviderToDo);
=======
  FClientes.cdsToDo.SetProvider(FConexao.sqlProviderToDo);
end;

procedure TFormView.btnPessoasClick(Sender: TObject);
begin
  CriarFormPessoas();
>>>>>>> master
end;


procedure TFormView.btnTarefasClick(Sender: TObject);
begin
  CriarFormTarefas();
end;

<<<<<<< HEAD
procedure TFormView.btnVendasClick(Sender: TObject);
begin
  CriarFormVendas();
=======
procedure TFormView.CriarFormPessoas;
var
  NewForm : TFormPessoas;
begin
  NewForm := TFormPessoas.Create(nil);
try
  NewForm.Clientes := FClientes;
  NewForm.Conexao := FConexao;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
>>>>>>> master
end;

procedure TFormView.CriarFormTarefas;
var
  NewForm : TFormTarefas;
begin
  NewForm := TFormTarefas.Create(nil);
try
  NewForm.Clientes := FClientes;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;

end;

procedure TFormView.CriarFormVendas;
var
  NewForm : TFormVendas;
begin
  NewForm := TFormVendas.Create(nil);
try
  NewForm.Clientes := FClientes;
  NewForm.Conexao := FConexao;
  NewForm.ShowModal;
finally
  NewForm.Free;
end;

end;


procedure TFormView.FormCreate(Sender: TObject);
begin
<<<<<<< HEAD
  FClientes.cdstodo.Open;
  dsToDo.DataSet := FClientes.cdstodo;
=======
  FClientes.cdsToDo.Open;
  dsToDo.DataSet := FClientes.cdsToDo;
>>>>>>> master
  dbGridPrincipal.DataSource := dsToDo;
end;

end.
