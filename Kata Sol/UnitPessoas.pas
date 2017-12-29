unit UnitPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DataModuleClientes, DataModuleConexao,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UnitEditarPessoas,
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
    btnAtualizarCadastro: TButton;
    GroupBox2: TGroupBox;
    cbUsuarioDoSistema: TCheckBox;
    procedure AdicionarFiltroCorretoPessoas; 
    procedure btnAtualizarCadastroClick(Sender: TObject);
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnEditarCadastroClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
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

procedure TFormPessoas.AdicionarFiltroCorretoPessoas;
var
  Filtro: String;
const
  Ou = ' or ';
  BoxFisica = 'Status = ''Fisica''';
  BoxJuridica = 'Status = ''Juridica''';
  BoxVendedor = 'Status = ''Vendedor''';
  BoxEmpresa = 'Status = ''Empresa''';
  BoxUsuarioDoSistema = 'Status = ''Usuario do Sistema''';
procedure AdicionarStatus(Box: String);
  begin
    if not Filtro.IsEmpty then
      Filtro := Filtro + Ou;
    Filtro := Filtro + Box;
  end;

begin
  if cbFisica.Checked then
  begin
    AdicionarStatus(BoxFisica);
  end;
  if cbJuridica.Checked then
  begin
    AdicionarStatus(BoxJuridica);
  end;
  if cbVendedor.Checked then
  begin
    AdicionarStatus(BoxVendedor);
  end;

  if cbEmpresa.Checked then
  begin
    AdicionarStatus(BoxEmpresa);
  end;

  if cbUsuarioDoSistema.Checked then
  begin
    AdicionarStatus(BoxUsuarioDoSistema);
  end;

  Clientes.cdsPessoas.Filter := Filtro;
  Clientes.cdsPessoas.Filtered := True;
end;

procedure TFormPessoas.btnAtualizarCadastroClick(Sender: TObject);
begin
  Clientes.cdsPessoas.Refresh;
end;

procedure TFormPessoas.btnCadastrarPessoaClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.btnEditarCadastroClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.btnPesquisarClick(Sender: TObject);
begin
  AdicionarFiltroCorretoPessoas;
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
