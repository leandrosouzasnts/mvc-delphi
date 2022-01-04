unit Model.Services.Boletos;

interface
uses
  Model.Services.Interfaces;
type
  TModelServicesBoletos = class(TInterfacedObject, iModelServicesGenerics)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelServicesGenerics;

  end;

implementation

{ TModelServicesBoletos }

constructor TModelServicesBoletos.Create;
begin

end;

destructor TModelServicesBoletos.Destroy;
begin

  inherited;
end;

class function TModelServicesBoletos.New: iModelServicesGenerics;
begin
  Result := Self.Create;
end;

end.
