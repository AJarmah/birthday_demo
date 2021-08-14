import 'package:demo/birthday/birthday_logic.dart';
import 'package:flutter/material.dart';

class BirthdayUI extends StatefulWidget {
  BirthdayUI({Key key}) : super(key: key);

  @override
  _BirthdayUIState createState() {
    return _BirthdayUIState();
  }
}

class _BirthdayUIState extends State<BirthdayUI> with BirthdayLogic {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.red, fontSize: 30);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlineButton(
                onPressed: () => selectDate(context),
                child: Text('Select your birthday!'),
              ),
              SizedBox(
                height: 200,
              ),
              if (pickedBirthday != null)
                Text(
                  'Your picked birthday is:',
                  style: textStyle,
                ),
              if (pickedBirthday != null)
                Text(
                  '${pickedBirthday.month}/${pickedBirthday.day}/${pickedBirthday.year}',
                  style: textStyle,
                ),
              SizedBox(
                height: 50,
              ),
              if (years != null)
                Text(
                  years.toString() + ' Years',
                  style: textStyle,
                ),
              if (restDays != null)
                Text(
                  restDays.toString() + ' Days',
                  style: textStyle,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
