// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'home_page.dart';

// ignore: use_key_in_widget_constructors
class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(
          leading: RaisedButton(
            color: CupertinoColors.white,
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => home_page())),
            elevation: 0.0,
          ),
          title: Text("Calender"),
        ),
        body: TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2021),
            lastDay: DateTime.utc(2030)),
      ),
    );
  }
}
