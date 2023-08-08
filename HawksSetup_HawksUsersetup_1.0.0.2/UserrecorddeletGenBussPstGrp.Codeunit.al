codeunit 80016 UserrecorddeletGenBussPstGrp
{
    [EventSubscriber(ObjectType::Table, Database::"Gen. Business Posting Group", OnBeforeDeleteEvent, '', false, false)]
    local procedure OnDelete()
    var
        usersetup: Record "Hawks User Setup";
    begin
        if usersetup.Get(UserId)then begin
            if not usersetup."Allow dele. of table records" then error('User donot have permission to delete the Record');
        end
        else
            error('User donot have permission to delete the Record');
    end;
}
