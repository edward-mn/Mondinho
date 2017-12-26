unit UnitPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DataModuleClientes, DataModuleConexao,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UnitCriacaoEdicaoPessoas,
  System.UITypes;

type
  TFormPessoas = class(TForm)
    dbGridPessoas: TDBGrid;
    dsPessoas: TDataSource;
    GroupBox1: TGroupBox;
    cbEmpresa: TCheckBox;
    cbVendedor: TCheckBox;
    cbJuridica: TCheckBox;
    cbFisica: TCheckBox;
    btnPesquisar: TButton;
    btnCadastrarPessoa: TButton;
    btnEditarCadastro: TButton;
    btnAtualizarCadastro: TButton;
    btnDeletarCadastro: TButton;
    GroupBox2: TGroupBox;
    procedure btnAtualizarCadastroClick(Sender: TObject);
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnDeletarCadastroClick(Sender: TObject);
    procedure btnEditarCadastroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes: TDmClientes;
    Conexao : TdmConexao;
    procedure CriarFormCriacaoEdicaoPessoas;
  end;

var
  FormPessoas: TFormPessoas;

implementation

{$R *.dfm}

procedure TFormPessoas.btnAtualizarCadastroClick(Sender: TObject);
begin
  Clientes.cdsPessoas.Refresh;
end;

procedure TFormPessoas.btnCadastrarPessoaClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.btnDeletarCadastroClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmete deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    Clientes.cdsPessoas.Delete;
    Clientes.cdsPessoas.ApplyUpdates(0);
end;

procedure TFormPessoas.btnEditarCadastroClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.CriarFormCriacaoEdicaoPessoas;
var
  NewForm : TFormCriacaoEdicaoPessoas;
begin
  NewForm := TFormCriacaoEdicaoPessoas.Create(nil);
try
  NewForm.Clientes := Clientes;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;

procedure TFormPessoas.FormShow(Sender: TObject);
begin
  Clientes.cdsPessoas.SetProvider(Conexao.sqlProviderPessoas);
  Clientes.cdsPessoas.Open;
  dsPessoas.DataSet := Clientes.cdsPessoas;
  dbGridPessoas.DataSource := dsPessoas;
end;

end.
