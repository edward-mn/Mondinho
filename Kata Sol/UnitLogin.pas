unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UnitCadastro, DataModuleClientes, DataModuleConexao;

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
    procedure Button1Click(Sender: TObject);
    procedure CriarFormCadastro;
    procedure CriarFormToDo;
  private
    FConexao : TdmConexao;
    FClientes : TDmClientes;
    fdefaultStyleName:String;
  public
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
  FConexao := TdmConexao.Create(Self);
  FClientes := TDmClientes.Create(Self);
  FClientes.cdsCadastro.SetProvider(FConexao.sqlProviderCadastro);
end;

procedure TFormLogin.btnCadastrarClick(Sender: TObject);
begin
  CriarFormCadastro();
end;

procedure TFormLogin.btnEntrarClick(Sender: TObject);
begin
  FConexao.sqlQueryCadastro.Close;
  FConexao.sqlQueryCadastro.ParambyName('usuario').AsString := edtUsuario.Text;
  FConexao.sqlQueryCadastro.ParambyName('senha').AsString := edtSenha.Text;
  FConexao.sqlQueryCadastro.Open;

  if FConexao.sqlQueryCadastro.IsEmpty then
    ShowMessage('Usuario ou Senha Invalida!')
  else
    CriarFormToDo();
end;

procedure TFormLogin.Button1Click(Sender: TObject);
begin
  CriarFormToDo;
end;

procedure TFormLogin.CriarFormCadastro;
var
  NewForm : TFormCadastro;
begin
  NewForm := TFormCadastro.Create(nil);
try
  NewForm.FClientes := FClientes;
  NewForm.FConexao := FConexao;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;

end;

procedure TFormLogin.CriarFormToDo;
var
  NewForm : TFormView;
begin
  NewForm := TFormView.Create(nil);
try
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;
end.