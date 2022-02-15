// ignore_for_file: unused_import, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:register/Doctor/Doctor%20registration/Homepage.dart';
import 'Doctor/Doctor registration/login1.dart';
import 'Doctor/Doctor registration/Homepage.dart';
import 'Patient/Patient registration/Homepage.dart';
import 'Patient/Patient registration/login.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[50],
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                // ignore: prefer_const_constructors
                shape: RoundedRectangleBorder(
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                elevation: 5.0,
                height: 70,
                onPressed: () {
                  setState(() {
                    CircularProgressIndicator();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homepage1(),
                      ),
                    );
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Image(
                        image: AssetImage('assets/doctor.png'),
                        height: 80,
                        width: 80,
                      ),
                      Text(
                        "Doctor",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                elevation: 5.0,
                height: 70,
                onPressed: () {
                  CircularProgressIndicator();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homepage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Image(
                        image: AssetImage('assets/patient.png'),
                        height: 80,
                        width: 80,
                      ),
                      Text(
                        "Patient",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
