[Uno.Compiler.UxGenerated]
public partial class MailInput: Fuse.Controls.Panel
{
    string _field_PlaceholderText;
    [global::Uno.UX.UXOriginSetter("SetPlaceholderText")]
    public string PlaceholderText
    {
        get { return _field_PlaceholderText; }
        set { SetPlaceholderText(value, null); }
    }
    public void SetPlaceholderText(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_PlaceholderText)
        {
            _field_PlaceholderText = value;
            OnPropertyChanged("PlaceholderText", origin);
        }
    }
    global::Uno.UX.Property<string> Input_PlaceholderText_inst;
    internal global::Fuse.Controls.TextInput Input;
    static MailInput()
    {
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Reactive.Constant(this);
        Input = new global::Fuse.Controls.TextInput();
        Input_PlaceholderText_inst = new CustomApp_FuseControlsTextInput_PlaceholderText_Property(Input, __selector0);
        var temp1 = new global::Fuse.Reactive.Property(temp, CustomApp_accessor_MailInput_PlaceholderText.Singleton);
        var temp2 = new global::Fuse.Reactive.DataBinding(Input_PlaceholderText_inst, temp1, Fuse.Reactive.BindingMode.Default);
        this.PlaceholderText = "";
        Input.PlaceholderColor = float4(0.8f, 0.8f, 0.8f, 1f);
        Input.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        Input.Padding = float4(5f, 5f, 5f, 5f);
        Input.Name = __selector1;
        Input.Bindings.Add(temp2);
        this.Children.Add(Input);
    }
    static global::Uno.UX.Selector __selector0 = "PlaceholderText";
    static global::Uno.UX.Selector __selector1 = "Input";
}
