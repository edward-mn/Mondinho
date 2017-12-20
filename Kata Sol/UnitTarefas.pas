unit UnitTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, UnitCriacaoEdicao;

type
  TFormTarefas = class(TForm)
    btnDeletar: TButton;
    btnAtualizar: TButton;
    btnEditar: TButton;
    GroupBox1: TGroupBox;
    cbAtrasadas: TCheckBox;
    cbFinalizadas: TCheckBox;
    cbAdiadas: TCheckBox;
    cbAgendadas: TCheckBox;
    btnPesquisar: TButton;
    btnCriarTarefa: TButton;
    dbGridTarefas: TDBGrid;
    dsTarefas: TDataSource;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCriarTarefaClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
    procedure CriarFormCriacaoEdicao;
  end;

var
  FormTarefas: TFormTarefas;

implementation

{$R *.dfm}

procedure TFormTarefas.btnAtualizarClick(Sender: TObject);
begin
  Clientes.cdsToDo.Refresh;
end;

procedure TFormTarefas.btnCriarTarefaClick(Sender: TObject);
begin
  CriarFormCriacaoEdicao();
end;

procedure TFormTarefas.btnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmete deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    Clientes.cdsToDo.Delete;
    Clientes.cdsToDo.ApplyUpdates(0);
end;

procedure TFormTarefas.btnEditarClick(Sender: TObject);
begin
  CriarFormCriacaoEdicao();
end;

procedure TFormTarefas.btnPesquisarClick(Sender: TObject);
begin
//    TFuncoesToDo.FiltroStatus();
end;

procedure TFormTarefas.CriarFormCriacaoEdicao;
var
  NewForm : TFormCriacaoEdicao;
begin
  NewForm := TFormCriacaoEdicao.Create(nil);
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
