page 50002 "Route Lines"
{

    Caption = 'Route Lines ';
    PageType = ListPart;
    SourceTable = Stations;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Station Name"; "Station Name")
                {
                    ApplicationArea = All;
                }
                field("Station Address "; "Station Address ")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
