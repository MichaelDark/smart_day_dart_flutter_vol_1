/// Useful in widgets with children (Row/Column/Stack/etc)
///   - especially now with the introduction of `spacing` parameter
void main() {
  const Widget('Hey there 👋🏻').build();
  const Widget(null).build();
}

class Widget {
  final String? text;

  const Widget(this.text);

  WidgetState createState() => WidgetState(this);

  void build() => createState().build();
}

class WidgetState {
  final Widget widget;

  WidgetState(this.widget);

  void build() {
    final text = widget.text;

    switch (widget.text) {
      case var s?:
        print(s);
      default:
        print('Text is null...');
    }
    print(
      <String>[
        'Value: ',
        // approach #1, unsafe
        if (widget.text != null) widget.text!,
        // approach #2, noisy
        if (text != null) text,
        // approach #3, new
        if (widget.text case var absolutelyNonNullableText?)
          absolutelyNonNullableText
        else
          '*absent*',
      ],
    );
  }
}
