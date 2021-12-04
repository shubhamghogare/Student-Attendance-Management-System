import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/calender.dart';
import 'package:flutter_application_1/pages/categaries_screen.dart';
import 'package:flutter_application_1/pages/contactus.dart';

import 'package:flutter_application_1/utils/routes.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendence Management System"),
        toolbarHeight: 50.0, // double
      ),
      body: Center(
        child: Container(
          child: Text("HOME PAGE"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Group No 8"),
              accountEmail: Text("group8@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "G8",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Classes"),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => categories_screen()))),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Calender"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Calendar())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => contactus())),
            ),
          ],
        ),
      ),
    );
  }
}
