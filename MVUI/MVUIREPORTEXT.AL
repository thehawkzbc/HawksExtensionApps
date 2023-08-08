reportextension 60051 "PIN Transfer Order1" extends "Transfer Order"
{
    dataset
    {
        add("Transfer Line")
        {
            column(TransferLineRowNo; TransferLineRowNo)
            {

            }
            column(PIN_Vendor_Item_No_; "PIN Vendor Item No.")
            {

            }

        }
        addlast("Transfer Line")
        {
            dataitem("Reservation Entry"; "Reservation Entry")
            {
                column(Serial_No_; "Serial No.")
                {

                }
                column(Lot_No_; "Lot No.")
                {

                }
                column(Expiration_Date; "Expiration Date")
                {

                }
                column(Quantity; Quantity)
                {

                }
            }
        }
    }


    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        TransferLineRowNo: Integer;
        PreviousLineNumber: Integer;

}

reportextension 60052 "PIN Fixed Asset - Book Val01" extends "Fixed Asset - Book Value 01"
{
    dataset
    {
        add("Fixed Asset")
        {
            column(PIN_FA_Location; pinfalocation)
            {

            }
            column(PIN_FA_Location_Code; "FA Location Code")
            {

            }
            column(PIN_FA_Serial_No_; "Serial No.")
            {

            }
            column(PIN_FA_Class; pinfaclass)
            {

            }
            column(PIN_FA_Class_Code; "FA Class Code")
            {

            }
            column(PIN_FA_Subclass; pinfasubclass)
            {

            }
            column(PIN_FA_Subclass_Code; "FA Subclass Code")
            {

            }
            column(PIN_FA_Responsible_Employee; "Responsible Employee")
            {

            }
            column(PIN_FA_Responsible_Employee_Full_Name; pinfaresponsibleemployeefullname)
            {

            }
            column(PIN_FA_Main_Asset_Component; pinfamainassetcomponent)
            {

            }
        }
        addlast("Fixed Asset")
        {
            dataitem(FADepreciationBook; "FA Depreciation Book")
            {
                column(PIN_FADB_Acquisition_Date; pinfadbacquistiondate)
                {

                }
                column(PIN_FADB_Depreciation_Ending_Date; pinfadbdepreciationendingdate)
                {

                }
                column(PIN_FADB_No_Of_Depreciation_Years; pinfadbnoofdepreciationyears)
                {

                }
            }
        }
    }
    var
        //vikas
        pinfalocation: Label 'Pin FA Location';
        pinfaclass: Label 'Pin FA Class';
        pinfasubclass: Label 'PIN_FA_Subclass';
        pinfaresponsibleemployeefullname: Text[100];
        pinfamainassetcomponent: Text[100];
        pinfadbacquistiondate: Code[8];
        pinfadbdepreciationendingdate: Code[8];
        pinfadbnoofdepreciationyears: Code[10];

}

reportextension 60053 "PIN Service Order1" extends "Service Order"
{
    dataset
    {
        add("service line")
        {
            column(UOM_ServLine; uomserviceline)
            {

            }
            column(CurrencyCode_ServLine; currencycodeservline)
            {

            }
        }
    }
    var
        //vikas
        uomserviceline: Decimal;
        currencycodeservline: code[50];



}

reportextension 60054 "PIN Service Quote1" extends "Service Quote"
{
    dataset
    {
        add("service line")
        {
            column(UOM_ServLine; uomserviceline)
            {

            }
            column(CurrencyCode_ServLine; currencycodeservline)
            {

            }
        }
    }
    var
        //vikas
        uomserviceline: Decimal;
        currencycodeservline: code[50];
}

reportextension 60101 "Return Order Ext1" extends "Return Order"
{
    dataset
    {
        add("Purchase Header")
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_Created_User_Designation; pincreateduserdesgination)
            {

            }
            column(PIN_Modified_User_Designation; pinmodifieduserdesignation)
            {

            }
        }
    }

    var
        PinBaseCodeunit: Codeunit "PINetworks Base";
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];
        pincreateduserdesgination: Code[50];
        pinmodifieduserdesignation: Code[50];

}

