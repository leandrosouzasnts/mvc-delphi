unit ConexaoMVC.Model.Interfaces.Connections;

interface

uses
  System.Classes, Data.DB;
type
  iModelInterfacesConnectionsGenerics = interface
    ['{419958B9-06BD-4590-92D0-75A83C243CC7}']
    function SQL : TStrings;
    function Open : iModelInterfacesConnectionsGenerics;
    function DataSource(aValue : TDataSource) : iModelInterfacesConnectionsGenerics;
  end;

implementation

end.
