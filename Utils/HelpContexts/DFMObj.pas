unit DFMObj;

interface

uses
  Classes, ConTnrs;

type

  TDFMItem = class(TObject)
  private
  public
    Name: string;
    Value: string;
  end;

  TDFMObject = class;
  TDFMItemList = class(TObject)
  private
    fList: TObjectList;
    function GetCount: integer;
    function GetItemByName(aName: string): TDFMItem;
    function GetItems(index: integer): TDFMItem;
  public
    OwnerObject: TDFMObject;
    constructor Create;
    destructor Destroy; override;
    property Count: integer read GetCount;
    procedure Clear;
    property ItemByName[aName: string]: TDFMItem read GetItemByName; default;
    property Items[index: integer]: TDFMItem read GetItems;
    procedure Delete(index: integer);
    procedure Add(aItem: TDFMItem);
    procedure Insert(aItem: TDFMItem; index: integer);
    procedure AddOrReplace(const aName, aValue: string);
  end;

  TDFMObjectInheritanceType = (itObject, itInherited, itInline);

  TDFMObjectList = class;
  TDFMObject = class(TObject)
  private
    FObjectClass: string;
    FName: string;
//    FIsInherited: boolean;
    FParent: TDFMObject;
    FInheritanceType: TDFMObjectInheritanceType;
    procedure SetObjectClass(const Value: string);
    procedure SetName(const Value: string);
//    procedure SetIsInherited(const Value: boolean);
    procedure SetParent(const Value: TDFMObject);
    function GetText: string;
    procedure SetText(const Value: string);
    function GetIndent: integer;
    function GetFullName: string;
    function GetObjectByFullName(aFullName: string): TDFMObject;
    procedure SetInheritanceType(const Value: TDFMObjectInheritanceType);
    function IsGUIPanel: boolean;
//    function GetMaxHelpContext(FormIncrement: integer): integer;
  public
    Items: TDFMItemList;
    Objects: TDFMObjectList;
    constructor Create;
    destructor Destroy; override;
    property Name: string read FName write SetName;
    property FullName: string read GetFullName;
    property ObjectClass: string read FObjectClass write SetObjectClass;
//    property IsInherited: boolean read FIsInherited write SetIsInherited;
    property InheritanceType: TDFMObjectInheritanceType read FInheritanceType write SetInheritanceType;
    property Parent: TDFMObject read FParent write SetParent;
    property Text: string read GetText write SetText;
    property Indent: integer read GetIndent;
    property ObjectByFullName[aFullName: string]: TDFMObject read GetObjectByFullName;
//    function MaxHelpContext(FormIncrement: integer): integer;
    function IsGUIControl: boolean;
  end;

  TDFMObjectList = class(TObject)
  private
    fList: TObjectList;
    function GetCount: integer;
    function GetObjectByName(aName: string): TDFMObject;
    function GetObjects(index: integer): TDFMObject;
  public
    OwnerObject: TDFMObject;
    constructor Create;
    destructor Destroy; override;
    property Count: integer read GetCount;
    procedure Clear;
    property ObjectByName[aName: string]: TDFMObject read GetObjectByName; default;
    property Objects[index: integer]: TDFMObject read GetObjects;
    procedure Delete(index: integer);
    procedure Add(aObject: TDFMObject);
    procedure Insert(aObject: TDFMObject; index: integer);
  end;

  TDFM = class(TDFMObject)
  private
    fFileName: string;
  public
    constructor Create;
    destructor Destroy; override;
    procedure LoadFromFile(const aFileName: string);
    procedure SaveToFile(aFileName: string = '');
    property FileName: string read fFileName;
    function MaxFormID(FormIncrement: integer): integer;
    function HasInvalidId(FormIncrement: integer): boolean;
  end;


implementation

{ TDFM }

uses
  sysutils, StrUtils, Types, IntegerListObj;

constructor TDFM.Create;
begin
  inherited;
end;

destructor TDFM.Destroy;
begin
  inherited;
end;

