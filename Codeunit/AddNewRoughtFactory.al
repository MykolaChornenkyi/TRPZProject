codeunit 50001 "Add new rought Factory"
{
    trigger OnRun()
    begin

    end;

    procedure AddNewRought(RouteNo: Code[20])
    var
        RouteNumber: Integer;
    begin
        if Evaluate(RouteNumber, RouteNo) then
            NotAdjacent(RouteNo)
        else
            adjacent(RouteNo);
    end;

    local procedure adjacent(RouteNo: Code[20])
    var
        TableRoute: Record Route;
        Stations: Record Stations;
        NewRecordStations: Record Stations;
        PageRoute: Page Route;
        RouteNumbers: Integer;
        CorectRouteNumber: Integer;
        counter: Integer;
    begin
        for counter := 1 to StrLen(RouteNo) do
            if Evaluate(RouteNumbers, CopyStr(RouteNo, 1, counter)) then
                CorectRouteNumber := RouteNumbers;

        if TableRoute.Get(RouteNo, Format(CorectRouteNumber)) then begin
            Stations.SetRange("Assigned To Route", Format(CorectRouteNumber));
            if Stations.FindSet() then
                repeat
                    NewRecordStations.Init();
                    NewRecordStations := Stations;
                    NewRecordStations.Insert();
                until Stations.Next() = 0;

            TableRoute.Init();
            TableRoute."Route No." := RouteNo;
            TableRoute."Stations Amount " := Stations.Count;
            TableRoute.Insert();

            TableRoute.FindLast();
            PageRoute.SetRecord(TableRoute);
            PageRoute.Run();
        end;
    end;

    local procedure NotAdjacent(RouteNo: Code[20])
    var
        TableRoute: Record Route;
        PageRoute: Page Route;
    begin
        TableRoute.Init();
        TableRoute."Route No." := RouteNo;
        TableRoute."Stations Amount " := 0;
        TableRoute.Insert();
        TableRoute.FindLast();
        PageRoute.SetRecord(TableRoute);
        PageRoute.Run();
    end;

    var
        myInt: Integer;
}