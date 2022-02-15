// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:register/Doctor/Doctor%20registration/login1.dart';
import 'package:register/Doctor/Doctor%20registration/register1.dart';

class homepage1 extends StatefulWidget {
  const homepage1({Key? key}) : super(key: key);

  @override
  _homepageState1 createState() => _homepageState1();
}

class _homepageState1 extends State<homepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/home.png'),
                    fit: BoxFit.fill,
                    alignment: Alignment.center),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 550,
                  ),
                  MaterialButton(
                    color: Colors.blue[50],
                    // ignore: prefer_const_constructors
                    shape: RoundedRectangleBorder(
                        // ignore: prefer_const_constructors
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    height: 40,
                    minWidth: 320,
                    onPressed: () {
                      setState(() {
                        CircularProgressIndicator();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage1(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    color: Colors.transparent,
                    // ignore: prefer_const_constructors
                    shape: RoundedRectangleBorder(
                        // ignore: prefer_const_constructors
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    height: 40,
                    minWidth: 320,
                    onPressed: () {
                      setState(() {
                        CircularProgressIndicator();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register1(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
