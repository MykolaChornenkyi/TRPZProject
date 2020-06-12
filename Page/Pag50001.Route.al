page 50001 Route
{

    Caption = 'Route';
    PageType = Document;
    SourceTable = "Route";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Route No."; "Route No.")
                {
                    ApplicationArea = All;
                }
                field("Stations Amount "; "Stations Amount ")
                {
                    ApplicationArea = All;
                }
            }
            part(PartName; "Route Lines")
            {
                SubPageLink = "Assigned To Route" = field("Route No.");
                Caption = 'Route Lines';
            }
        }

    }

}
