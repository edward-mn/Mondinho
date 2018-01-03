unit UnitEditarTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.ExtCtrls;

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
    Label4: TLabel;
    Label2: TLabel;
    btnDeletarTarefa: TButton;
    DBcbTarefas: TDBComboBox;
    btnAdiarTarefa: TButton;
    dbGridCriacaoEdicao: TDBGrid;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure btnAdiarTarefaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarTarefaClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure ConfirmarAdiarTarefa;
    procedure AdiarTarefa;
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
    DataAntiga : TDateTime;
    Clientes: TDmClientes;
    ID_Login: Integer;
    Trigger : Boolean;
  end;

var
  FormEditarTarefas: TFormEditarTarefas;

implementation

{$R *.dfm}



procedure TFormEditarTarefas.AdiarTarefa;
begin
  Clientes.cdsToDo.Edit;
  cxDBDateEdit1.SetFocus;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := False;

  btnNovo.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletarTarefa.Enabled := False;
  btnAdiarTarefa.Enabled := False;

  Trigger := True;

  DataAntiga := cxDBDateEdit1.Date;
end;

procedure TFormEditarTarefas.AtualizarLista;
begin
  Clientes.cdsToDo.ApplyUpdates(0);
  Clientes.cdsToDo.Refresh;
  gbFormulario.Enabled := False;
  cxDBDateEdit1.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
end;

procedure TFormEditarTarefas.btnAdiarTarefaClick(Sender: TObject);
begin
  AdiarTarefa;
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
  ConfirmarAdiarTarefa();
  SalvarTarefa();
end;

procedure TFormEditarTarefas.CancelarTarefa;
begin
  edtNome.Enabled := True;
  edtTarefa.Enabled := True;
  DBcbTarefas.Enabled := True;
  Clientes.cdsToDo.Cancel;
  gbFormulario.Enabled := False;
  cxDBDateEdit1.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
end;

procedure TFormEditarTarefas.ConfirmarAdiarTarefa;
begin
  if Trigger = True then
    begin

  if DataAntiga <> cxDBDateEdit1.Date then
    begin
    Clientes.cdsToDostatus.text := 'Adiada';
    gbFormulario.Enabled := True;
    dbGridCriacaoEdicao.Enabled := True;

    btnNovo.Enabled := True;
    btnEditar.Enabled := True;
    btnDeletarTarefa.Enabled := True;
    btnAdiarTarefa.Enabled := True;

    Trigger := False;
    end
  else
  ShowMessage('É necessario Colocar uma data diferente!');
end
end;

procedure TFormEditarTarefas.DefinirDataSet;
begin
  Clientes.cdsToDoid_todo.Visible := False;
  dsCriarTarefas.DataSet := Clientes.cdsToDo;
  dbGridCriacaoEdicao.DataSource := dsCriarTarefas;
end;

procedure TFormEditarTarefas.DeletarTarefa;
begin
  if MessageDlg('Deseja realmente deletar essa tarefa ?', mtInformation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    Clientes.cdsToDo.Delete;
    Clientes.cdsToDo.ApplyUpdates(0);
  end;
end;

procedure TFormEditarTarefas.EditarTarefa;
begin
  gbFormulario.Enabled := True;
  cxDBDateEdit1.Enabled := True;
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
  Clientes.cdsToDo.Insert;
  Clientes.cdsToDoid_cadastro.Value := ID_Login;
  cxDBDateEdit1.Enabled := True;
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;

procedure TFormEditarTarefas.SalvarTarefa;
begin
  if (Clientes.cdsToDo.State = dsEdit) or (Clientes.cdsToDo.State = dsInsert)
  then
  begin
    Clientes.cdsToDo.ApplyUpdates(0);
    gbFormulario.Enabled := False;
    dbGridCriacaoEdicao.Enabled := True;
    cxDBDateEdit1.Enabled := True;
  end;
end;
end.
