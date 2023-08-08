page 50403 "HKS CP Posted Whse. Shipment"
{
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'HKSDeliveryNotePdf';
    DelayedInsert = true;
    EntityName = 'DeliveryNotePdf';
    EntitySetName = 'DeliveryNotePdfs';
    PageType = API;
    SourceTable = "Posted Whse. Shipment Header";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No"; "No.")
                {
                    Editable = false;
                }
                field("Delivery_note"; PictureAsJson)
                {
                    Editable = false;
                }
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        GetPicture: Codeunit "HKSCP GetPdfAsJson";
    begin
        PictureAsJson:=GetPicture.GetPdfAsJson(Rec."No.");
    end;
    var PictureAsJson: Text;
}
