unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, UnitEditarTarefas, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitVendas, UnitPessoas, Vcl.Imaging.pngimage,
  dxGDIPlusClasses, System.UITypes, DataModuleControleDeUsuario,
  DataModuleClientesCadastro,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, cxPC, dxLayoutControlAdapters, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DataModuleVendasValorTotal, DataModuleVendasQuantidade, Vcl.Menus, cxButtons,
  Datasnap.DBClient;

type
  TFormView = class(TForm)
    LayoutControl: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    layoutBotaoTarefas: TdxLayoutItem;
    btnTarefas: TButton;
    layoutBotãoPessoas: TdxLayoutItem;
    btnPessoas: TButton;
    layoutBotãoVendas: TdxLayoutItem;
    btnVendas: TButton;
    layoutBarraFim: TdxLayoutItem;
    PanelFinal: TPanel;
    lblNome: TLabel;
    lblUsuario: TLabel;
    btnLogout: TButton;
    layoutGrupoBotoes: TdxLayoutGroup;
    GrupoForms: TdxLayoutGroup;
    layoutGrupoPrincipal: TdxLayoutGroup;
    layoutImagemLogoMondinho: TdxLayoutImageItem;
    cxGridUsuariosDBTableView1: TcxGridDBTableView;
    cxGridUsuariosLevel1: TcxGridLevel;
    cxGridUsuarios: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    cxGridUsuariosDBTableView1id: TcxGridDBColumn;
    cxGridUsuariosDBTableView1nome_usuario: TcxGridDBColumn;
    layoutGrupoUsuarios: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dsQuantidade: TDataSource;
    dsValorTotal: TDataSource;
    dsToDo: TDataSource;
    GridQauntidadeDBTableView1: TcxGridDBTableView;
    GridQauntidadeLevel1: TcxGridLevel;
    GridQauntidade: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    GridQauntidadeDBTableView1nome: TcxGridDBColumn;
    GridQauntidadeDBTableView1produtos: TcxGridDBColumn;
    GridQauntidadeDBTableView1sum: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    cxGrid1DBTableView1produtos: TcxGridDBColumn;
    cxGrid1DBTableView1sum: TcxGridDBColumn;
    btnAtt: TcxButton;
    procedure btnPessoasClick(Sender: TObject);
    procedure btnTarefasClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAttClick(Sender: TObject);
  private
    FClientesCadastro: TDmClientesCadastro;
    FClientesControle: TDmControleDeUsuario;
    FClientesVendasTotalDeVendas : TDmVendasValorTotal;
    FClientesVendasQuantidade : TDmVendasQuantidade;
    procedure Logout;
    procedure ControleDeUsuarioLogin;
    procedure ControleDeUsuarioLogout;
    procedure ProviderControle;
    procedure ProviderVendasValorTotal;
    procedure ProviderVendasQuantidade;
    procedure DefinirDataSet;
    function CriarAba(AbaForm: TFormClass; AbaNome: String): TForm;
  public
    ID_Login: Integer;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormView: TFormView;

implementation

{$R *.dfm}

uses
  UnitLogin;

constructor TFormView.Create(AOwner: TComponent);
begin
  inherited;
  FClientesCadastro := TDmClientesCadastro.Create(Self);
  FClientesControle := TDmControleDeUsuario.Create(Self);
  FClientesVendasTotalDeVendas := TDmVendasValorTotal.Create(Self);
  FClientesVendasQuantidade := TDmVendasQuantidade.Create(Self);
  ProviderControle;
  ProviderVendasValorTotal;
  ProviderVendasQuantidade;
  FClientesVendasTotalDeVendas.cdsVendasValorTotal.Open;
  FClientesVendasQuantidade.cdsVendasQuantidade.Open;
  FClientesControle.cdsControleDeUsuario.Open;
  ID_Login := Conexao.Usuario.Id;

  Conexao.sqlQueryCadastro.Close;
  Conexao.sqlQueryCadastro.Open;
  FClientesCadastro.cdsCadastro.SetProvider(Conexao.sqlQueryCadastro);
