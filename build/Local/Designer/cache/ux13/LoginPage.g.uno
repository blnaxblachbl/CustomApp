[Uno.Compiler.UxGenerated]
public partial class LoginPage: Fuse.Controls.StackPanel
{
    global::Uno.UX.Property<string> Mail_Value_inst;
    global::Uno.UX.Property<string> Password_Value_inst;
    internal global::Fuse.Controls.TextInput Mail;
    internal global::Fuse.Controls.TextInput Password;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "Mail",
        "Password",
        "temp_eb1"
    };
    static LoginPage()
    {
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        Mail = new global::Fuse.Controls.TextInput();
        Mail_Value_inst = new CustomApp_FuseControlsTextInputControl_Value_Property(Mail, __selector0);
        var temp = new global::Fuse.Reactive.Data("email");
        Password = new global::Fuse.Controls.TextInput();
        Password_Value_inst = new CustomApp_FuseControlsTextInputControl_Value_Property(Password, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("pass");
        var temp2 = new global::Fuse.Reactive.Data("gotoRouter");
        var temp3 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp4 = new global::Fuse.Controls.Text();
        var temp5 = new global::Fuse.Reactive.DataBinding(Mail_Value_inst, temp, Fuse.Reactive.BindingMode.Default);
        var temp6 = new global::Fuse.Reactive.DataBinding(Password_Value_inst, temp1, Fuse.Reactive.BindingMode.Default);
        var temp7 = new global::Fuse.Controls.Button();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp2);
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp3.Code = "\n\n\t\tvar Observable = require(\"FuseJS/Observable\")\n\n\t\tvar email = Observable(\"\")\n\t\tvar pass = Observable(\"\")\n\t\t\n\t\tfunction logIn(){\n\t\t\tif (email.value == \"tit\" && pass.value == \"123\"){\n\t\t\t\trouter1.goto(\"routerPage\")\n\t\t\t}else{\n\t\t\t\treturn null\n\t\t\t}\n\t\t}\n\n\t\tmodule.export = {\n\t\t\tlogIn: logIn,\n\t\t\temail: email,\n\t\t\tpass: pass, \n\t\t}\n\t";
        temp3.LineNumber = 2;
        temp3.FileName = "Pages/LoginPage.ux";
        temp4.Value = "This is the login page.";
        temp4.Alignment = Fuse.Elements.Alignment.Center;
        Mail.PlaceholderText = "Type your email here...";
        Mail.PlaceholderColor = float4(0.8f, 0.8f, 0.8f, 1f);
        Mail.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        Mail.Padding = float4(5f, 5f, 5f, 5f);
        Mail.Name = __selector1;
        Mail.Bindings.Add(temp5);
        Password.PlaceholderText = "Type your password...";
        Password.PlaceholderColor = float4(0.8f, 0.8f, 0.8f, 1f);
        Password.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        Password.Padding = float4(5f, 5f, 5f, 5f);
        Password.Name = __selector2;
        Password.Bindings.Add(temp6);
        temp7.Text = "Log in";
        temp7.Color = float4(0.06666667f, 0.1333333f, 0.2f, 1f);
        temp7.Padding = float4(20f, 20f, 20f, 20f);
        global::Fuse.Gestures.Clicked.AddHandler(temp7, temp_eb1.OnEvent);
        temp7.Bindings.Add(temp_eb1);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(Mail);
        __g_nametable.Objects.Add(Password);
        __g_nametable.Objects.Add(temp_eb1);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
        this.Children.Add(Mail);
        this.Children.Add(Password);
        this.Children.Add(temp7);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Mail";
    static global::Uno.UX.Selector __selector2 = "Password";
}
