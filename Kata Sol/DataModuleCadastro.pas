unit DataModuleCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDMCadastro = class(TDataModule)
    cdsCadastro: TClientDataSet;
    cdsCadastroid: TIntegerField;
    cdsCadastronome_usuario: TWideStringField;
    cdsCadastrosenha: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadastro: TDMCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
