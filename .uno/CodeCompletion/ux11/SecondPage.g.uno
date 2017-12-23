[Uno.Compiler.UxGenerated]
public partial class SecondPage: Fuse.Controls.Panel
{
    static SecondPage()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Controls.StackPanel();
        var temp1 = new global::Fuse.Controls.Text();
        var temp2 = new global::Fuse.Controls.Button();
        temp.Alignment = Fuse.Elements.Alignment.Center;
        temp.Children.Add(temp1);
        temp.Children.Add(temp2);
        temp1.Value = "This is the second page.";
        temp1.Alignment = Fuse.Elements.Alignment.Center;
        temp2.Text = "Go to shop page";
        temp2.Padding = float4(20f, 20f, 20f, 20f);
        this.Children.Add(temp);
    }
}
