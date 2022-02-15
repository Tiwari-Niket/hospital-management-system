// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:register/Patient/Modules/appoint.dart';

class appointment extends StatefulWidget {
  @override
  _appointmentState createState() => _appointmentState();
}

class _appointmentState extends State<appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 138, 231),
        title: Text(
          'DEPARTMENT',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        toolbarHeight: 80,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              height: 40,
              onPressed: () {
                setState(() {
                  CircularProgressIndicator();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => appoint(),
                    ),
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DENTIST",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/dental.png'),
                      height: 70,
                      width: 70,
                    ),
                  )
                ],
              ),
              color: Colors.blue[50],
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              height: 40,
              onPressed: () {
                setState(() {
                  CircularProgressIndicator();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => appoint(),
                    ),
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "NEUROLOGIST",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/neurologist.png'),
                      height: 70,
                      width: 70,
                    ),
                  )
                ],
              ),
              color: Colors.blue[50],
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              height: 40,
              onPressed: () {
                setState(() {
                  CircularProgressIndicator();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => appoint(),
                    ),
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CARDIOLOGIST",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image(
                      image: AssetImage('assets/cardiologist.png'),
                      height: 70,
                      width: 70,
                    ),
                  )
                ],
              ),
              color: Colors.blue[50],
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              height: 40,
              onPressed: () {
                setState(() {
                  CircularProgressIndicator();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => appoint(),
                    ),
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "PEDIATRICIAN",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/PEDIATRICIAN.png'),
                      height: 70,
                      width: 70,
                    ),
                  )
                ],
              ),
              color: Colors.blue[50],
            ),
          ],
        ),
      ),
    );
  }
}
