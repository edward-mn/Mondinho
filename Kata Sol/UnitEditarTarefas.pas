unit UnitEditarTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModuleConexao, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.ExtCtrls,
  DataModuleClientesTarefas, DataModuleControleDeUsuario, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, cxButtons;

type
  TFormEditarTarefas = class(TForm)
    dsCriarTarefas: TDataSource;
    gbFormulario: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    cbData: TcxDBDateEdit;
    dbGridCriacaoEdicao: TcxGrid;
    dbGridCriacaoEdicaoDBTableView1: TcxGridDBTableView;
    dbGridCriacaoEdicaoLevel1: TcxGridLevel;
    dbGridCriacaoEdicaoDBTableView1id_todo: TcxGridDBColumn;
    dbGridCriacaoEdicaoDBTableView1nomes: TcxGridDBColumn;
    dbGridCriacaoEdicaoDBTableView1tarefas: TcxGridDBColumn;
    dbGridCriacaoEdicaoDBTableView1status: TcxGridDBColumn;
    dbGridCriacaoEdicaoDBTableView1data: TcxGridDBColumn;
    dbGridCriacaoEdicaoDBTableView1id_cadastro: TcxGridDBColumn;
    cxDBstatusTarefas: TcxDBComboBox;
    cxDBNome: TcxDBTextEdit;
    cxDBTarefas: TcxDBTextEdit;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    btnEditar: TcxButton;
    btnNovo: TcxButton;
    btnDeletarTarefa: TcxButton;
    btnAdiarTarefa: TcxButton;
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
    FClientesControle : TDmControleDeUsuario;
    procedure AdiarTarefa;
    procedure ArmazenarDataAnterior;
    procedure AtualizarLista;
    procedure CancelarTarefa;
    procedure ControleDeUsuarioNovaTarefa;
    procedure ControleDeUsuarioEditarTarefa;
    procedure ControleDeUsuarioDeletarTarefa;
    procedure ProviderCdsControle;
    procedure DefinirDataSet;
    procedure DeletarTarefa;
    procedure DesabilitarBotoes;
    procedure HabilitarBotoes;
    procedure EditarTarefa;
    procedure NovaTarefa;
    procedure SalvarTarefa;
  public
    ClientesTarefas : TDmClientesTarefas;
    DataAntiga : TDateTime;
    Trigger : Boolean;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormEditarTarefas: TFormEditarTarefas;

implementation

{$R *.dfm}

procedure TFormEditarTarefas.ArmazenarDataAnterior;
begin
  ClientesTarefas.cdsToDo.Edit;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := False;
  cbData.SetFocus;

  btnNovo.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletarTarefa.Enabled := False;
  btnAdiarTarefa.Enabled := False;

  Trigger := True;

  DataAntiga := cbData.Date;
end;

procedure TFormEditarTarefas.AtualizarLista;
begin
  ClientesTarefas.cdsToDo.ApplyUpdates(0);
  ClientesTarefas.cdsToDo.Refresh;
  gbFormulario.Enabled := False;
  cbData.Enabled := False;
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
  AdiarTarefa();
  SalvarTarefa();
end;

procedure TFormEditarTarefas.CancelarTarefa;
begin
  HabilitarBotoes;

  ClientesTarefas.cdsToDo.Cancel;
  gbFormulario.Enabled := False;
  cbData.Enabled := True;
  dbGridCriacaoEdicao.Enabled := True;

  Trigger := False;
end;

procedure TFormEditarTarefas.AdiarTarefa;
begin
  if Trigger = True then
    begin

  if DataAntiga <> cbData.Date then
    begin
    ClientesTarefas.cdsToDostatus.text := 'Adiada';
    gbFormulario.Enabled := True;
    dbGridCriacaoEdicao.Enabled := True;

    HabilitarBotoes;

    Trigger := False;
    end
  else
  ShowMessage('É necessario Colocar uma data diferente!');
end
end;

