unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, DataModuleClientes,UnitEditarTarefas, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitVendas, UnitPessoas;

type
  TFormView = class(TForm)
    dbGridPrincipal: TDBGrid;
    dsToDo: TDataSource;
    Panel1: TPanel;
    btnTarefas: TButton;
    btnPessoas: TButton;
    btnVendas: TButton;
    procedure btnPessoasClick(Sender: TObject);
    procedure btnTarefasClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FConexao : TdmConexao;
    FClientes : TDmClientes;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CriarFormTarefas;
    procedure CriarFormVendas;
    procedure CriarFormPessoas;
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

  FClientes.cdstodo.SetProvider(FConexao.sqlProviderToDo);
end;

procedure TFormView.btnPessoasClick(Sender: TObject);
begin
  CriarFormPessoas();
end;


procedure TFormView.btnTarefasClick(Sender: TObject);
begin
  CriarFormTarefas();
end;

procedure TFormView.btnVendasClick(Sender: TObject);
begin
  CriarFormVendas();
end;

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
  FClientes.cdsToDo.Open;
  dsToDo.DataSet := FClientes.cdsToDo;
  dbGridPrincipal.DataSource := dsToDo;
end;

end.
