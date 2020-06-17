table 50004 SystemUsers
{
    Caption = 'SystemUsers';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; UserId; Integer)
        {
            Caption = 'UserId';
            DataClassification = ToBeClassified;
        }
        field(5; UserAlias; Code[10])
        {
            Caption = 'UserAlias';
            DataClassification = ToBeClassified;
        }
        field(10; UserRole; Code[20])
        {
            Caption = 'UserRole';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; UserId)
        {
            Clustered = true;
        }
    }

}
