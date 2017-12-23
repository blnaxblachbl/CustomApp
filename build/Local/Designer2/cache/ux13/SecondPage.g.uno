[Uno.Compiler.UxGenerated]
public partial class SecondPage: Fuse.Controls.Panel
{
    internal global::Fuse.Reactive.EventBinding temp_eb3;
    static SecondPage()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Reactive.Data("gotoShop");
        var temp1 = new global::Fuse.Controls.StackPanel();
        var temp2 = new global::Fuse.Controls.Text();
        var temp3 = new global::Fuse.Controls.Button();
        temp_eb3 = new global::Fuse.Reactive.EventBinding(temp);
        temp1.Alignment = Fuse.Elements.Alignment.Center;
        temp1.Children.Add(temp2);
        temp1.Children.Add(temp3);
        temp2.Value = "This is the second page.";
        temp2.Alignment = Fuse.Elements.Alignment.Center;
        temp3.Text = "Go to shop page";
        temp3.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp3, temp_eb3.OnEvent);
        temp3.Bindings.Add(temp_eb3);
        this.Children.Add(temp1);
    }
}
