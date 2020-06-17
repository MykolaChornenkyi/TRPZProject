codeunit 50004 "Stations Observer"
{
    procedure AddStops(RouteNo: Code[10])
    var
        Route: Record Route;
    begin
        Route.Get(RouteNo);
        Route."Stations Amount " += 1;
        Route.Modify(true);
    end;


    procedure DeleteStops(RouteNo: Code[10])
    var
        Route: Record Route;
    begin
        Route.Get(RouteNo);
        Route."Stations Amount " -= 1;
        Route.Modify(true);
    end;
}
