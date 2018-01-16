unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, UnitEditarTarefas, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitVendas, UnitPessoas, Vcl.Imaging.pngimage,
  dxGDIPlusClasses, System.UITypes, DataModuleControleDeUsuario, DataModuleClientesCadastro,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, cxPC, dxLayoutControlAdapters, dxLayoutContainer, cxClasses,
  dxLayoutControl;

type
  TFormView = class(TForm)
    dsToDo: TDataSource;
    LayoutControl: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    Button2: TButton;
    dxLayoutItem2: TdxLayoutItem;
    Button3: TButton;
    dxLayoutItem3: TdxLayoutItem;
    Button4: TButton;
    dxLayoutItem4: TdxLayoutItem;
    Panel1: TPanel;
    lblNome: TLabel;
    Label1: TLabel;
    btnLogout: TButton;
    dxLayoutGroup2: TdxLayoutGroup;
    Grupo01: TdxLayoutGroup;
    DBGrid1: TDBGrid;
    GrupoGrid: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutImageItem1: TdxLayoutImageItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure btnPessoasClick(Sender: TObject);
    procedure btnTarefasClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FClientesCadastro : TDmClientesCadastro;
    FClientesControle : TDmControleDeUsuario;
    procedure Logout;
    procedure ControleDeUsuarioLogin;
    procedure ControleDeUsuarioLogout;
    procedure ProviderControle;
    procedure DefinirDataSet;
    function CriarAba(AbaForm: TFormClass;AbaNome : String) :TForm;
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
  ProviderControle;
  FClientesControle.cdsControleDeUsuario.Open;
  ID_Login := Conexao.Usuario.Id;

  Conexao.sqlQueryCadastro.Close;
  Conexao.sqlQueryCadastro.Open;
  FClientesCadastro.cdsCadastro.SetProvider(Conexao.sqlQueryCadastro);
end;

procedure TFormView.btnPessoasClick(Sender: TObject);
begin
  CriarAba(TFormPessoas,'Pessoas');
end;

procedure TFormView.btnTarefasClick(Sender: TObject);
begin
  CriarAba(TFormTarefas,'Tarefas');
end;

procedure TFormView.btnVendasClick(Sender: TObject);
begin
  CriarAba(TFormVendas,'Vendas');
end;

procedure TFormView.btnLogoutClick(Sender: TObject);
begin
  Logout;
end;

procedure TFormView.ControleDeUsuarioLogin;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) + ' Se Conectou' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
  FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormView.ControleDeUsuarioLogout;
begin
  ProviderControle;
  FClientesControle.cdsControleDeUsuario.Open;
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) + ' Se Desconectou' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
  FClientesControle.cdsControleDeUsuario.Close;
end;

function TFormView.CriarAba(AbaForm :TFormClass;AbaNome : String) :TForm;
var
  Item: TdxLayoutItem;
  I: Integer;
begin
   for I := 0 to Grupo01.Count - 1 do
    if (Grupo01.Items[I] as TdxLayoutItem).Control is AbaForm then
    begin
      Grupo01.Items[I].MakeVisible;
      ((Grupo01.Items[I] as TdxLayoutItem).Control as TWinControl).SetFocus;
      Exit;
    end;
    begin
      Item := Grupo01.CreateItem(TdxLayoutItem) as TdxLayoutItem;
      Item.Control := AbaForm.Create(Item);
      Item.CaptionOptions.Visible := False;
      Item.Caption := AbaNome;
    end;
end;

procedure TFormView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ControleDeUsuarioLogout;
end;

procedure TFormView.DefinirDataSet;
begin
  dsToDo.DataSet := FClientesCadastro.cdsCadastro;
  FClientesCadastro.cdsCadastrosenha.Visible := False;
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

end.
