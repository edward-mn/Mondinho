unit DataModuleControleDeUsuario;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmControleDeUsuario = class(TDataModule)
    cdsControleDeUsuario: TClientDataSet;
    cdsControleDeUsuarioid_controle: TIntegerField;
    cdsControleDeUsuariocontrole_de_usuario: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmControleDeUsuario: TDmControleDeUsuario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
