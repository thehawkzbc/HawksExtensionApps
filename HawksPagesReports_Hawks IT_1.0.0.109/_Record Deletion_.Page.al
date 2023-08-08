page 50170 "Record Deletion"
{
    // version BCGOLIVE
    InsertAllowed = True; //Add records
    PageType = List;
    Editable = True;
    SourceTable = "Record Deletion Table";
    UsageCategory = Tasks; //show in the Search Menù - "Record Deletion page"
    //AccessByPermission = page "Record Deletion" = X;  //permissions for Page
    //    AccessByPermission = tabledata "Record Deletion Table" = RIMD; //ALL permissions for Table
    ApplicationArea = All;
    Permissions = TableData "Record Deletion Table"=rimd; //ALL permissions for Table
    CaptionML = ENU = 'Go Live - Record Deletion';

    //permissions = tabledata 50170 = rimd;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Table ID"; rec."Table ID")
                {
                    ApplicationArea = All;
                    CaptionML = ENU = 'Table ID';
                    ToolTip = 'Insert table no. to Delete';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action("START DELETE RECORDS")
            {
                CaptionML = ENU = 'START DELETE RECORDS';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    RecordDeletionMgt: Codeunit "Record Deletion Mgt.";
                begin
                    RecordDeletionMgt.DeleteRecords; //START DELETE RECORDS
                end;
            }
            action("INSERT RECORDS")
            {
                CaptionML = ENU = 'INSERT RECORDS';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    RecordDeletionMgt: Codeunit "Record Deletion Mgt.";
                    recdel: Record "Record Deletion Table";
                begin
                    recdel.DeleteAll(false);
                    RecordDeletionMgt.populatetables();
                    ; //INSERT RECORDS
                end;
            }
        }
    }
}
