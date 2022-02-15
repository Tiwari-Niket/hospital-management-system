import 'package:flutter/material.dart';
import 'package:register/Patient/Patient%20registration/Patient_details.dart';
import 'rateus.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Account'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Would you like to edit your account?",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 60),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Details()));
            },
            child: Text('EDIT ACCOUNT'),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Screen3())); // add delete function and packages
            },
            child: Text('Delete Account'),
          ),
        ]),
      ),
    );
  }
}
