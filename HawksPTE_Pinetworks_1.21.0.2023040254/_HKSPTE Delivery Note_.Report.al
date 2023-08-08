report 50154 "HKSPTE Delivery Note"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Header"; "Warehouse Shipment Header")
        {
            PrintOnlyIfDetail = true;

            column(Shipment_Date; "Shipment Date")
            {
            }
            column(No_; "No.")
            {
            }
            column(Location_Code; "Location Code")
            {
            }
            column(Received_By; "Received By")
            {
            }
            column(Received_By_ID; "Received By ID")
            {
            }
            column(Signature_Image; "Signature Image")
            {
            }
            column(Meter_Start; "Meter Start")
            {
            }
            column(Meter_End; "Meter End")
            {
            }
            // column(Location; "Location Code") { }
            column("Water_Contamination_Cheacked"; "Check Water Contamination")
            {
            }
            column("Sample_Visibility_Test"; "Take Sample for Visiblity Test")
            {
            }
            column("Barge_Meter_Cheacked"; "Check Barge Meter")
            {
            }
            column("Client_Meter_Checked"; "Check Client Meter")
            {
            }
            column("ROB_Client_Tank"; "ROB Client Tank")
            {
            }
            dataitem(Lines; "Warehouse Shipment Line")
            {
                DataItemLink = "No."=field("No.");

                column(FromLocation; getLocationName("Location Code"))
                {
                }
                column(Item_No_; "Item No.")
                {
                }
                column(Description; Description)
                {
                }
                column(Qty__Shipped; "Qty. Shipped")
                {
                }
                column(HKS_Qty_Shipped_InWords; AmountInWords("Qty. Shipped"))
                {
                }
                column(Qty__per_Unit_of_Measure; "Qty. per Unit of Measure")
                {
                }
                column(Source_No_; "Source No.")
                {
                }
                column(Qty___Base_; "Qty. (Base)")
                {
                }
                column(HKS_Qty_Base_InWords; AmountInWords("Qty. (Base)"))
                {
                }
                column(Unit_of_Measure_Code; "Unit of Measure Code")
                {
                }
                column(Destination_Type; "Destination Type")
                {
                }
                column(Destination_No_; "Destination No.")
                {
                }
                column(Destination_Name; getDestinationLocationName(Lines))
                {
                }
                dataitem("Sales Header"; "Sales Header")
                {
                    DataItemLink = "Document Type"=field("Source Subtype"), "No."=field("Source No.");

                    column(Sell_to_Customer_Name; "Sell-to Customer Name")
                    {
                    }
                    column(Sell_to_Customer_Name_2; "Sell-to Customer Name 2")
                    {
                    }
                    column(Sell_to_Customer_No_; "Sell-to Customer No.")
                    {
                    }
                    column(Sell_to_Address; "Sell-to Address")
                    {
                    }
                    column(Sell_to_Address_2; "Sell-to Address 2")
                    {
                    }
                    column(Ship_to_Address; "Ship-to Address")
                    {
                    }
                    column(Ship_to_Address_2; "Ship-to Address 2")
                    {
                    }
                }
            }
        }
    }
    local procedure AmountInWords(number: Decimal): Text var
        RepCheck: Report "Check";
        NoText: array[2]of Text;
        AmountInWordsText: Text;
    begin
        RepCheck.InitTextVariable();
        RepCheck.FormatNoText(NoText, ROUND(number, 0.0001), '');
        AmountInWordsText:=NoText[1];
        exit(AmountInWordsText);
    end;
    local procedure getDestinationLocationName(rec: record "Warehouse Shipment Line"): Text var
    begin
        if rec."Destination Type" = rec."Destination Type"::Location then exit(getLocationName(copystr(rec."Destination No.", 1, 10)))
        else
            exit('');
    end;
    local procedure getLocationName(locationCode: Code[10]): Text[100]var
        location: Record Location;
    begin
        if location.Get(locationCode)then exit(location.Name);
    end;
}
