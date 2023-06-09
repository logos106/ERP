unit BusObjTaxUK;
{ NOTES:
  The employee must have a Tax Code in order to calc tax.
  The tax code controls if calcs are cumulative or not and which formalas to use

  Free pay is subtracted from the pay to get taxable pay
  Additional pay is added to the pay to get taxable pay. In this case
    taxable pay is for tax calc purposes only.

}
interface
uses
  BusObjTaxBase,
  //BusObjPayUK,
  Classes;
type
   TTaxUK = class(TTaxBase)
   private
   //   fEmployeePaySettings: Temployeepaysettings;

     //fn                 :integer;       //Week Number
//     fpn                :double;        //Pay for Week n
//     fPPn               :double;        //Cumulative Pay up to & inc Week n
//     fa1                 :double;        //Free Pay for Week 1
//     fe1                 :double;        //Additional Pay for Week 1
//     fUn                 :double;        //Before Rounding rules Taxable Pay up to & inc Week n
//     fTn                 :double;        //After Rounding rules Taxable Pay up to & inc Week n
//     fln                 :double;        //Tax deductable or refundable in Week n
//     fLLn                :double;        //Tax liability up to and inc Week n

     fWeekNumber                :integer;       //Week Number
     fMonthNumber               :integer;       //Month Number
     fPayWeekN                  :double;        //Pay for Week n
     fCumulativePayWeekN        :double;        //Cumulative Pay up to & inc Week n
     fFreePayWeekN              :double;        //Free Pay for Week 1
     fAdditionalPayWeekN        :double;        //Additional Pay for Week 1
     fCumulTaxablePayWeekN      :double;        //Before Rounding rules Taxable Pay up to & inc Week n
     fCumulTaxablePayWeekNRounded      :double;        //After Rounding rules Taxable Pay up to & inc Week n
     fTaxablePayWeekN           :double;
     fTaxablePayWeekNRounded    :double;
     fTaxWeekN                  :double;        //Tax deductable or refundable in Week n
     fTaxLiabilityWeekN         :double;        //Tax liability up to and inc Week n

     //=====Annual Constants (values provided by HM Revenue) ====================================
//     fR1                 :double;        //Tax Rate 1
//     fR2                 :double;        //Tax Rate 2
//     fR3                 :double;        //Tax Rate 3
//     fB1                 :double;        //Bandwidth 1 Annual for Tax rate 1
//     fB2                 :double;        //Bandwidth 2 Annual for Tax rate 2
//     fB3                 :double;        //Bandwidth 3 Annual for Tax rate 3  ???????
     //...

//     fCC1                :double;        //Cumulative bandwidth1 = bandwidth 1
//     fCC2                :double;        //Cumulative bandwidth2 = Sum of  bandwidths 1 & 2
//     fCC3                :double;        //Cumulative bandwidth3 = Sum of  bandwidths 1,2 & 3
     //...

     //Annual Tax 1 = Bandwidth * Rate1
     //Annual Tax 2 = Bandwidth * Rate2
     //Annual Tax 3 = Bandwidth * Rate3

//     fKK1                :double;        //Cumulative annual tax 1 = Annual tax 1
//     fKK2                :double;        //Cumulative annual taxes 1 & 2
//     fKK3                :double;        //Cumulative annual taxes 1,2 & 3
//     //...
//
//     fG                  :integer;       //Gpointer = Pointer to basic rate ??????
     //======= Weekly constants ====================================================