constructor TFormEditarTarefas.Create(AOwner: TComponent);
begin
  inherited;
  FClientesControle := TDmControleDeUsuario.Create(Self);
  ProviderCdsControle;
  FClientesControle.cdsControleDeUsuario.Open;
end;

procedure TFormEditarTarefas.btnAdiarTarefaClick(Sender: TObject);
begin
  ArmazenarDataAnterior;
end;

procedure TFormEditarTarefas.ControleDeUsuarioDeletarTarefa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Deletou Tarefa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarTarefas.ControleDeUsuarioEditarTarefa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Editou Tarefa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarTarefas.ControleDeUsuarioNovaTarefa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Adicionou Nova Tarefa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarTarefas.ProviderCdsControle;
begin
  FClientesControle.cdsControleDeUsuario.SetProvider(Conexao.sqlQueryControle);
end;

procedure TFormEditarTarefas.DefinirDataSet;
begin
  ClientesTarefas.cdsToDoid_todo.Visible := False;
  dsCriarTarefas.DataSet := ClientesTarefas.cdsToDo;
  dbGridCriacaoEdicaoDBTableView1.DataController.DataSource := dsCriarTarefas;
end;

procedure TFormEditarTarefas.DeletarTarefa;
begin
  if MessageDlg('Deseja realmente deletar essa tarefa ?', mtInformation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    ClientesTarefas.cdsToDo.Delete;
    ClientesTarefas.cdsToDo.ApplyUpdates(0);
    ControleDeUsuarioDeletarTarefa;
  end;
end;

procedure TFormEditarTarefas.DesabilitarBotoes;
begin
  btnNovo.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletarTarefa.Enabled := False;
  btnAdiarTarefa.Enabled := False;
end;

procedure TFormEditarTarefas.EditarTarefa;
begin
  DesabilitarBotoes;

  ControleDeUsuarioEditarTarefa;

  gbFormulario.Enabled := True;
  cbData.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;


procedure TFormEditarTarefas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ClientesTarefas.cdsToDoid_todo.Visible := True;
  ClientesTarefas.cdsToDo.Cancel;
  dbGridCriacaoEdicao.Enabled := True;
  FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormEditarTarefas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormEditarTarefas.HabilitarBotoes;
begin
  btnNovo.Enabled := True;
  btnEditar.Enabled := True;
  btnDeletarTarefa.Enabled := True;
  btnAdiarTarefa.Enabled := True;
end;

procedure TFormEditarTarefas.NovaTarefa;
begin
  DesabilitarBotoes;

  ControleDeUsuarioNovaTarefa;

  ClientesTarefas.cdsToDo.Insert;
  ClientesTarefas.cdsToDoid_cadastro.Value := Conexao.Usuario.Id;
  cbData.Enabled := True;
  gbFormulario.Enabled := True;
  cbTarefas.SetFocus;
  dbGridCriacaoEdicao.Enabled := False;
end;

procedure TFormEditarTarefas.SalvarTarefa;
begin
  if (ClientesTarefas.cdsToDo.State = dsEdit) or (ClientesTarefas.cdsToDo.State = dsInsert) then
  begin
    if cbTarefas.Text = '' then
    begin
      ShowMessage('Por favor é necessário selecionar um Status.');
      cbTarefas.SetFocus;
      exit;
    end
    else if edtNome.Text = '' then
    begin
      ShowMessage('Por favor é necessário ditigar um Nome.');
      edtNome.SetFocus;
      Exit;
    end
    else if edtTarefa.Text = '' then
     begin
      ShowMessage('Por favor é necessário ditigar uma Tarefa.');
      edtTarefa.SetFocus;
      Exit;
     end
    else if cbData.Text = '' then
     begin
      ShowMessage('Por favor é necessário ditigar uma Data.');
      cbData.SetFocus;
      Exit;
     end;

    ClientesTarefas.cdsToDo.ApplyUpdates(0);
    gbFormulario.Enabled := False;
    dbGridCriacaoEdicao.Enabled := True;
    cbData.Enabled := True;
    ClientesTarefas.cdsToDo.Refresh;
    HabilitarBotoes;
  end;
end;
end.
