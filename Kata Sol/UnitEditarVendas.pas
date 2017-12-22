unit UnitEditarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB,
  DataModuleConexao, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormEditarVendas = class(TForm)
    dbGridEditarVendas: TDBGrid;
    dsEditarVendas: TDataSource;
    btnAtualizar: TButton;
    btnSalvar: TButton;
    btnAdicionar: TButton;
    btnCancelar: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
    Conexao : TDmConexao;
  end;

var
  FormEditarVendas: TFormEditarVendas;

implementation

{$R *.dfm}

procedure TFormEditarVendas.btnAdicionarClick(Sender: TObject);
begin
  Clientes.cdsVendas.Insert;
end;

procedure TFormEditarVendas.btnAtualizarClick(Sender: TObject);
begin
  Clientes.cdsVendas.Refresh;
end;

procedure TFormEditarVendas.btnCancelarClick(Sender: TObject);
begin
  Clientes.cdsVendas.Cancel;
end;

procedure TFormEditarVendas.btnSalvarClick(Sender: TObject);
begin
  Clientes.cdsVendas.ApplyUpdates(0);
  Clientes.cdsVendas.Refresh;
end;

procedure TFormEditarVendas.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
  Clientes.cdsVendasid_produtos.Visible := True;
end;

procedure TFormEditarVendas.FormShow(Sender: TObject);
begin
  Clientes.cdsVendasid_produtos.Visible := False;
  dsEditarVendas.DataSet := Clientes.cdsVendas;
  dbGridEditarVendas.DataSource := dsEditarVendas;
end;

end.
