[Uno.Compiler.UxGenerated]
public partial class FirstPage: Fuse.Controls.Panel
{
    static FirstPage()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Controls.Text();
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp.Value = "This is the first page.";
        temp.Alignment = Fuse.Elements.Alignment.Center;
        this.Children.Add(temp);
    }
}
