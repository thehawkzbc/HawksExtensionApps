page 50410 "HKS CP User"
{
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'hksCPUser';
    DelayedInsert = true;
    EntityName = 'portalUser';
    EntitySetName = 'portalUsers';
    PageType = API;
    SourceTable = "HKS CP User";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }
                field(username; Rec.Username)
                {
                    Caption = 'Username';
                }
                field(password; Rec.Password)
                {
                    Caption = 'Password';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(id; Rec.Id)
                {
                    Caption = 'Id';
                }
            }
        }
    }
}
