part of my_input;


class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key, required this.onChange, this.label}) : super(key: key);

  final String? label;
  final void Function(bool) onChange;

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool chekced = false;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        children: [
          Checkbox(
              value: chekced,
              onChanged: (value) {
                chekced = !chekced;

                widget.onChange(chekced);

                setState(() {});
              }),
          if (widget.label != null) MyText(widget.label!)
        ],
      ),
    );
  }
}