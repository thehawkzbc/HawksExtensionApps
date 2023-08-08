/// <summary>
/// Query PINRIN Salesperson/Purchaser1 (ID 60860).
/// </summary>
query 60860 "PINRIN Salesperson/Purchaser1"
{
    APIGroup = 'integrations';
    APIPublisher = 'pinetworks';
    APIVersion = 'v1.0';
    EntityName = 'salesperson';
    EntitySetName = 'salespersons';
    QueryType = API;
    elements
    {
        dataitem(Salesperson_Purchaser; "Salesperson/Purchaser")
        {
            column(Code; Code)
            { }
            column(E_Mail; "E-Mail")
            { }
        }
    }

}

query 60861 "PINRIN Sales Header1"
{
    APIGroup = 'integrations';
    APIPublisher = 'pinetworks';
    APIVersion = 'v1.0';
    EntityName = 'salesHeader';
    EntitySetName = 'salesHeaders';
    QueryType = API;
    elements
    {
        dataitem(Sales_Header; "Sales Header")
        {
            column(No_; "No.")
            { }
            column(Document_Type; "Document Type") { }
            column(Status; Status) { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }
            column(Salesperson_Code; "Salesperson Code") { }
        }
    }

}

query 60862 "PINRIN Job Queue Entry1"
{
    APIGroup = 'integrations';
    APIPublisher = 'pinetworks';
    APIVersion = 'v1.0';
    EntityName = 'jobQueueEntry';
    EntitySetName = 'jobQueueEntries';
    QueryType = API;
    elements
    {
        dataitem(Job_Queue_Entry; "Job Queue Entry")
        {

            column(description; Description)
            {
            }
            column(earliestStartDateTime; "Earliest Start Date/Time")
            {
            }
            column(jobQueueCategoryCode; "Job Queue Category Code")
            {
            }
            column(objectIDToRun; "Object ID to Run")
            {
            }
            column(objectTypeToRun; "Object Type to Run")
            {
            }
            column(id; ID)
            {
            }
            column(status; Status)
            {
            }
            column(userID; "User ID")
            {
            }
        }


    }
}

query 60864 "PINRIN Customer1"
{
    APIGroup = 'integrations';
    APIPublisher = 'pinetworks';
    APIVersion = 'v1.0';
    EntityName = 'customer';
    EntitySetName = 'customers';
    QueryType = API;
    elements
    {
        dataitem(Customer; Customer)
        {

            column(no; "No.")
            {
            }
            column(name; Name)
            {
            }
            column(eMail; "E-Mail")
            {
            }
        }

    }
}

