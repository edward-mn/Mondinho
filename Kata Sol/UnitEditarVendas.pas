unit UnitEditarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, Data.DB,
  DataModuleConexao, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit;

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
    btnEditar: TButton;
    btnDeletar: TButton;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure AtualizarLista;
    procedure CancelarVenda;
    procedure CriarNovaVenda;
    procedure DefinirDataSet;
    procedure DeletarVenda;
    procedure EdtarVenda;
    procedure HabilitarComponentes;
    procedure SalvarVenda;
  public
    Clientes : TDmClientes;
    Conexao : TDmConexao;
    function CalcularValorTotal(Quantidade : integer;ValorUnit : Currency): Currency;
  end;

var
  FormEditarVendas: TFormEditarVendas;

implementation

{$R *.dfm}

procedure TFormEditarVendas.btnNovoClick(Sender: TObject);
begin
  CriarNovaVenda();
end;

procedure TFormEditarVendas.AtualizarLista;
begin
  Clientes.cdsVendas.ApplyUpdates(0);
  Clientes.cdsVendas.Refresh;
  dbGridEditarVendas.Enabled := True;
  GBVendas.Enabled := False;
end;

procedure TFormEditarVendas.btnAtualizarClick(Sender: TObject);
begin
  AtualizarLista();
end;

procedure TFormEditarVendas.btnCancelarClick(Sender: TObject);
begin
  CancelarVenda();
end;

procedure TFormEditarVendas.btnDeletarClick(Sender: TObject);
begin
  DeletarVenda();
end;

procedure TFormEditarVendas.btnEditarClick(Sender: TObject);
begin
  EdtarVenda();
end;

procedure TFormEditarVendas.btnSalvarClick(Sender: TObject);
begin
  SalvarVenda();
end;

function TFormEditarVendas.CalcularValorTotal(Quantidade: integer; ValorUnit: Currency): Currency;
begin
  Result := Quantidade * ValorUnit ;
  Clientes.cdsVendasvalor_total.Value := Result;
end;

procedure TFormEditarVendas.CancelarVenda;
begin
  Clientes.cdsVendas.Cancel;
  dbGridEditarVendas.Enabled := True;
  GBVendas.Enabled := False;
end;

procedure TFormEditarVendas.CriarNovaVenda;
begin
  GBVendas.Enabled := True;
  dbGridEditarVendas.Enabled := False;
  Clientes.cdsVendas.Insert;
end;

procedure TFormEditarVendas.DefinirDataSet;
begin
  Clientes.cdsVendasid_produtos.Visible := False;
  Clientes.cdsVendasvalor_total.Visible := False;
  dsEditarVendas.DataSet := Clientes.cdsVendas;
  dbGridEditarVendas.DataSource := dsEditarVendas;
end;

procedure TFormEditarVendas.DeletarVenda;
begin
  if MessageDlg('Deseja realmete deletar essa venda ?', mtInformation, [mbYes , mbNo],0) = mrYes then
  begin
    Clientes.cdsVendas.Delete;
    Clientes.cdsVendas.ApplyUpdates(0);
  end;
end;

procedure TFormEditarVendas.EdtarVenda;
begin
  dbGridEditarVendas.Enabled := False;
  GBVendas.Enabled := True;
end;

procedure TFormEditarVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HabilitarComponentes();
end;

procedure TFormEditarVendas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormEditarVendas.HabilitarComponentes;
begin
  Clientes.cdsVendasid_produtos.Visible := True;
  Clientes.cdsVendasvalor_total.Visible := True;
end;

procedure TFormEditarVendas.SalvarVenda;
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

end.
