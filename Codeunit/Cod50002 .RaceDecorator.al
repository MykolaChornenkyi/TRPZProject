codeunit 50003 RaceDecorator
{
    procedure DecorateUrgentTasks(DriverNo: Integer; Passangers: Integer; DateOfUrgent: Date): Text[200]
    var
        Driver: Record Drivers;
        Races: Record Race;
        UrgeentsApplied: Boolean;
        UrgentDescription: Text[200];
        DriverName: Text[50];
    begin
        Driver.Get(DriverNo);
        UrgentDescription += Driver."Driver Name";
        if Driver."Medical Test" - Today <= 10 then begin
            if not UrgeentsApplied then
                UrgentDescription += ' Urgent issued:';
            UrgentDescription += ' Maedical test expires less then in 10 days';
        end;
        if Passangers > 150 then begin
            if not UrgeentsApplied then
                UrgentDescription += ' Urgent issued:';
            UrgentDescription += ' Passanger ammount is higher then normally';
        end;

        Races.SetRange("Driver No", DriverNo);
        Races.SetRange(OnDate, DateOfUrgent);
        Races.FindFirst();
        if Races.Count > 6 then begin
            if not UrgeentsApplied then
                UrgentDescription += ' Urgent issued:';
            UrgentDescription += ' Driver made more then 6 races';
        end;
    end;

}