//     fc1                 :double;        //Threshold 1 = Cumulative bandwidth 1 * n/52
//     fc2                 :double;        //Threshold 2 = Cumulative bandwidth 2 * n/52
//     fc3                 :double;        //Threshold 3 = Cumulative bandwidth 3 * n/52
//     //...
//
//     fv1                 :double;        //Cvalue 1 = Threshold 1   Round to nearest � above
//     fv2                 :double;        //Cvalue 2 = Threshold 2
//     fv3                 :double;        //Cvalue 3 = Threshold 3
//     //...
//
//     fk1                 :double;        //Theshold tax 1 = Cumulative annual tax 1 * n/52
//     fk2                 :double;        //Theshold tax 2 = Cumulative annual tax 2 * n/52
//     fk3                 :double;        //Theshold tax 3 = Cumulative annual tax 3 * n/52
//     //...
//
//     fM                  :double;        //Max Rate percentage tax deductable in a prefix K code case.

     fWeekOrMonthDivider  :double;
     fWeekOrMonthNumber :integer;
     fIsCumulative      :boolean;
     fTaxPaidToDate     :double;
     fFromDate            :TDateTime;
 //    fPayUK             :TPaybase;

    // function GetPayUK:TpayUK;
//     procedure SetPayUK(Const Value:TpayUK);
     procedure IncomeTest;
  //   function GetEmployeePaySettings:TEmployeePaySettings;
 //    procedure SetEmployeePaySettings(Const Value:TemployeePaySettings);

//     procedure CallbackCumulativePayToDate(const Sender: TBusObj; var Abort: Boolean);
     Function GetTaxWeek(const Paydate:TDateTime):integer;
     Function GetTaxMonth(const Paydate:TDateTime):integer;
     function GetNumbersFromTaxCode(const TaxCode:string):string;
     Function IsScottish(const sTaxCode:String):Boolean;
     Function IsCumulative(const sTaxCode:String):Boolean;
     function StripTaxCode(const sTaxcode:String):String;
   protected
     //procedure PostToAccounts;
   public
     Constructor  Create(AOwner: TComponent);                             override;
   //  Destructor   Destroy;                                                override;
     Function CalcTax:double;                                             override;

 //    property TempPayUK        :TpayUK                 Read GetPayUK           write SetPayUK;
  //   property EmployeePaySettings :Temployeepaysettings   Read GetEmployeePaySettings  write  SetEmployeePaySettings ;
     property TotalTax:double Read fTaxWeekN;
//     class function GetIDField: string; override;
//     class function GetBusObjectTableName: string; override;
end;


implementation
uses
  BusObjPayBase,SysUtils,Dialogs,DecimalRounding,AppEnvironment,
  PayCommon,CommonLib, BusObjBase, BusObjEmployeePaySettings;  //,DnMLib

const WEEK1_CALC_CONST = 96.16;
const MONTH1_CALC_CONST = 416.67;

constructor TTaxUK.Create(AOwner: TComponent);
begin
   inherited Create(AOwner) ;
end;

//class function  TTaxUK.GetIDField : String;
//begin
//   Result := '';
//end;
//
//class function TTaxUK.GetBusObjectTableName: string;
//begin
//  Result := '';
//end;
//destructor TTaxUK.Destroy;
//begin
//  inherited;
//end;

//procedure TUKTax.PostToAccounts;
//var
//  CreditAccID   : integer;
//  DebitAccID    : integer;
//  dAmount       :double;
//begin
//  try
//    {Because Amount is Whole (not Neg) Debit=Credit etc}
//           //TO DO  check if the credit/debit accounts are correct
//
//  //TO DO tax will be calculated on wages, commissions etc added together so
//    // the individual taxes will be a ratio of total tax
//  dAmount := fTaxWeekN;
//  //wage
//  DebitAccID := AppEnv.PayPrefs.BankAccountID;
//  CreditAccID :=AppEnv.PayPrefs.PAYGTaxPayableAccountID;
//  //PostToPaysTransactions('Payroll PAYG','PAYG - Payrate,'PAYG - '' + GetPayRate(PayRateID) + '
////    ' : '  + GetPayRateType(TypeID), TPaybase(Self.Owner),
////    CreditAccID,
////    DebitAccID,
////    FieldByName('ClassID').AsInteger, FieldByName('PaylineID').AsInteger,
////    dAmount);
//
//  //commissions
//  //...
//
//
//  except
//    on e: Exception do begin
//      raise Exception.Create(e.message);
//    end;
//  end;
//end;


