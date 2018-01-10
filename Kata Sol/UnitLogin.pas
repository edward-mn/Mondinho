unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UnitCadastro, DataModuleClientesCadastro, DataModuleConexao, Data.DB,
  dxGDIPlusClasses, DataModuleControleDeUsuario, System.UITypes;

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
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UnitToDo;

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
  Conexao.sqlQueryCadastro.Open;

  if (Conexao.sqlQueryCadastro.Locate('nome_usuario',edtUsuario.Text,[loCaseInsensitive])) and
    (Conexao.sqlQueryCadastro.Locate('senha',edtSenha.Text,[loCaseInsensitive])) then
    begin
      ModalResult := mrOk;
    end
  else
    MessageDlg('Login e senha São invalidos.', mtError, [mbOk], 0);

end;

end.

