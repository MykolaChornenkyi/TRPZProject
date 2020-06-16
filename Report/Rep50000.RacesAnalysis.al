report 50000 "Races  Analysis "
{
    RDLCLayout = './Report.rdl';
    dataset
    {
        dataitem(Race; Race)
        {
            column(RaceNo; "Race No")
            {
            }
            column(RouteNo; "Route No")
            {
            }
            column(DriverNo; "Driver No")
            {
            }
            column(Coordinates; "Coordinates ")
            {
            }
            column(Ammountofpassagers; "Ammount of passagers")
            {
            }
            column(Direction; Direction)
            {
            }
            column(Status; Status)
            {
            }
            column(UrgentDescription; UrgentDescription)
            {
            }
            trigger OnAfterGetRecord()
            var
                DriverUrgents: Codeunit RaceDecorator;
            begin
                if OnDate <> OnDate then
                    CurrReport.Skip();
                if "Route No" <> RouteNo then
                    CurrReport.Skip();

                UrgentDescription := DriverUrgents.DecorateUrgentTasks("Driver No", "Ammount of passagers", OnDate);
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field(RouteNo; RouteNo)
                    {
                        Caption = 'Route No.';
                    }
                    field(OnDate; OnDate)
                    {
                        Caption = 'On Date';
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var
        RouteNo: Code[10];
        OnDate: Date;
        UrgentDescription: Text[200];
}
