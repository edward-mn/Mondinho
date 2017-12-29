unit UnitRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  DataModuleCadastro, DataModuleClientes, DataModuleConexao;

type
  TFormRelatorios = class(TForm)
    frxDBDatasetVendas: TfrxDBDataset;
    frxReportVendas: TfrxReport;
  private
    { Private declarations }
  public
  end;

var
  FormRelatorios: TFormRelatorios;

implementation

{$R *.dfm}

end.
