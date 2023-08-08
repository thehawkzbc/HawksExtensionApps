table 50151 "HKS CP User"
{
    Caption = 'HKS CP User';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = Customer;
        }
        field(2; Username; Text[80])
        {
            Caption = 'Username';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; Password; Text[255])
        {
            Caption = 'Password';
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            begin
                Password:=CopyStr(MD5Hash(Password), 1, 255);
            end;
        }
        field(5; Id; Integer)
        {
            Caption = 'Id';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
    }
    keys
    {
        key(PK; "Customer No.", Username)
        {
            Clustered = true;
        }
        key(Username; Username)
        {
        }
    }
    procedure MD5Hash(Pwd: Text): Text var
        CryptographyManagement: Codeunit "Cryptography Management";
        HashAlgorithmType: Option MD5, SHA1, SHA256, SHA384, SHA512;
    begin
        //Returns MD5 Hash of input string. Based on the requirement we can have options to use different hashing algorithms
        exit(CryptographyManagement.GenerateHash(Pwd, HashAlgorithmType::MD5));
    end;
}