reportextension 60102 "Whse. Shipment Status Ext1" extends "Whse. Shipment Status"
{

    dataset
    {
        add("Warehouse Shipment Header")
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_Created_User_Designation; pincreateduserdesgination)
            {

            }
            column(PIN_Modified_User_Designation; pinmodifieduserdesignation)
            {

            }
        }
    }

    var
        PinBaseCodeunit: Codeunit "PINetworks Base";
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];
        pincreateduserdesgination: Code[50];
        pinmodifieduserdesignation: Code[50];
}

reportextension 60103 "Movement List Ext1" extends "Movement List"
{
    dataset
    {
        add("Warehouse Activity Header")
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_Created_User_Designation; pincreateduserdesgination)
            {

            }
            column(PIN_Modified_User_Designation; pinmodifieduserdesignation)
            {

            }
        }
        add("Warehouse Activity Line")
        {
            column(WhseActivLine_Item_Bin_Content_Quantity; WhseActivLineitembincontentquantity)
            {

            }
        }
    }
    procedure GetFullName(userID: Guid): Text
    begin
    end;

    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];
        pincreateduserdesgination: Code[50];
        pinmodifieduserdesignation: Code[50];
        WhseActivLineitembincontentquantity: Decimal;
}

reportextension 60104 "Warehouse Bin List Ext1" extends "Warehouse Bin List"
{
    dataset
    {
        add(bin)
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
        }
    }
    procedure GetFullName(userID: Guid): Text
    begin
    end;

    var
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];
}

reportextension 60105 "PIN Purchase - Credit Memo1" extends "Purchase - Credit Memo"
{
    dataset
    {
        add("Purch. Cr. Memo Hdr.")
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }
        }
        add("Purch. Cr. Memo Line")
        {
            column(PIN_Purchase_Line_Row_No; PurchaseLineRowNo)
            {

            }
        }
    }
    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PurchaseLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];

}

reportextension 60106 "Order Ext1" extends Order
{
    dataset
    {
        add("Purchase Header")
        {
            column(ShipToEmail; ShipToEmail)
            {

            }
            column(ShipToPhone; ShipToPhone)
            {

            }
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(CreatedUserName; CreatedUserName)
            {

            }
            column(CreatedDateTime; CreatedDateTime)
            {

            }
            column(approvedusername; approvedusername)
            {

            }
            column(approveddatetime; approveddatetime)
            {

            }
            column(PIN_Transaction_Type; "Transaction Type")
            {

            }
            column(PIN_Due_Date; "Due Date")
            {

            }
            column(PIN_PriorityHdr; pinpriorityhdr)
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }
            column(PIN_Created_User_Designation; PINCreatedUserDesignation)
            {

            }
            column(PIN_Payment_Method_Code; "Payment Method Code")
            {

            }
            column(PIN_Transport_Method; "Transport Method")
            {

            }
            column(PIN_Payment_Method_Description; paymentmethoddescription)
            {

            }
            column(PIN_Transport_Method_Description; paymenttransportmethoddescription)
            {

            }
        }
        add(roundloop)
        {
            column(PIN_Vendor_Item_No_; PINVendorItemNo)
            {

            }
            column(PIN_Item_Reference_No_; PINItemReferenceNo)
            {

            }
        }
    }
    procedure getShiptoCustomerEmail(ShiptoCustCode: Code[20]): Text
    begin
    end;

    procedure getShiptoCustomerPhone(ShiptoCustCode: Code[20]): Text
    begin
    end;

    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PurchaseLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        ShipToEmail: Code[100];
        ShipToPhone: Integer;
        cretedusername: Text[100];
        modifiedusername: Text[100];
        CreatedUserName: Text[100];
        CreatedDateTime: DateTime;
        approvedusername: Text[100];
        approveddatetime: DateTime;
        PINCreatedUserDesignation: code[50];
        paymentmethoddescription: Text[100];
        paymenttransportmethoddescription: Text[100];
        PINVendorItemNo: Code[20];
        PINItemReferenceNo: Code[20];


}

