codeunit 50155 "PIN rmsxml"
{
    trigger OnRun()
    begin
        readfile();
    end;
    var filemgmt: Codeunit "File Management";
    xmldoc: XmlDocument;
    filename: Text;
    xinstream: InStream;
    local procedure readfile(): XmlDocument var
        // TempBlob: Record TempBlob temporary;
        TempBlob: Codeunit "Temp Blob";
    begin
        filename:=filemgmt.BLOBImportWithFilter(TempBlob, 'Select RMS posting file', 'c:\bc\rms.xml', ' RMS export files (*.xml)|*.xml', 'xml');
        if filename = '' then exit;
        // xfile.CreateInStream();
        TempBlob.CreateInStream(XInStream);
        XmlDocument.ReadFrom(xinstream, xmldoc);
        ProcessFile(xmldoc);
    end;
    local procedure ProcessFile(xmldoc2: XmlDocument)
    var
        xmlnodes: XmlNodeList;
        tranNode: XmlNode;
        tranNodeCounter: Integer;
        tranNodeElement: XmlElement;
        tranNodeAttributes: XmlAttributeCollection;
        tranAttribute: XmlAttribute;
        tranEntryNode: XmlNode;
        tranEntryElement: XmlElement;
        tranEntryAttributes: XmlAttributeCollection;
        tranEntryAttribute: XmlAttribute;
        // x:Codeunit "XML DOM Management";
        StoreId: Code[20];
        TranDate: Text;
        TransactionID: Text;
        DebitAmount: Text;
        CreditAmount: Text;
        Memo: Text;
        AccountNumber: Text;
        TransactionEntryId: Text;
        IsSalesTax: Text;
        IsSalesTotal: Text;
        LineNumber: Integer;
    begin
        if xmldoc2.SelectNodes('//JournalTransactions/JournalTransaction', xmlnodes)then begin
            LineNumber:=1;
            repeat tranNodeCounter+=1;
                xmlnodes.Get(tranNodeCounter, tranNode);
                tranNodeElement:=tranNode.AsXmlElement();
                tranNodeAttributes:=tranNodeElement.Attributes();
                tranNodeAttributes.Get('StoreID', tranAttribute);
                StoreId:=GetStoreDimenionValue(tranAttribute.Value);
                tranNodeAttributes.Get('Date', tranAttribute);
                TranDate:=tranAttribute.Value;
                tranNodeAttributes.Get('TransactionID', tranAttribute);
                TransactionID:=tranAttribute.Value;
                foreach tranEntryNode in trannodeElement.GetDescendantElements()do begin
                    tranEntryElement:=tranEntryNode.AsXmlElement();
                    tranEntryAttributes:=tranEntryElement.Attributes();
                    tranEntryAttributes.Get('IsSalesTotal', tranEntryAttribute);
                    IsSalesTotal:=tranEntryAttribute.Value;
                    tranEntryAttributes.Get('IsSalesTax', tranEntryAttribute);
                    IsSalesTax:=tranEntryAttribute.Value;
                    tranEntryAttributes.Get('DebitAmount', tranEntryAttribute);
                    DebitAmount:=tranEntryAttribute.Value;
                    tranEntryAttributes.Get('CreditAmount', tranEntryAttribute);
                    CreditAmount:=tranEntryAttribute.Value;
                    tranEntryAttributes.Get('Memo', tranEntryAttribute);
                    Memo:=tranEntryAttribute.Value;
                    tranEntryAttributes.Get('AccountNumber', tranEntryAttribute);
                    AccountNumber:=tranEntryAttribute.Value;
                    tranEntryAttributes.Get('TransactionEntryID', tranEntryAttribute);
                    TransactionEntryId:=tranEntryAttribute.Value;
                    CreateJournalEntry(LineNumber, TranDate, '45', StoreId, TransactionID, AccountNumber, Memo, CreditAmount, DebitAmount, IsSalesTax, IsSalesTotal);
                    LineNumber+=1;
                end;
            until tranNodeCounter = xmlnodes.Count();
        end
        else
            Message('failed');
    end;
    local procedure CreateJournalEntry(LineNumber: Integer; TranDate: Text; BUCode: Code[20]; StoreID: Code[20]; TranID: Text; AccountNumber: Text; Memo: Text; Credit: Text; Debit: Text; IsSalesTax: Text; isSalesTotal: Text)
    var
        jl: Record "Gen. Journal Line";
        postDate: Date;
        cAmount: Decimal;
        dAmount: Decimal;
        Amount: Decimal;
    // dim: Codeunit DimensionManagement;
    begin
        if IsSalesTax = isSalesTotal then exit;
        jl.Init();
        jl."Journal Batch Name":='ZREPORT';
        jl."Journal Template Name":='GENERAL';
        jl."Document No.":='Z-' + TranID;
        jl."Account No.":=CopyStr(AccountNumber, 1, 20);
        jl."Account Type":=jl."Account Type"::"G/L Account";
        LineNumber:=LineNumber + 1;
        jl."Line No.":=LineNumber;
        jl.Description:=copystr(Memo, 1, 100);
        EVALUATE(postDate, TranDate);
        EVALUATE(cAmount, Credit);
        EVALUATE(dAmount, Debit);
        jl."Posting Date":=postDate;
        IF cAmount <> 0.0 THEN amount:=cAmount * -1
        ELSE
            amount:=dAmount;
        jl.Amount:=Amount;
        jl."Shortcut Dimension 1 Code":=BUCode;
        jl."Shortcut Dimension 2 Code":=StoreID;
        jl.ValidateShortcutDimCode(1, BUCode);
        jl.ValidateShortcutDimCode(2, StoreID);
        jl.Insert();
    end;
    local procedure GetStoreDimenionValue(storeId: text): Code[20]var
        DimStore: Code[20];
    begin
        DimStore:='S' + storeId;
        exit(DimStore);
    end;
}
