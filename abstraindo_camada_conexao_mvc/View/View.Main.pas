unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, ConexaoMVC.Model.Connections.FireDac, ConexaoMVC.Model.Interfaces.Connections;


type
  TForm1 = class(TForm)
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    iConnection : iModelInterfacesConnectionsGenerics;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  iConnection.SQL.Clear;
  iConnection.SQL.Add('SELECT * FROM CLIENTE');
  iConnection.Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  iConnection := TModelConnectionsFireDac.New.DataSource(DataSource);
end;

end.
