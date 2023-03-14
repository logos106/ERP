unit BusObjABARecord;
  {
   Date     Version  Who  What
  -------- -------- ---  ------------------------------------------------------
  01/03/23  1.00.01  Wang  Initial Version.
  }


interface

uses BusObjBase, DB, Classes, XMLDoc, XMLIntf;


type
  TABARecords = class(TMSBusObj)
  private
    Function GetRecordType                  : String    ;
    Function GetBank1                       : String    ;
    Function GetBank2                       : String    ;
    Function GetBank3                       : String    ;
    Function GetRSN                         : String    ;
    Function GetUserBankName                : String    ;
    Function GetDEUserName                  : String    ;
    Function GetDEUserID                    : String    ;
    Function GetTransDesc                   : String    ;
    Function GetProcDate                    : TDateTime ;
    Function GetProcIndicator               : String    ;
    Function GetAccountID                   : Integer   ;
    Function GetIncludeBR                   : Boolean   ;
    Function GetIncludeNT                   : Boolean   ;
    Function GetIncludeCT                   : Boolean   ;
    Function GetIncludeDT                   : Boolean   ;

    Procedure SetRecordType                 (const Value: string    );
    Procedure SetBank1                      (const Value: string    );
    Procedure SetBank2                      (const Value: string    );
    Procedure SetBank3                      (const Value: string    );
    Procedure SetRSN                        (const Value: string    );
    Procedure SetUserBankName               (const Value: string    );
    Procedure SetDEUserName                 (const Value: string    );
    Procedure SetDEUserID                   (const Value: string    );
    Procedure SetTransDesc                  (const Value: string    );
    Procedure SetProcDate                   (const Value: TDateTime );
    Procedure SetProcIndicator              (const Value: string    );
    Procedure SetAccountID                  (const Value: Integer   );
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
    property RecordType             :String      read GetRecordType       write SetRecordType;
    property Bank1                  :String      read GetBank1            write SetBank1;
    property Bank2                  :String      read GetBank2            write SetBank2;
    property Bank3                  :String      read GetBank3            write SetBank3;
    property ReelSequenceNumber     :String      read GetRSN              write SetRSN;
    property UserBankName           :String      read GetUserBankName     write SetUserBankName;
    property DirectEntryUserName    :String      read GetDEUserName       write SetDEUserName;
    property DirectEntryUserID      :String      read GetDEUserID         write SetDEUserID;
    property TransactionDescription :String      read GetTransDesc        write SetTransDesc;
    property ProcessingDate         :TDateTime   read GetProcDate         write SetProcDate;
    property ProcessingIndicator    :String      read GetProcIndicator    write SetProcIndicator;
    property AccountID              :Integer     read GetAccountID        write SetAccountID;
    property IncludeBalanceRecord   :Boolean     read GetIncludeBR        write SetIncludeBR;
    property IncludeNetTotal        :Boolean     read GetIncludeNT        write SetIncludeNT;
    property IncludeCreditTotal     :Boolean     read GetIncludeCT        write SetIncludeCT;
    property IncludeDebitTotal      :Boolean     read GetIncludeDT        write SetIncludeDT;
  end;

implementation

uses
  CommonLib;

Constructor TABARecords.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fBusObjectTypeDescription:= 'ABA Records';
  fSQL := 'SELECT * FROM tblabadescriptiverecord';
end;

Destructor TABARecords.Destroy;
begin
  inherited;
end;


Procedure TABARecords.LoadFromXMLNode(const node: IXMLNode);
begin
  inherited;
  SetPropertyFromNode(node, 'RecordType');
  SetPropertyFromNode(node, 'Bank1');
  SetPropertyFromNode(node, 'Bank2');
  SetPropertyFromNode(node, 'Bank3');
  SetPropertyFromNode(node, 'ReelSequenceNumber');
  SetPropertyFromNode(node, 'UserBankName');
  SetPropertyFromNode(node, 'DirectEntryUserName');
  SetPropertyFromNode(node, 'DirectEnttyUserID');
  SetPropertyFromNode(node, 'TransactionDescription');
  SetPropertyFromNode(node, 'ProcessingDate');
  SetPropertyFromNode(node, 'PrcessingIndicator');
  SetPropertyFromNode(node, 'AccountID');
  SetPropertyFromNode(node, 'IncludeBalanceRecord');
  SetPropertyFromNode(node, 'IncludeNetTotal');
  SetPropertyFromNode(node, 'IncludeCreditTotal');
  SetPropertyFromNode(node, 'IncludeDebitTotal');
end;

Procedure TABARecords.SaveToXMLNode(Const node: IXMLNode);
begin
  inherited;
  AddXMLNode(node, 'RecordType',              RecordType);
  AddXMLNode(node, 'Bank1',                   Bank1);
  AddXMLNode(node, 'Bank2',                   Bank2);
  AddXMLNode(node, 'Bank3',                   Bank3);
  AddXMLNode(node, 'ReelSequenceNumber',      ReelSequenceNumber);
  AddXMLNode(node, 'UserBankName',            UserBankName);
  AddXMLNode(node, 'DirectEntryUserName',     DirectEntryUserName);
  AddXMLNode(node, 'DirectEntryUserID',       DirectEntryUserID);
  AddXMLNode(node, 'TransactionDescription',  TransactionDescription);
  AddXMLNode(node, 'ProcessingDate',          UserBankName);
  AddXMLNode(node, 'PrcessingIndicator',      UserBankName);
  AddXMLNode(node, 'AccountID',               AccountID);
  AddXMLNode(node, 'IncludeBalanceRecord',    IncludeBalanceRecord);
  AddXMLNode(node, 'IncludeNetTotal',         IncludeNetTotal);
  AddXMLNode(node, 'IncludeCreditTotal',      IncludeCreditTotal);
  AddXMLNode(node, 'IncludeDebitTotal',       IncludeDebitTotal);
