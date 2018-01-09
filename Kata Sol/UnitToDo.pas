unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, UnitEditarTarefas, Vcl.StdCtrls,
  UnitTarefas, Vcl.ExtCtrls, UnitVendas, UnitPessoas, Vcl.Imaging.pngimage,
  dxGDIPlusClasses, System.UITypes, DataModuleClientesCadastro;

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
    procedure Logout;
    procedure btnPessoasClick(Sender: TObject);
    procedure btnTarefasClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FClientesCadastro : TDmClientesCadastro;
    procedure DefinirDataSet;
  public
    ID_Login: Integer;
    constructor Create(AOwner: TComponent); override;
    procedure CriarFormTarefas;
    procedure CriarFormVendas;
    procedure CriarFormPessoas;
    procedure CriarFormLogout;
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

procedure TFormView.CriarFormLogout;
var
  NewForm : TFormLogin;
begin
   NewForm := TFormLogin.Create(nil);
   try
    NewForm.ShowModal;
   finally
    NewForm.Free;
   end;
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

procedure TFormView.DefinirDataSet;
begin
  ID_Login := Conexao.DefinirID(ID_Login);
  dsToDo.DataSet := FClientesCadastro.cdsCadastro;
  dbGridPrincipal.DataSource := dsToDo;
  FClientesCadastro.cdsCadastrosenha.Visible := False;
end;

procedure TFormView.FormCreate(Sender: TObject);
begin
  FClientesCadastro.cdsCadastro.Open;
  DefinirDataSet;
end;

procedure TFormView.Logout;
begin
  if MessageDlg('Deseja realmente fazer Logout ?', mtInformation, [mbYes, mbNo],
    0) = mrYes then
  begin
    Self.Close;
  end;
end;

end.
