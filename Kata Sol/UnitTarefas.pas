unit UnitTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.UITypes, UnitEditarTarefas;

type
  TFormTarefas = class(TForm)
    GroupBox1: TGroupBox;
    cbAtrasadas: TCheckBox;
    cbFinalizadas: TCheckBox;
    cbAdiadas: TCheckBox;
    cbAgendada: TCheckBox;
    btnPesquisar: TButton;
    dbGridTarefas: TDBGrid;
    dsTarefas: TDataSource;
    GroupBox2: TGroupBox;
    btnDeletarTarefa: TButton;
    btnAtualizarTarefa: TButton;
    btnEditarTarefa: TButton;
    btnCriarTarefa: TButton;
    procedure btnAtualizarTarefaClick(Sender: TObject);
    procedure btnCriarTarefaClick(Sender: TObject);
    procedure btnDeletarTarefaClick(Sender: TObject);
    procedure btnEditarTarefaClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
    procedure CriarFormEditarTarefas;
  end;

var
  FormTarefas: TFormTarefas;

implementation


{$R *.dfm}

procedure TFormTarefas.btnAtualizarTarefaClick(Sender: TObject);
begin
  Clientes.cdsToDo.Refresh;
end;

procedure TFormTarefas.btnCriarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnDeletarTarefaClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmete deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    Clientes.cdsToDo.Delete;
    Clientes.cdsToDo.ApplyUpdates(0);
end;

procedure TFormTarefas.btnEditarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnPesquisarClick(Sender: TObject);
begin
//    TFuncoesToDo.FiltroStatus();
end;

procedure TFormTarefas.CriarFormEditarTarefas;
var
  NewForm : TFormEditarTarefas;
begin
  NewForm := TFormEditarTarefas.Create(nil);
try
  NewForm.Clientes := Clientes;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;

procedure TFormTarefas.FormShow(Sender: TObject);
begin
  dsTarefas.DataSet := Clientes.cdsToDo;
  dbGridTarefas.DataSource := dsTarefas;
end;

end.
