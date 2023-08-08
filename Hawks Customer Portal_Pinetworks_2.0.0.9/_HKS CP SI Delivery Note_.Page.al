page 50407 "HKS CP SI Delivery Note"
{
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'HKSCSIDeliveryNotePdf';
    DelayedInsert = true;
    EntityName = 'SIDeliveryNotePdf';
    EntitySetName = 'SIDeliveryNotePdfs';
    PageType = API;
    SourceTable = "Document Attachment";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No"; Rec."No.")
                {
                    Editable = false;
                }
                field("file_name"; Rec."File Name")
                {
                    Editable = false;
                }
                field("Delivery_note"; pictureAsJson)
                {
                    Editable = false;
                }
                field("Attached_Date"; Rec."Attached Date")
                {
                    Editable = false;
                }
            }
        }
    }
    var pictureAsJson: Text;
    trigger OnAfterGetRecord()
    var
    begin
        pictureAsJson:=getPdf(Rec."No.");
    end;
    procedure "getPdf"(itemNo: Code[20]): Text;
    var
        DocumentAttachment: Record "Document Attachment";
        Base64Convert: Codeunit "Base64 Convert";
        TempBlob: Codeunit "Temp Blob";
        BlobOutStream: OutStream;
        BlobInStream: InStream;
        PictureText: Text;
        jObject: JsonObject;
        jToken: JsonToken;
    begin
        TempBlob.CreateOutStream(BlobOutStream);
        DocumentAttachment.Reset();
        DocumentAttachment.SetRange("No.", itemNo);
        DocumentAttachment.FindFirst();
        DocumentAttachment."Document Reference ID".ExportStream(BlobOutStream);
        TempBlob.CreateInStream(BlobInStream);
        PictureText:=Base64Convert.ToBase64(BlobInStream);
        jObject.Add('picture', PictureText);
        jObject.SelectToken('picture', jToken);
        exit(jToken.AsValue().AsText());
    end;
}
