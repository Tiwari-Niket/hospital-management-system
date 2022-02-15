// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class medicine1 extends StatefulWidget {
  @override
  _medicine1State createState() => _medicine1State();
}

class _medicine1State extends State<medicine1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'Prescribe Medicine',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black26,
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Patient Name',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
