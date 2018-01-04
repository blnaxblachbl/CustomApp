[Uno.Compiler.UxGenerated]
public partial class FirstPage: Fuse.Controls.Panel
{
    global::Uno.UX.Property<string> temp_Text_inst;
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
        var temp = new global::Fuse.Controls.Button();
        temp_Text_inst = new CustomApp_FuseControlsButtonBase_Text_Property(temp, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("version");
        var temp2 = new global::Fuse.Reactive.Data("button_pressed");
        var temp3 = new global::Fuse.Controls.StatusBarBackground();
        var temp4 = new global::Fuse.Controls.BottomBarBackground();
        var temp5 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp6 = new global::Fuse.Controls.StackPanel();
        var temp7 = new global::Fuse.Reactive.DataBinding(temp_Text_inst, temp1, Fuse.Reactive.BindingMode.Default);
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp2);
        this.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Controls.DockPanel.SetDock(temp3, Fuse.Layouts.Dock.Top);
        global::Fuse.Controls.DockPanel.SetDock(temp4, Fuse.Layouts.Dock.Bottom);
        temp5.Code = "\n\t\tvar SystemSounds = require(\"SystemSounds\");\n\t\tvar Observable = require(\"FuseJS/Observable\");\n\t\tvar version = Observable(\"Press me!\");\n\n\t\tfunction button_pressed() {\n\t\t\tversion.value = SystemSounds.version(\"-version\");\n\t\t}\n\n\t\tmodule.exports = {\n\t\t\tbutton_pressed: button_pressed,\n\t\t\tversion: version\n\t\t};\n\t";
        temp5.LineNumber = 7;
        temp5.FileName = "Pages/FirstPage.ux";
        temp6.Children.Add(temp);
        global::Fuse.Gestures.Clicked.AddHandler(temp, temp_eb1.OnEvent);
        temp.Bindings.Add(temp7);
        temp.Bindings.Add(temp_eb1);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(temp_eb1);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
        this.Children.Add(temp5);
        this.Children.Add(temp6);
    }
    static global::Uno.UX.Selector __selector0 = "Text";
}
