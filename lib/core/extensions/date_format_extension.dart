import 'package:intl/intl.dart';

extension DateFormatDDMMYYYY on DateTime {
  String formatDate() {
    final DateFormat dateFormat = DateFormat('dd/MM/yyyy');

    final formatedDate = dateFormat.format(this);

    return formatedDate;
  }
}
