unit UnitEditarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB,
  DataModuleConexao, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, System.UITypes;

type
  TFormEditarVendas = class(TForm)
    dbGridEditarVendas: TDBGrid;
    dsEditarVendas: TDataSource;
    btnAtualizar: TButton;
    btnSalvar: TButton;
    btnNovo: TButton;
    btnCancelar: TButton;
    GBVendas: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtVendedores: TDBEdit;
    edtFornecedores: TDBEdit;
    edtStatus: TDBEdit;
    edtProdutos: TDBEdit;
    edtPreco: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    btnEditar: TButton;
    btnDeletar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
    Conexao : TDmConexao;
    function CalcularValorTotal(Quantidade : integer;ValorUnit : Currency): Currency;
    procedure DesativarBotoesAoAbrirForm;
    procedure SetarDataSetDataSource;
    procedure ClicarNovo;
    procedure ClicarEditar;
  end;

var
  FormEditarVendas: TFormEditarVendas;

implementation

{$R *.dfm}

procedure TFormEditarVendas.btnNovoClick(Sender: TObject);
begin
  GBVendas.Enabled := True;
  dbGridEditarVendas.Enabled := False;
  Clientes.cdsVendas.Insert;
  btnSalvar.Enabled := True;
  ClicarNovo;
  //btnCancelar.Cancel := True;
end;

procedure TFormEditarVendas.btnAtualizarClick(Sender: TObject);
begin
  Clientes.cdsVendas.Refresh;
end;

procedure TFormEditarVendas.btnCancelarClick(Sender: TObject);
begin
  Clientes.cdsVendas.Cancel;
  dbGridEditarVendas.Enabled := True;
  GBVendas.Enabled := False;
end;

procedure TFormEditarVendas.btnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmete deletar essa venda ?', mtInformation, [mbYes , mbNo],0) = mrYes then
  begin
    Clientes.cdsVendas.Delete;
    Clientes.cdsVendas.ApplyUpdates(0);
  end;
end;

procedure TFormEditarVendas.btnEditarClick(Sender: TObject);
begin
  dbGridEditarVendas.Enabled := False;
  GBVendas.Enabled := True;
  ClicarEditar();
 // btnNovo.Enabled := True;
end;

procedure TFormEditarVendas.btnSalvarClick(Sender: TObject);
begin
  if (Clientes.cdsVendas.State = dsEdit) or (Clientes.cdsVendas.State = dsInsert) then
  begin
  dbGridEditarVendas.Enabled := True;
  GBVendas.Enabled := False;
  CalcularValorTotal(Clientes.cdsVendasquantidade.Value, Clientes.cdsVendasvalor_produto.AsCurrency);
  Clientes.cdsVendas.ApplyUpdates(0);
  Clientes.cdsVendas.Refresh;
  end;
end;

function TFormEditarVendas.CalcularValorTotal(Quantidade: integer; ValorUnit: Currency): Currency;
begin
  Result := Quantidade * ValorUnit ;
  Clientes.cdsVendasvalor_total.Value := Result;
end;

procedure TFormEditarVendas.ClicarEditar;
begin
  btnCancelar.Enabled := True;
  btnAtualizar.Enabled := True;
  btnEditar.Enabled := True;
end;

procedure TFormEditarVendas.ClicarNovo;
begin
  btnAtualizar.Enabled := True;
  btnNovo.Enabled := True;
  btnEditar.Enabled := False;
end;

//procedure TFormEditarVendas.DesativarBotoes;
//begin
//  btnEditar.Enabled := False;
//  btnAtualizar.Enabled := False;
//end;

procedure TFormEditarVendas.DesativarBotoesAoAbrirForm;
begin
  Clientes.cdsVendasid_produtos.Visible := False;
  Clientes.cdsVendasvalor_total.Visible := False;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
end;

procedure TFormEditarVendas.FormClose(Sender: TObject; var Action:TCloseAction);
begin
  Clientes.cdsVendasid_produtos.Visible := True;
  Clientes.cdsVendasvalor_total.Visible := True;
end;

procedure TFormEditarVendas.FormShow(Sender: TObject);
begin
  DesativarBotoesAoAbrirForm();
  SetarDataSetDataSource();
end;

procedure TFormEditarVendas.SetarDataSetDataSource;
begin
  dsEditarVendas.DataSet := Clientes.cdsVendas;
  dbGridEditarVendas.DataSource := dsEditarVendas;
end;

end.
