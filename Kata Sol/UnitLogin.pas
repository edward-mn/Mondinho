unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UnitCadastro, DataModuleClientes, DataModuleConexao, Data.DB,
  dxGDIPlusClasses;

type
  TFormLogin = class(TForm)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnEntrar: TButton;
    btnCadastrar: TButton;
    Image1: TImage;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure CriarFormCadastro;
    procedure FormShow(Sender: TObject);
    procedure Logar;
  public
    FClientes : TDmClientes;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UnitToDo;

constructor TFormLogin.Create(AOwner: TComponent);
begin
  inherited;
  FClientes := TDmClientes.Create(Self);
  FClientes.cdsCadastro.SetProvider(Conexao.sqlProviderCadastro);
end;

procedure TFormLogin.btnCadastrarClick(Sender: TObject);
begin
  CriarFormCadastro;
end;

procedure TFormLogin.btnEntrarClick(Sender: TObject);
begin
  Logar;
end;

procedure TFormLogin.CriarFormCadastro;
var
  NewForm : TFormCadastro;
begin
  NewForm := TFormCadastro.Create(nil);
  try
    NewForm.Clientes := FClientes;
    NewForm.ShowModal;
  finally
    NewForm.Free;
  end;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  btnEntrar.SetFocus;
end;

procedure TFormLogin.Logar;
begin
  Conexao.sqlQueryCadastro.Close;
  Conexao.sqlQueryCadastro.ParambyName('usuario').AsString := edtUsuario.Text;
  Conexao.sqlQueryCadastro.ParambyName('senha').AsString := edtSenha.Text;
  Conexao.sqlQueryCadastro.Open;

  if Conexao.sqlQueryCadastro.IsEmpty then
    ShowMessage('Usuario ou Senha Invalida.')
  else
    ModalResult := mrOk;
end;

end.