end;

Function TABARecords.ValidateData: Boolean ;
begin
  Resultstatus.Clear;
  Result := True;
end;

Function TABARecords.Save: Boolean ;
begin
  Result := False;
  if not ValidateData then Exit;
  Result := inherited Save;
end;

Procedure TABARecords.OnDataIdChange(Const ChangeType: TBusObjDataChangeType);
begin
  inherited;
end;

Procedure TABARecords.DoFieldOnChange(Sender: TField);
begin
  inherited;
end;

Function TABARecords.GetSQL: string;
begin
  Result := inherited GetSQL;
end;

Class Function TABARecords.GetIDField: string;
begin
  Result := 'DescriptiveRecordID'
end;

class function TABARecords.GetBusObjectTablename: string;
begin
  Result := 'tblabadescriptiverecord';
end;

Function TABARecords.DoAfterPost(Sender: TDatasetBusObj): Boolean;
begin
  Result := inherited DoAfterPost(Sender);
end;

{Property Functions}
Function  TABARecords.GetRecordType               : String    ; begin Result := GetStringField('RecordType');             end;
Function  TABARecords.GetBank1                    : String    ; begin Result := GetStringField('Bank1');                  end;
Function  TABARecords.GetBank2                    : String    ; begin Result := GetStringField('Bank2');                  end;
Function  TABARecords.GetBank3                    : String    ; begin Result := GetStringField('Bank3');                  end;
Function  TABARecords.GetRSN                      : String    ; begin Result := GetStringField('ReelSequenceNumber');     end;
Function  TABARecords.GetUserBankName             : String    ; begin Result := GetStringField('UserBankName');           end;
Function  TABARecords.GetDEUserName               : String    ; begin Result := GetStringField('DirectEntryUserName'); end;
Function  TABARecords.GetDEUserID                 : String    ; begin Result := GetStringField('DirectyEntryUserID');   end;
Function  TABARecords.GetTransDesc                : String    ; begin Result := GetStringField('TransactionDescription'); end;
Function  TABARecords.GetProcDate                 : TDateTime ; begin Result := GetDateTimeField('ProcessingDate');       end;
Function  TABARecords.GetProcIndicator            : String    ; begin Result := GetStringField('ProcessingIndicator');    end;
Function  TABARecords.GetAccountID                : Integer   ; begin Result := GetIntegerField('AccountID');             end;
Function  TABARecords.GetIncludeBR                : Boolean   ; begin Result := GetBooleanField('IncludeBalanceRecord');  end;
Function  TABARecords.GetIncludeNT                : Boolean   ; begin Result := GetBooleanField('IncludeNetTotal');       end;
Function  TABARecords.GetIncludeCT                : Boolean   ; begin Result := GetBooleanField('IncludeCreditTotal');    end;
Function  TABARecords.GetIncludeDT                : Boolean   ; begin Result := GetBooleanField('IncludeDebitTotal');     end;

Procedure TABARecords.SetRecordType               (const Value: String);    begin SetStringField('RecordType',            Value);end;
Procedure TABARecords.SetBank1                    (const Value: string);    begin SetStringField('Bank1',                 Value);end;
Procedure TABARecords.SetBank2                    (const Value: string);    begin SetStringField('Bank2',                 Value);end;
Procedure TABARecords.SetBank3                    (const Value: string);    begin SetStringField('Bank3',                 Value);end;
Procedure TABARecords.SetRSN                      (const Value: string);    begin SetStringField('ReelSequenceNumber',    Value);end;
Procedure TABARecords.SetUserBankName             (const Value: string);    begin SetStringField('UserBankName',          Value);end;
Procedure TABARecords.SetDEUserName               (const Value: string);    begin SetStringField('DirectoryUserName',     Value);end;
Procedure TABARecords.SetDEUserID                 (const Value: string);    begin SetStringField('DirecotryUserID',       Value);end;
Procedure TABARecords.SetTransDesc                (const Value: string);    begin SetStringField('TransDescription',      Value);end;
Procedure TABARecords.SetProcDate                 (const Value: TDateTime); begin SetDateTimeField('ProcessingDate',      Value);end;
Procedure TABARecords.SetProcIndicator            (const Value: string);    begin SetStringField('ProcessingIndicator',   Value);end;
Procedure TABARecords.SetAccountID                (const Value: Integer);   begin SetIntegerField('AccountID',            Value);end;
Procedure TABARecords.SetIncludeBR                (const Value: Boolean);   begin SetBooleanField('IncludeBalanceRecord', Value);end;
Procedure TABARecords.SetIncludeNT                (const Value: Boolean);   begin SetBooleanField('IncludeCreditTotal',   Value);end;
Procedure TABARecords.SetIncludeCT                (const Value: Boolean);   begin SetBooleanField('TransactionCode',      Value);end;
Procedure TABARecords.SetIncludeDT                (const Value: Boolean);   begin SetBooleanField('IncludeDebitTotal',    Value);end;

initialization
  RegisterClassOnce(TABARecords);
end.
