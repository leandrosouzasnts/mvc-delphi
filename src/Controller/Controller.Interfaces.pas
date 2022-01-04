unit Controller.Interfaces;

interface

uses
  Model.Integrations.Interfaces, Model.Services.Interfaces;
type
  iController = interface
    ['{3BCD055A-D32F-48EF-87D5-94039DAE8AC0}']
    function Integrations : iModelIntegrations;
    function Services : iModelServices;
  end;

implementation

end.