end;

procedure TFormView.btnPessoasClick(Sender: TObject);
begin
  CriarAba(TFormPessoas, 'Pessoas');
end;

procedure TFormView.btnTarefasClick(Sender: TObject);
begin
  CriarAba(TFormTarefas, 'Tarefas');
end;

procedure TFormView.btnVendasClick(Sender: TObject);
begin
  CriarAba(TFormVendas, 'Vendas');
end;

procedure TFormView.btnLogoutClick(Sender: TObject);
begin
  Logout;
end;

procedure TFormView.ControleDeUsuarioLogin;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(ID_Login)) + ' Se Conectou' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
  FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormView.ControleDeUsuarioLogout;
begin
  ProviderControle;
  FClientesControle.cdsControleDeUsuario.Open;
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(ID_Login)) + ' Se Desconectou' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
  FClientesControle.cdsControleDeUsuario.Close;
end;

function TFormView.CriarAba(AbaForm: TFormClass; AbaNome: String): TForm;
var
  Item: TdxLayoutItem;
  I: Integer;
begin
  I := 0;
  for I := 0 to GrupoForms.Count - 1 do
    if (GrupoForms.Items[I] as TdxLayoutItem).Control is AbaForm then
    begin
      GrupoForms.Items[I].MakeVisible;
      ((GrupoForms.Items[I] as TdxLayoutItem).Control as TWinControl).SetFocus;
      Exit;
    end;
  begin
    Item := GrupoForms.CreateItem(TdxLayoutItem) as TdxLayoutItem;
    Item.Control := AbaForm.Create(Item);
    Item.CaptionOptions.Visible := False;
    Item.Caption := AbaNome;
    GrupoForms.Items[I].MakeVisible;
    ((GrupoForms.Items[I] as TdxLayoutItem).Control as TWinControl).SetFocus;
  end;
end;

procedure TFormView.btnAttClick(Sender: TObject);
begin
  FClientesVendasTotalDeVendas.cdsVendasValorTotal.Refresh;
  FClientesVendasQuantidade.cdsVendasQuantidade.Refresh;
  FClientesCadastro.cdsCadastro.Refresh;
end;

procedure TFormView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ControleDeUsuarioLogout;
end;

procedure TFormView.DefinirDataSet;
begin
  cxGridUsuariosDBTableView1.DataController.DataSource := dsToDo;
  dsToDo.DataSet := FClientesCadastro.cdsCadastro;
  dsQuantidade.DataSet := FClientesVendasQuantidade.cdsVendasQuantidade;
  dsValorTotal.DataSet := FClientesVendasTotalDeVendas.cdsVendasValorTotal;
  FClientesCadastro.cdsCadastrosenha.Visible := False;
  lblNome.Caption := Conexao.Usuario.Nome;
end;

procedure TFormView.FormCreate(Sender: TObject);
begin
  FClientesCadastro.cdsCadastro.Close;
  FClientesCadastro.cdsCadastro.Open;
  DefinirDataSet;
end;

procedure TFormView.FormShow(Sender: TObject);
begin
  ControleDeUsuarioLogin;
end;

procedure TFormView.Logout;
begin
  if MessageDlg('Deseja realmente fazer Logout ?', mtInformation, [mbYes, mbNo],
    0) = mrYes then
  begin
    Self.Close;
  end;
end;

procedure TFormView.ProviderControle;
begin
  FClientesControle.cdsControleDeUsuario.SetProvider(Conexao.sqlProviderControle);
end;

procedure TFormView.ProviderVendasQuantidade;
begin
  FClientesVendasQuantidade.cdsVendasQuantidade.SetProvider(Conexao.sqlProviderQuantidadeVendas);
end;

procedure TFormView.ProviderVendasValorTotal;
begin
  FClientesVendasTotalDeVendas.cdsVendasValorTotal.SetProvider(Conexao.sqlProviderVendasValorTotal);
end;

end.
