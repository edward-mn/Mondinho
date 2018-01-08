unit DataModuleClientesCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, frxClass,
  frxDBSet;

type
  TDmClientesCadastro = class(TDataModule)
    cdsCadastro: TClientDataSet;
    cdsCadastroid: TIntegerField;
    cdsCadastronome_usuario: TWideStringField;
    cdsCadastrosenha: TWideStringField;
    frxDBDatasetCadastro: TfrxDBDataset;
    frxReportCadastro: TfrxReport;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  DataModuleConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmClientesCadastro }

constructor TDmClientesCadastro.Create(AOwner: TComponent);
begin
  inherited;
  cdsCadastro.SetProvider(Conexao.sqlproviderCadastro);
end;

end.