function TDFM.HasInvalidId(FormIncrement: integer): boolean;
var
  BaseFormId: integer;
  IdList: TIntegerList;

  function AllIdsValid(obj: TDFMObject): boolean;
  var
    x: integer;
    aId: integer;
  begin
    result := true;
    if (obj.IsGUIControl) then
      if not(Assigned(obj.Items['HelpContext'])) or
          (Trim(obj.Items['HelpContext'].Value) = '') or
          (Trim(obj.Items['HelpContext'].Value) = '0') then begin
          result := false;
          exit;
      end;
    if (obj.IsGUIControl) and
      Assigned(obj.Items['HelpContext']) and
     (Trim(obj.Items['HelpContext'].Value) <> '') and
     (Trim(obj.Items['HelpContext'].Value) <> '0') then begin
      aId := StrToInt(Trim(obj.Items['HelpContext'].Value));
      if Trunc(aId / FormIncrement) <> BaseFormId then begin
        result := false;
        exit;
      end;
      if IdList.InList(aId) then begin
        result := false;
        exit;
      end
      else
        IdList.Add(aId);
    end;
    for x := 0 to obj.Objects.Count -1 do begin
      result := AllIdsValid(obj.Objects.Objects[x]);
      if not result then exit;
    end;
  end;

begin
  result := False;
  BaseFormId := 0;
  IdList := TIntegerList.Create;
  try
    if Assigned(Items['HelpContext']) and (Trim(Items['HelpContext'].Value) <> '') then begin
      BaseFormId:= StrToInt(Trim(Items['HelpContext'].Value));
    end;
    if BaseFormId > 0 then begin
      BaseFormId := Trunc(BaseFormId / FormIncrement);
      result := not AllIdsValid(self);

    end;
  finally
    IdList.Free;
  end;
end;

procedure TDFM.LoadFromFile(const aFileName: string);
var
  sl: TStringList;
//  params: TStringList;
  strArray: TStringDynArray;
begin
  sl:= TStringList.Create;
//  params:= TStringList.Create;
  try
    sl.LoadFromFile(aFileName);
    fFileName:= aFileName;
//    FastFuncs.Split(Trim(sl[0]),' ',params);
    strArray:= SplitString(Trim(sl[0]),' ');
//    if Params.Count < 3 then
    if High(strArray) < 2 then
      raise Exception.Create('TDFM.LoadFromFile - Invalid format for "' + aFileName +'": ' + sl.Text);

//    if params[0] = 'inherited' then
    if strArray[0] = 'inherited' then
      self.InheritanceType:= itInherited
//    else if params[0] = 'inline' then
    else if strArray[0] = 'inline' then
      self.InheritanceType:= itInline
    else
      self.InheritanceType:= itObject;
//    self.Name:= AnsiStringReplace(Params[1],':','',[]);
    self.Name:= StringReplace(strArray[1],':','',[]);
//    self.ObjectClass:= Params[2];
    self.ObjectClass:= strArray[2];
//    if params.Count > 3 then
    if High(strArray) > 2 then
//      self.ObjectClass:= self.ObjectClass + ' ' + Params[3];
      self.ObjectClass:= self.ObjectClass + ' ' + strArray[3];

    sl.Delete(0);
    sl.Delete(sl.Count-1);
    self.Text:= sl.Text;
  finally
    sl.Free;
//    params.Free;
  end;
end;

function TDFM.MaxFormID(FormIncrement: integer): integer;
var
  BaseFormId: integer;

  function FindMaxId(obj: TDFMObject; ID: integer): integer;
  var
    x: integer;
    aID: integer;
  begin
    result := ID;
    if (obj.IsGUIControl) and
      Assigned(obj.Items['HelpContext']) and
     (Trim(obj.Items['HelpContext'].Value) <> '') and
     (Trim(obj.Items['HelpContext'].Value) <> '0') then begin
      aId := StrToInt(Trim(obj.Items['HelpContext'].Value));
      if Trunc(aId / FormIncrement) = BaseFormId then begin
        if aId > result then
          result:= aID;
      end;
    end;
    for x := 0 to obj.Objects.Count -1 do begin
      result := FindMaxId(obj.Objects.Objects[x],result);
    end;
  end;

begin
  result := 0;
  if Assigned(Items['HelpContext']) and (Trim(Items['HelpContext'].Value) <> '') then begin
    result:= StrToInt(Trim(Items['HelpContext'].Value));
  end;
  if result = 0 then
    exit;
  BaseFormId := Trunc(result / FormIncrement);
  result := FindMaxID(self, result);
