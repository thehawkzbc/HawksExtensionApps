table 80001 "Hawks User Setup"
{
    Caption = 'Hawks User Setup';
    DrillDownPageID = "User Setup";
    LookupPageID = "User Setup";
    ReplicateData = true;

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("User ID");
            end;
        }
        field(10; "Allow dele. of table records"; Boolean)
        {
            Caption = 'Allow deletion of table records';
            DataClassification = customercontent;
        }
    }
}
