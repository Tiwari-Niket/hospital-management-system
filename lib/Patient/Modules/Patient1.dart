// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:register/Patient/Modules/medicine.dart';
import 'package:register/Patient/Modules/report.dart';
import 'package:register/Patient/Patient%20registration/Patient_details.dart';
import 'package:register/settings/accounts.dart';
import 'package:register/settings/logout.dart';
import 'package:register/settings/privacypolicy.dart';
import 'package:register/settings/rateus.dart';
import 'appointment.dart';

class Patient1 extends StatefulWidget {
  @override
  _Patient1State createState() => _Patient1State();
}

class _Patient1State extends State<Patient1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '\t\t YOUR PAGE',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            color: Colors.black,
            iconSize: 25,
            icon: Icon(Icons.settings),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 5,
            ),
            Image(
              image: AssetImage('assets/user.png'),
              height: 215,
              width: 215,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    CircularProgressIndicator();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => appointment(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(vertical: 30),
                        height: 140,
                        width: double.infinity,
                        child: Container(
                          height: double.maxFinite,
                          width: double.infinity,
                          color: Colors.blue[100],
                          child: Center(
                            child: Text(
                              " \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t MAKE APPOINTMENT",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Color.fromARGB(255, 23, 138, 231),
                          child: Image(
                            image: AssetImage('assets/deadline.png'),
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    CircularProgressIndicator();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListViewBuilder(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(vertical: 30),
                        height: 140,
                        child: Container(
                          height: double.maxFinite,
                          width: double.infinity,
                          color: Colors.blue[100],
                          child: Center(
                            child: Text(
                              "REPORT",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Color.fromARGB(255, 23, 138, 231),
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/report.png'),
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    CircularProgressIndicator();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Medicine(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(vertical: 30),
                        height: 140,
                        child: Container(
                          height: double.maxFinite,
                          width: double.infinity,
                          color: Colors.blue[100],
                          child: Center(
                            child: Text(
                              "MEDICINES",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Color.fromARGB(255, 23, 138, 231),
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/medicine.png'),
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    CircularProgressIndicator();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(vertical: 30),
                        height: 140,
                        child: Container(
                          height: double.maxFinite,
                          width: double.infinity,
                          color: Colors.blue[100],
                          child: Center(
                            child: Text(
                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t EDIT YOUR ACCOUNT",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Color.fromARGB(255, 23, 138, 231),
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/resume.png'),
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Colors.blue,
              // width: screenWidth,
              height: 80.0,
              child: Center(
                child: Text(
                  "SETTINGS",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            ListTile(
              leading: Icon(Icons.account_box),
              title: const Text('Account'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Screen1()));
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen1()));
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.notifications),
              title: const Text('Notification'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Screen2()));
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen2()));
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.star),
              title: const Text('Rate Us'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Screen3()));
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen3()));
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.lock),
              title: const Text('Privacy Policy'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Screen4()));
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen4()));
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Screen5()));
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen5()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
