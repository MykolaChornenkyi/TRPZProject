codeunit 50000 TestCodeunit
{
    procedure TestRoute()
    var
        Route: Record "Route";
        RouteNo: code[20];
        Stations: Record Stations;
    begin
        Route.Init();
        RouteNo := Format(system.Random(1000));
        Route."Route No." := RouteNo;
        Route."Stations Amount " := system.Random(1000);
        Route.Insert();

        TestStations(RouteNo);
        Stations.Reset();
        Stations.SetRange("Assigned To Route", RouteNo);
        if NOT Stations.FindSet() then
            Error('Test Failed');

        Route.Reset();
        Route.Get(RouteNo);
        Route.Delete();

        Stations.Reset();
        Stations.SetRange("Assigned To Route", RouteNo);
        if Stations.FindSet() then
            Error('Test Failed');
    end;

    procedure TestStations(RouteNo: Code[20])
    var
        Stations: Record Stations;
        i: Integer;
    begin
        for i := 0 to 100 do begin
            Stations.Init();
            Stations."Assigned To Route" := RouteNo;
            Stations."Station Address " := 'Address' + Format(i);
            Stations."Station Name" := 'Name';
            Stations.Insert()
        end;
    end;
}
