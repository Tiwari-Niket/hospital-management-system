// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:register/Patient/Modules/Patient1.dart';

class appoint extends StatefulWidget {
  @override
  _appointState createState() => _appointState();
}

class _appointState extends State<appoint> {
  final items = ['Pediatrician', 'Cardiologist', 'Dentist', 'Neurologist'];
  String? value;
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'BOOK APPOINTMENT',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 23, 138, 231),
        toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage('assets/stethoscope.png'),
                height: 40,
                width: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                padding: EdgeInsets.only(left: 16, right: 16),
                child: DropdownButton<String>(
                  items: items.map(buildMenuItem).toList(),
                  value: value,
                  hint: Text('Select option'),
                  dropdownColor: Colors.grey[200],
                  isExpanded: true,
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'APPOINTMENT DATE :-',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(right: 15.0)),
                  Image(
                    image: AssetImage('assets/timetable.png'),
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(
                      'SELECT DATE',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    color: Color.fromARGB(255, 23, 138, 231),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      CircularProgressIndicator();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Patient1(),
                        ),
                      );
                    });
                  },
                  child: Text(
                    "CONFIRM",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Center(
                child: Image(
                  image: AssetImage('assets/hospital.png'),
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      );
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      helpText: 'Select booking date',
      cancelText: 'Not now',
      confirmText: 'Book',
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
