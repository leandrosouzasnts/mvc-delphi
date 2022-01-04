unit Model.Integrations.MercadoPago;

interface

uses
   Model.Integrations.Interfaces;
type
  TModelIntegrationsMercadoPago = class(TInterfacedObject, iModelIntegrationsGenerics)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelIntegrationsGenerics;
  end;

implementation

{ TModelIntegrationsMercadoPago }

constructor TModelIntegrationsMercadoPago.Create;
begin

end;

destructor TModelIntegrationsMercadoPago.Destroy;
begin

  inherited;
end;

class function TModelIntegrationsMercadoPago.New: iModelIntegrationsGenerics;
begin
  Result := Self.Create;
end;

end.
