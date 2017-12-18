unit UnitToDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DataModuleConexao, DataModuleClientes, UnitCriacaoEdicao, Vcl.StdCtrls;

type
  TFormView = class(TForm)
    dbGridPrincipal: TDBGrid;
    dsToDo: TDataSource;
    btnCriarTarefa: TButton;
    procedure btnCriarTarefaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FConexao : TdmConexao;
    FClientes : TDmClientes;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CriarForm;
  end;

var
  FormView: TFormView;

implementation

{$R *.dfm}

constructor TFormView.Create(AOwner: TComponent);
begin
  inherited;
  FConexao := TdmConexao.Create(Self);
  FClientes := TDmClientes.Create(Self);

  FClientes.cdsClientes.SetProvider(FConexao.sqlProvider);
end;

procedure TFormView.btnCriarTarefaClick(Sender: TObject);
begin
  CriarForm();
end;

procedure TFormView.CriarForm;
var
  NewForm : TFormCriacaoEdicao;
begin
  NewForm := TFormCriacaoEdicao.Create(nil);
try
  NewForm.Clientes := FClientes;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;

end;

procedure TFormView.FormCreate(Sender: TObject);
begin
  FClientes.cdsClientes.Open;
  dsToDo.DataSet := FClientes.cdsClientes;
  dbGridPrincipal.DataSource := dsToDo;
end;

end.
