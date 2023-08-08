tableextension 50014 SalesheaderExt extends "Sales Header"
{
    fields
    {
        field(50099; "User ID"; Code[50])
        {
            Caption = 'User ID';
        //FieldClass = FlowField;
        //CalcFormula = lookup(user."User Name" where("User Security ID" = field("User ID")));
        }
    }
}
