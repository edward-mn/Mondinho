unit UnitEditarTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls , System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit;

type
  TFormEditarTarefas = class(TForm)
    dsCriarTarefas: TDataSource;
    btnAtualizar: TButton;
    btnSalvar: TButton;
    btnNovo: TButton;
    btnCancelar: TButton;
    btnEditar: TButton;
    gbFormulario: TGroupBox;
    Label1: TLabel;
    edtNome: TDBEdit;
    edtTarefa: TDBEdit;
    Label3: TLabel;
    edtStatus: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    btnDeletarTarefa: TButton;
    cxDBDateEdit1: TcxDBDateEdit;
    dbGridCriacaoEdicao: TDBGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarTarefaClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure AtualizarLista;
    procedure CancelarTarefa;
    procedure DefinirDataSet;
    procedure DeletarTarefa;
    procedure EditarTarefa;
    procedure HabilitarComponentes;
    procedure NovaTarefa;
    procedure SalvarTarefa;
    { Private declarations }
  public
    Clientes :TDmClientes;
  end;

var
  FormEditarTarefas: TFormEditarTarefas;

implementation

{$R *.dfm}

procedure TFormEditarTarefas.AtualizarLista;
begin
  Clientes.cdsTodo.ApplyUpdates(0);
  Clientes.cdsTodo.Refresh;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
end;

procedure TFormEditarTarefas.btnNovoClick(Sender: TObject);
begin
  NovaTarefa();
end;

procedure TFormEditarTarefas.btnAtualizarClick(Sender: TObject);
begin
  AtualizarLista();
end;

procedure TFormEditarTarefas.btnCancelarClick(Sender: TObject);
begin
  CancelarTarefa();
end;

procedure TFormEditarTarefas.btnDeletarTarefaClick(Sender: TObject);
begin
   DeletarTarefa();
end;

procedure TFormEditarTarefas.btnEditarClick(Sender: TObject);
begin
  EditarTarefa();
end;

procedure TFormEditarTarefas.btnSalvarClick(Sender: TObject);
begin
  SalvarTarefa();
end;

procedure TFormEditarTarefas.CancelarTarefa;
begin
  Clientes.cdsTodo.Cancel;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
end;

procedure TFormEditarTarefas.DefinirDataSet;
begin
  Clientes.cdsToDoid_todo.Visible := False;
  dsCriarTarefas.DataSet := Clientes.cdsTodo;
  dbGridCriacaoEdicao.DataSource := dsCriarTarefas;
end;

procedure TFormEditarTarefas.DeletarTarefa;
begin
  if MessageDlg('Deseja realmete deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
   begin
   Clientes.cdsToDo.Delete;
   Clientes.cdsToDo.ApplyUpdates(0);
   end;
end;

procedure TFormEditarTarefas.EditarTarefa;
begin
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;



procedure TFormEditarTarefas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HabilitarComponentes();
end;

procedure TFormEditarTarefas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormEditarTarefas.HabilitarComponentes;
begin
  Clientes.cdsToDoid_todo.Visible := True;
  dbGridCriacaoEdicao.Enabled := True;
  Clientes.cdsToDo.Cancel;
end;

procedure TFormEditarTarefas.NovaTarefa;
begin
  Clientes.cdsTodo.Insert;
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;

procedure TFormEditarTarefas.SalvarTarefa;
begin
  if (Clientes.cdsVendas.State = dsEdit) or (Clientes.cdsVendas.State = dsInsert) then
  begin
  Clientes.cdsTodo.ApplyUpdates(0);
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
  end;
end;

end.
