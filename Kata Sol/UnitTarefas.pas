unit UnitTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.UITypes, UnitEditarTarefas;

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
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
    ID_Login : Integer;
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

procedure TFormTarefas.btnEditarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnImprimirClick(Sender: TObject);
begin
  Clientes.frxReportToDo.Print;
end;

procedure TFormTarefas.btnPesquisarClick(Sender: TObject);
begin
//    TFuncoesToDo.FiltroStatus();
end;

procedure TFormTarefas.btnVisualizarClick(Sender: TObject);
begin
  Clientes.frxReportToDo.ShowReport();
end;

procedure TFormTarefas.CriarFormEditarTarefas;
var
  NewForm : TFormEditarTarefas;
begin
  NewForm := TFormEditarTarefas.Create(nil);
try
  NewForm.Clientes := Clientes;
  NewForm.ID_Login := ID_Login;
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
