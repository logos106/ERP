unit frmClientServerLog;

interface

uses
  BaseFormForm, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmBase, StdCtrls,
  JsonRpcTcpClient, JsonRpcBase, JsonObject, ExtCtrls, SelectionDialog, Menus;

type
  TfmClientServerLog = class(TBaseForm)
    memLog: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Client: TJsonRpcTcpClient;
    procedure DoOnRequest(Client: TJsonRpcBase; ReqJson: TJSONObject; ResJson: TJSONObject = nil);
    procedure DoOnConnect(Client: TJsonRpcBase);
    procedure DoOnDisconnect(Client: TJsonRpcBase);
    procedure Log(msg: string);
  public
    { Public declarations }
  end;

var
  fmClientServerLog: TfmClientServerLog;

implementation

uses
  AppEnvironment, JsonRpcConst, CommonLib;

{$R *.dfm}

{ TfmClientServerLog }

procedure TfmClientServerLog.DoOnConnect(Client: TJsonRpcBase);
begin
  Log('Connection established with server.');
end;

procedure TfmClientServerLog.DoOnDisconnect(Client: TJsonRpcBase);
begin
  Log('Disconnected from server.');
end;

procedure TfmClientServerLog.DoOnRequest(Client: TJsonRpcBase; ReqJson,
  ResJson: TJSONObject);
var
  method, eventname, value: string;
begin
  if devmode then Log(ReqJson.asString);
  try
    method:= ReqJson.S['method'];
    if method = 'event' then begin
      eventname:= ReqJson.O['params'].S['eventname'];
      if eventname = 'Log' then begin
        value:= ReqJson.O['params'].S['value'];
        Log(value);
      end
      else
        Log('Unknown event type: ' + eventname);
    end
    else begin
      Log('Unknown method: ' + method);
    end;
  finally
    if devmode then Log(ResJson.asString);
  end;
end;

procedure TfmClientServerLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Client.Connected:= false;
  Action:= caFree;
end;

procedure TfmClientServerLog.FormCreate(Sender: TObject);
var
  o, resp, j: TJsonObject;
begin
  inherited;
//  if not AppConfig.Data.O[ClassName].IntegerExists('port') then
//  AppConfig.Data.O[ClassName].I['port']:= DEFAULT_TCP_PORT;
  Client:= TJsonRpcTcpClient.Create;
  Client.ServerName:= AppEnv.AppDb.Server;
  Client.Port:= DEFAULT_TCP_PORT;
  Log('Client server: ' + Client.ServerName);
  Log('Client Port: ' + inttostr(Client.Port));

  Client.OnRequest:= DoOnRequest;
  Client.OnConnect:= DoOnConnect;
  Client.OnDisconnect:= DoOnDisconnect;
  try
    Client.Connected:= true;
  except
    on E:Exception do begin
      Log('Client connection Erorr : ' + E.message);
    end;
  end;
  if Client.Connected then begin
    o:= JO;
    o.S['sessiontype']:= 'config';

    resp:= Client.SendRequest('ClientServer.StartSession',o);
    if Assigned(resp) then begin
      try
        if resp.StringExists('result') and (resp.S['result'] = 'ok') then begin
          try
            j := JO;
            j.S['NotificationType']:= '';
            Client.SendRequest('ERPModClientServer.RegisterForNotification',j);

          except

          end;
        end
        else begin
          { failed to establisg a session }
          Client.Connected:= false;
          Log('Error connecting to server');
        end;
      finally
        resp.Free;
      end;
    end
    else begin
      Client.Connected:= false;
    end;
  end;
end;

procedure TfmClientServerLog.FormDestroy(Sender: TObject);
begin
  inherited;
  Client.Free;
end;

procedure TfmClientServerLog.Log(msg: string);
begin
  while memLog.Lines.Count > 2000 do
    memLog.Lines.Delete(0);
  memLog.Lines.Add(msg);
end;

initialization
  RegisterClass(TfmClientServerLog);


end.