end;

procedure TDFM.SaveToFile(aFileName: string);
var
  s: string;
  sl: TStringList;
begin
  s:= aFileName;
  if s = '' then s:= fFileName;
  if s <> '' then begin
    sl:= TStringList.Create;
    try
      sl.Text:= self.Text;
      sl.SaveToFile(s);
    finally
      sl.Free;
    end;
  end;
end;

{ TDFMItemList }

procedure TDFMItemList.Add(aItem: TDFMItem);
begin
  fList.Add(aItem);
end;

procedure TDFMItemList.AddOrReplace(const aName, aValue: string);
var
  Item: TDFMItem;
begin
  Item:= self.ItemByName[aName];
  if Assigned(Item) then begin
    Item.Value:= aValue;
  end
  else begin
    Item:= TDFMItem.Create;
    Item.Name:= aName;
    Item.Value:= aValue;
    self.Add(Item);
  end;
end;

procedure TDFMItemList.Clear;
begin
  fList.Clear;
end;

constructor TDFMItemList.Create;
begin
  fList:= TObjectList.Create;
end;

procedure TDFMItemList.Delete(index: integer);
begin
  fList.Delete(index);
end;

destructor TDFMItemList.Destroy;
begin
  fList.Free;
  inherited;
end;

function TDFMItemList.GetCount: integer;
begin
  result:= fList.Count;
end;

function TDFMItemList.GetItemByName(aName: string): TDFMItem;
var
  x: integer;
begin
  result:= nil;
  for x:= 0 to fList.Count -1 do begin
    if Items[x].Name = aName then begin
      result:= Items[x];
      break;
    end;
  end;
end;

function TDFMItemList.GetItems(index: integer): TDFMItem;
begin
  result:= TDFMItem(fList[index]);
end;

procedure TDFMItemList.Insert(aItem: TDFMItem; index: integer);
begin
  fList.Insert(index, aItem);
end;

{ TDFMObject }

constructor TDFMObject.Create;
begin
  Items:= TDFMItemList.Create;
  Items.OwnerObject:= self;
  Objects:= TDFMObjectList.Create;
  Objects.OwnerObject:= self;
end;

destructor TDFMObject.Destroy;
begin
  Items.Free;
  Objects.Free;
  inherited;
end;

procedure TDFMObject.SetObjectClass(const Value: string);
begin
  FObjectClass := Value;
end;

//procedure TDFMObject.SetIsInherited(const Value: boolean);
//begin
//  FIsInherited := Value;
//end;

procedure TDFMObject.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TDFMObject.SetParent(const Value: TDFMObject);
begin
  FParent := Value;
end;

function TDFMObject.GetText: string;
var
  x,y: integer;
  indentStr: string;
  sl, sl2: TStringList;
  s: string;
begin
  sl:= TStringList.Create;
  sl2:= TStringList.Create;
  try
    result:= '';
    indentStr:= '';
    for x:= 0 to self.Indent -1 do
      indentStr:= indentStr + '  ';

    case self.InheritanceType of
      itInherited: s:= indentStr + 'inherited';
      itInline:    s:= indentStr + 'inline';
      else         s:= indentStr + 'object';
    end;

    s:= s + ' ' + self.Name + ': ' + self.ObjectClass;
    sl.Add(s);

    for x:= 0 to Items.Count -1 do begin
      sl2.Text:= Items.Items[x].Value;
      for y:= 0 to sl2.Count -1 do begin
        if y = 0 then
          sl.Add(indentStr + '  ' + Items.Items[x].Name + ' = ' + sl2[y])
        else
          sl.Add(indentStr + '  ' + sl2[y]);
      end;
    end;
    for x:= 0 to Objects.Count -1 do begin
      sl2.Text:= Objects.Objects[x].Text;
      for y:= 0 to sl2.Count -1 do
        sl.Add(sl2[y]);

    end;

    sl.Add(indentstr + 'end');

    result:= sl.Text;
  finally
    sl.Free;
    sl2.Free;
  end;
end;

