unit UnitEditarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  DataModuleConexao, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesVendas,
  DataModuleControleDeUsuario;

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
    edtProdutos: TDBEdit;
    edtPreco: TDBEdit;
    DBEdit16: TDBEdit;
    btnEditar: TButton;
    btnDeletar: TButton;
    cxDBDateEdit1: TcxDBDateEdit;
    DBcbStatusVendas: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FClientesControle : TDmControleDeUsuario;
    procedure AtualizarLista;
    procedure CancelarVenda;
    procedure CriarNovaVenda;
    procedure DefinirDataSet;
    procedure DeletarVenda;
    procedure EditarVenda;
    procedure DesabilitarBotoes;
    procedure HabilitarBotoes;
    procedure DeixarCamposInvisiveis;
    procedure DeixarCamposVisiveis;
    procedure SalvarVenda;
    procedure ControleDeUsuarioNovaVenda;
    procedure ControleDeUsuarioEditarVenda;
    procedure ControleDeUsuarioDeletarVenda;
    procedure ProviderCdsControle;
    function CalcularValorTotal(Quantidade : integer;ValorUnit : Currency): Currency;
  public
    ClientesVendas : TDmClienteVendas;
    constructor Create(AOwner: TComponent); override;
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
  ClientesVendas.cdsVendas.ApplyUpdates(0);
  ClientesVendas.cdsVendas.Refresh;
  GBVendas.Enabled := False;
  dbGridEditarVendas.Enabled := True;
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
  EditarVenda();
end;

procedure TFormEditarVendas.btnSalvarClick(Sender: TObject);
begin
  SalvarVenda();
end;

function TFormEditarVendas.CalcularValorTotal(Quantidade: integer; ValorUnit: Currency): Currency;
begin
  Result := Quantidade * ValorUnit ;
  ClientesVendas.cdsVendasvalor_total.Value := Result;
end;

procedure TFormEditarVendas.CancelarVenda;
begin
  HabilitarBotoes;

  ClientesVendas.cdsVendas.Cancel;
  dbGridEditarVendas.Enabled := True;
  GBVendas.Enabled := False;
end;

procedure TFormEditarVendas.ControleDeUsuarioDeletarVenda;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Deletou Venda ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarVendas.ControleDeUsuarioEditarVenda;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Editou Venda ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarVendas.ControleDeUsuarioNovaVenda;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Adicionou Nova Venda ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

constructor TFormEditarVendas.Create(AOwner: TComponent);
begin
  inherited;
  FClientesControle := TDmControleDeUsuario.Create(Self);
  ProviderCdsControle;
  FClientesControle.cdsControleDeUsuario.Open;
end;

procedure TFormEditarVendas.CriarNovaVenda;
begin
  DesabilitarBotoes;

  ControleDeUsuarioNovaVenda;

  ClientesVendas.cdsVendas.Insert;
  ClientesVendas.cdsVendasid_cadastro.Value := Conexao.Usuario.Id;
  GBVendas.Enabled := True;
  dbGridEditarVendas.Enabled := False;
end;

procedure TFormEditarVendas.DefinirDataSet;
begin
  DeixarCamposInvisiveis;
  dsEditarVendas.DataSet := ClientesVendas.cdsVendas;
  dbGridEditarVendas.DataSource := dsEditarVendas;
end;

procedure TFormEditarVendas.DeixarCamposInvisiveis;
begin
  ClientesVendas.cdsVendasid_produtos.Visible := False;
  ClientesVendas.cdsVendasvalor_total.Visible := False;
end;

procedure TFormEditarVendas.DeletarVenda;
begin
  if MessageDlg('Deseja realmente deletar essa venda ?', mtInformation, [mbYes , mbNo],0) = mrYes then
  begin
    ClientesVendas.cdsVendas.Delete;
    ClientesVendas.cdsVendas.ApplyUpdates(0);
    ControleDeUsuarioDeletarVenda;
  end;
end;

procedure TFormEditarVendas.EditarVenda;
begin
  DesabilitarBotoes;

  ControleDeUsuarioEditarVenda;

  dbGridEditarVendas.Enabled := False;
  GBVendas.Enabled := True;
end;

procedure TFormEditarVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DeixarCamposVisiveis();
  ClientesVendas.cdsVendas.Cancel;
  FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormEditarVendas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormEditarVendas.DesabilitarBotoes;
begin
  btnNovo.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletar.Enabled := False;
end;

procedure TFormEditarVendas.HabilitarBotoes;
begin
  btnNovo.Enabled := True;
  btnEditar.Enabled := True;
  btnDeletar.Enabled := True;
end;

procedure TFormEditarVendas.DeixarCamposVisiveis;
begin
  ClientesVendas.cdsVendasid_produtos.Visible := True;
  ClientesVendas.cdsVendasvalor_total.Visible := True;
end;

procedure TFormEditarVendas.ProviderCdsControle;
begin
  FClientesControle.cdsControleDeUsuario.SetProvider(Conexao.sqlQueryControle);
end;

procedure TFormEditarVendas.SalvarVenda;
begin
  if (ClientesVendas.cdsVendas.State = dsEdit) or (ClientesVendas.cdsVendas.State = dsInsert) then
  begin
  dbGridEditarVendas.Enabled := True;
  GBVendas.Enabled := False;
  CalcularValorTotal(ClientesVendas.cdsVendasquantidade.Value, ClientesVendas.cdsVendasvalor_produto.AsCurrency);
  ClientesVendas.cdsVendas.ApplyUpdates(0);
  ClientesVendas.cdsVendas.Refresh;
  HabilitarBotoes;
  end;
end;

end.
