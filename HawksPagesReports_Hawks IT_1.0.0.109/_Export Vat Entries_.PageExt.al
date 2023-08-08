pageextension 50252 "Export Vat Entries" extends "VAT Entries"
{
    actions
    {
        addafter("&Navigate")
        {
            action(ExportToExcel)
            {
                Caption = 'Export to Excel';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Export;

                trigger OnAction()
                var
                begin
                    ExportCustLedgerEntries(Rec);
                end;
            }
        }
    }
    local procedure ExportCustLedgerEntries(var VatEntry: Record "VAT Entry")
    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        VATLedgerEntriesLbl: Label 'VAT Ledger Entries';
        ExcelFileName: Label 'VATLedgerEntries_%1_%2';
        GLentry: Record "G/L Entry";
        GLaccountNum: Code[20];
    begin
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        TempExcelBuffer.NewRow();
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("Entry No."), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("Posting Date"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("Document Type"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("Document No."), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("Bill-to/Pay-to No."), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption(Base), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption(Amount), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("VAT Bus. Posting Group"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("VAT Prod. Posting Group"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(VatEntry.FieldCaption("G/L Acc. No."), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        if VatEntry.FindSet()then repeat GLentry.Reset();
                GLentry.SetRange("Document No.", VatEntry."Document No.");
                GLentry.SetFilter("G/L Account No.", '5210..5220');
                if GLentry.FindFirst()then BEGIN
                    GLaccountNum:=GLentry."G/L Account No.";
                END;
                TempExcelBuffer.NewRow();
                TempExcelBuffer.AddColumn(VatEntry."Entry No.", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
                TempExcelBuffer.AddColumn(VatEntry."Posting Date", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Date);
                TempExcelBuffer.AddColumn(VatEntry."Document Type", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
                TempExcelBuffer.AddColumn(VatEntry."Document No.", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
                TempExcelBuffer.AddColumn(VatEntry."Bill-to/Pay-to No.", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
                TempExcelBuffer.AddColumn(VatEntry.Base, false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
                TempExcelBuffer.AddColumn(VatEntry.Amount, false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
                TempExcelBuffer.AddColumn(VatEntry."VAT Bus. Posting Group", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
                TempExcelBuffer.AddColumn(VatEntry."VAT Prod. Posting Group", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
                TempExcelBuffer.AddColumn(GLaccountNum, false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
            until VatEntry.Next() = 0;
        TempExcelBuffer.CreateNewBook(VATLedgerEntriesLbl);
        TempExcelBuffer.WriteSheet(VATLedgerEntriesLbl, CompanyName, UserId);
        TempExcelBuffer.CloseBook();
        TempExcelBuffer.SetFriendlyFilename(StrSubstNo(ExcelFileName, CurrentDateTime, UserId));
        TempExcelBuffer.OpenExcel();
    end;
}
