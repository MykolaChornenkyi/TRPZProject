codeunit 50005 SecurityIsolation
{
    procedure Test(IdOfUser: Integer): Boolean
    var
        User: Record SystemUsers;
    begin
        User.Get(IdOfUser);
        if UserId = User.UserAlias then
            if User.UserRole <> 'Controller' then
                Exit(false);
    end;
}
