codeunit 80024 UserrecorddeletingNoSeriesLine
{
    [EventSubscriber(ObjectType::Table, Database::"No. Series Line", OnBeforeDeleteEvent, '', false, false)]
    local procedure OnDeletePaymentTerms()
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
