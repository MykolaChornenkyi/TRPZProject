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
    actions
    {
        area(processing)
        {
            group(Functions)
            {
                Caption = 'Functions';
                action("View File")
                {
                    Caption = 'Create Route';
                    ApplicationArea = All;
                    Image = Create;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    var
                        AddRoute: Codeunit "Add new rought Factory";
                        RouteNo: Code[20];
                    begin
                        RouteNo := Rec."Route No.";
                        Delete();
                        AddRoute.AddNewRought(RouteNo);
                    end;
                }
            }
        }
    }
}
