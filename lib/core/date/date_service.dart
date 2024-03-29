import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DateService {
  static Future<DateTime?> pickDate(
    BuildContext context, {
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  }) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    return pickedDate;
  }

  static String findTimeDifference(DateTime dateTime1, DateTime dateTime2) {
    final int diffInHour = dateTime1.difference(dateTime2).inHours;
    final int diffInMin = dateTime1.difference(dateTime2).inMinutes;

    // Retunr Time DIff in min if DIff in less than 1 hour
    if (diffInMin < 60) return '$diffInMin minute';

    // Retunr Time DIff in hour if DIff in less than 2 day
    if (diffInHour < 48) return '$diffInHour hour';

    return '${dateTime1.difference(dateTime2).inDays} day';
  }

  static String timeDifferenceFromTimestamp(Timestamp timestamp) {
    final date = timestamp.toDate();

    return findTimeDifference(DateTime.now(), date);
  }
}
