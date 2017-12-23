[Uno.Compiler.UxGenerated]
public partial class Main: Fuse.Controls.Grid
{
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    internal global::Fuse.Reactive.EventBinding temp_eb2;
    static Main()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Reactive.Data("gotoFirst");
        var temp1 = new global::Fuse.Reactive.Data("gotoSecond");
        var temp2 = new global::Fuse.Controls.Button();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp);
        var temp3 = new global::Fuse.Controls.Button();
        temp_eb2 = new global::Fuse.Reactive.EventBinding(temp1);
        this.Columns = "1*,1*";
        this.Alignment = Fuse.Elements.Alignment.Bottom;
        global::Fuse.Controls.DockPanel.SetDock(this, Fuse.Layouts.Dock.Bottom);
        temp2.Text = "First page";
        temp2.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp2, temp_eb1.OnEvent);
        temp2.Bindings.Add(temp_eb1);
        temp3.Text = "Second page";
        temp3.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp3, temp_eb2.OnEvent);
        temp3.Bindings.Add(temp_eb2);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
}
