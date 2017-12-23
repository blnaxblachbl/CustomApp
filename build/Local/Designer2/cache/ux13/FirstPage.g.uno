[Uno.Compiler.UxGenerated]
public partial class FirstPage: Fuse.Controls.Panel
{
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    static FirstPage()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Reactive.Data("gotoFirst");
        var temp1 = new global::Fuse.Reactive.Data("gotoSecond");
        var temp2 = new global::Fuse.Controls.Text();
        var temp3 = new global::Fuse.Controls.Grid();
        var temp4 = new global::Fuse.Controls.Button();
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp);
        var temp5 = new global::Fuse.Controls.Button();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp1);
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp2.Value = "This is the first page.";
        temp2.Alignment = Fuse.Elements.Alignment.Center;
        temp3.Columns = "1*,1*";
        temp3.Alignment = Fuse.Elements.Alignment.Bottom;
        global::Fuse.Controls.DockPanel.SetDock(temp3, Fuse.Layouts.Dock.Bottom);
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp5);
        temp4.Text = "First page";
        temp4.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp4, temp_eb0.OnEvent);
        temp4.Bindings.Add(temp_eb0);
        temp5.Text = "Second page";
        temp5.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp5, temp_eb1.OnEvent);
        temp5.Bindings.Add(temp_eb1);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
}