Function TTaxUK.GetTaxWeek(const Paydate:TDateTime):integer;
var
  CalendarYear, CalendarMonth, CalendarDay: Word;
  Offset,Week: Integer; //WeekYear,WeekDay
//  NoOfWeeksInYear:integer;
begin
  DecodeDate(PayDate, CalendarYear, CalendarMonth, CalendarDay);
//  if IsLeapYear(CalendarYear) then NoOfWeeksInYear := 53 else NoOfWeeksInYear := 52;
  if (CalendarMonth < 4) or ((CalendarMonth = 4) and (CalendarDay < 6)) then
    Dec(CalendarYear);
  Offset := Trunc(PayDate - EncodeDate(CalendarYear, 4, 6));
//  WeekYear := CalendarYear;
  Week := Offset div 7 + 1;
//  WeekDay := Offset mod 7 + 1;
  Result := Week;
end;

Function TTaxUK.GetTaxMonth(const Paydate:TDateTime):integer;
var
  CalendarYear, CalendarMonth, CalendarDay: Word;
begin
  DecodeDate(PayDate, CalendarYear, CalendarMonth, CalendarDay);//year starts at 6th April
  if(CalendarDay < 6) then Result := (CalendarMonth - 4)  else Result := (CalendarMonth - 3);
end;


//procedure TTaxUK.CallbackCumulativePayToDate(const Sender: TBusObj; var Abort: Boolean);
//begin
//  if (TPaybase(Self.Owner).Pay = False)
//     and (TPaybase(Self.Owner).Paid = True)
//     and (TPaybase(Self.Owner).Deleted = False)
//     and (TPaybase(Self.Owner).Paydate >=  AppEnv.PayPrefs.UKStartFiscalYear)
//     then begin
//    fTaxPaidToDate := fTaxPaidToDate + TPaybase(Self.Owner).Tax;
//  end;
//
//  if TPaybase(Self.Owner).Paydate >= fFromDate then fCumulativePayWeekN  := fCumulativePayWeekN  + TPaybase(Self.Owner).Gross;
//end;


procedure TTaxUK.IncomeTest;
var
  Band1,Band2,Band3,Tax1,Tax2,Tax3,Remainder:double;
begin
  Remainder := 0;
  Band2 := 0;
  Band3 := 0;

  fCumulTaxablePayWeekNRounded := Int(fCumulTaxablePayWeekN );  //Round down to nearest pound

  if not fIsCumulative then fWeekOrMonthNumber := 1;

  if fCumulTaxablePayWeekN > (AppEnv.PayPrefs.UKTaxStartRateUpperThreshold * fWeekOrMonthNumber/fWeekOrMonthDivider) then begin
    Band1 := AppEnv.PayPrefs.UKTaxStartRateUpperThreshold * fWeekOrMonthNumber/fWeekOrMonthDivider ;
    Remainder := fCumulTaxablePayWeekNRounded -  AppEnv.PayPrefs.UKTaxStartRateUpperThreshold * fWeekOrMonthNumber/fWeekOrMonthDivider;
  end else Band1 := fCumulTaxablePayWeekNRounded;

  if Remainder > 0 then begin
    if Remainder > ((AppEnv.PayPrefs.UKTaxBasicRateUpperThreshold - AppEnv.PayPrefs.UKTaxStartRateUpperThreshold)* fWeekOrMonthNumber/fWeekOrMonthDivider) then begin
      Band2 := (AppEnv.PayPrefs.UKTaxBasicRateUpperThreshold - AppEnv.PayPrefs.UKTaxStartRateUpperThreshold) * fWeekOrMonthNumber/fWeekOrMonthDivider ;
      Remainder := Remainder - Band2;
    end else begin
      Band2 := Remainder;
      Remainder := 0;
    end;
  end;

  if Remainder > 0 then begin
    Band3 := Remainder;
  end;

  Tax1 := Band1 * AppEnv.PayPrefs.UKTaxStartingRateOther/100;
  Tax2 := Band2 * AppEnv.PayPrefs.UKTaxBasicRateOther/100;
  Tax3 := Band3 * AppEnv.PayPrefs.UKTaxHigherRateOther/100;

  fTaxLiabilityWeekN := Tax1 + Tax2 + Tax3;

  if fIsCumulative then fTaxWeekN := fTaxLiabilityWeekN - fTaxPaidToDate else fTaxWeekN := fTaxLiabilityWeekN;

  //if EmployeePaySettings.Payperiod = 'Weekly' then begin
