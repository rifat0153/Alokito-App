part of my_input;

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({
    Key? key,
    required this.firstDate,
    required this.lastDate,
    required this.initialDate,
    required this.onChange,
    this.textSize = 14,
  }) : super(key: key);

  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime initialDate;
  final Function(DateTime) onChange;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    DateTime? pickedDate = firstDate;

    return GestureDetector(
      onTap: () async {
        pickedDate = await DateService.pickDate(
          context,
          firstDate: firstDate,
          initialDate: initialDate,
          lastDate: lastDate,
        );

        onChange(pickedDate ?? firstDate);
      },
      child: Row(
        children: [
          SvgPicture.asset(MyAssets.calendarIcon),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: kSpacing),
            padding: const EdgeInsets.symmetric(horizontal: kSpacing, vertical: kSpacing / 2),
            decoration: BoxDecoration(
              color: MyColors.lightGrey,
              borderRadius: BorderRadius.circular(kRadius),
            ),
            child: MyText(
              initialDate.formatDate(),
              fontSize: textSize,
            ),
          )
        ],
      ),
    );
  }
}
