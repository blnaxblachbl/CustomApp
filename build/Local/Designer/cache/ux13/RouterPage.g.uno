[Uno.Compiler.UxGenerated]
public partial class RouterPage: Fuse.Controls.Panel
{
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly RouterPage __parent;
        [Uno.WeakReference] internal readonly RouterPage __parentInstance;
        public Template(RouterPage parent, RouterPage parentInstance): base("firstPage", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Page();
            var temp = new global::FirstPage();
            __self.Name = __selector0;
            __self.Children.Add(temp);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "firstPage";
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template1: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly RouterPage __parent;
        [Uno.WeakReference] internal readonly RouterPage __parentInstance;
        public Template1(RouterPage parent, RouterPage parentInstance): base("secondPage", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template1()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Page();
            var temp = new global::SecondPage();
            __self.Name = __selector0;
            __self.Children.Add(temp);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "secondPage";
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template2: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly RouterPage __parent;
        [Uno.WeakReference] internal readonly RouterPage __parentInstance;
        public Template2(RouterPage parent, RouterPage parentInstance): base("shopPage", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template2()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Page();
            var temp = new global::ShopPage();
            __self.Name = __selector0;
            __self.Children.Add(temp);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "shopPage";
    }
    internal global::Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb3;
    internal global::Fuse.Reactive.EventBinding temp_eb4;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb3",
        "temp_eb4"
    };
    static RouterPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public RouterPage()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("gotoFirst");
        var temp1 = new global::Fuse.Reactive.Data("gotoSecond");
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        router = new global::Fuse.Navigation.Router();
        var temp3 = new global::Fuse.Controls.DockPanel();
        var temp4 = new global::Fuse.Controls.Navigator();
        var firstPage = new Template(this, this);
        var secondPage = new Template1(this, this);
        var shopPage = new Template2(this, this);
        var temp5 = new global::Fuse.Controls.Grid();
        var temp6 = new global::Fuse.Controls.Button();
        temp_eb3 = new global::Fuse.Reactive.EventBinding(temp);
        var temp7 = new global::Fuse.Controls.Button();
        temp_eb4 = new global::Fuse.Reactive.EventBinding(temp1);
        temp2.Code = "\n\t    module.exports = {\n\t        gotoFirst: function() { router.goto(\"firstPage\"); },\n\t        gotoSecond: function() { router.goto(\"secondPage\"); },\n\t        gotoShop: function() { router.goto(\"shopPage\"); },\n\t    };\n\t";
        temp2.LineNumber = 2;
        temp2.FileName = "Pages/RouterPage.ux";
        router.Name = __selector0;
        temp3.Children.Add(temp4);
        temp4.DefaultTemplate = "firstPage";
        temp4.Templates.Add(firstPage);
        temp4.Templates.Add(secondPage);
        temp4.Templates.Add(shopPage);
        temp5.Columns = "1*,1*";
        temp5.Alignment = Fuse.Elements.Alignment.Bottom;
        global::Fuse.Controls.DockPanel.SetDock(temp5, Fuse.Layouts.Dock.Bottom);
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp7);
        temp6.Text = "First page";
        temp6.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp6, temp_eb3.OnEvent);
        temp6.Bindings.Add(temp_eb3);
        temp7.Text = "Second page";
        temp7.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp7, temp_eb4.OnEvent);
        temp7.Bindings.Add(temp_eb4);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb3);
        __g_nametable.Objects.Add(temp_eb4);
        this.Children.Add(temp2);
        this.Children.Add(router);
        this.Children.Add(temp3);
        this.Children.Add(temp5);
    }
    static global::Uno.UX.Selector __selector0 = "router";
}
