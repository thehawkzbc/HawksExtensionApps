reportextension 50153 "DeliveryNote" extends "Whse. - Posted Shipment" // 7309
{
    dataset
    {
        add("Posted Whse. Shipment Header")
        {
            column(Shipment_Date; "Shipment Date")
            {
            }
            // column(No_; "No.") { }
            column(Location_Code; "Location Code")
            {
            }
            column(FromLocation_; getLocationName("Location Code"))
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
            //column(Location; "Location Code") { }
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
        }
        addfirst("Posted Whse. Shipment Line")
        {
            dataitem("Sales Shipment Header"; "Sales Shipment Header")
            {
                DataItemLink = "No."=field("Posted Source No.");

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
                column(Transaction_Type; "Transaction Type")
                {
                }
            }
        }
        add("Posted Whse. Shipment Line")
        {
            column(QuantityInWords; AmountInWords(Quantity))
            {
            }
            column(Destination_Type; "Destination Type")
            {
            }
            column(Destination_No_; "Destination No.")
            {
            }
            column(Destination_Name; getDestinationLocationName("Posted Whse. Shipment Line"))
            {
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
    local procedure getDestinationLocationName(rec: record "Posted Whse. Shipment Line"): Text var
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
