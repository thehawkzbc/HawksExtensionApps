page 60861 "PINRIN Job Queue Log Entry1"
{
    APIGroup = 'integrations';
    APIPublisher = 'pinetworks';
    APIVersion = 'v1.0';
    Caption = 'jobQueueLogEntry';
    DelayedInsert = true;
    EntityName = 'jobQueueLogEntry';
    EntitySetName = 'jobQueueLogEntries';
    PageType = API;
    SourceTable = "Job Queue Log Entry";
    DataAccessIntent = ReadOnly;
    Editable = false;
    SourceTableView = sorting("Entry No.") order(descending);

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(description; Rec.Description)
                {
                    Caption = 'Description';

                }

                field(errorMessage; Rec."Error Message")
                {
                    Caption = 'Error Message';

                }

                field(id; Rec.ID)
                {
                    Caption = 'ID';

                }

                field(objectIDToRun; Rec."Object ID to Run")
                {
                    Caption = 'Object ID to Run';

                }

                field(startDateTime; Rec."Start Date/Time")
                {
                    Caption = 'Start Date/Time';

                }

                field(status; Rec.Status)
                {
                    Caption = 'Status';

                }
            }
        }
    }

    actions
    {
    }

}
