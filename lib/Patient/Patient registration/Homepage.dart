// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:register/Patient/Patient%20registration/register.dart';

import 'login.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
                            builder: (context) => LoginPage(),
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
                            builder: (context) => Register(),
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