//    fTaxWeekN  := fTaxLiabilityWeekN  -  fTaxPaidToDate;  //(fTaxLiabilityWeekN * (fWeekNumber - 1));
//  end else if EmployeePaySettings.Payperiod = 'Monthly' then begin
//    fTaxWeekN  := fTaxLiabilityWeekN  -  fTaxPaidToDate;//fTaxWeekN  := (fTaxLiabilityWeekN * fMonthNumber) - (fTaxLiabilityWeekN/12 * (fMonthNumber));
//  end else if EmployeePaySettings.Payperiod = 'Fortnightly' then begin
//    fTaxWeekN  := (fTaxLiabilityWeekN * fWeekNumber) - (fTaxLiabilityWeekN/52 * (fWeekNumber - 2));
//  end;

//  fTaxLiabilityWeekN := fTaxLiabilityWeekN/52 * fWeekNumber;

end;

Function TTaxUK.IsScottish(const sTaxCode:String):Boolean;
begin
  Result := False;
  if Pos('S',sTaxCode) <> 0 then Result := True;
end;

Function TTaxUK.IsCumulative(const sTaxCode:String):Boolean;
begin
  Result := True;
  if (Pos('W1',sTaxCode) > 0)
  or (Pos('M1',sTaxCode) > 0)
  or (Pos('X',sTaxCode) > 0)  then Result := False;
end;


Function TTaxUK.CalcTax:double;
var
  sTaxCode:string;
  Character:char;
  NumericStringFromTaxCode,strsql:String;
  iValueFromTaxCode:integer;
  iQuotient,iRemainder:integer;
//  iTempPayID:integer;
begin
  Result := 0;

  if TPaybase(Self.Owner).Employeeid = 0 then exit; //make error resistant; should never be zero
  //EmployeePaySettings.LoadSelect('EmployeeID = ' + IntToStr(TPaybase(Self.Owner).Employeeid));

   //we don't assign Pay to tempPay so we can get history
//  TempPayUK.LoadSelect('EmployeeID = ' + IntToStr(TPaybase(Self.Owner).Employeeid));
  fPayWeekN := TPaybase(Self.Owner).Gross;
  fWeekNumber := GetTaxWeek(TPaybase(Self.Owner).Paydate);
  fMonthNumber := GetTaxMonth(TPaybase(Self.Owner).Paydate);

  //Get value for Cumulative Pay
  fCumulativePayWeekN := 0;
  fTaxPaidToDate := 0;

  if TPaybase(Self.Owner).Paydate = 0 then TPaybase(Self.Owner).Paydate := Tpaybase(Self.Owner).EmployeePaySettings.FirstPayDate;  //EmployeePaySettings.FirstPayDate;

  fFromDate :=  PayFromDate(TPaybase(Self.Owner).Paydate,Tpaybase(Self.Owner).EmployeePaySettings.Payperiod) ;


//  iTempPayID := TPaybase(Self.Owner).PayID;   //load employees pay history
//  TPaybase(Self.Owner).LoadSelect('EmployeeID = ' + IntToStr(TPaybase(Self.Owner).Employeeid));

//  TPaybase(Self.Owner).IterateRecords(CallbackCumulativePayToDate,False);

