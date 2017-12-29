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
    btnAtualizarTarefa: TButton;
    btnCriarTarefa: TButton;
    procedure AdicionarFiltroCorretoTarefas;
    procedure btnAtualizarTarefaClick(Sender: TObject);
    procedure btnCriarTarefaClick(Sender: TObject);
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

procedure TFormTarefas.AdicionarFiltroCorretoTarefas;
  var
  Filtro: String;
const
  Ou = ' or ';
  BoxAdiada = 'Status = ''Adiada''';
  BoxAgendada = 'Status = ''Agendada''';
  BoxFinalizada = 'Status = ''Finalizada''';
  BoxAtrasada = 'Status = ''Atrasada''';
procedure AdicionarStatus(Box: String);
  begin
    if not Filtro.IsEmpty then
      Filtro := Filtro + Ou;
    Filtro := Filtro + Box;
  end;

begin
  if cbAtrasadas.Checked then
  begin
    AdicionarStatus(BoxAtrasada);
  end;
  if cbAtrasadas.Checked then
  begin
    AdicionarStatus(BoxAtrasada);
  end;
  if cbAgendada.Checked then
  begin
    AdicionarStatus(BoxAgendada);
  end;

  if cbAdiadas.Checked then
  begin
    AdicionarStatus(BoxAdiada);
  end;

  if cbFinalizadas.Checked then
  begin
    AdicionarStatus(BoxFinalizada);
  end;

  Clientes.cdsToDo.Filter := Filtro;
  Clientes.cdsToDo.Filtered := True;
end;

procedure TFormTarefas.btnAtualizarTarefaClick(Sender: TObject);
begin
  Clientes.cdsToDo.Refresh;
end;

procedure TFormTarefas.btnCriarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnEditarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnPesquisarClick(Sender: TObject);
begin
  AdicionarFiltroCorretoTarefas;
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
