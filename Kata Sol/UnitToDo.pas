unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, DataModuleClientes,UnitEditarTarefas, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitVendas, UnitPessoas, Vcl.Imaging.pngimage;

type
  TFormView = class(TForm)
    dbGridPrincipal: TDBGrid;
    dsToDo: TDataSource;
    Panel1: TPanel;
    btnTarefas: TButton;
    btnPessoas: TButton;
    btnVendas: TButton;
    Image1: TImage;
//    procedure AtrazarTarefa;
    procedure btnPessoasClick(Sender: TObject);
    procedure btnTarefasClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FConexao : TDmConexao;
    FClientes : TDmClientes;
  public
    ID_Login : Integer;
    ID_Conexao : TDmConexao;
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
  UnitToDoFuncoes, UnitLogin;

constructor TFormView.Create(AOwner: TComponent);
begin
  inherited;
  FConexao := TDmConexao.Create(Self);
  FClientes := TDmClientes.Create(Self);

  FClientes.cdsToDo.SetProvider(FConexao.sqlProviderToDo);
  FClientes.cdsToDoid_cadastro.Visible := False;
end;

//procedure TFormView.AtrazarTarefa;
//begin
//  if Now > DmClientes.cdsToDodata.Value then
//    DmClientes.cdsToDostatus.Text := 'Atrazada';
//end;

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
  NewForm.ID_Login := ID_Login;
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
  NewForm.ID_Login := ID_Login;
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
  NewForm.ID_Login := ID_Login;
  NewForm.ShowModal;
finally
  NewForm.Free;
end;

end;


procedure TFormView.FormCreate(Sender: TObject);
begin
  dsToDo.DataSet := FClientes.cdsToDo;
  dbGridPrincipal.DataSource := dsToDo;
end;

procedure TFormView.FormShow(Sender: TObject);
begin
  ID_Login := ID_Conexao.sqlQueryCadastroid.Value;
  FConexao.sqlQueryToDo.SQL.CommaText := ('select * from monde_todo where id_cadastro =' + IntToStr(ID_Login));
  FClientes.cdsToDo.Open;
end;

end.
