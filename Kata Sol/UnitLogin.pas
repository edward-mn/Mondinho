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

uses
  UnitToDo;

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
  if not Conexao.Usuario.Logar(edtUsuario.Text, edtSenha.Text) then
  begin
    MessageDlg('Login e senha São invalidos.', mtError, [mbOk], 0);
    Exit;
  end;

  ModalResult := mrOk;
end;

end.

