unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, UnitEditarTarefas, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitVendas, UnitPessoas, Vcl.Imaging.pngimage,
  dxGDIPlusClasses, System.UITypes, DataModuleControleDeUsuario, DataModuleClientesCadastro;

type
  TFormView = class(TForm)
    dbGridPrincipal: TDBGrid;
    dsToDo: TDataSource;
    Panel1: TPanel;
    btnTarefas: TButton;
    btnVendas: TButton;
    btnPessoas: TButton;
    btnLogout: TButton;
    Image1: TImage;
    Panel2: TPanel;
    DataSource1: TDataSource;
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

procedure TFormView.CriarFormPessoas;
var
  NewForm: TFormPessoas;
begin
  NewForm := TFormPessoas.Create(nil);
  try
    NewForm.ID_Login := ID_Login;
    NewForm.ShowModal;

  finally
    NewForm.Free;
  end;

end;

procedure TFormView.CriarFormTarefas;
var
  NewForm: TFormTarefas;
begin
  NewForm := TFormTarefas.Create(nil);
  try
    NewForm.ID_Login := ID_Login;
    NewForm.ShowModal;

  finally
    NewForm.Free;
  end;

end;

procedure TFormView.CriarFormVendas;
var
  NewForm: TFormVendas;
begin
  NewForm := TFormVendas.Create(nil);
  try
    NewForm.ID_Login := ID_Login;
    NewForm.ShowModal;
  finally
    NewForm.Free;
  end;

end;

procedure TFormView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ControleDeUsuarioLogout;
end;

procedure TFormView.DefinirDataSet;
begin
  ID_Login := Conexao.DefinirID(ID_Login);
  dsToDo.DataSet := FClientesCadastro.cdsCadastro;
  dbGridPrincipal.DataSource := dsToDo;
  FClientesCadastro.cdsCadastrosenha.Visible := False;
end;


procedure TFormView.FormCreate(Sender: TObject);
begin
  ID_Login := Conexao.DefinirID(ID_Login);
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
