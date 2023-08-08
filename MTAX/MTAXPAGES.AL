page 60200 "PINTAX Input Tax Statement1"
{
    ApplicationArea = All;
    Caption = 'Tax Statement';
    PageType = List;
    SourceTable = "PINTAX Input Tax Stmt";
    SourceTableTemporary = true;
    UsageCategory = Lists;
    AdditionalSearchTerms = 'Tax, Input Tax, InputTax, Tax Statement, MIRA';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Tax Activity Number"; Rec."Tax Activity Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Activity Number field.';

                }

                field(Type; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';

                }

                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';

                }

                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Date field.';

                }

                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document No. field.';

                }

                field(BillToPayTo; Rec."BillToPayTo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BillToPayTo field.';

                }

                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor/Customer Name field.';

                }

                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Registration No. field.';

                }

                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Type field.';

                }

                field("External Document No."; Rec."External Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the External Document No. field.';

                }

                field(Base; Rec."Base")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Base field.';

                }

                field(Amount; Rec."Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';

                }

                field("Vat Bus. Posting Group"; Rec."Vat Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vat Bus. Posting Group field.';

                }

                field("Vat Prod. Posting Group"; Rec."Vat Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vat Prod. Posting Group field.';

                }

                field(TaxActivityName; rec."Tax Activity Number")
                {
                    ApplicationArea = All;
                    Caption = 'Tax Activity';
                    ToolTip = 'Specifies the value of the Tax Activity field.';


                }
            }
        }


    }
}


page 60201 "PINTAX Maldives Tax Wizard1"
{
    PageType = NavigatePage;
    Caption = 'Maldives tax assisted setup guide';
    //ContextSensitiveHelpPage = 'maldives-tax';

    layout
    {
        area(content)
        {
            group(MediaStandard)
            {
                Caption = 'MediaStandard';
                Editable = false;
                Visible = false;
                field("MediaResourcesStandard.Media Reference"; 'MediaResourcesStandard.Media Reference')
                {
                    ApplicationArea = All;
                    Editable = false;
                    ShowCaption = false;

                }
            }

            group(FirstPage)
            {
                Caption = 'FirstPage';
                Visible = false;
                group(Welcome)
                {
                    Caption = 'Welcome';
                    Visible = false;
                    group(Introduction)
                    {
                        Caption = 'Introduction';
                        InstructionalText = 'Maldives Tax Localization extension enables you to comply with MIRA tax regulation. Functionalities include Input Tax Statement, Tax Activity Number and Tax Reporting';
                        Visible = false;
                        field(Spacer1; '')
                        {
                            ApplicationArea = All;
                            ShowCaption = false;
                            Editable = false;
                            MultiLine = true;

                        }
                    }

                    group(Terms)
                    {
                        Caption = 'Terms of Use';
                        Visible = false;
                        group(Terms1)
                        {
                            Caption = '';
                            InstructionalText = 'By enabling this extension you consent to sharing your data with an external system. Your use of this extension may be subject to additional licensing terms from Pinetworks Pvt. Ltd. To enable the service you must read and accept the terms of use.';
                            Visible = false;
                        }
                    }

                    group(Terms2)
                    {
                        Caption = 'Term of use';
                        field(EnableFeature; EnableMaldivesTax)
                        {
                            ApplicationArea = All;
                            MultiLine = true;
                            Editable = false;
                            Caption = 'I understand and accept these terms.';
                            ToolTip = 'Acceptance of Terms';

                        }
                    }
                }
            }

            group(SecondPage)
            {
                Caption = 'SecondPage';
                Visible = false;
                group(PostingSetup)
                {
                    Caption = 'Posting Setup';
                    Visible = false;
                    InstructionalText = 'If you have already setup Posting Setup you can skip below setup. Otherwise select configure Standard Posting Setup.';
                    field(Spacer2; '')
                    {
                        ApplicationArea = All;
                        ShowCaption = false;
                        Editable = false;
                        MultiLine = true;

                    }

                    group(PostingSetupMessage)
                    {
                        Caption = 'Configure Standard Tax Posting Setup';
                        Visible = false;
                        field(ConfigureMaldivesTaxSetup; ConfigureMaldivesTaxSetup)
                        {
                            ApplicationArea = All;
                            ShowCaption = false;
                            Editable = false;

                        }

                        group(Accounts)
                        {
                            ShowCaption = false;
                            Visible = false;
                            field(InputTaxAccount; InputTaxAccount)
                            {
                                ApplicationArea = All;
                                Visible = false;
                                Caption = 'Input Tax Account';
                                TableRelation = "G/L Account";
                                ToolTip = 'Specifies the value of the Input Tax Account field.';

                            }

                            field(OutputTaxAccount; OutputTaxAccount)
                            {
                                ApplicationArea = All;
                                Visible = false;
                                Caption = 'Output Tax Account';
                                TableRelation = "G/L Account";
                                ToolTip = 'Specifies the value of the Output Tax Account field.';

                            }
                        }
                    }
                }
            }

            group(FinalPage)
            {
                Caption = 'FinalPage';
                Visible = false;
                group(ActivationDone)
                {
                    Caption = 'Youre done!';
                    Visible = false;
                    group(DoneMessage)
                    {
                        Caption = '';
                        InstructionalText = 'Click Finish to select your tax activity dimension and review setup';
                        Visible = false;
                    }
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionBack)
            {
                ApplicationArea = All;
                Caption = 'Back';
                Enabled = false;
                Visible = false;
                Image = PreviousRecord;
                InFooterBar = true;
                ToolTip = 'Executes the Back action.';
            }

            action(ActionNext)
            {
                ApplicationArea = All;
                Caption = 'Next';
                Enabled = false;
                Visible = false;
                Image = NextRecord;
                InFooterBar = true;
                ToolTip = 'Executes the Next action.';
            }

            action(ActionInitPostingSetup)
            {
                ApplicationArea = All;
                Caption = 'Next';
                Enabled = false;
                Visible = false;
                Image = NextRecord;
                InFooterBar = true;
                ToolTip = 'Load Standardized Posting Setup for Maldives if selected';
            }

            action(ActionFinish)
            {
                ApplicationArea = All;
                Caption = 'Finish';
                Enabled = false;
                Image = Approve;
                InFooterBar = true;
                ToolTip = 'Executes the Finish action.';
            }
        }
    }
    var

        MediaRepositoryStandard: Record "Media Repository";
        MediaResourcesStandard: Record "Media Resources";
        Step: Option;
        TopBannerVisible: Boolean;
        FirstPageVisible: Boolean;
        SecondPageVisible: Boolean;
        FinalPageVisible: Boolean;
        BackEnabled: Boolean;
        NextEnabled: Boolean;
        ConfigureEnabled: Boolean;
        EnableMaldivesTax: Boolean;
        ConfigureMaldivesTaxSetup: Boolean;
        InputTaxAccount: Code[20];
        OutputTaxAccount: Code[20];

}

page 60203 "PINTAX Tax Activity Number1"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Dimension Value";
    InsertAllowed = false;
    DeleteAllowed = false;
    Caption = 'Tax Activity Number (Maldives)';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec."Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the code for the dimension value.';

                }

                field(Name; Rec."Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies a descriptive name for the dimension value.';

                }

                field("Tax Activity Number"; Rec."PINTAX Tax Activity Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Activity Number field.';

                }
            }
        }
    }

    actions
    {
    }

}

