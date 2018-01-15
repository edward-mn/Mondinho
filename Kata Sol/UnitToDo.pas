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
  dxBarBuiltInMenu, cxPC;

type
  TFormView = class(TForm)
    dbGridPrincipal: TDBGrid;
    dsToDo: TDataSource;
    Panel1: TPanel;
    btnLogout: TButton;
    Panel2: TPanel;
    Image1: TImage;
    PageControl: TcxPageControl;
    btnPessoas: TButton;
    Button1: TButton;
    btnVendas: TButton;
    lblNome: TLabel;
    Label1: TLabel;
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
    procedure CriarFormTarefas;
    procedure CriarFormVendas;
    procedure CriarFormPessoas;
    function CriarFormEmAba(ClasseForm: TFormClass): TForm;
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
  CriarFormPessoas();
end;

procedure TFormView.btnTarefasClick(Sender: TObject);
begin
  CriarFormTarefas();
end;

procedure TFormView.btnVendasClick(Sender: TObject);
begin
  CriarFormVendas();
end;

procedure TFormView.btnLogoutClick(Sender: TObject);
begin
  Logout;
end;

procedure TFormView.ControleDeUsuarioLogin;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
   ' Se Conectou' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
  FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormView.ControleDeUsuarioLogout;
begin
  ProviderControle;
  FClientesControle.cdsControleDeUsuario.Open;
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(ID_Login)) +
   ' Se Desconectou' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
  FClientesControle.cdsControleDeUsuario.Close;
end;

function TFormView.CriarFormEmAba(ClasseForm: TFormClass): TForm;
var
  Aba: TcxTabSheet;
  Form: TForm;
  I : Integer;
begin
  for I := 0 to PageControl.PageCount -1 do
  begin
    Form := PageControl.Pages[I].Controls[0] as TForm;

    if Form.ClassName = ClasseForm.ClassName then
    begin
      PageControl.ActivePage := PageControl.Pages[I];
      Form.SetFocus;
      Result := Form;
      Exit; 
    end;
  end;
    
  Aba := TcxTabSheet.Create(PageControl);
  Aba.PageControl := PageControl;
  PageControl.ActivePage := Aba;

  Result := ClasseForm.Create(Aba);
  Result.Parent := Aba;
  Result.Align := alClient;
  Result.BorderStyle := bsNone;
  Result.Show;

  Aba.Caption := Result.Caption;
end;

procedure TFormView.CriarFormPessoas;
begin
  CriarFormEmAba(TFormPessoas);
end;

procedure TFormView.CriarFormTarefas;
begin
  CriarFormEmAba(TFormTarefas);
end;

procedure TFormView.CriarFormVendas;
begin
  CriarFormEmAba(TFormVendas);
end;

procedure TFormView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ControleDeUsuarioLogout;
end;

procedure TFormView.DefinirDataSet;
begin
  dsToDo.DataSet := FClientesCadastro.cdsCadastro;
  dbGridPrincipal.DataSource := dsToDo;
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
  lblNome.Caption := Conexao.Usuario.Nome;
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
