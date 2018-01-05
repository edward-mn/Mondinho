unit UnitPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DataModuleConexao,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UnitEditarPessoas,
  System.UITypes, DataModuleClientesPessoas;

type
  TFormPessoas = class(TForm)
    dbGridPessoas: TDBGrid;
    dsPessoas: TDataSource;
    gbStatusPessoas: TGroupBox;
    cbEmpresa: TCheckBox;
    cbVendedor: TCheckBox;
    cbJuridica: TCheckBox;
    cbFisica: TCheckBox;
    btnPesquisar: TButton;
    btnCadastrarPessoa: TButton;
    btnAtualizarCadastro: TButton;
    gbEditarPessoas: TGroupBox;
    bntVisualizar: TButton;
    btnImprimir: TButton;
    gbRelatorioPessoas: TGroupBox;
    cbUsuarioDoSistema: TCheckBox;
    procedure bntVisualizarClick(Sender: TObject);
    procedure AdicionarFiltroCorretoPessoas;
    procedure btnAtualizarCadastroClick(Sender: TObject);
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnEditarCadastroClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FClientes : TDmClientesPessoas;
    procedure DefinirDataSet;
  public
    ID_Login : Integer;
    procedure CriarFormCriacaoEdicaoPessoas;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormPessoas: TFormPessoas;

implementation

uses
  PessoasUtils;

{$R *.dfm}

procedure TFormPessoas.AdicionarFiltroCorretoPessoas;
var
  FiltroPessoas: String;
begin
  FiltroPessoas := '';

  if cbFisica.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);

  if cbJuridica.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);

  if cbVendedor.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);

  if cbEmpresa.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  if cbUsuarioDoSistema.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  Clientes.cdsPessoas.Filter := FiltroPessoas;
  Clientes.cdsPessoas.Filtered := not FiltroPessoas.IsEmpty;
end;

procedure TFormPessoas.bntVisualizarClick(Sender: TObject);
begin
  FClientes.frxReportPessoas.ShowReport();
end;

procedure TFormPessoas.btnAtualizarCadastroClick(Sender: TObject);
begin
  FClientes.cdsPessoas.Refresh;
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

procedure TFormPessoas.btnImprimirClick(Sender: TObject);
begin
  FClientes.frxReportPessoas.Print;
end;

constructor TFormPessoas.Create(AOwner: TComponent);
begin
  inherited;
  FClientes := TDmClientesPessoas.Create(Self);
  FClientes.cdsPessoas.SetProvider(Conexao.sqlQueryPessoas);
end;

procedure TFormPessoas.CriarFormCriacaoEdicaoPessoas;
var
  NewForm : TFormCriacaoEdicaoPessoas;
begin
  NewForm := TFormCriacaoEdicaoPessoas.Create(nil);
try
  NewForm.ClientesPessoas := FClientes;
  NewForm.ID_Login := ID_Login;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;

procedure TFormPessoas.DefinirDataSet;
begin
  dsPessoas.DataSet := FClientes.cdsPessoas;
  dbGridPessoas.DataSource := dsPessoas;
  DataModuleConexao.Conexao.DefinirIDdoUsuarioPessoas;
  FClientes.cdsPessoas.Open;
  FClientes.cdsPessoasid_cadastro.Visible := False;
end;

procedure TFormPessoas.FormShow(Sender: TObject);
begin
  DefinirDataSet;
end;

end.
