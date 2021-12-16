import 'package:flutter/material.dart';
import 'package:workshop_app/pages/createNewReminder.dart';
import 'package:workshop_app/pages/homePage.dart';

void main() {
  runApp(ReminderApp());
}

class ReminderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        CreateNewReminder.id: (context) => CreateNewReminder()
      },
    );
  }
}
