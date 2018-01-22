unit UnitEditarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  DataModuleConexao, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesVendas,
  DataModuleControleDeUsuario, DataModuleVendedores, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, Vcl.Menus, cxButtons, cxSpinEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TFormEditarVendas = class(TForm)
    dsEditarVendas: TDataSource;
    btnDeletar: TcxButton;
    cbDBData: TcxDBDateEdit;
    btnFinalizarVenda: TcxButton;
    edtDBPreco: TcxDBCurrencyEdit;
    edtDBProdutos: TcxDBTextEdit;
    cbDBStatusVendas: TcxDBComboBox;
    edtDBFornecedores: TcxDBTextEdit;
    dsVendedores: TDataSource;
    cbVendedores: TcxDBLookupComboBox;
    dbGridEditarVendas: TcxGrid;
    dbGridEditarVendasDBTableView1: TcxGridDBTableView;
    dbGridEditarVendasLevel1: TcxGridLevel;
    dbGridEditarVendasDBTableView1id_produtos: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1fornecedores: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1status: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1produtos: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1valor_produto: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1quantidade: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1valor_total: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1data: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1id_cadastro: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1id_vendedor: TcxGridDBColumn;
    dbGridEditarVendasDBTableView1vendedor: TcxGridDBColumn;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    btnNovo: TcxButton;
    cxDBQuantidade: TcxDBSpinEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LayoutItemBtNovo: TdxLayoutItem;
    LayoutItemBtCancelar: TdxLayoutItem;
    LayoutItemBtSalvar: TdxLayoutItem;
    LayoutItemBtDeletar: TdxLayoutItem;
    LayoutItemBtFinalizarVenda: TdxLayoutItem;
    LayoutItemCpStatus: TdxLayoutItem;
    LayoutItemCpVendedores: TdxLayoutItem;
    LayoutItemCpFornecedores: TdxLayoutItem;
    LayoutItemCpProduto: TdxLayoutItem;
    LayoutItemCpPreco: TdxLayoutItem;
    LayoutItemCpQuantidade: TdxLayoutItem;
    LayoutItemCpData: TdxLayoutItem;
    LayoutGridVendas: TdxLayoutItem;
    LayoutImageItemMiniLogo: TdxLayoutImageItem;
    LayoutGroupTudoSuperior: TdxLayoutGroup;
    LayoutGroupBotoes: TdxLayoutGroup;
    LayoutGroupFormulario: TdxLayoutGroup;
    LayoutAutoCreatedGroupTudo: TdxLayoutAutoCreatedGroup;
    LayoutAutoCreatedGroupCampos: TdxLayoutAutoCreatedGroup;
    LayoutAutoCreatedGroupCamposInferior: TdxLayoutAutoCreatedGroup;
    LayoutAutoCreatedGroupCamposSuperior: TdxLayoutAutoCreatedGroup;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFinalizarVendaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FVendedores: TDmClienteVendedores;
    FClientesControle: TDmControleDeUsuario;
    procedure FinalizarVenda;
    procedure CancelarVenda;
    procedure CriarNovaVenda;
    procedure DefinirDataSet;
    procedure DeletarVenda;
    procedure DesabilitarBotoes;
    procedure HabilitarBotoes;
    procedure DeixarCamposInvisiveis;
    procedure DeixarCamposVisiveis;
    procedure SalvarVenda;
    procedure ControleDeUsuarioNovaVenda;
    procedure ControleDeUsuarioEditarVenda;
    procedure ControleDeUsuarioDeletarVenda;
    procedure ProviderVendedor;
    procedure ProviderCdsControle;
    function CalcularValorTotal(Quantidade: integer; ValorUnit: Currency)
      : Currency;
  public
    ClientesVendas: TDmClienteVendas;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormEditarVendas: TFormEditarVendas;

implementation

uses
  ValidacaoUtils;

{$R *.dfm}

procedure TFormEditarVendas.btnNovoClick(Sender: TObject);
begin
  CriarNovaVenda;
end;

procedure TFormEditarVendas.btnCancelarClick(Sender: TObject);
begin
  CancelarVenda;
end;

procedure TFormEditarVendas.btnDeletarClick(Sender: TObject);
begin
  if not ClientesVendas.cdsVendas.IsEmpty then
    DeletarVenda;
end;

procedure TFormEditarVendas.btnSalvarClick(Sender: TObject);
begin
  SalvarVenda;
end;

function TFormEditarVendas.CalcularValorTotal(Quantidade: integer;
  ValorUnit: Currency): Currency;
begin
  Result := Quantidade * ValorUnit;
  ClientesVendas.cdsVendasvalor_total.Value := Result;
end;

procedure TFormEditarVendas.CancelarVenda;
begin
  HabilitarBotoes;

  ClientesVendas.cdsVendas.Cancel;
  dbGridEditarVendas.Enabled := True;
