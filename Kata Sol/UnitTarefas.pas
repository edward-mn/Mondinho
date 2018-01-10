unit UnitTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleConexao,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.UITypes, UnitEditarTarefas,
  Vcl.ExtCtrls, DataModuleClientesTarefas;

type
  TFormTarefas = class(TForm)
    gbStatusTarefas: TGroupBox;
    cbAtrasadas: TCheckBox;
    cbFinalizadas: TCheckBox;
    cbAdiadas: TCheckBox;
    cbAgendada: TCheckBox;
    btnPesquisar: TButton;
    dbGridTarefas: TDBGrid;
    dsTarefas: TDataSource;
    Timer: TTimer;
    gbEditarTarefas: TGroupBox;
    btnAtualizarTarefa: TButton;
    btnCriarTarefa: TButton;
    gbRelatorioTarefas: TGroupBox;
    btnImprimir: TButton;
    btnVisualizar: TButton;
    procedure btnAtualizarTarefaClick(Sender: TObject);
    procedure btnCriarTarefaClick(Sender: TObject);
    procedure btnEditarTarefaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    FClientesTarefas : TDmClientesTarefas;
    procedure FiltroTarefas;
    procedure DefinirDataSet;
    procedure CriarFormEditarTarefas;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormTarefas: TFormTarefas;

implementation

uses
  VendasUtils, TarefaUtils;


{$R *.dfm}

procedure TFormTarefas.FiltroTarefas;
var
  Filtro: String;
begin
  Filtro := '';

  if cbAtrasadas.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);

  if cbAgendada.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  if cbAdiadas.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);

  if cbFinalizadas.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);

  FClientesTarefas.cdsToDo.Filter := Filtro;
  FClientesTarefas.cdsToDo.Filtered := not Filtro.IsEmpty;
end;

procedure TFormTarefas.btnAtualizarTarefaClick(Sender: TObject);
begin
  FClientesTarefas.cdsToDo.Refresh;
end;

procedure TFormTarefas.btnCriarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnEditarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnImprimirClick(Sender: TObject);
begin
  FClientesTarefas.frxReportToDo.Print;
end;

procedure TFormTarefas.btnPesquisarClick(Sender: TObject);
begin
  FiltroTarefas;
end;

procedure TFormTarefas.btnVisualizarClick(Sender: TObject);
begin
  FClientesTarefas.frxReportToDo.ShowReport();
end;

constructor TFormTarefas.Create(AOwner: TComponent);
begin
  inherited;
  FClientesTarefas := TDmClientesTarefas.Create(Self);
  FClientesTarefas.cdsToDo.SetProvider(Conexao.sqlQueryToDo);
end;

procedure TFormTarefas.CriarFormEditarTarefas;
var
  NewForm : TFormEditarTarefas;
begin
  NewForm := TFormEditarTarefas.Create(nil);
try
  NewForm.ClientesTarefas := FClientesTarefas;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;

procedure TFormTarefas.DefinirDataSet;
begin
  dsTarefas.DataSet := FClientesTarefas.cdsToDo;
  dbGridTarefas.DataSource := dsTarefas;
  FClientesTarefas.cdsToDo.Open;
  FClientesTarefas.cdsToDoid_cadastro.Visible := False;
end;

procedure TFormTarefas.FormShow(Sender: TObject);
begin
  Conexao.MostrarTarefas(Conexao.Usuario.Id);
  DefinirDataSet;
  FClientesTarefas.AtrasarTarefas;
end;

procedure TFormTarefas.TimerTimer(Sender: TObject);
begin
if Now = strtoTime('00:00') then
  FClientesTarefas.AtrasarTarefas;
end;

end.
