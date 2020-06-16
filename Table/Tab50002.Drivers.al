table 50002 Drivers
{
    Caption = 'Drivers';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Driver No."; Integer)
        {
            Caption = 'Driver No.';
            DataClassification = ToBeClassified;
        }
        field(20; "Driver Name"; Text[50])
        {
            Caption = 'Driver Name';
            DataClassification = ToBeClassified;
        }
        field(30; "Driver Contact Phone"; Integer)
        {
            Caption = 'Driver Contact Phone';
            DataClassification = ToBeClassified;
        }
        field(40; "Birh Date"; Date)
        {
            Caption = 'Birh Date';
            DataClassification = ToBeClassified;
        }
        field(50; "Medical Test"; Date)
        {
            Caption = 'Medical Test';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Driver No.")
        {
            Clustered = true;
        }
    }

}
