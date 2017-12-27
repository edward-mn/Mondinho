unit UnitEditarPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, System.UITypes;

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
    edtStatus: TDBEdit;
    Label6: TLabel;
    edtEndereco: TDBEdit;
    Label3: TLabel;
    Label1: TLabel;
    btnEditar: TButton;
    edtData: TDBEdit;
    mCalendar: TMonthCalendar;
    btnDeletarCadastro: TButton;
    procedure btnNovaPessoaClick(Sender: TObject);
    procedure btnAtualizarPessoasClick(Sender: TObject);
    procedure btnCancelarPessoasClick(Sender: TObject);
    procedure btnDeletarCadastroClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarPessoasClick(Sender: TObject);
    procedure edtDataEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mCalendarClick(Sender: TObject);
    procedure mCalendarDblClick(Sender: TObject);
  private
    procedure AtualizarLista;
    procedure CadastrarNovaPessoa;
    procedure CancelarAcao;
    procedure DefinirDataSet;
    procedure DeletarPessoa;
    procedure EditarPessoa;
    procedure HabilitarComponentes;
    procedure SalvarAlteracoes;
  public
    Clientes : TDmClientes;
  end;

var
  FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas;

implementation

{$R *.dfm}

procedure TFormCriacaoEdicaoPessoas.AtualizarLista;
begin
  Clientes.cdsPessoas.ApplyUpdates(0);
  Clientes.cdsPessoas.Refresh;
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
  Clientes.cdsPessoas.Insert;
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicaoPessoas.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.CancelarAcao;
begin
  Clientes.cdsPessoas.Cancel;
  gbFormulario.Enabled := False;
  mCalendar.Visible := False;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.DefinirDataSet;
begin
  Clientes.cdsPessoasid_pessoas.Visible := False;
  dsCriacaoEdicaoPessoas.DataSet := Clientes.cdsPessoas;
  dbGridCriacaoEdicaoPessoas.DataSource := dsCriacaoEdicaoPessoas;
  mCalendar.Visible := False;
end;

procedure TFormCriacaoEdicaoPessoas.DeletarPessoa;
begin
  if MessageDlg('Deseja realmete deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    begin
    Clientes.cdsPessoas.Delete;
    Clientes.cdsPessoas.ApplyUpdates(0);
    end;
end;

procedure TFormCriacaoEdicaoPessoas.EditarPessoa;
begin
  gbFormulario.Enabled := True;
  dbGridCriacaoEdicaoPessoas.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.edtDataEnter(Sender: TObject);
begin
  mCalendar.Visible := True;
end;

procedure TFormCriacaoEdicaoPessoas.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
    HabilitarComponentes();
end;

procedure TFormCriacaoEdicaoPessoas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormCriacaoEdicaoPessoas.HabilitarComponentes;
begin
  Clientes.cdsPessoasid_pessoas.Visible := True;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
  Clientes.cdsPessoas.Cancel;
end;

procedure TFormCriacaoEdicaoPessoas.mCalendarClick(Sender: TObject);
begin
  Clientes.cdsPessoas.Edit;
  edtData.Text := FormatDateTime('dd/mm/yyyy', mCalendar.Date);
end;

procedure TFormCriacaoEdicaoPessoas.mCalendarDblClick(Sender: TObject);
begin
  mCalendar.Visible := False;
end;

procedure TFormCriacaoEdicaoPessoas.SalvarAlteracoes;
begin
  if (Clientes.cdsVendas.State = dsEdit) or (Clientes.cdsVendas.State = dsInsert) then
  begin
  dbGridCriacaoEdicaoPessoas.Enabled := True;
  Clientes.cdsPessoas.ApplyUpdates(0);
  gbFormulario.Enabled := False;
  mCalendar.Visible := False;
  end;
end;

end.