reportextension 60107 "Purchase - Return Shipment Ext1" extends "Purchase - Return Shipment"
{
    dataset
    {
        add("Return Shipment Header")
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }

        }
    }
    procedure GetFullName(userID: Guid): Text
    begin
    end;

    var
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];
}

reportextension 60108 SalesQuoteExt1 extends "Standard Sales - Quote"
{
    dataset
    {
        add(Header)
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_GenCustomerIDNo; PINGenCustomerIDNo)
            {

            }
            column(PIN_GenCustomerName; PINGenCustomerName)
            {

            }
            column(PIN_Requested_Delivery_Date; "Requested Delivery Date")
            {

            }

            column(PIN_Promised_Delivery_Date; "Promised Delivery Date")
            {

            }
            column(PIN_Line_Discount_Amount_Total; "PIN Line Discount Amount Total")
            {

            }
        }
        add(Line)
        {
            column(PIN_Sales_Line_Row_No; SalesLineRowNo)
            {

            }
            column(PIN_Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
            {

            }
            column(PIN_Bin_Code; "Bin Code")
            {

            }
            column(PIN_ItemReference; pinitemreference)
            {

            }
            column(PIN_Vendor_Item_No_; "PIN Vendor Item No.")
            {

            }
        }
        addlast("Reservation Entry")
        {
            dataitem("Reservation Entry"; "Reservation Entry")
            {
                column(PIN_RE_Lot_No_; pinrelotno)
                {

                }
                column(PIN_RE_Quantity; PINREQuantity)
                {

                }
                column(PIN_RE_Expiration_Date; pinreexpirationdate)
                {

                }
                column(PIN_RE_Serial_No_; pinreserialno)
                {

                }
            }
            dataitem(Item; Item)
            {
                column(PIN_ITEM_Picture; item.Picture)
                {

                }
            }
            dataitem("Assemble-to-Order Link"; "Assemble-to-Order Link")
            {
                dataitem("Assembly Line"; "Assembly Line")
                {
                    column(PIN_AssmeblyLine_No; pinassmeblylineno)
                    {

                    }
                    column(PIN_AssmeblyLine_Description; PINAssmeblyLineDescription)
                    {

                    }
                    column(PIN_AssmeblyLine_UOM_Code; PINAssmeblyLineUOMCode)
                    {

                    }
                    column(PIN_AssmeblyLine_Quantity; PINAssmeblyLineQuantity)
                    {

                    }
                    column(PIN_AssmeblyLine_Vendor_Item_Code; PINAssmeblyLineVendorItemCode)
                    {

                    }
                }

            }
        }
    }

    var
        TenantMedia: Record "Tenant Media";
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        SalesLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];
        PINGenCustomerIDNo: Code[50];
        PINGenCustomerName: Text[100];
        pinrelotno: Code[50];
        PINREQuantity: Integer;
        pinreexpirationdate: Date;
        pinreserialno: Code[50];
        pinassmeblylineno: Code[50];
        PINAssmeblyLineDescription: Text[100];
        PINAssmeblyLineUOMCode: Code[50];
        PINAssmeblyLineQuantity: Integer;
        PINAssmeblyLineVendorItemCode: Code[50];



}

reportextension 60109 SalesCreditMemo1 extends "Standard Sales - Credit Memo"
{
    dataset
    {
        add(Header)
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }

        }
        add(Line)
        {
            column(PIN_Sales_Line_Row_No; SalesLineRowNo)
            {

            }
        }
    }

    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        SalesLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];

}

