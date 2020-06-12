table 50000 "Route"
{
    Caption = 'Route ';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Route No."; Code[10])
        {
            Caption = 'Route No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Stations Amount "; Integer)
        {
            Caption = 'Stations Amount ';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Route No.")
        {
            Clustered = true;
        }
    }
    trigger OnDelete()
    var
        RouteLines: Record Stations;
    begin
        RouteLines.Reset();
        RouteLines.SetRange("Assigned To Route", "Route No.");
        if RouteLines.FindSet() then
            RouteLines.DeleteAll();
    end;

}
