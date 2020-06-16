table 50003 Race
{
    Caption = 'Race';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Race No"; Integer)
        {
            Caption = 'Race No';
            DataClassification = ToBeClassified;
        }
        field(20; "Route No"; Code[10])
        {
            Caption = 'Route No';
            DataClassification = ToBeClassified;
        }
        field(30; "Driver No"; Integer)
        {
            Caption = 'Driver No';
            DataClassification = ToBeClassified;
        }
        field(40; "Ammount of passagers"; Integer)
        {
            Caption = 'Ammount of passagers';
            DataClassification = ToBeClassified;
        }
        field(50; "Coordinates "; Text[50])
        {
            Caption = 'Coordinates ';
            DataClassification = ToBeClassified;
        }
        field(60; "Status"; Boolean)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
        }
        field(70; "Direction"; Option)
        {
            OptionMembers = "forward","backward";
            OptionCaption = 'forward,backward';
            Caption = 'Direction';
            DataClassification = ToBeClassified;
        }
        field(90; OnDate; Date)
        {
            Caption = 'On Date';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Race No")
        {
            Clustered = true;
        }
    }

}