reportextension 60110 "PIN Cust. Payment Receipt1" extends "Customer - Payment Receipt"
{
    dataset
    {
        add("Cust. Ledger Entry")
        {
            column(PIN_CustLedger_Ext_Doc_No; pinCustledgerextdocno)
            {

            }
            column(PIN_CustLedger_Payment_Method_Code; PINCustLedgerPaymentMethodCode)
            {

            }
            column(PIN_GenCustomerIDNo; "PIN Gen. Customer ID No.")
            {

            }
            column(PIN_Gen__Customer_Name; "PIN Gen. Customer Name")
            {

            }
            column(PIN_CustLedger_PostingDescription; custledgerpostingdescription)
            {

            }
        }
        add(CustLedgEntry1)
        {
            column(PIN_CustLedEntry1_Ext_Doc_No; pincustledentry1exdocno)
            {

            }
        }
        add(CustLedgEntry2)
        {
            column(PIN_CustLedEntry2_Ext_Doc_No; pincustledentry2exdocno)
            {

            }
        }


    }
    var
        //vikas
        pinCustledgerextdocno: Code[50];
        PINCustLedgerPaymentMethodCode: Code[50];
        custledgerpostingdescription: Text[100];
        pincustledentry1exdocno: Code[50];
        pincustledentry2exdocno: Code[50];
}


reportextension 60111 "Sales - Shipment Ext1" extends "Sales - Shipment"
{
    dataset
    {
        add("Sales Shipment Header")
        {
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }
            column(PIN_External_Doc_No; "External Document No.")
            {

            }
            column(TotalQtyShipped_No_SalesShptHeader; totalqtyshippednosalesshptheader)
            {

            }
            column(CustomerPostingGroup_SalesShptHeader; customeerpostinggroupsalesshptheader)
            {

            }
        }
        add("Sales Shipment Line")
        {
            column(PIN_Sales_Shipment_Line_Row_No; pinSalesshipmentLineRowNo)
            {

            }
            column(Bin_Code; "Bin Code")
            {

            }
            column(PIN_Vendor_Item_No_; "PIN Vendor Item No.")
            {

            }

        }
        addlast("Item Ledger Entry")
        {
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                column(PIN_Serial_No_; "Serial No.")
                {

                }
                column(PIN_Lot_No_; "Lot No.")
                {

                }
                column(PIN_Expiration_Date; "Expiration Date")
                {

                }
                column(PIN_Quantity; Quantity)
                {

                }
            }
        }

    }

    var
        PinCodeBase: Codeunit "PINetworks Base";
        SalesLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        totalqtyshippednosalesshptheader: Integer;
        cretedusername: Text[100];
        modifiedusername: Text[100];
        customeerpostinggroupsalesshptheader: Code[50];
        pinSalesshipmentLineRowNo: Integer;
}

reportextension 60112 "Inventory - Availability Ext1" extends "Inventory Availability"
{
    dataset
    {
        addlast("Item Reference")
        {
            dataitem("Item Reference"; "Item Reference")
            {
                column(Reference_No_; "Reference No.")
                {

                }
            }
        }
    }
}

reportextension 60113 "PIN Daybook Cust. Ledger Ent1" extends "Day Book Cust. Ledger Entry"
{
    dataset
    {
        add("Cust. Ledger Entry")
        {

            column(PIN_Payment_Method_Code; "Payment Method Code")
            {

            }
            column(PIN_Payment_Reference; "Payment Reference")
            {

            }
            column(PIN_Reversed; Reversed)
            {

            }
            column(PIN_Positive; Positive)
            {

            }
            column(PIN_Source_Code; "Source Code")
            {

            }
            column(PIN_Recipient_Bank_Account; "Recipient Bank Account")
            {

            }
            column(PIN_User_ID; "User ID")
            {

            }
            column(PIN_Global_Dimension_1_Code; "Global Dimension 1 Code")
            {

            }
            column(PIN_Global_Dimension_2_Code; "Global Dimension 2 Code")
            {

            }
            column(PIN_Global_Dimension_1_Code_Name; globaldimesion1codename)
            {

            }
            column(PIN_Global_Dimension_2_Code_Name; globaldimesion2codename)
            {

            }
            column(PIN_GenCustomerIDNo; "PIN Gen. Customer ID No.")
            {

            }
            column(PIN_GenCustomerName; "PIN Gen. Customer Name")
            {

            }
        }
    }
    var
        //vikas
        globaldimesion1codename: Code[50];
        globaldimesion2codename: Code[50];
}

