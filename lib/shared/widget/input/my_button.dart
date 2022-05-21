part of my_input;

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.foreground = MyColors.white,
    this.background = MyColors.darkBlue,
    this.height,
    this.width,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.symmetric(horizontal: kSpacing * 2, vertical: kSpacing),
  }) : super(key: key);

  final String text;
  final double? width;
  final double? height;
  final Color foreground;
  final Color background;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(kRadius),
        ),
        alignment: Alignment.center,
        width: width,
        height: height,
        child: MyText(
          text,
          color: foreground,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
