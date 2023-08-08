codeunit 50401 "HKSCP GetPdfAsJson"
{
    procedure GetPdfAsJson(PWShipmentNo: Code[20]): Text;
    var
        PostedWhseShipmentHeader: Record "Posted Whse. Shipment Header";
        Base64Convert: Codeunit "Base64 Convert";
        TempBlob: Codeunit "Temp Blob";
        RecordRef: RecordRef;
        PictureText: Text;
        jObject: JsonObject;
        jToken: JsonToken;
        BlobOutStream: OutStream;
        BlobInStream: InStream;
    begin
        tempBlob.CreateOutStream(BlobOutStream);
        PostedWhseShipmentHeader.Reset();
        PostedWhseShipmentHeader.SetRange("No.", PWShipmentNo);
        PostedWhseShipmentHeader.FindFirst();
        RecordRef.GetTable(PostedWhseShipmentHeader);
        Report.SAVEAS(7309, '', REPORTFORMAT::Pdf, BlobOutStream, RecordRef);
        tempBlob.CreateInStream(BlobInStream);
        PictureText:=Base64Convert.ToBase64(BlobInStream);
        jObject.Add('picture', PictureText);
        jObject.SelectToken('picture', jToken);
        exit(jToken.AsValue().AsText());
    end;
    procedure GetInvoicePdfAsJson(SalesInvoiceNo: Code[20]): Text;
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        Base64Convert: Codeunit "Base64 Convert";
        TempBlob: Codeunit "Temp Blob";
        RecordRef: RecordRef;
        PictureText: Text;
        jObject: JsonObject;
        jToken: JsonToken;
        BlobOutStream: OutStream;
        BlobInStream: InStream;
    begin
        TempBlob.CreateOutStream(BlobOutStream);
        SalesInvoiceHeader.Reset();
        SalesInvoiceHeader.SetRange("No.", SalesInvoiceNo);
        SalesInvoiceHeader.FindFirst();
        RecordRef.GetTable(SalesInvoiceHeader);
        Report.SAVEAS(50157, '', REPORTFORMAT::Pdf, BlobOutStream, RecordRef);
        tempBlob.CreateInStream(BlobInStream);
        PictureText:=Base64Convert.ToBase64(BlobInStream);
        jObject.Add('picture', PictureText);
        jObject.SelectToken('picture', jToken);
        exit(jToken.AsValue().AsText());
    end;
}
