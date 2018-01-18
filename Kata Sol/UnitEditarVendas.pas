unit UnitEditarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  DataModuleConexao, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesVendas,
  DataModuleControleDeUsuario, DataModuleVendedores, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, Vcl.Menus, cxButtons, cxSpinEdit;

type
  TFormEditarVendas = class(TForm)
    dsEditarVendas: TDataSource;
    GBVendas: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    btnEditar: TcxButton;
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
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFinalizarVendaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FVendedores : TDmClienteVendedores;
    FClientesControle : TDmControleDeUsuario;
    procedure FinalizarVenda;
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
    procedure ProviderVendedor;
    procedure ProviderCdsControle;
    procedure FocarCampos (FieldName: string);
//    procedure SetDados (Const Value : TDmClienteVendas);
    procedure Validar (Const Msg, FieldName : string);
    function CalcularValorTotal(Quantidade : integer;ValorUnit : Currency): Currency;
  public
    ClientesVendas : TDmClienteVendas;
    constructor Create(AOwner: TComponent); override;
//    property Campos : TDmClienteVendas read  ClientesVendas write Validar();
  end;

var
  FormEditarVendas: TFormEditarVendas;

implementation

uses
  System.Rtti, System.TypInfo;

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

procedure TFormEditarVendas.btnEditarClick(Sender: TObject);
begin
  EditarVenda;
end;

procedure TFormEditarVendas.btnSalvarClick(Sender: TObject);
begin
  SalvarVenda;
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

  ControleDeUsuarioNovaVenda;

  ClientesVendas.cdsVendas.Insert;
  ClientesVendas.cdsVendasid_vendedor.Value := FVendedores.cdsVendedoresid_vendedor.Value;
  ClientesVendas.cdsVendasid_cadastro.Value := Conexao.Usuario.Id;
  GBVendas.Enabled := True;
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

procedure TFormEditarVendas.FinalizarVenda;
begin
  ClientesVendas.cdsVendas.Edit;
  DesabilitarBotoes;
  ClientesVendas.cdsVendasstatus.text := 'Finalizada';
end;

procedure TFormEditarVendas.FocarCampos(FieldName: string);
var
  ComponenteCbStatus : TComponent;    // TcxDBComboBox;
  ComponenteEdtText : TcxDBTextEdit;
  ComponenteEdtValor : TcxDBCurrencyEdit;
  ComponenteSpQtd : TcxDBSpinEdit;
  ComponenteData : TcxDBDateEdit;
  PropInfo : PPropInfo;
  Field : Variant;
begin
  if FieldName.IsEmpty then
    exit
  else
  for ComponenteCbStatus in Self do
    begin
      if (ComponenteCbStatus is TcxDBComboBox) and
      (TcxDBComboBox(ComponenteCbStatus).DataBinding.DataField = FieldName) then
      TcxDBComboBox(ComponenteCbStatus).SetFocus
    end;




//  Com RTTI
//  for ComponenteCbStatus in Self do
//  begin
//    PropInfo := GetPropInfo(ComponenteCbStatus.ClassInfo, 'DataField');
//    if Assigned(PropInfo) then
//    begin
//      Field := GetPropValue(ComponenteCbStatus, 'DataField', True);
//      if Field = FieldName then
//        if ComponenteCbStatus is TWinControl then
//          TWinControl(ComponenteCbStatus).SetFocus;
//    end;
//  end;
end;

procedure TFormEditarVendas.FormClose(Sender: TObject; var Action: TCloseAction);
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
  btnEditar.Enabled := False;
  btnDeletar.Enabled := False;
  btnFinalizarVenda.Enabled := False;
end;

procedure TFormEditarVendas.HabilitarBotoes;
begin
  btnNovo.Enabled := True;
  btnEditar.Enabled := True;
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
  if (ClientesVendas.cdsVendas.State = dsEdit) or (ClientesVendas.cdsVendas.State = dsInsert) then
 begin
  CalcularValorTotal(ClientesVendas.cdsVendasquantidade.Value,
    ClientesVendas.cdsVendasvalor_produto.AsCurrency);
  ClientesVendas.cdsVendas.ApplyUpdates(0);
  dbGridEditarVendas.Enabled := True;
  GBVendas.Enabled := False;
  ClientesVendas.cdsVendas.Refresh;
  HabilitarBotoes;
  end;
end;

procedure TFormEditarVendas.Validar(const Msg, FieldName: string);
begin
  FocarCampos(FieldName);
  ShowMessage(Msg);
  Abort;
end;

//procedure TFormEditarVendas.SetDados(const Value: TDmClienteVendas);
//begin
//  ClientesVendas := Value;
//  ClientesVendas.o
//end;

end.
