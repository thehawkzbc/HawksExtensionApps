tableextension 50400 "HKS CP Customer" extends Customer
{
    fields
    {
        field(50400; "CP Password"; Text[255])
        {
            DataClassification = EndUserIdentifiableInformation;
        }
        field(50401; "Customer Type";enum "HKS CP Identification Type")
        {
            DataClassification = EndUserIdentifiableInformation;
        }
        field(50402; "Identification No"; Code[20])
        {
            DataClassification = EndUserIdentifiableInformation;
        }
        field(50403; "CP Status";Enum "HKS CP Status")
        {
            DataClassification = ToBeClassified;
        }
        field(50404; "Contact Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }
}
