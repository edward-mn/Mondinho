unit UnitVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, System.UITypes,
  UnitEditarVendas;

type
  TFormVendas = class(TForm)
    dbGridVendas: TDBGrid;
    dsVendas: TDataSource;
    GroupBox1: TGroupBox;
    cbExcluida: TCheckBox;
    cbFinalizada: TCheckBox;
    cbAberta: TCheckBox;
    btnPesquisar: TButton;
    Vendas: TGroupBox;
    btnAtualizarVendas: TButton;
    btnEditarVendasCadastrar: TButton;
    Tarefas: TLabel;
    procedure btnAtualizarVendasClick(Sender: TObject);
    procedure btnEditarVendasCadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
    Conexao : TDmConexao;
    procedure CriarFormEditarVendas;
  end;


var
  FormVendas: TFormVendas;

implementation

{$R *.dfm}

procedure TFormVendas.btnAtualizarVendasClick(Sender: TObject);
begin
  Clientes.cdsVendas.Refresh;
end;

procedure TFormVendas.btnEditarVendasCadastrarClick(Sender: TObject);
begin
  CriarFormEditarVendas();
end;

procedure TFormVendas.CriarFormEditarVendas;
var
  NewForm : TFormEditarVendas;
begin
  NewForm := TFormEditarVendas.Create(nil);
try
  NewForm.Clientes := Clientes;
  NewForm.ShowModal
finally
  NewForm.Free;
end;

end;

procedure TFormVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dbGridVendas.Enabled := True;
end;

procedure TFormVendas.FormShow(Sender: TObject);
begin
  Clientes.cdsVendas.SetProvider(Conexao.sqlQueryVendas);
  Clientes.cdsVendas.Open;
  dsVendas.DataSet := Clientes.cdsVendas;
  dbGridVendas.DataSource := dsVendas;
end;

end.
