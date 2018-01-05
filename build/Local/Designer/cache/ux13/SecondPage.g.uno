[Uno.Compiler.UxGenerated]
public partial class SecondPage: Fuse.Controls.StackPanel
{
    internal global::Fuse.Reactive.EventBinding temp_eb5;
    static SecondPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public SecondPage()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Reactive.Data("gotoShop");
        var temp1 = new global::Fuse.Controls.Text();
        var temp2 = new global::Fuse.Controls.Button();
        temp_eb5 = new global::Fuse.Reactive.EventBinding(temp);
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp1.Value = "This is the second page.";
        temp1.Alignment = Fuse.Elements.Alignment.Center;
        temp2.Text = "Go to shop page";
        temp2.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp2, temp_eb5.OnEvent);
        temp2.Bindings.Add(temp_eb5);
        this.Children.Add(temp1);
        this.Children.Add(temp2);
    }
}
