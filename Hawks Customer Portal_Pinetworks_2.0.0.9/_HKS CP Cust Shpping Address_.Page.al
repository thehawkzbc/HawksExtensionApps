page 50402 "HKS CP Cust Shpping Address"
{
    PageType = API;
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'HKS Customer Shipping Address';
    DelayedInsert = true;
    EntityName = 'customerPortalShpAddress';
    EntitySetName = 'customerPortalShpAddress';
    SourceTable = "Ship-to Address";
    Editable = true;
    InsertAllowed = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec.SystemId)
                {
                    Editable = false;
                }
                field(Code; Rec.Code)
                {
                    Editable = false;
                }
                field("customerNumber"; Rec."Customer No.")
                {
                    Editable = false;
                }
                field(name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("name2"; Rec."Name 2")
                {
                    ApplicationArea = All;
                }
                field(address; Address)
                {
                    ApplicationArea = All;
                }
                field("address2"; "Address 2")
                {
                    ApplicationArea = All;
                }
                field(City; City)
                {
                    ApplicationArea = All;
                }
                field(County; County)
                {
                    ApplicationArea = All;
                }
                field(phoneNo; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field(eMail; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
