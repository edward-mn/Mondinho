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
    { Public declarations }
  end;

var
  DmClientesCadastro: TDmClientesCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
