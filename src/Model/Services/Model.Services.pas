unit Model.Services;

interface
uses
  Model.Services.Interfaces,
  Model.Services.Boletos,
  Model.Services.NFe;
type
  TModelServices = class(TInterfacedObject, iModelServices)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelServices;
      function Boletos : iModelServicesGenerics;
      function NFe : iModelServicesGenerics;
  end;

implementation

{ TModelServices }

function TModelServices.Boletos: iModelServicesGenerics;
begin
  Result := TModelServicesBoletos.New;
end;

constructor TModelServices.Create;
begin

end;

destructor TModelServices.Destroy;
begin

  inherited;
end;

class function TModelServices.New: iModelServices;
begin
  Result := Self.Create;
end;

function TModelServices.NFe: iModelServicesGenerics;
begin
  Result := TModelServicesNFe.New;
end;

end.