page 60204 "PINTAX Tax Setup Maldives1"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PINTAX Maldives Tax Setup";
    DeleteAllowed = false;
    InsertAllowed = false;
    Caption = 'Tax Setup Maldives';

    layout
    {
        area(Content)
        {
            group(Tax)
            {
                Caption = 'Tax Activity Setup';
                field("Tax Activity Dimension"; Rec."Tax Activity Dimension")
                {
                    Caption = 'Tax Activity Dimension';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Activity Number Linked to Dimension field.';

                }

                field(TextActivityInstructionalLbl; TextActivityInstructionalLbl)
                {
                    Caption = 'Note';
                    ShowCaption = false;
                    ApplicationArea = All;
                    ToolTip = 'Instruction text';
                    MultiLine = true;

                }
            }

            group(InputTaxStatement)
            {
                Caption = 'Input Tax Statement';
                field("InpTax Stmt Bus. Posting Fltr"; rec."InpTax Stmt Bus. Posting Fltr")
                {
                    ColumnSpan = 2;
                    Caption = 'Bus. Posting Group Filter';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Input Tax Statement Bus. Posting Filter field.';

                }

                field("InpTax Stmt Prod. Posting Fltr"; rec."InpTax Stmt Prod. Posting Fltr")
                {
                    ColumnSpan = 2;
                    Caption = 'Prod. Posting Group Filter';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Input Tax Statement Prod. Posting Filter field.';

                }

                field("InpTax Stmt Amount Fltr"; rec."InpTax Stmt Amount Fltr")
                {
                    ColumnSpan = 2;
                    Caption = 'Input Tax Amount Filter';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Input Tax Statement Amount Filter field.';

                }

                group(IncludeOptions)
                {
                    ShowCaption = false;
                    field("Include Closed VAT Entries"; rec."Include Closed VAT Entries")
                    {
                        ColumnSpan = 2;
                        Caption = 'Include Closed VAT Entries';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Incl. Closed VAT Entries field.';

                    }

                    field("Include Reversed VAT Entries"; rec."Include Reversed VAT Entries")
                    {
                        ColumnSpan = 2;
                        Caption = 'Include Reversed VAT Entries';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Incl. Reversed VAT Entries field.';

                    }

                    field("Incl. Force Closed VAT Entries"; rec."Incl. Force Closed VAT Entries")
                    {
                        ColumnSpan = 2;
                        Caption = 'Include Force Closed VAT Entries';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Include Force Closed VAT Entries field.';

                    }
                }
            }
        }

        area(factboxes)
        {
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
                //  SystemPartId = Links;
                //PartType = System;
            }

            systempart(Control1905767507; Links)
            {
                ApplicationArea = Notes;
                Visible = false;
                //  SystemPartId = Notes;
                //  PartType = System;

            }
        }
    }

    actions
    {
    }
    var
        TextActivityInstructionalLbl: Label 'TextActivityInstructionalLbl';

}