end;

procedure TFormEditarVendas.ControleDeUsuarioDeletarVenda;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(Conexao.Usuario.Id)) + ' Deletou Venda ' +
    (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarVendas.ControleDeUsuarioEditarVenda;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(Conexao.Usuario.Id)) + ' Editou Venda ' +
    (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormEditarVendas.ControleDeUsuarioNovaVenda;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(Conexao.Usuario.Id)) + ' Adicionou Nova Venda ' +
    (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

constructor TFormEditarVendas.Create(AOwner: TComponent);
begin
  inherited;
  FVendedores := TDmClienteVendedores.Create(Self);
  FClientesControle := TDmControleDeUsuario.Create(Self);
  ProviderVendedor;
  ProviderCdsControle;
  FClientesControle.cdsControleDeUsuario.Open;

  FVendedores.cdsVendedores.Open;
  dsVendedores.DataSet := FVendedores.cdsVendedores;
end;

procedure TFormEditarVendas.btnFinalizarVendaClick(Sender: TObject);
begin
  FinalizarVenda();
end;

procedure TFormEditarVendas.CriarNovaVenda;
begin
  DesabilitarBotoes;

  ClientesVendas.cdsVendas.Insert;
  ClientesVendas.cdsVendasid_vendedor.Value :=
    FVendedores.cdsVendedoresid_vendedor.Value;
  ClientesVendas.cdsVendasid_cadastro.Value := Conexao.Usuario.Id;
  cbDBStatusVendas.SetFocus;
  dbGridEditarVendas.Enabled := False;
end;

procedure TFormEditarVendas.DefinirDataSet;
begin
  DeixarCamposInvisiveis;
  dsEditarVendas.DataSet := ClientesVendas.cdsVendas;
end;

procedure TFormEditarVendas.DeixarCamposInvisiveis;
begin
  ClientesVendas.cdsVendasid_produtos.Visible := False;
  ClientesVendas.cdsVendasvalor_total.Visible := False;
end;

procedure TFormEditarVendas.DeletarVenda;
begin
  if MessageDlg('Deseja realmente deletar essa venda ?', mtInformation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    ClientesVendas.cdsVendas.Delete;
    ClientesVendas.cdsVendas.ApplyUpdates(0);
    ControleDeUsuarioDeletarVenda;
  end;
end;

procedure TFormEditarVendas.FinalizarVenda;
begin
  ClientesVendas.cdsVendas.Edit;
  DesabilitarBotoes;
  ClientesVendas.cdsVendasstatus.text := 'Finalizada';
end;

procedure TFormEditarVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DeixarCamposVisiveis;
  ClientesVendas.cdsVendas.Cancel;
  FVendedores.cdsVendedores.Close;
  FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormEditarVendas.FormShow(Sender: TObject);
begin
  DefinirDataSet;
end;

procedure TFormEditarVendas.DesabilitarBotoes;
begin
  btnNovo.Enabled := False;
  btnDeletar.Enabled := False;
  btnFinalizarVenda.Enabled := False;
end;

procedure TFormEditarVendas.HabilitarBotoes;
begin
  btnNovo.Enabled := True;
  btnDeletar.Enabled := True;
  btnFinalizarVenda.Enabled := True;
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

procedure TFormEditarVendas.ProviderVendedor;
begin
  FVendedores.cdsVendedores.SetProvider(Conexao.sqlQueryVendedores);
end;

procedure TFormEditarVendas.SalvarVenda;
begin
  if (ClientesVendas.cdsVendas.State = dsInsert) then
  begin
    try
      CalcularValorTotal(ClientesVendas.cdsVendasquantidade.Value,
        ClientesVendas.cdsVendasvalor_produto.AsCurrency);
      ClientesVendas.cdsVendas.ApplyUpdates(0);

      ControleDeUsuarioNovaVenda;

      dbGridEditarVendas.Enabled := True;
      ClientesVendas.cdsVendas.Refresh;
      HabilitarBotoes;
    except
      on E: EValidationError do
      begin
        TValidacaoUtils.FocarCampos(Self, E.FieldName);
        ShowMessage(E.Message);
        Abort;
      end;
    end;
  end
  else if ClientesVendas.cdsVendas.State = dsEdit then
  begin
    try
      CalcularValorTotal(ClientesVendas.cdsVendasquantidade.Value,
        ClientesVendas.cdsVendasvalor_produto.AsCurrency);
      ClientesVendas.cdsVendas.ApplyUpdates(0);

      ControleDeUsuarioEditarVenda;

      dbGridEditarVendas.Enabled := True;
      ClientesVendas.cdsVendas.Refresh;
    except
      on E: EValidationError do
      begin
        TValidacaoUtils.FocarCampos(Self, E.FieldName);
        ShowMessage(E.Message);
        Abort;
      end;
    end;
  end;
end;

end.
