unit ConexaoMVC.Model.Connections.FireDac;

interface

uses
  ConexaoMVC.Model.Interfaces.Connections,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDac.DApt, System.Classes, Data.DB;

type
  TModelConnectionsFireDac = class(TInterfacedObject, iModelInterfacesConnectionsGenerics)
    private
      FDConnection: TFDConnection;
      FDQuery: TFDQuery;
      procedure ConnectionConfig;
    public
      constructor Create;
      destructor Destroy;override;
      class function New : iModelInterfacesConnectionsGenerics;
      function SQL : TStrings;
      function Open : iModelInterfacesConnectionsGenerics;
      function DataSource(aValue : TDataSource) : iModelInterfacesConnectionsGenerics;
  end;

implementation

uses
  System.SysUtils;

{ TModelConnectionsFireDac }

procedure TModelConnectionsFireDac.ConnectionConfig;
begin
  FDConnection.DriverName := 'SQLite';
  FDConnection.LoginPrompt := False;
  FDConnection.Params.Database := 'C:\workspaces\ws-delphi\FireDac\Exemplos\DB\ERP.db3';
  FDConnection.Params.UserName := 'root';
  FDConnection.Params.Password := '';

  FDConnection.Connected := True;
end;

constructor TModelConnectionsFireDac.Create;
begin
  FDConnection := TFDConnection.Create(nil);
  FDQuery := TFDQuery.Create(nil);

  FDQuery.Connection := FDConnection;

  ConnectionConfig;
end;

function TModelConnectionsFireDac.DataSource(
  aValue: TDataSource): iModelInterfacesConnectionsGenerics;
begin
  Result := Self;
  aValue.DataSet := FDQuery;
end;

destructor TModelConnectionsFireDac.Destroy;
begin
  FDQuery.Free;
  FDConnection.Free;
  inherited;
end;

class function TModelConnectionsFireDac.New: iModelInterfacesConnectionsGenerics;
begin
  Result := Self.Create;
end;

function TModelConnectionsFireDac.Open: iModelInterfacesConnectionsGenerics;
begin
  Result := Self;
  FDQuery.Open;
end;

function TModelConnectionsFireDac.SQL: TStrings;
begin
  Result := FDQuery.SQL;
end;

end.
