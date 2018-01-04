unit UnitVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, System.UITypes,
  UnitEditarVendas, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit;

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
    { Private declarations }
  public
    Clientes : TDmClientes;
    ID_Login : Integer;
    procedure CriarFormEditarVendas;
  end;


var
  FormVendas: TFormVendas;

implementation

{$R *.dfm}

procedure TFormVendas.AdicionarFiltroCorretoVendas;
var
  Filtro: String;
const
  Ou = ' or ';
  BoxAberta = 'Status = ''Aberta''';
  BoxFinalizada = 'Status = ''Finalizada''';
  BoxExcluida = 'Status = ''Excluida''';
procedure AdicionarStatus(Box: String);
  begin
    if not Filtro.IsEmpty then
      Filtro := Filtro + Ou;
    Filtro := Filtro + Box;
  end;

begin
  if cbAberta.Checked then
  begin
    AdicionarStatus(BoxAberta);
  end;
  if cbFinalizada.Checked then
  begin
    AdicionarStatus(BoxFinalizada);
  end;
  if cbExcluida.Checked then
  begin
    AdicionarStatus(BoxExcluida);
  end;

  Clientes.cdsVendas.Filter := Filtro;
  Clientes.cdsVendas.Filtered := True;
end;

procedure TFormVendas.btnAtualizarVendasClick(Sender: TObject);
begin
  Clientes.cdsVendas.Refresh;
end;

procedure TFormVendas.btnEditarVendasCadastrarClick(Sender: TObject);
begin
  CriarFormEditarVendas();
end;

procedure TFormVendas.btnImprimirRelatorioClick(Sender: TObject);
begin
  Clientes.frxReportVendas.Print;
end;

procedure TFormVendas.btnPesquisarClick(Sender: TObject);
begin
  AdicionarFiltroCorretoVendas();
end;

procedure TFormVendas.btnVisualizarRelatorioClick(Sender: TObject);
begin
   Clientes.frxReportVendas.ShowReport();
end;

procedure TFormVendas.CriarFormEditarVendas;
var
  NewForm : TFormEditarVendas;
begin
  NewForm := TFormEditarVendas.Create(nil);
try
  NewForm.Clientes := Clientes;
  NewForm.ID_Login := ID_Login;
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
  dsVendas.DataSet := Clientes.cdsVendas;
  dbGridVendas.DataSource := dsVendas;
  DataModuleConexao.Conexao.DefinirIDdoUsuarioVendas;
  Clientes.cdsVendas.Open;
  Clientes.cdsVendasid_cadastro.Visible := False;
end;

end.
