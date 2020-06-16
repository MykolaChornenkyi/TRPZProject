page 50004 "Races "
{
    
    ApplicationArea = All;
    Caption = 'Races ';
    PageType = List;
    SourceTable = Race;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Race No"; "Race No")
                {
                    ApplicationArea = All;
                }
                field("Route No"; "Route No")
                {
                    ApplicationArea = All;
                }
                field("Driver No"; "Driver No")
                {
                    ApplicationArea = All;
                }
                field("Ammount of passagers"; "Ammount of passagers")
                {
                    ApplicationArea = All;
                }
                field("Coordinates "; "Coordinates ")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
