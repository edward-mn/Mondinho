unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, DataModuleClientes, UnitCriacaoEdicao, Vcl.StdCtrls,
  Vcl.Menus;

type
  TFormView = class(TForm)
    dbGridPrincipal: TDBGrid;
    dsToDo: TDataSource;
    GroupBox1: TGroupBox;
    cbAtrasadas: TCheckBox;
    cbFinalizadas: TCheckBox;
    cbAdiadas: TCheckBox;
    cbAgendadas: TCheckBox;
    btnAtualizar: TButton;
    btnPesquisar: TButton;
    btnEditar: TButton;
    btnCriarTarefa: TButton;
    btnDeletar: TButton;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCriarTarefaClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FConexao : TdmConexao;
    FClientes : TDmClientes;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CriarForm;
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

  FClientes.cdsClientes.SetProvider(FConexao.sqlProvider);
end;

procedure TFormView.btnAtualizarClick(Sender: TObject);
begin
  FClientes.cdsClientes.Refresh;
end;

procedure TFormView.btnCriarTarefaClick(Sender: TObject);
begin
  CriarForm();
end;

procedure TFormView.btnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmete deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    FClientes.cdsClientes.Delete;
    FClientes.cdsClientes.ApplyUpdates(0);
end;

procedure TFormView.btnEditarClick(Sender: TObject);
begin
  CriarForm();
end;

procedure TFormView.btnPesquisarClick(Sender: TObject);
begin
   // TFuncoesToDo.FiltroStatus();
end;

procedure TFormView.btnSalvarClick(Sender: TObject);
begin
  FClientes.cdsClientes.ApplyUpdates(0);
end;

procedure TFormView.CriarForm;
var
  NewForm : TFormCriacaoEdicao;
begin
  NewForm := TFormCriacaoEdicao.Create(nil);
try
  NewForm.Clientes := FClientes;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;

end;

procedure TFormView.FormCreate(Sender: TObject);
begin
  FClientes.cdsClientes.Open;
  dsToDo.DataSet := FClientes.cdsClientes;
  dbGridPrincipal.DataSource := dsToDo;
end;

end.
