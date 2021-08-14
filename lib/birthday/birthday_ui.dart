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
              if (years != null) Text(years.toString() + ' Years'),
              if (restDays != null) Text(restDays.toString() + ' Days'),
            ],
          ),
        ),
      ),
    );
  }
}
