unit UnitVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, System.UITypes,
  UnitEditarVendas, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesVendas, VendasUtils,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, cxButtons,
  dxLayoutContainer, dxLayoutControlAdapters, dxLayoutControl;

type
  TFormVendas = class(TForm)
    dsVendas: TDataSource;
    cbExcluida: TCheckBox;
    cbFinalizada: TCheckBox;
    cbAberta: TCheckBox;
    cbCancelada: TCheckBox;
    dbGridVendas: TcxGrid;
    dbGridVendasDBTableView1: TcxGridDBTableView;
    dbGridVendasLevel1: TcxGridLevel;
    dbGridVendasDBTableView1id_produtos: TcxGridDBColumn;
    dbGridVendasDBTableView1fornecedores: TcxGridDBColumn;
    dbGridVendasDBTableView1status: TcxGridDBColumn;
    dbGridVendasDBTableView1produtos: TcxGridDBColumn;
    dbGridVendasDBTableView1valor_produto: TcxGridDBColumn;
    dbGridVendasDBTableView1quantidade: TcxGridDBColumn;
    dbGridVendasDBTableView1valor_total: TcxGridDBColumn;
    dbGridVendasDBTableView1data: TcxGridDBColumn;
    dbGridVendasDBTableView1id_cadastro: TcxGridDBColumn;
    dbGridVendasDBTableView1id_vendedor: TcxGridDBColumn;
    dbGridVendasDBTableView1vendedor: TcxGridDBColumn;
    btnPesquisar: TcxButton;
    btnCadastrarVendasCadastrar: TcxButton;
    btnAtualizarVendas: TcxButton;
    bntVisualizarRelatorio: TcxButton;
    btnImprimir: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LayoutGroupVendas: TdxLayoutGroup;
    LayoutGridVendas: TdxLayoutItem;
    LayoutGroupDireitoTodosBotoes: TdxLayoutGroup;
    LayoutGroupDireitoDentro: TdxLayoutGroup;
    LayoutGroupSuperiorDireito: TdxLayoutGroup;
    LayoutItemChAberta: TdxLayoutItem;
    LayoutItemChFinalizada: TdxLayoutItem;
    LayoutItemChExcluida: TdxLayoutItem;
    LayoutItemChCancelada: TdxLayoutItem;
    LayoutItemBtPesquisar: TdxLayoutItem;
    LayoutGroupCampoVendas: TdxLayoutGroup;
    LayoutGroupBotoes: TdxLayoutGroup;
    LayoutItemBtEdtRegistro: TdxLayoutItem;
    LayoutItemBtAtualizar: TdxLayoutItem;
    LayoutGroupCampoRelatorios: TdxLayoutGroup;
    LayoutGroupBtRelatorios: TdxLayoutGroup;
    LayoutItemBtVisualizar: TdxLayoutItem;
    LayoutItemBtImprimir: TdxLayoutItem;
    procedure btnAtualizarVendasClick(Sender: TObject);
    procedure btnEditarVendasCadastrarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCadastrarVendasCadastrarClick(Sender: TObject);
    procedure bntVisualizarRelatorioClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    FClientesVendas : TDmClienteVendas;
    procedure FiltroVendas;
    procedure DefinirDataSet;
    procedure CriarFormEditarVendas;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormVendas: TFormVendas;

implementation

{$R *.dfm}

procedure TFormVendas.FiltroVendas;
var
  FiltroVendas: String;
begin
  FiltroVendas := '';

  if cbAberta.Checked then
    FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusAberta);

  if cbFinalizada.Checked then
    FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);

  if cbExcluida.Checked then
    FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);

  if cbCancelada.Checked then
    FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);

  FClientesVendas.cdsVendas.Filter := FiltroVendas;
  FClientesVendas.cdsVendas.Filtered := not FiltroVendas.IsEmpty;
end;

procedure TFormVendas.bntVisualizarRelatorioClick(Sender: TObject);
begin
   FClientesVendas.frxReportVendas.ShowReport();
end;

procedure TFormVendas.btnAtualizarVendasClick(Sender: TObject);
begin
  FClientesVendas.cdsVendas.Refresh;
end;

procedure TFormVendas.btnCadastrarVendasCadastrarClick(Sender: TObject);
begin
  CriarFormEditarVendas();
end;

procedure TFormVendas.btnEditarVendasCadastrarClick(Sender: TObject);
begin
  CriarFormEditarVendas();
end;

procedure TFormVendas.btnImprimirClick(Sender: TObject);
begin
    FClientesVendas.frxReportVendas.Print;
end;

procedure TFormVendas.btnPesquisarClick(Sender: TObject);
begin
  FiltroVendas();
end;

constructor TFormVendas.Create(AOwner: TComponent);
begin
  inherited;
  FClientesVendas := TDmClienteVendas.Create(Self);
  FClientesVendas.cdsVendas.SetProvider(Conexao.sqlQueryVendas);
end;

procedure TFormVendas.CriarFormEditarVendas;
var
  NewForm : TFormEditarVendas;
begin
  NewForm := TFormEditarVendas.Create(nil);
try
  NewForm.ClientesVendas := FClientesVendas;
  NewForm.ShowModal
finally
  NewForm.Free;
end;

end;

procedure TFormVendas.DefinirDataSet;
begin
  FClientesVendas.cdsVendas.SetProvider(Conexao.sqlQueryVendas);
  dsVendas.DataSet := FClientesVendas.cdsVendas;
  FClientesVendas.cdsVendas.Open;
  FClientesVendas.cdsVendasid_cadastro.Visible := False;
end;

procedure TFormVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dbGridVendas.Enabled := True;
end;

procedure TFormVendas.FormShow(Sender: TObject);
begin
  DefinirDataSet;
end;

end.