procedure TDFMObject.SetText(const Value: string);
var
  sl,subParams, subText: TStringList;
  x,i: integer;
  strArray: TStringDynArray;
  s, indentStr: string;
  subObj: TDFMObject;
  currentItem: string;
  Item: TDFMItem;

  function CurrentIndentStr: string;
  var y: integer;
  begin
    result:= '';
    for y := 1 to Length(sl[x]) do begin
      if sl[x][y] = ' ' then
        result:= result + ' '
      else
        break;
    end;
  end;

begin
  sl:= TStringList.Create;
  subParams:= TStringList.Create;
  subText:= TStringList.Create;
  try
    indentStr:= '  ';
//    for x:= 0 to self.Indent -1 do
//      indentStr:= indentStr + '  ';
    Items.Clear;
    Objects.Clear;
    currentItem:= '';
    subText.Clear;
    sl.Text:= Value;
    for x:= 0 to sl.Count-1 do begin
      s:= Trim(sl[x]);
      if Pos(indentStr + 'end',sl[x]) = 1 then begin
        { end of sub object }
        if subParams.Count >= 3 then begin
          subObj:= TDFMObject.Create;
          if subParams[0] = 'inherited' then
            subObj.InheritanceType:= itInherited
          else if subParams[0] = 'inline' then
            subObj.InheritanceType:= itInline
          else
            subObj.InheritanceType:= itObject;
          subObj.Name:= StringReplace(subParams[1],':','',[]);
          subObj.ObjectClass:= subParams[2];
          if subParams.Count > 3 then
            subObj.ObjectClass:= subObj.ObjectClass + ' ' + subParams[3];
          self.Objects.Add(subObj);
          subObj.Text:= subText.Text;
        end;
        subParams.Clear;
        subText.Clear;
      end
      else if (Pos(indentStr + 'object',sl[x]) = 1) or
              (Pos(indentStr + 'inherited',sl[x]) = 1) or
              (Pos(indentStr + 'inline',sl[x]) = 1) then begin

        if CurrentItem <> '' then begin
          Item:= TDFMItem.Create;
          Item.Name:= currentItem;
          Item.Value:= subText.Text;
          self.Items.Add(Item);
          CurrentItem:= '';
          subText.Clear;
        end;
        {sub-object start}
//        FastFuncs.Split(s,' ', subParams);
        subParams.Clear;
        strArray:= SplitString(s,' ');
        for i:= Low(strArray) to High(strArray) do
          subParams.Add(strArray[i]);

      end
      else if subParams.Count > 0 then begin
        { sub object text }
        subText.Add(Copy(sl[x],3, Length(sl[x])));
      end
      else if CurrentIndentStr = indentStr then begin
        { start / end of item }
        if Pos(' = ', sl[x]) > 0 then begin
          if CurrentItem <> '' then begin
            Item:= TDFMItem.Create;
            Item.Name:= currentItem;
            Item.Value:= subText.Text;
            self.Items.Add(Item);
            CurrentItem:= '';
            subText.Clear;
          end;
          CurrentItem:= Copy(s,1,Pos(' =',s)-1);
          subText.Add(Trim(Copy(s,Pos(' =',s)+2, Length(s))));
        end;
      end
      else if CurrentItem <> '' then begin
        subText.Add(Copy(sl[x],3, Length(sl[x])));
      end;
    end;
    if CurrentItem <> '' then begin
      Item:= TDFMItem.Create;
      Item.Name:= currentItem;
      Item.Value:= subText.Text;
      self.Items.Add(Item);
    end;
  finally
    sl.Free;
    subParams.Free;
    subText.Free;
  end;
end;

function TDFMObject.GetIndent: integer;
var
  parentObj: TDFMObject;
begin
  result:= 0;
  ParentObj:= self.Parent;
  while Assigned(ParentObj) do begin
    Inc(result);
    ParentObj:= ParentObj.Parent;
  end;
end;

function TDFMObject.GetFullName: string;
var
  parentObj: TDFMObject;
begin
  result:= self.Name;
  ParentObj:= self.Parent;
  while Assigned(ParentObj) do begin
    result:= ParentObj.Name + '.' + result;
    ParentObj:= ParentObj.Parent;
  end;
end;

function TDFMObject.GetObjectByFullName(aFullName: string): TDFMObject;
var
  x: integer;
