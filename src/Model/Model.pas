unit Model;

interface

uses
  Model.Interfaces, Model.Services.Interfaces, Model.Integrations.Interfaces;
type
  TModel = class(TInterfacedObject, iModel)
    constructor Create;
    destructor Destroy; override;
    class function New : iModel;
    function Integrations : iModelIntegrations;
    function Services : iModelServices;
  end;

implementation

uses
  Model.Integrations, Model.Services;

{ TModel }

constructor TModel.Create;
begin

end;

destructor TModel.Destroy;
begin

  inherited;
end;

function TModel.Integrations: iModelIntegrations;
begin
  Result := TModelIntegrations.New;
end;

class function TModel.New: iModel;
begin
  Result := Self.Create;
end;

function TModel.Services: iModelServices;
begin
  Result := TModelServices.New;
end;

end.
