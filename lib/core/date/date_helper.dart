class DateHelper {
  static String findTimeDifference(DateTime dateTime1, DateTime dateTime2) {
    final int diffInHour = dateTime1.difference(dateTime2).inHours;

    if (diffInHour < 48) {
      return '$diffInHour hours';
    } else {
      return '${dateTime1.difference(dateTime2).inDays} days';
    }
  }
}
