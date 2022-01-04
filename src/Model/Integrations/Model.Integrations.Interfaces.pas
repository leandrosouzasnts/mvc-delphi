unit Model.Integrations.Interfaces;

interface
type
  iModelIntegrationsGenerics = Interface
    ['{A3ACD34C-1C49-48C4-A813-45376E3095AD}']
  end;

  iModelIntegrations = Interface
    ['{07F48713-E563-4E64-A272-A1AF8338F875}']
    function MercadoPago : iModelIntegrationsGenerics;
    function SiteMercado : iModelIntegrationsGenerics;
  End;

implementation

end.
