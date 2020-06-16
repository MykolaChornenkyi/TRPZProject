page 50003 Drivers
{
    
    ApplicationArea = All;
    Caption = 'Drivers';
    PageType = List;
    SourceTable = Drivers;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Driver No."; "Driver No.")
                {
                    ApplicationArea = All;
                }
                field("Driver Name"; "Driver Name")
                {
                    ApplicationArea = All;
                }
                field("Driver Contact Phone"; "Driver Contact Phone")
                {
                    ApplicationArea = All;
                }
                field("Medical Test"; "Medical Test")
                {
                    ApplicationArea = All;
                }
                field("Birh Date"; "Birh Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
