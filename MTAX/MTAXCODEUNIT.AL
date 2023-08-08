codeunit 60200 "PINTAX Assisted Setup Subs1"
{
    var
        SetupWizardTxt: Label 'TEXT  SetupWizardTxt';
        LongTitleTxt: Label 'TEXT  LongTitleTxt';
}

codeunit 60201 "PINTAX Install Logic1"
{
    Subtype = Install;

    procedure IniializeDefaultSetup()
    begin
    end;

    procedure InitalizeVATPostingSetup(InputTaxAccount: Code[20]; OutputTaxAccount: Code[20])
    var

    begin



    end;


    procedure InitializeVATPostingGroup()
    begin
    end;

    procedure InitializeGenPostingGroup()
    begin
    end;
}

codeunit 60202 "PINTAX Maldives Tax1"
{
    procedure GetTaxActivityNumberFromDimSet(dsid: Integer): Integer
    begin


    end;
}

codeunit 60203 "PINTAX Maldives Tax Ext. Mgt1."
{
    procedure OpenTaxSetupWizard()
    begin
    end;

    procedure OpenTaxSetup()
    begin
    end;

    procedure OpenTaxActivitySetup()
    begin
    end;
}


codeunit 60204 "PINTAX Maldives Tax Subs1"
{
}
