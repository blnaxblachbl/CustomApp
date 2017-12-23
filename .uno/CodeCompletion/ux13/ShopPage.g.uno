[Uno.Compiler.UxGenerated]
public partial class ShopPage: Fuse.Controls.StackPanel
{
    static ShopPage()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Controls.Text();
        var temp1 = new global::MailInput();
        var temp2 = new global::MailInput();
        var temp3 = new global::MailInput();
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp.Value = "This is the shop page.";
        temp.Alignment = Fuse.Elements.Alignment.Center;
        temp1.PlaceholderText = "Type your email here...";
        temp2.PlaceholderText = "Type your password...";
        temp3.PlaceholderText = "Submit your password...";
        this.Children.Add(temp);
        this.Children.Add(temp1);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
}
