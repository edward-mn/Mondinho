unit ValidacaoUtils;

interface

uses
  System.Classes, cxCurrencyEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCustomData, cxSpinEdit, cxdbedit;

type
  TValidacaoUtils = class
  public
    class procedure FocarCampos(Parent: TComponent; FieldName: string);
  end;

implementation

uses
  System.SysUtils;

class procedure TValidacaoUtils.FocarCampos(Parent: TComponent;
  FieldName: string);
var
  Componente: TComponent;
begin
  if (FieldName.IsEmpty) then { Sem RTTI }
    Exit;

  for Componente in Parent do
  begin
    if (Componente is TcxDBComboBox) and
      (TcxDBComboBox(Componente).DataBinding.DataField = FieldName) then
      TcxDBComboBox(Componente).SetFocus;

    if (Componente is TcxDBLookupComboBox) and
      (TcxDBLookupComboBox(Componente).DataBinding.DataField = FieldName) then
      TcxDBLookupComboBox(Componente).SetFocus;

    if (Componente is TcxDBTextEdit) and
      (TcxDBTextEdit(Componente).DataBinding.DataField = FieldName) then
      TcxDBTextEdit(Componente).SetFocus;

    if (Componente is TcxDBCurrencyEdit) and
      (TcxDBCurrencyEdit(Componente).DataBinding.DataField = FieldName) then
      TcxDBCurrencyEdit(Componente).SetFocus;

    if (Componente is TcxDBSpinEdit) and
      ((TcxDBSpinEdit(Componente).DataBinding.DataField = FieldName)) then
      TcxDBSpinEdit(Componente).SetFocus;

    if (Componente is TcxDBMaskEdit) and
      (TcxDBMaskEdit(Componente).DataBinding.DataField = FieldName) then
      TcxDBMaskEdit(Componente).SetFocus;

    if (Componente is TcxDBDateEdit) and
      (TcxDBDateEdit(Componente).DataBinding.DataField = FieldName) then
      TcxDBDateEdit(Componente).SetFocus;

  end;
end;

end.
