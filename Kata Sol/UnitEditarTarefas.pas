unit UnitEditarTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls , System.UITypes;

type
  TFormEditarTarefas = class(TForm)
    dbGridCriacaoEdicao: TDBGrid;
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
    edtData: TDBEdit;
    Label2: TLabel;
    btnDeletarTarefa: TButton;
    mCalendar: TMonthCalendar;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarTarefaClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtDataEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mCalendarClick(Sender: TObject);
    procedure mCalendarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes :TDmClientes;
  end;

var
  FormEditarTarefas: TFormEditarTarefas;

implementation

{$R *.dfm}

procedure TFormEditarTarefas.btnNovoClick(Sender: TObject);
begin
  Clientes.cdsTodo.Insert;
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;

procedure TFormEditarTarefas.btnAtualizarClick(Sender: TObject);
begin
  Clientes.cdsTodo.ApplyUpdates(0);
  Clientes.cdsTodo.Refresh;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
end;

procedure TFormEditarTarefas.btnCancelarClick(Sender: TObject);
begin
  Clientes.cdsTodo.Cancel;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
  mCalendar.Visible := False;
end;

procedure TFormEditarTarefas.btnDeletarTarefaClick(Sender: TObject);
begin
   if MessageDlg('Deseja realmete deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    begin
    Clientes.cdsToDo.Delete;
    Clientes.cdsToDo.ApplyUpdates(0);
    end;
end;

procedure TFormEditarTarefas.btnEditarClick(Sender: TObject);
begin
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;

procedure TFormEditarTarefas.btnSalvarClick(Sender: TObject);
begin
  if (Clientes.cdsVendas.State = dsEdit) or (Clientes.cdsVendas.State = dsInsert) then
  begin
  Clientes.cdsTodo.ApplyUpdates(0);
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := True;
  mCalendar.Visible := False;
  end;
end;

procedure TFormEditarTarefas.edtDataEnter(Sender: TObject);
begin
  mCalendar.Visible := True;
end;

procedure TFormEditarTarefas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.cdsToDoid_todo.Visible := True;
  dbGridCriacaoEdicao.Enabled := True;
  Clientes.cdsToDo.Cancel;
end;

procedure TFormEditarTarefas.FormShow(Sender: TObject);
begin
  Clientes.cdsToDoid_todo.Visible := False;
  dsCriarTarefas.DataSet := Clientes.cdsTodo;
  dbGridCriacaoEdicao.DataSource := dsCriarTarefas;
  mCalendar.Visible := False;
end;

procedure TFormEditarTarefas.mCalendarClick(Sender: TObject);
begin
  Clientes.cdsToDo.Edit;
  edtData.Text := FormatDateTime('dd/mm/yyyy', mCalendar.Date);
end;

procedure TFormEditarTarefas.mCalendarDblClick(Sender: TObject);
begin
  mCalendar.Visible := False;
end;

end.
