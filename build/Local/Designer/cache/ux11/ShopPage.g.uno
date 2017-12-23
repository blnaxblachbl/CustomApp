[Uno.Compiler.UxGenerated]
public partial class ShopPage: Fuse.Controls.Panel
{
    static ShopPage()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Controls.Text();
        temp.Value = "This is the shop page.";
        temp.Alignment = Fuse.Elements.Alignment.Center;
        this.Children.Add(temp);
    }
}
