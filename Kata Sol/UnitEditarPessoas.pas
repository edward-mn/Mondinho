unit UnitEditarPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesPessoas,
  DataModuleControleDeUsuario;

type
  TFormCriacaoEdicaoPessoas = class(TForm)
    dbGridCriacaoEdicaoPessoas: TDBGrid;
    dsCriacaoEdicaoPessoas: TDataSource;
    btnNovaPessoa: TButton;
    btnAtualizarPessoas: TButton;
    btnCancelarPessoas: TButton;
    btnSalvarPessoas: TButton;
    gbFormulario: TGroupBox;
    Label7: TLabel;
    edtTelefone: TDBEdit;
    Label4: TLabel;
    edtNome: TDBEdit;
    edtCpf: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    edtCelular: TDBEdit;
    Label6: TLabel;
    edtEndereco: TDBEdit;
    Label3: TLabel;
    Label1: TLabel;
    btnEditar: TButton;
    btnDeletarCadastro: TButton;
    cbData: TcxDBDateEdit;
    cbStatusPessoas: TDBComboBox;
    procedure btnNovaPessoaClick(Sender: TObject);
    procedure btnAtualizarPessoasClick(Sender: TObject);
    procedure btnCancelarPessoasClick(Sender: TObject);
    procedure btnDeletarCadastroClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarPessoasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mCalendarClick(Sender: TObject);
  private
    FClientesControle : TDmControleDeUsuario;
    procedure AtualizarLista;
    procedure CadastrarNovaPessoa;
    procedure CancelarAcao;
    procedure DefinirDataSet;
    procedure DeletarPessoa;
    procedure DesabilitarBotoes;
    procedure EditarPessoa;
    procedure HabilitarBotoes;
    procedure SalvarAlteracoes;
    procedure ControleDeUsuarioNovaPessoa;
    procedure ControleDeUsuarioEditarPessoa;
    procedure ControleDeUsuarioDeletarPessoa;
    procedure ProviderCdsControle;
  public
    ClientesPessoas : TDmClientesPessoas;
    ID_Login : Integer;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas;

implementation

{$R *.dfm}

procedure TFormCriacaoEdicaoPessoas.AtualizarLista;
begin
  ClientesPessoas.cdsPessoas.ApplyUpdates(0);
  ClientesPessoas.cdsPessoas.Refresh;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.btnNovaPessoaClick(Sender: TObject);
begin
  CadastrarNovaPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnAtualizarPessoasClick(Sender: TObject);
begin
  AtualizarLista();
end;

procedure TFormCriacaoEdicaoPessoas.btnCancelarPessoasClick(Sender: TObject);
begin
  CancelarAcao();
end;

procedure TFormCriacaoEdicaoPessoas.btnDeletarCadastroClick(Sender: TObject);
begin
  DeletarPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnEditarClick(Sender: TObject);
begin
  EditarPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnSalvarPessoasClick(Sender: TObject);
begin
  SalvarAlteracoes();
end;

procedure TFormCriacaoEdicaoPessoas.CadastrarNovaPessoa;
begin
  DesabilitarBotoes;

  ControleDeUsuarioNovaPessoa;

  ClientesPessoas.cdsPessoas.Insert;
  ClientesPessoas.cdsPessoasid_cadastro.Value := ID_Login;
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicaoPessoas.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.CancelarAcao;
begin
  HabilitarBotoes;

  ClientesPessoas.cdsPessoas.Cancel;
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioDeletarPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
     ' Deletou Pessoa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioEditarPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
     ' Editou Pessoa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioNovaPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
     ' Adicionou Nova Pessoa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

constructor TFormCriacaoEdicaoPessoas.Create(AOwner: TComponent);
begin
  inherited;
  FClientesControle := TDmControleDeUsuario.Create(Self);
  ProviderCdsControle;
  FClientesControle.cdsControleDeUsuario.Open;
end;

procedure TFormCriacaoEdicaoPessoas.DefinirDataSet;
begin
  ClientesPessoas.cdsPessoasid_pessoas.Visible := False;
  dsCriacaoEdicaoPessoas.DataSet := ClientesPessoas.cdsPessoas;
  dbGridCriacaoEdicaoPessoas.DataSource := dsCriacaoEdicaoPessoas;
end;

procedure TFormCriacaoEdicaoPessoas.DeletarPessoa;
begin
  if MessageDlg('Deseja realmente deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    begin
    ClientesPessoas.cdsPessoas.Delete;
    ClientesPessoas.cdsPessoas.ApplyUpdates(0);
    ControleDeUsuarioDeletarPessoa;
    end;
end;

procedure TFormCriacaoEdicaoPessoas.DesabilitarBotoes;
begin
  btnNovaPessoa.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletarCadastro.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.EditarPessoa;
begin
  DesabilitarBotoes;

  ControleDeUsuarioEditarPessoa;

  gbFormulario.Enabled := True;
  dbGridCriacaoEdicaoPessoas.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
    ClientesPessoas.cdsPessoas.Cancel;
    ClientesPessoas.cdsPessoasid_pessoas.Visible := True;
    dbGridCriacaoEdicaoPessoas.Enabled := True;
    FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormCriacaoEdicaoPessoas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormCriacaoEdicaoPessoas.HabilitarBotoes;
begin
  btnNovaPessoa.Enabled := True;
  btnEditar.Enabled := True;
  btnDeletarCadastro.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.mCalendarClick(Sender: TObject);
begin
  ClientesPessoas.cdsPessoas.Edit;
end;

procedure TFormCriacaoEdicaoPessoas.ProviderCdsControle;
begin
  FClientesControle.cdsControleDeUsuario.SetProvider(Conexao.sqlQueryControle);
end;


procedure TFormCriacaoEdicaoPessoas.SalvarAlteracoes;
begin
  if (ClientesPessoas.cdsPessoas.State = dsEdit) or (ClientesPessoas.cdsPessoas.State = dsInsert) then
  begin
  gbFormulario.Enabled := False;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
  ClientesPessoas.cdsPessoas.ApplyUpdates(0);
  ClientesPessoas.cdsPessoas.Refresh;
  HabilitarBotoes;
  end;
end;

end.
