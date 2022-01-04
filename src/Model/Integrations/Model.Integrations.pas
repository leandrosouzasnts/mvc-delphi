unit Model.Integrations;

interface
uses
  Model.Integrations.Interfaces,
  Model.Integrations.MercadoPago,
  Model.Integrations.SiteMercado;
type
  TModelIntegrations = class(TInterfacedObject, iModelIntegrations)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelIntegrations;
    function MercadoPago : iModelIntegrationsGenerics;
    function SiteMercado : iModelIntegrationsGenerics;
  end;

implementation

{ TModelIntegrations }

constructor TModelIntegrations.Create;
begin

end;

destructor TModelIntegrations.Destroy;
begin

  inherited;
end;

function TModelIntegrations.MercadoPago: iModelIntegrationsGenerics;
begin
  TModelIntegrationsMercadoPago.New;
end;

class function TModelIntegrations.New: iModelIntegrations;
begin
  Result := Self.Create;
end;

function TModelIntegrations.SiteMercado: iModelIntegrationsGenerics;
begin
  TModelIntegrationsSiteMercado.New;
end;

end.
