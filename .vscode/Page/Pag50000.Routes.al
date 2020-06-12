page 50000 "Routes "
{

    ApplicationArea = All;
    Caption = 'Routes';
    PageType = List;
    SourceTable = "Route";
    UsageCategory = Lists;
    CardPageId = Route;

    layout
    {
        area(content)
        {
            repeater(General)
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
        }
    }

}
