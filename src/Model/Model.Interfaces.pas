unit Model.Interfaces;

interface

uses
  Model.Integrations.Interfaces, Model.Services.Interfaces;
type
  iModel = interface
    ['{7D6EEE86-C3C6-48FE-874F-12BE891E4664}']
    function Integrations : iModelIntegrations;
    function Services : iModelServices;
  end;

implementation

end.
