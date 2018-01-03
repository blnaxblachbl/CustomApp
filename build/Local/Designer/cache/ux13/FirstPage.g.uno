[Uno.Compiler.UxGenerated]
public partial class FirstPage: Fuse.Controls.Panel
{
    [global::Uno.UX.UXGlobalResource("SystemSounds")] public static readonly SystemSounds SystemSounds;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "temp_eb1"
    };
    static FirstPage()
    {
        SystemSounds = new global::SystemSounds();
        global::Uno.UX.Resource.SetGlobalKey(SystemSounds, "SystemSounds");
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("button_pressed");
        var temp1 = new global::Fuse.Controls.StatusBarBackground();
        var temp2 = new global::Fuse.Controls.BottomBarBackground();
        var temp3 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp4 = new global::Fuse.Controls.StackPanel();
        var temp5 = new global::Fuse.Controls.Button();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp);
        this.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Controls.DockPanel.SetDock(temp1, Fuse.Layouts.Dock.Top);
        global::Fuse.Controls.DockPanel.SetDock(temp2, Fuse.Layouts.Dock.Bottom);
        temp3.Code = "\n\t\tvar SystemSounds = require(\"SystemSounds\");\n\n\t\tfunction button_pressed() {\n\t\t\tSystemSounds.playNotification();\n\t\t}\n\n\t\tmodule.exports = {\n\t\t\tbutton_pressed: button_pressed\n\t\t};\n\t";
        temp3.LineNumber = 7;
        temp3.FileName = "Pages/FirstPage.ux";
        temp4.Children.Add(temp5);
        temp5.Text = "Press me!";
        global::Fuse.Gestures.Clicked.AddHandler(temp5, temp_eb1.OnEvent);
        temp5.Bindings.Add(temp_eb1);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(temp_eb1);
        this.Children.Add(temp1);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
    }
}
