part of my_input;

class MyTextFieldLabeled extends StatelessWidget {
  const MyTextFieldLabeled({
    Key? key,
    required this.label,
    required this.hintText,
    required this.onChanged,
    this.fillColor,
    this.maxLines,
    this.suffixIcon,
  }) : super(key: key);

  final String label;
  final String hintText;
  final void Function(String) onChanged;
  final Color? fillColor;
  final int? maxLines;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing * 4, vertical: kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(label),
          const SizedBox(height: kSpacing),
          MyTextFieldBase(
            hintText: hintText,
            fillColor: fillColor,
            onChanged: onChanged,
            maxLines: maxLines,
            suffixIcon: suffixIcon,
          ),
        ],
      ),
    );
  }
}


