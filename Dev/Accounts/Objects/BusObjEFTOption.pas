unit BusObjEFTOption;
  {
   Date     Version  Who  What
  -------- -------- ---  ------------------------------------------------------
  01/03/23  1.00.01  Wang  Initial Version.
  }


interface

uses BusObjBase, DB, Classes, XMLDoc, XMLIntf;


type
  TEFTOption = class(TMSBusObj)
  private
    Function GetAccountID                   : Integer   ;
    Function GetDescription                 : String    ;
    Function GetBankName                    : String    ;
    Function GetIncludeBR                   : Boolean   ;
    Function GetIncludeNT                   : Boolean   ;
    Function GetIncludeCT                   : Boolean   ;
    Function GetIncludeDT                   : Boolean   ;

    Procedure SetAccountID                  (const Value: Integer   );
    Procedure SetDescription                (const Value: string    );
    Procedure SetBankName                   (const Value: string    );
    Procedure SetIncludeBR                  (const Value: Boolean   );
    Procedure SetIncludeNT                  (const Value: Boolean   );
    Procedure SetIncludeCT                  (const Value: Boolean   );
    Procedure SetIncludeDT                  (const Value: Boolean   );

  Protected
    Procedure OnDataIdChange(const ChangeType: TBusObjDataChangeType);   override;
    Procedure DoFieldOnChange(Sender: TField);                           override;
    Function  GetSQL: string;                                            override;
    Function  DoAfterPost(Sender: TDatasetBusObj): Boolean;              override;

  Public
    class Function  GetIDField: string;                                  override;
    class function GetBusObjectTablename: string;                        Override;
    Constructor  Create(AOwner: TComponent);                             override;
    Destructor   Destroy;                                                override;
    Procedure    LoadFromXMLNode(const node: IXMLNode);                  override;
    Procedure    SaveToXMLNode(const node: IXMLNode);                    override;
    Function     ValidateData: Boolean ;                                 override;
    Function     Save: Boolean ;                                         override;

  Published
    property AccountID            :Integer      read GetAccountID       write SetAccountID;
    property BankName             :String       read GetBankName        write SetBankName;
    property Description          :String       read GetDescription     write SetDescription;
    property IncludeBalanceRecord :Boolean      read GetIncludeBR       write SetIncludeBR;
    property IncludeNetTotal      :Boolean      read GetIncludeNT       write SetIncludeNT;
    property IncludeCreditTotal   :Boolean      read GetIncludeCT       write SetIncludeCT;
    property IncludeDebitTotal    :Boolean      read GetIncludeDT       write SetIncludeDT;

  end;

implementation

uses
  CommonLib;

Constructor TEFTOption.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fBusObjectTypeDescription:= 'EFT Optons';
  fSQL := 'SELECT * FROM tbleftoptions';
end;

Destructor TEFTOption.Destroy;
begin
  inherited;
end;


Procedure TEFTOption.LoadFromXMLNode(const node: IXMLNode);
begin
  inherited;
  SetPropertyFromNode(node, 'AccountID');
  SetPropertyFromNode(node, 'BankName');
  SetPropertyFromNode(node, 'Description');
  SetPropertyFromNode(node, 'IncludeBalanceRecord');
  SetPropertyFromNode(node, 'IncludeNetTotal');
  SetPropertyFromNode(node, 'IncludeCreditTotal');
  SetPropertyFromNode(node, 'IncludeDebitTotal');
end;

Procedure TEFTOption.SaveToXMLNode(Const node: IXMLNode);
begin
  inherited;
  AddXMLNode(node, 'AccountID', AccountID);
  AddXMLNode(node, 'BankName', BankName);
  AddXMLNode(node, 'Description', Description);
  AddXMLNode(node, 'IncludeBalanceRecord', IncludeBalanceRecord);
  AddXMLNode(node, 'IncludeNetTotal', IncludeNetTotal);
  AddXMLNode(node, 'IncludeCreditTotal', IncludeCreditTotal);
  AddXMLNode(node, 'IncludeDebitTotal', IncludeDebitTotal);
end;

Function TEFTOption.ValidateData: Boolean ;
begin
  Resultstatus.Clear;
  Result := True;
end;

Function TEFTOption.Save: Boolean ;
begin
  Result := False;
  if not ValidateData then Exit;
  Result := inherited Save;
end;

Procedure TEFTOption.OnDataIdChange(Const ChangeType: TBusObjDataChangeType);
begin
  inherited;
end;

Procedure TEFTOption.DoFieldOnChange(Sender: TField);
begin
  inherited;
end;

Function TEFTOption.GetSQL: string;
begin
  Result := inherited GetSQL;
end;

Class Function TEFTOption.GetIDField: string;
begin
  Result := 'OptionID'
end;

class function TEFTOption.GetBusObjectTablename: string;
begin
  Result := 'tbleftoptions';
end;

Function TEFTOption.DoAfterPost(Sender: TDatasetBusObj): Boolean;
begin
  Result := inherited DoAfterPost(Sender);
end;

{Property Functions}
Function  TEFTOption.GetAccountID               : Integer   ; begin Result := GetIntegerField('AccountID');end;
Function  TEFTOption.GetBankName                : String    ; begin Result := GetStringField('BankName');end;
Function  TEFTOption.GetDescription             : String    ; begin Result := GetStringField('Description');end;
Function  TEFTOption.GetIncludeBR               : Boolean   ; begin Result := GetBooleanField('IncludeBalanceRecord');end;
Function  TEFTOption.GetIncludeNT               : Boolean   ; begin Result := GetBooleanField('IncludeNetTotal');end;
Function  TEFTOption.GetIncludeCT               : Boolean   ; begin Result := GetBooleanField('IncludeCreditTotal');end;
Function  TEFTOption.GetIncludeDT               : Boolean   ; begin Result := GetBooleanField('IncludeDebitTotal');end;

Procedure TEFTOption.SetAccountID               (const Value: Integer   ); begin SetIntegerField('AccountID',             Value);end;
Procedure TEFTOption.SetBankName                (const Value: String    ); begin SetStringField('BankName',               Value);end;
Procedure TEFTOption.SetDescription             (const Value: string    ); begin SetStringField('Description',            Value);end;
Procedure TEFTOption.SetIncludeBR               (const Value: Boolean   ); begin SetBooleanField('IncludeBalanceRecord',  Value);end;
Procedure TEFTOption.SetIncludeNT               (const Value: Boolean   ); begin SetBooleanField('IncludeCreditTotal',    Value);end;
Procedure TEFTOption.SetIncludeCT               (const Value: Boolean   ); begin SetBooleanField('TransactionCode',       Value);end;
Procedure TEFTOption.SetIncludeDT               (const Value: Boolean   ); begin SetBooleanField('IncludeDebitTotal',     Value);end;

initialization
  RegisterClassOnce(TEFTOption);
end.