// TPaybase(Self.Owner).Load(iTempPayID); //reload so we have just this pay
  strsql := 'select PayID,EmployeeID,PayDate,Sum(Gross) As Total  from tblpays ' +
                ' WHERE EmployeeID = ' + IntToStr(TPaybase(Self.Owner).Employeeid) +
                ' and Paid = ' + QuotedStr('T') +
                ' and Pay = ' + QuotedStr('F') +
                ' and Deleted = ' + QuotedStr('F') +
                ' and PayDate >= ' +  QuotedStr(DateTimeToMysqlDateStr(AppEnv.PayPrefs.UKStartFiscalYear)) +
                ' and PayDate <= ' +  QuotedStr(DateTimeToMysqlDateStr(fFromDate)) +
                ' GROUP BY EmployeeID;';

    With GetNewDataSet(strsql, True) do try
      fCumulativePayWeekN  := fieldByname('Total').asFloat;
    finally
      if active then close;
      Free;
    end;


  if not empty(TPaybase(Self.Owner).UKTaxCodeUsed) then begin
    sTaxCode := TPaybase(Self.Owner).UKTaxCodeUsed;
  end else begin

    sTaxCode := Tpaybase(Self.Owner).EmployeePaySettings.Uktaxcode;
  end;
  if sTaxCode = '' then exit;   { TODO -orobin : shouldn't be blank; delete line when validation finished }
  fIsCumulative := IsCumulative(sTaxCode);

  if not fIsCumulative then sTaxcode := StripTaxCode(sTaxcode);


  NumericStringFromTaxCode := Trim(GetNumbersFromTaxCode(sTaxCode));
  iValueFromTaxCode := StrToInt(NumericStringFromTaxCode);
  iQuotient := ((iValueFromTaxCode - 1) div 500);
  iRemainder := ((iValueFromTaxCode - 1) mod 500);
  iRemainder := iRemainder + 1;

  if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Weekly' then begin
    fWeekOrMonthDivider := 52;
    fWeekOrMonthNumber :=  fWeekNumber;
  end else if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Monthly' then begin
    fWeekOrMonthDivider := 12;
    fWeekOrMonthNumber  := fMonthNumber;
  end else begin
    fWeekOrMonthDivider := 52;    //default
    fWeekOrMonthNumber  := fWeekNumber;
  end;
  //))))))))))))

  Character := sTaxCode[1];
  if isnumeric(Character) then begin   //deal with SUFFIX CODE **********************************
    if (Pos('L',sTaxCode) > 0)
      or (Pos('P',sTaxCode) > 0)
      or (Pos('V',sTaxCode) > 0)
      or (Pos('Y',sTaxCode) > 0)
      or (Pos('T',sTaxCode) > 0)
    then begin
      if not fIsCumulative then begin
        fWeekOrMonthNumber := 1;
        if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Weekly' then begin
          fAdditionalPayWeekN := (iRemainder * 10 + 9)/52;
          fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
          fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * WEEK1_CALC_CONST);
        end else if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Monthly' then begin
          fAdditionalPayWeekN := (iRemainder * 10 + 9)/12;
          fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
          fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * MONTH1_CALC_CONST);
        end;

        fTaxablePayWeekN := TPaybase(Self.Owner).Gross - fAdditionalPayWeekN;

     //   fCumulTaxablePayWeekNRounded := fTaxablePayWeekNRounded; //assign to this var for IncomeTest
        fCumulTaxablePayWeekN :=  fTaxablePayWeekN; //assign to this var for IncomeTest
        fCumulTaxablePayWeekNRounded := Int(fCumulTaxablePayWeekN);  //Round down to nearest pound

        if not IsScottish(sTaxCode) then IncomeTest;// else IncomeTest1S;
        Result := fTaxWeekN;
        Exit;
      end else begin //cumulative
        if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Weekly' then begin
          fAdditionalPayWeekN := (iRemainder * 10 + 9)/52 * fWeekNumber;
          fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
          fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * WEEK1_CALC_CONST * fWeekNumber);
        end else if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Monthly' then begin
          fAdditionalPayWeekN := (iRemainder * 10 + 9)/12 * fMonthNumber;
          fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
          fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * MONTH1_CALC_CONST * fMonthNumber);
        end;

        fCumulTaxablePayWeekN := fCumulativePayWeekN - fAdditionalPayWeekN;

 //       fCumulTaxablePayWeekNRounded := Int(fCumulTaxablePayWeekN );  //Round down to nearest pound
        if not IsScottish(sTaxCode) then IncomeTest;// else IncomeTest1S;

        if (Divzer(fTaxWeekN,fPayWeekN) * 100) > AppEnv.PayPrefs.UKTaxMaxRate then begin
          fTaxWeekN := (fPayWeekN) * AppEnv.PayPrefs.UKTaxMaxRate/100;
        end;

        Result := fTaxWeekN;
        exit;
      end;

    end;


    //if sTaxCode = '0T' then begin  //probably previously had a NT code and used up free pay