reportextension 60114 "PIN Sales Invoice1" extends "Standard Sales - Invoice"
{
    dataset
    {
        add(Header)
        {
            column(PIN_Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
            {

            }
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_External_Document_No_; "External Document No.")
            {

            }
            column(PIN_PreAssignedNo; "Pre-Assigned No.")
            {

            }
            column(PIN_PostingDate; "Posting Date")
            {

            }
            column(PIN_VAT_Registration_No; "VAT Registration No.")
            {

            }
            column(PIN_Currency_Code; "Currency Code")
            {

            }
            column(PIN_GenCustomerIDNo; PINGenCustomerIDNo)
            {

            }
            column(PIN_GenCustomerName; PINGenCustomerName)
            {

            }
            column(PIN_Line_Discount_Amount_Total; "PIN Line Discount Amount Total")
            {

            }
            column(PIN_Posting_Description; "Posting Description")
            {

            }
            column(Created_User_Designation; createduserdesignation)
            {

            }
        }
        add(assemblyline)
        {
            column(PIN_Assmebly_Vendor_Item_Code; pinassemblyvendoritemcode)
            {


            }
        }
        add(line)
        {
            column(PIN_Sales_Line_Row_No; SalesLineRowNo)
            {

            }
            column(PIN_Line_Discount_Amount; "Line Discount Amount")
            {

            }
            column(PIN_Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
            {

            }
            column(PIN_Bin_Code; "Bin Code")
            {

            }
            column(PIN_Assembly_Vendor_Item_No_; pinassemblyvendoritemno)
            {

            }

        }
        addlast("Posted Approval Entry")
        {
            dataitem("Posted Approval Entry"; "Posted Approval Entry")
            {
                column(Approver_ID; "Approver ID")
                {

                }
                column(Approver_Name; approvername)
                {

                }
                column(Sequence_No_; "Sequence No.")
                {

                }
                column(Last_Date_Time_Modified; "Last Date-Time Modified")
                {

                }
                column(Last_Modified_By_ID; "Last Modified By ID")
                {

                }
                column(Last_Modified_By_Name; lastmodifiedbyname)
                {

                }
                column(Approval_Code; "Approval Code")
                {

                }
                column(Date_Time_Sent_for_Approval; "Date-Time Sent for Approval")
                {

                }
                column(Approval_Status; approvalstatus)
                {

                }
                column(Approver_Designation; approverdesignation)
                {

                }
            }
        }
        addlast("Value Entry")
        {
            dataitem("Value Entry"; "Value Entry")
            {
                dataitem("Item Ledger Entry"; "Item Ledger Entry")
                {
                    column(PIN_Lot_No_; "Lot No.")
                    {

                    }
                    column(PIN_Expiration_Date; "Expiration Date")
                    {

                    }
                    column(PIN_Serial_No; "Serial No.")
                    {

                    }
                    column(PIN_Quantity; Quantity)
                    {

                    }
                }
            }
        }
        addlast("Reservation Entry")
        {
            dataitem("Reservation Entry"; "Reservation Entry")
            {
                column(PIN_RE_Lot_No_; pinrelotno)
                {

                }
                column(PIN_RE_Quantity; pinrequantity)
                {

                }
                column(PIN_RE_Expiration_Date; pinreexpirationdate)
                {

                }
                column(PIN_RE_Serial_No_; pinreserialno)
                {

                }
            }
        }
    }

    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PINTotalLineDiscount: Decimal;
        SalesLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        createduserdesignation: Text[100];
        cretedusername: Text[100];
        modifiedusername: Text[100];
        PINGenCustomerIDNo: Code[50];
        PINGenCustomerName: Text[100];
        pinassemblyvendoritemcode: Code[50];
        pinassemblyvendoritemno: Code[50];
        approvername: Text[100];
        lastmodifiedbyname: Text[100];
        approvalstatus: Option;
        approverdesignation: Text[100];
        pinrelotno: Code[20];
        pinrequantity: Integer;
        pinreexpirationdate: date;
        pinreserialno: Code[50];

}

reportextension 60115 "PIN Purchase - Quote1" extends "Purchase - Quote"
{
    dataset
    {
        add("Purchase Header")
        {
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }
        }
        add("Purchase Line")
        {
            column(PIN_Purchase_Line_Row_No; PurchaseLineRowNo)
            {

            }
        }

    }
    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PurchaseLineRowNo: Integer;
        PreviousLineNumber: Integer;
}

