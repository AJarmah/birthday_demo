import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'birthday_ui.dart';

mixin BirthdayLogic on State<BirthdayUI> {
  Duration sinceBirthdayDuration;
  int years;
  int restDays;
  Future<void> selectDate(BuildContext context) async {
    final today = DateTime.now();

    final DateTime pickedBirthday = await showDatePicker(
        context: context,
        initialDate: DateTime(1992),
        firstDate: DateTime(1990),
        lastDate: DateTime(today.year - 1));
    if (pickedBirthday != null) {
      years = today.year - pickedBirthday.year;
      final lastBDDate =
          DateTime(today.year, pickedBirthday.month, pickedBirthday.day);
      restDays = today.difference(lastBDDate).inDays;
      sinceBirthdayDuration = today.difference(pickedBirthday);
      setState(() {});
    }
  }
}
