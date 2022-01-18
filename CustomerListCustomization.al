profile NoviProfil
{
    Description = 'Moj novi profil';
    RoleCenter = "Order Processor Role Center";
    Customizations = MyCustomization;
}
pagecustomization MyCustomization customizes "Customer List"
{
    layout
    {
        modify("Responsibility Center")
        {
            Visible = false;
        }

    }
}