reportextension 60116 "PIN Purchase - Invoice1" extends "Purchase - Invoice"
{
    dataset
    {
        add("Purch. Inv. Header")
        {
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }
        }
        add("Purch. Inv. Line")
        {
            column(PIN_Purchase_Line_Row_No; PurchaseLineRowNo)
            {

            }
        }

    }
    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PurchaseLineRowNo: Integer;
        PreviousLineNumber: Integer;
}


reportextension 60117 "PIN Archived Purchase Order1" extends "Archived Purchase Order"
{
    dataset
    {
        add("Purchase Header Archive")
        {
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }
        }
        add("Purchase Line Archive")
        {
            column(PIN_Purchase_Line_Row_No; PurchaseLineRowNo)
            {

            }
        }

    }
    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PurchaseLineRowNo: Integer;
        PreviousLineNumber: Integer;
}


reportextension 60120 StandardSalesOrderConfExt1 extends "Standard Sales - Order Conf."
{
    dataset
    {
        add(header)
        {
            column(PIN_Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
            {

            }
            column(Creted_user_Name; cretedusername)
            {

            }
            column(Modified_user_Name; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {
            }
            column(PIN_GenCustomerIDNo; PINGenCustomerIDNo)
            {

            }
            column(PIN_GenCustomerName; PINGenCustomerName)
            {

            }
            column(PIN_Line_Discount_Amount_Total; "PIN Line Discount Amount Total")
            {

            }
        }
        add(line)
        {
            column(PIN_Sales_Line_Row_No; SalesLineRowNo)
            {

            }
            column(Bin_Code; "Bin Code")
            {

            }
            column(PIN_Assembly_Vendor_Item_No_; pinassemblyvendoritemno)
            {

            }
        }
        add(AssemblyLine)
        {
            column(PIN_Assmebly_Vendor_Item_Code; pinassemblyvendoritemcode)
            {

            }
        }
        addlast("Reservation Entry")
        {
            dataitem("Reservation Entry"; "Reservation Entry")
            {
                column(PIN_RE_Lot_No_; pinrelotno)
                {

                }
                column(PIN_RE_Quantity; pinrequantity)
                {

                }
                column(PIN_RE_Expiration_Date; pinreexpirationdate)
                {

                }
                column(PIN_RE_Serial_No_; pinreserialno)
                {

                }
            }
        }
    }
    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        SalesLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        cretedusername: Text[100];
        modifiedusername: Text[100];
        PINGenCustomerIDNo: Code[50];
        PINGenCustomerName: Text[100];
        pinassemblyvendoritemno: Code[50];
        pinassemblyvendoritemcode: Code[50];
        pinrelotno: Code[20];
        pinrequantity: Integer;
        pinreexpirationdate: date;
        pinreserialno: Code[50];
}

reportextension 60121 "PIN Purchase Receipt1" extends "Purchase - Receipt"
{
    dataset
    {
        add("Purch. Rcpt. Header")
        {
            column(PIN_Creted_user_Name; pincretedusername)
            {

            }
            column(PIN_Modified_user_Name; pinmodifiedusername)
            {

            }
            column(PIN_Order_No; "Order No.")
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 2 Code")
            {

            }
            column(PIN_Created_User_Designation; pincreateduserdesignation)
            {

            }
            column(PIN_Modified_User_Designation; pinmodifieduserdesignation)
            {

            }
        }
        add("Purch. Rcpt. Line")
        {
            column(PIN_Purchase_Line_Row_No; PurchaseLineRowNo)
            {

            }
            column(PIN_Unit_Cost; "Unit Cost")
            {

            }
            column(PIN_Unit_Cost_LCY; "Unit Cost (LCY)")
            {

            }
            column(PIN_Direct_Unit_Cost; "Direct Unit Cost")
            {

            }
            column(PIN_LineTotalCost; pinlinetotalcost)
            {

            }
            column(PIN_LineTotalCostLcy; pinlinetotalcostlcy)
            {

            }
        }
        addlast("Item Ledger Entry")
        {
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                column(PIN_RE_Lot_No_; pinrelotno)
                {

                }
                column(PIN_RE_Quantity; pinrequantity)
                {

                }
                column(PIN_RE_Expiration_Date; pinreexpirationdate)
                {

                }
                column(PIN_RE_Serial_No_; pinreserialno)
                {

                }

            }
        }
        addlast(Item)
        {
            dataitem(Item; Item)
            {
                column(PIN_Vendor_Item_No_; pinvendoritemno)
                {

                }
            }
        }
    }
    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PurchaseLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        pincretedusername: Text[100];
        pinmodifiedusername: Text[100];
        pincreateduserdesignation: Text[100];
        pinmodifieduserdesignation: Text[100];
        pinlinetotalcost: Integer;
        pinlinetotalcostlcy: Integer;
        pinrelotno: Code[20];
        pinrequantity: Integer;
        pinreexpirationdate: date;
        pinreserialno: Code[50];
        pinvendoritemno: code[50];
}

reportextension 60122 "PIN Standard Sales - PFI1" extends "Standard Sales - Pro Forma Inv"
{
    dataset
    {
        add(header)
        {
            column(PIN_Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
            {

            }
            column(PIN_Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
            {

            }
            column(PIN_GenCustomerIDNo; PINGenCustomerIDNo)
            {

            }
            column(PIN_GenCustomerName; PINGenCustomerName)
            {

            }

        }
        add(Line)
        {
            column(PIN_Sales_Line_Row_No; SalesLineRowNo)
            {

            }
            column(PIN_Assmebly_Vendor_Item_Code; pinassmeblyvendoritem)
            {

            }
        }
        addlast("Reservation Entry")
        {
            dataitem("Reservation Entry"; "Reservation Entry")
            {
                column(PIN_RE_Lot_No_; pinrelotno)
                {

                }
                column(PIN_RE_Quantity; pinrequantity)
                {

                }
                column(PIN_RE_Expiration_Date; pinreexpirationdate)
                {

                }
                column(PIN_RE_Serial_No_; pinreserialno)
                {

                }
            }
        }
        addlast("Assemble-to-Order Link")
        {
            dataitem("Assembly Line"; "Assembly Line")
            {
                column(PIN_AssmeblyLine_No; pinassmeblylineno)
                {

                }
                column(PIN_AssmeblyLine_Description; PINAssmeblyLineDescription)
                {

                }
                column(PIN_AssmeblyLine_Variant_Code; pinassemblylinevariantcode)
                {

                }
                column(PIN_AssmeblyLine_UOM_Code; PINAssmeblyLineUOMCode)
                {

                }
                column(PIN_AssmeblyLine_Quantity; PINAssmeblyLineQuantity)
                {

                }
                column(PIN_AssmeblyLine_Vendor_Item_Code; PINAssmeblyLineVendorItemCode)
                {

                }
            }
        }
    }

    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        PurchaseLineRowNo: Integer;
        PreviousLineNumber: Integer;
        //vikas
        PINGenCustomerIDNo: Code[50];
        PINGenCustomerName: Text[100];
        SalesLineRowNo: Integer;
        pinassmeblyvendoritem: Code[100];
        pinrelotno: Code[20];
        pinrequantity: Integer;
        pinreexpirationdate: date;
        pinreserialno: Code[50];
        pinassemblylinevariantcode: code[50];
        pinassmeblylineno: Code[50];
        PINAssmeblyLineDescription: Text[100];
        PINAssmeblyLineUOMCode: Code[50];
        PINAssmeblyLineQuantity: Integer;
        PINAssmeblyLineVendorItemCode: Code[50];
}

reportextension 60123 "PIN Transfer Shipment1" extends "Transfer Shipment"
{
    dataset
    {
        add("Transfer Shipment Line")
        {

            column(PIN_Vendor_Item_No_; "PIN Vendor Item No.")
            {

            }
        }
        addlast("Item Ledger Entry")
        {
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                column(PIN_RE_Lot_No_; pinrelotno)
                {

                }
                column(PIN_RE_Quantity; pinrequantity)
                {

                }
                column(PIN_RE_Expiration_Date; pinreexpirationdate)
                {

                }
                column(PIN_RE_Serial_No_; pinreserialno)
                {

                }
            }
        }


    }
    var
        //vikas
        pinrelotno: Code[20];
        pinrequantity: Integer;
        pinreexpirationdate: date;
        pinreserialno: Code[50];
}


reportextension 60124 "PIN Transfer Receipt1" extends "Transfer Receipt"
{
    dataset
    {
        add("Transfer Receipt Line")
        {
            column(PIN_Vendor_Item_No_; "PIN Vendor Item No.")
            {

            }
        }
        addlast("Item Ledger Entry")
        {
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                column(PIN_RE_Lot_No_; pinrelotno)
                {

                }
                column(PIN_RE_Quantity; pinrequantity)
                {

                }
                column(PIN_RE_Expiration_Date; pinreexpirationdate)
                {

                }
                column(PIN_RE_Serial_No_; pinreserialno)
                {

                }
            }
        }


    }
    var
        //vikas
        pinrelotno: Code[20];
        pinrequantity: Integer;
        pinreexpirationdate: date;
        pinreserialno: Code[50];
}



reportextension 60126 "PIN Standard Statement1" extends "Standard Statement"
{
    dataset
    {
        add(customer)
        {
            column(PIN_Cust_Phone_No; pincustphoneno)
            {

            }
            column(PIN_Cust_MobilePhone_No; pincustmobilephoneno)
            {

            }
            column(PIN_Cust_TIN_No; pincusttinno)
            {

            }
        }
        add(CustLedgEntry2)

        {
            column(PIN_CustLedger_ExtDoc_No; PINCustLedgerExtDocNo)
            {

            }
            column(PIN_CustLedger_GenCustomerIDNo; PINCustLedgerGenCustomerIDNo)
            {

            }
            column(PIN_CustLedger_GenCustomerName; PINCustLedgerGenCustomerName)
            {

            }
        }
        add(DtldCustLedgEntries)
        {
            column(PIN_ExtDocNo_DtldCustLedgEntries; PINExtDocNoDtldCustLedgEntries)
            {

            }
            column(PIN_GenCustomerIDNo_DtldCustLedgEntries; PINGenCustomerIDNoDtldCustLedgEntries)
            {

            }
            column(PIN_GenCustomerName_DtldCustLedgEntries; PINGenCustomerNameDtldCustLedgEntries)
            {

            }
        }
    }
    var
        //vikas
        pincustphoneno: Integer;
        pincustmobilephoneno: Integer;
        pincusttinno: Code[50];
        PINCustLedgerExtDocNo: code[50];
        PINCustLedgerGenCustomerIDNo: code[50];
        PINCustLedgerGenCustomerName: Text[100];
        PINExtDocNoDtldCustLedgEntries: code[50];
        PINGenCustomerIDNoDtldCustLedgEntries: Code[50];
        PINGenCustomerNameDtldCustLedgEntries: Text[100];
}