//      fFreePayWeekN := 0;
//      fCumulTaxablePayWeekNRounded := fCumulativePayWeekN; //no free pay
//      fCumulTaxablePayWeekNRounded := DecimalRoundDbl(fCumulTaxablePayWeekNRounded,2,drRndUp);
//      if not IsScottish(sTaxCode) then IncomeTest;// else IncomeTest1S;
//      Result := fTaxWeekN;
//      exit;
//    end else begin
//      fFreePayWeekN := iQuotient * WEEK1_CALC_CONST;
//      fFreePayWeekN := fFreePayWeekN + DecimalRoundDbl((iRemainder * 10 + 9)/52,2,drRndUp);
//    end;

    fCumulTaxablePayWeekN := fCumulativePayWeekN - fFreePayWeekN ;
    if (fWeekNumber * fPayWeekN) >= fCumulativePayWeekN then begin
      fTaxLiabilityWeekN := 0;
      fCumulTaxablePayWeekN := 0;
    end;
    fCumulTaxablePayWeekNRounded := Int(fCumulTaxablePayWeekN);   //Round down to nearest pound
    if not IsScottish(sTaxCode) then IncomeTest ;//else IncomeTest1S;
    Result := fTaxWeekN;
    Exit;
  end else if Character = 'D' then begin  //tax all pay at higher rate  D CODE ********************
    //currently the only D code is 'D0' usually for 2nd job so free pay is used up already
    //always non - cumulative

    Result := TPaybase(Self.Owner).Gross * AppEnv.PayPrefs.UKTaxHigherRateOther / 100;
    Exit;

  end else if Character = 'K' then begin  //additional tax K CODE *********************************
    if iRemainder = 0 then begin
      iQuotient := iQuotient - 1;
      iRemainder := 500;
    end;
    if not fIsCumulative then begin
      if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Weekly' then begin
        fAdditionalPayWeekN := (iRemainder * 10 + 9)/52;
        fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
        fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * WEEK1_CALC_CONST);
      end else if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Monthly' then begin
        fAdditionalPayWeekN := (iRemainder * 10 + 9)/12;
        fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
        fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * MONTH1_CALC_CONST);
      end;

      fTaxablePayWeekNRounded := TPaybase(Self.Owner).Gross + fAdditionalPayWeekN;
      fTaxablePayWeekNRounded := Int(fTaxablePayWeekNRounded);  //Round down to nearest pound
      fCumulTaxablePayWeekNRounded := fTaxablePayWeekNRounded; //assign to this var for IncomeTest


      if not IsScottish(sTaxCode) then IncomeTest;// else IncomeTest1S;
      Result := fTaxWeekN;
      Exit;
    end else begin //cumulative
      if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Weekly' then begin
        fAdditionalPayWeekN := (iRemainder * 10 + 9)/52 * fWeekNumber;
        fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
        fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * WEEK1_CALC_CONST * fWeekNumber);
      end else if Tpaybase(Self.Owner).EmployeePaySettings.Payperiod = 'Monthly' then begin
        fAdditionalPayWeekN := (iRemainder * 10 + 9)/12 * fMonthNumber;
        fAdditionalPayWeekN :=  DecimalRoundDbl(fAdditionalPayWeekN, 2, drRndUp);
        fAdditionalPayWeekN := fAdditionalPayWeekN + (iQuotient * MONTH1_CALC_CONST * fMonthNumber);
      end;

      fCumulTaxablePayWeekN := fCumulativePayWeekN + fAdditionalPayWeekN;

      fCumulTaxablePayWeekNRounded := Int(fCumulTaxablePayWeekN );  //Round down to nearest pound
      if not IsScottish(sTaxCode) then IncomeTest;// else IncomeTest1S;

      if (Divzer(fTaxWeekN,fPayWeekN) * 100) > AppEnv.PayPrefs.UKTaxMaxRate then begin
        fTaxWeekN := (fPayWeekN) * AppEnv.PayPrefs.UKTaxMaxRate/100;
      end;

      Result := fTaxWeekN;
      exit;
    end;

  end else if Trim(sTaxCode) = 'NT' then begin //no tax for the year
    Result := 0;
    if fTaxPaidToDate > 0 then begin
      CommonLib.MessageDlgXP_Vista('Tax refund authorisation from tax office required.', mtWarning, [mbOK], 0);
      Result := fTaxPaidToDate * -1;
    end;
    exit;
  end else if Trim(sTaxCode) = 'BR' then begin  //Basic Rate
    if not IsScottish(sTaxCode) then
      if not fIsCumulative then begin
        fWeekOrMonthNumber := 1;
        Result := TPaybase(Self.Owner).Gross *  AppEnv.PayPrefs.UKTaxBasicRateOther/100;
      end else begin
        Result := (fCumulativePayWeekN * AppEnv.PayPrefs.UKTaxBasicRateOther/100) - fTaxPaidToDate ;
      end;

 //   else
    //  Result := (fCumulativePayWeekN * AppEnv.PayPrefs.UKTaxScottishBasicRateOther/100);   //annual tax

