enum 60101 "General Journal Line Approval Status1"
{
    Extensible = true;
    ObsoleteState = Pending;
    ObsoleteTag = '21.0';


    value(0; Created)
    {
        Caption = 'Created';
    }


    value(1; "Pending Approval")
    {
        Caption = 'Pending Approval';
    }


    value(2; Approved)
    {
        Caption = 'Approved';
    }


    value(3; Rejected)
    {
        Caption = 'Rejected';
    }


    value(4; " ")
    {
        Caption = ' ';
    }

}


enum 60102 "PIN Priority1"
{
    Extensible = true;


    value(0; Low)
    {
        Caption = '0-Low';
    }


    value(1; Normal)
    {
        Caption = '1-Normal';
    }


    value(2; High)
    {
        Caption = '2-High';
    }

}

