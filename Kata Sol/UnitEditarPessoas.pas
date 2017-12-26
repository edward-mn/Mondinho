unit UnitEditarPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TFormCriacaoEdicaoPessoas = class(TForm)
    dbGridCriacaoEdicaoPessoas: TDBGrid;
    dsCriacaoEdicaoPessoas: TDataSource;
    btnCadastrarPessoa: TButton;
    btnAtualizarPessoas: TButton;
    btnCancelarPessoas: TButton;
    btnSalvarPessoas: TButton;
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnAtualizarPessoasClick(Sender: TObject);
    procedure btnCancelarPessoasClick(Sender: TObject);
    procedure btnSalvarPessoasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
  end;

var
  FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas;

implementation

{$R *.dfm}

procedure TFormCriacaoEdicaoPessoas.btnCadastrarPessoaClick(Sender: TObject);
begin
  Clientes.cdsPessoas.Insert;
end;

procedure TFormCriacaoEdicaoPessoas.btnAtualizarPessoasClick(Sender: TObject);
begin
  Clientes.cdsPessoas.ApplyUpdates(0);
  Clientes.cdsPessoas.Refresh;
end;

procedure TFormCriacaoEdicaoPessoas.btnCancelarPessoasClick(Sender: TObject);
begin
  Clientes.cdsPessoas.Cancel;
end;

procedure TFormCriacaoEdicaoPessoas.btnSalvarPessoasClick(Sender: TObject);
begin
  Clientes.cdsPessoas.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicaoPessoas.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
    Clientes.cdsPessoasid_pessoas.Visible := True;
end;

procedure TFormCriacaoEdicaoPessoas.FormShow(Sender: TObject);
begin
  Clientes.cdsPessoasid_pessoas.Visible := False;
  dsCriacaoEdicaoPessoas.DataSet := Clientes.cdsPessoas;
  dbGridCriacaoEdicaoPessoas.DataSource := dsCriacaoEdicaoPessoas;

end;


end.
