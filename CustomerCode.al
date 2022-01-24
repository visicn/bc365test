codeunit 50100 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer: Record Customer; ExtraMessage: Text)

    begin
        Message('Opa ! Imamo novog kupca %1!!\\%2', MyCustomer."No.", ExtraMessage);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure CustomerOnAfterInsert(var Rec: Record Customer)
    begin
        CelebrateCustomer(Rec, 'Čestitamo iz code unita');
    end;
}