//    Result := (Result/52 * fWeekNumber) - (Result/52 * (fWeekNumber - 1));  //Tax for week n
    Exit;  //usually for 2nd job so free pay is used up already
  end;
end;

function TTaxUK.StripTaxCode(const sTaxcode:String):String;
var                        //strips off the non-cumulative letters if present
  strLength:integer;
begin
  Result := sTaxcode;
  if (Pos('M1',sTaxCode) > 0)
    or (Pos('W1',sTaxCode) > 0)
  then begin
    strLength := Length(sTaxCode);
    Result := Copy(sTaxCode,1,strLength - 2);
  end;
end;

function TTaxUK.GetNumbersFromTaxCode(const TaxCode:string):string;
var
  tmpTaxcode, sTemp: string;
  i,strLength: integer;
begin
    tmpTaxcode := TaxCode;

  //First strip any non cumulative suffix's  
    i := Pos('M1',TaxCode);
    if i > 0 then begin
      strLength := Length(TaxCode);
      tmpTaxcode := Copy(TaxCode,1,strLength - 2);
    end;

    i := Pos('W1',tmpTaxcode);
    if i > 0 then begin
      strLength := Length(tmpTaxcode);
      tmpTaxcode := Copy(TaxCode,1,strLength - 2);
    end;

  sTemp := '';
  for i := 1 to Length(tmpTaxcode) do if tmpTaxcode[i] in ['0'..'9'] then sTemp := sTemp + tmpTaxcode[i];
  if sTemp = '' then sTemp := '0';

  Result := sTemp;
end;

//function TTaxUK.GetEmployeePaySettings:TEmployeePaySettings;
//begin
//  if not Assigned(fEmployeePaySettings) then begin
//    fEmployeePaySettings := Temployeepaysettings.Create(Self);
//    fEmployeePaySettings.Connection := Self.Connection;
//    fEmployeePaySettings.SilentMode := Self.SilentMode;
//  end;
//  result := fEmployeePaySettings;
//End;
//
//
//procedure TTaxUK.SetEmployeePaySettings(const Value:TemployeePaySettings);
//begin
//  fEmployeePaySettings := Value;
//end;

initialization
RegisterClass(TTaxUK);

end.