begin
  result:= nil;
  if self.FullName = aFullName then
    result:= self
  else begin
    for x:= 0 to Objects.Count -1 do begin
      result:= Objects.Objects[x].ObjectByFullName[aFullName];
      if Assigned(result) then
        break;
    end;
  end;
end;

procedure TDFMObject.SetInheritanceType(
  const Value: TDFMObjectInheritanceType);
begin
  FInheritanceType := Value;
end;

//function TDFMObject.GetMaxHelpContext(FormIncrement: integer): integer;
//var
//  x: integer;
//  BaseFormId: integer;
//begin
//  result := 0;
//  if self is TDFM then begin
//
//
//  end;
//
//
//
//
//  result:= 0;
//  if Assigned(Items['HelpContext']) and (Trim(Items['HelpContext'].Value) <> '') then begin
//    result:= StrToInt(Trim(Items['HelpContext'].Value));
//  end;
//  if result = 0 then
//    exit;
//  BaseFormId := Trunc(result / FormIncrement);
//  for x:= 0 to self.Objects.Count -1 do begin
//    if Objects.Objects[x].MaxHelpContext(FormIncrement) > result then
//      result:= Objects.Objects[x].MaxHelpContext(FormIncrement);
//  end;
//end;
function TDFMObject.IsGUIPanel: boolean;
begin
  REsult := True;
  if Pos(Lowercase('TPanel'), Lowercase(Trim(self.ObjectClass))) = 1 then Exit;
  if Pos(Lowercase('TDnMPanel'), Lowercase(Trim(self.ObjectClass))) = 1 then Exit;
  Result := False;
end;
function TDFMObject.IsGUIControl: boolean;
var
  x: integer;
  aName: string;
begin
  result:= false;
  if Pos('twwmemodialog', Lowercase(Trim(self.ObjectClass))) = 1 then
    exit;
  if Pos('tcustominputbox', Lowercase(Trim(self.ObjectClass))) = 1 then
    exit;
  if Pos('thtmldialog', Lowercase(Trim(self.ObjectClass))) = 1 then
    exit;
  if Pos('tprogressdialog', Lowercase(Trim(self.ObjectClass))) = 1 then
    exit;
  if Pos('tadvsmoothpopup', Lowercase(Trim(self.ObjectClass))) = 1 then
    exit;
  if Pos('timagelist', Lowercase(Trim(self.ObjectClass))) = 1 then
    exit;
  if Pos('tselectiondialog', Lowercase(Trim(self.ObjectClass))) = 1 then
    exit;
  if IsGUIPanel then begin
    REsult := True;
    Exit;
  end;
  for x:= 0 to self.Items.Count -1 do begin
    aName:= self.Items.Items[x].Name;
    if (aName = 'Width') or
       (aName = 'Height') or
       (aName = 'Text') or
       (aName = 'Caption') then begin
      result:= true;
      break;
    end;
  end;
end;

//function TDFMObject.MaxHelpContext(FormIncrement: integer): integer;
//begin
//  result := GetMaxHelpContext(FormIncrement);
//end;

{ TDFMObjectList }

procedure TDFMObjectList.Add(aObject: TDFMObject);
begin
  aObject.Parent:= self.OwnerObject;
  fList.Add(aObject);
end;

procedure TDFMObjectList.Clear;
begin
  fList.Clear;
end;

constructor TDFMObjectList.Create;
begin
  fList:= TObjectList.Create;
end;

procedure TDFMObjectList.Delete(index: integer);
begin
  fList.Delete(index);
end;

destructor TDFMObjectList.Destroy;
begin
  fList.Free;
  inherited;
end;

function TDFMObjectList.GetCount: integer;
begin
  result:= fList.Count;
end;

function TDFMObjectList.GetObjectByName(aName: string): TDFMObject;
var x: integer;
begin
  result:= nil;
  for x:= 0 to fList.Count -1 do begin
    if Objects[x].Name = aName then begin
      result:= Objects[x];
      break;
    end;
  end;
end;

function TDFMObjectList.GetObjects(index: integer): TDFMObject;
begin
  result:= TDFMObject(fList[index]);
end;

procedure TDFMObjectList.Insert(aObject: TDFMObject; index: integer);
begin
  aObject.Parent:= self.OwnerObject;
  fList.Insert(index, aObject);
end;

end.
