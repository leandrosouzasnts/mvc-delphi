unit Model.Services.NFe;

interface
uses
  Model.Services.Interfaces;
type
  TModelServicesNFe = class(TInterfacedObject, iModelServicesGenerics)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelServicesGenerics;
  end;

implementation

{ TModelServicesNFe }

constructor TModelServicesNFe.Create;
begin

end;

destructor TModelServicesNFe.Destroy;
begin

  inherited;
end;

class function TModelServicesNFe.New: iModelServicesGenerics;
begin
  Result := Self.Create;
end;

end.
