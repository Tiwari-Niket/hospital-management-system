// ignore: file_names
// ignore_for_file: avoid_print, file_names, prefer_const_constructors, unused_local_variable, unnecessary_new, prefer_is_empty, unused_field, duplicate_ignore, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:register/Patient/Modules/Patient1.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool showProgress = false;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();

  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController numberController = new TextEditingController();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController ageController = new TextEditingController();

  final TextEditingController sexController = new TextEditingController();
  final TextEditingController addressController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              margin: EdgeInsets.only(top: 20),
              height: 80,
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      'Your Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  USERNAME',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter new username',
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Username cannot be empty";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value)) {
                        return ("Not valid username");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      usernameController.text = value!;
                    },
                    keyboardType: TextInputType.name,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/phone-call.png'),
                        height: 20,
                        width: 20,
                      ),
                      Text(
                        '  Phone No.',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: numberController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter your mobile no.',
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      RegExp regex = new RegExp(r'^.{10,}$');
                      if (value!.length == 0 || value.length != 10) {
                        return "Phone no. is incorrect";
                      }
                      if (!RegExp("^[0-9]").hasMatch(value)) {
                        return ("Invalid Phone no.");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      numberController.text = value!;
                    },
                    keyboardType: TextInputType.phone,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/gmail.png'),
                        height: 20,
                        width: 20,
                      ),
                      Text(
                        '  Email ID',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter your Email Id',
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Email Id cannot be empty";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return ("Invalid Email Id");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      emailController.text = value!;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  Age',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: ageController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter your age',
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Age cannot be empty";
                      }
                      if (!RegExp("^[0-9]").hasMatch(value)) {
                        return ("Invalid Age");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      ageController.text = value!;
                    },
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  Sex',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: sexController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter your sex',
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Sex cannot be empty";
                      }
                      if (!RegExp("^[a-zA-Z]").hasMatch(value)) {
                        return ("Invalid Sex");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      ageController.text = value!;
                    },
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  ADDRESS',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter your address',
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null) {
                        Fluttertoast.showToast(msg: "Address cannot be null");
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value!)) {
                        return ("Invalid Address");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      addressController.text = value!;
                    },
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              height: 40,
              onPressed: () {
                setState(() {
                  showProgress = true;
                  validateFields();
                  getUserData();
                });
              },
              child: Text(
                "Save",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  validateFields() {
    if (_formkey.currentState!.validate()) {
      try {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => Patient1(),
          ),
        );
      } catch (e) {
        print(e);
      }
    }
  }

  getUserData() async {
    String? userName;
    int phoneNo;
    String? email;
    int age;
    String? sex;
    String? address;
    userName = FirebaseAuth.instance.currentUser!.displayName;
    phoneNo = FirebaseAuth.instance.currentUser!.phoneNumber as int;
    email = FirebaseAuth.instance.currentUser!.email;
    age = FirebaseAuth.instance.currentUser!.providerData as int;
    sex = FirebaseAuth.instance.currentUser!.providerData as String?;
    address = FirebaseAuth.instance.currentUser!.providerData as String?;
  }
}
