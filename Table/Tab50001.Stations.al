table 50001 Stations
{
    Caption = 'Stations';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Assigned To Route"; Code[10])
        {
            Caption = 'Assigned To Route';
            DataClassification = ToBeClassified;
        }
        field(2; "Station No."; Integer)
        {
            Caption = 'Station No.';
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(3; "Station Name"; Text[50])
        {
            Caption = 'Station Name';
            DataClassification = ToBeClassified;
        }
        field(5; "Station Address "; Text[100])
        {
            Caption = 'Station Address ';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Station Name")
        {
            Clustered = true;
        }
    }

    trigger onDelete()
    var
        StationsObserver: Codeunit "Stations Observer";
    begin
        StationsObserver.DeleteStops("Assigned To Route");
    end;

    trigger OnInsert()
    var
        StationsObserver: Codeunit "Stations Observer";
    begin
        StationsObserver.AddStops("Assigned To Route");
    end;

}
