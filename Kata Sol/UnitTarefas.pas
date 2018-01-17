unit UnitTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleConexao,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.UITypes, UnitEditarTarefas,
  Vcl.ExtCtrls, DataModuleClientesTarefas, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.Menus, cxButtons;

type
  TFormTarefas = class(TForm)
    gbStatusTarefas: TGroupBox;
    cbAtrasadas: TCheckBox;
    cbFinalizadas: TCheckBox;
    cbAdiadas: TCheckBox;
    cbAgendada: TCheckBox;
    dsTarefas: TDataSource;
    Timer: TTimer;
    gbEditarTarefas: TGroupBox;
    gbRelatorioTarefas: TGroupBox;
    dbGridTarefas: TcxGrid;
    dbGridTarefasDBTableView1: TcxGridDBTableView;
    dbGridTarefasLevel1: TcxGridLevel;
    dbGridTarefasDBTableView1id_todo: TcxGridDBColumn;
    dbGridTarefasDBTableView1nomes: TcxGridDBColumn;
    dbGridTarefasDBTableView1tarefas: TcxGridDBColumn;
    dbGridTarefasDBTableView1status: TcxGridDBColumn;
    dbGridTarefasDBTableView1data: TcxGridDBColumn;
    dbGridTarefasDBTableView1id_cadastro: TcxGridDBColumn;
    btnCriarTarefa: TcxButton;
    btnVisualizar: TcxButton;
    btnImprimir: TcxButton;
    btnAtualizarTarefa: TcxButton;
    btnPesquisar: TcxButton;
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
  FClientesTarefas.cdsToDo.Open;
  FClientesTarefas.cdsToDoid_cadastro.Visible := False;
end;

procedure TFormTarefas.FormShow(Sender: TObject);
begin
  DefinirDataSet;
  FClientesTarefas.AtrasarTarefas;
end;

procedure TFormTarefas.TimerTimer(Sender: TObject);
begin
if Now = strtoTime('00:00') then
  FClientesTarefas.AtrasarTarefas;
end;

end.
