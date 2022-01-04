unit Model.Integrations.SiteMercado;

interface
uses
  Model.Integrations.Interfaces;
type
  TModelIntegrationsSiteMercado = class(TInterfacedObject, iModelIntegrationsGenerics)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelIntegrationsGenerics;
  end;

implementation

{ TModelIntegrationsSiteMercado }

constructor TModelIntegrationsSiteMercado.Create;
begin

end;

destructor TModelIntegrationsSiteMercado.Destroy;
begin

  inherited;
end;

class function TModelIntegrationsSiteMercado.New: iModelIntegrationsGenerics;
begin
  Result := Self.Create;
end;

end.
