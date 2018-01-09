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
  DataModuleClientesTarefas, DataModuleControleDeUsuario;

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
    FClientesControle : TDmControleDeUsuario;
    procedure ConfirmarAdiarTarefa;
    procedure AdiarTarefa;
    procedure AtualizarLista;
    procedure CancelarTarefa;
    procedure ControleDeUsuarioNovaTarefa;
    procedure ControleDeUsuarioEditarTarefa;
    procedure ControleDeUsuarioDeletarTarefa;
    procedure ProviderCdsControle;
    procedure DefinirDataSet;
    procedure DeletarTarefa;
    procedure DesabilitarBotoes;
    procedure EditarTarefa;
    procedure HabilitarBotoes;
    procedure HabilitarComponentes;
    procedure NovaTarefa;
    procedure SalvarTarefa;
  public
    ClientesTarefas : TDmClientesTarefas;
    DataAntiga : TDateTime;
    ID_Login: Integer;
    Trigger : Boolean;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormEditarTarefas: TFormEditarTarefas;

implementation

{$R *.dfm}



procedure TFormEditarTarefas.AdiarTarefa;
begin
  ClientesTarefas.cdsToDo.Edit;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicao.Enabled := False;
  cxDBDateEdit1.SetFocus;

  btnNovo.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletarTarefa.Enabled := False;
  btnAdiarTarefa.Enabled := False;

  Trigger := True;

  DataAntiga := cxDBDateEdit1.Date;
end;

procedure TFormEditarTarefas.AtualizarLista;
begin
  ClientesTarefas.cdsToDo.ApplyUpdates(0);
  ClientesTarefas.cdsToDo.Refresh;
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
  HabilitarBotoes;

  ClientesTarefas.cdsToDo.Cancel;
  gbFormulario.Enabled := False;
  cxDBDateEdit1.Enabled := True;
  dbGridCriacaoEdicao.Enabled := True;

  Trigger := False;
end;

procedure TFormEditarTarefas.ConfirmarAdiarTarefa;
begin
  if Trigger = True then
    begin

  if DataAntiga <> cxDBDateEdit1.Date then
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

procedure TFormEditarTarefas.ControleDeUsuarioDeletarTarefa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
     ' Deletou Tarefa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarTarefas.ControleDeUsuarioEditarTarefa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
     ' Editou Tarefa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarTarefas.ControleDeUsuarioNovaTarefa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
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
  dbGridCriacaoEdicao.DataSource := dsCriarTarefas;
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
  cxDBDateEdit1.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;


procedure TFormEditarTarefas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HabilitarComponentes();
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

procedure TFormEditarTarefas.HabilitarComponentes;
begin
  ClientesTarefas.cdsToDoid_todo.Visible := True;
  dbGridCriacaoEdicao.Enabled := True;
  ClientesTarefas.cdsToDo.Cancel;
end;

procedure TFormEditarTarefas.NovaTarefa;
begin
  DesabilitarBotoes;

  ControleDeUsuarioNovaTarefa;

  ClientesTarefas.cdsToDo.Insert;
  ClientesTarefas.cdsToDoid_cadastro.Value := ID_Login;
  cxDBDateEdit1.Enabled := True;
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicao.Enabled := False;
end;

procedure TFormEditarTarefas.SalvarTarefa;
begin
  if (ClientesTarefas.cdsToDo.State = dsEdit) or (ClientesTarefas.cdsToDo.State = dsInsert) then
  begin
    ClientesTarefas.cdsToDo.ApplyUpdates(0);
    gbFormulario.Enabled := False;
    dbGridCriacaoEdicao.Enabled := True;
    cxDBDateEdit1.Enabled := True;
    ClientesTarefas.cdsToDo.Refresh;
    HabilitarBotoes;
  end;
end;
end.
