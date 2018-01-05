unit UnitVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, System.UITypes,
  UnitEditarVendas, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesVendas, VendasUtils;

type
  TFormVendas = class(TForm)
    dbGridVendas: TDBGrid;
    dsVendas: TDataSource;
    gbStatusVenda: TGroupBox;
    cbExcluida: TCheckBox;
    cbFinalizada: TCheckBox;
    cbAberta: TCheckBox;
    btnPesquisar: TButton;
    gbEditarVenda: TGroupBox;
    btnAtualizarVendas: TButton;
    btnEditarVendasCadastrar: TButton;
    gbRelatorioVendas: TGroupBox;
    btnVisualizarRelatorio: TButton;
    btnImprimirRelatorio: TButton;
    procedure AdicionarFiltroCorretoVendas;
    procedure btnAtualizarVendasClick(Sender: TObject);
    procedure btnEditarVendasCadastrarClick(Sender: TObject);
    procedure btnImprimirRelatorioClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FClientesVendas : TDmClienteVendas;
    procedure DefinirDataSet;
  public
    ID_Login : Integer;
    procedure CriarFormEditarVendas;
    constructor Create(AOwner: TComponent); override;
  end;


var
  FormVendas: TFormVendas;

implementation

{$R *.dfm}

procedure TFormVendas.AdicionarFiltroCorretoVendas;
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

  FClientes.cdsVendas.Filter := FiltroVendas;
  FClientes.cdsVendas.Filtered := not FiltroVendas.IsEmpty;
end;

procedure TFormVendas.btnAtualizarVendasClick(Sender: TObject);
begin
  FClientesVendas.cdsVendas.Refresh;
end;

procedure TFormVendas.btnEditarVendasCadastrarClick(Sender: TObject);
begin
  CriarFormEditarVendas();
end;

procedure TFormVendas.btnImprimirRelatorioClick(Sender: TObject);
begin
  FClientesVendas.frxReportVendas.Print;
end;

procedure TFormVendas.btnPesquisarClick(Sender: TObject);
begin
  AdicionarFiltroCorretoVendas();
end;

procedure TFormVendas.btnVisualizarRelatorioClick(Sender: TObject);
begin
   FClientesVendas.frxReportVendas.ShowReport();
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
  NewForm.ID_Login := ID_Login;
  NewForm.ShowModal
finally
  NewForm.Free;
end;

end;

procedure TFormVendas.DefinirDataSet;
begin
  FClientesVendas.cdsVendas.SetProvider(Conexao.sqlQueryVendas);
  dsVendas.DataSet := FClientesVendas.cdsVendas;
  dbGridVendas.DataSource := dsVendas;
 DataModuleConexao.Conexao.DefinirIDdoUsuarioVendas;
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
