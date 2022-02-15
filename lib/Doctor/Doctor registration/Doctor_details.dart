// ignore_for_file: file_names, prefer_is_empty, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:register/Doctor/Doctor%20Modules/Doctor1.dart';

class Details1 extends StatefulWidget {
  @override
  _Details1State createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  final items = ['Pediatrician', 'Cardiologist', 'Dentist', 'Neurologist'];
  String? value;

  bool showProgress = false;
  bool visible = false;

  final _auth = FirebaseAuth.instance;
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
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
                    children: [
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
                      if (value!.length == 0) {
                        return "Phone no. cannot be empty";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value)) {
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
                    children: [
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
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/specialist.png'),
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        '  Specialist',
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
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: DropdownButton<String>(
                        items: items.map(buildMenuItem).toList(),
                        value: value,
                        hint: Text('Select option'),
                        dropdownColor: Colors.grey[200],
                        isExpanded: true,
                        onChanged: (value) =>
                            setState(() => this.value = value),
                      ),
                    ),
                  )
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
                      if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value)) {
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
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
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
                      if (value!.length == 0) {
                        return "Address cannot be empty";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return ("Invalid Address");
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
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              height: 40,
              onPressed: () {
                setState(() {
                  CircularProgressIndicator();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Doctor1()));
                });
                signUp(
                  emailController.text,
                  passwordController.text,
                );
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      );
  signUp(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: email,
              password: password,
            )
            .whenComplete(() => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Details1(),
                    ),
                  )
                });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    CircularProgressIndicator();
    void Forgotpassss(String email) async {
      if (_formkey.currentState!.validate()) {
        await _auth
            .sendPasswordResetEmail(email: email)
            .then((uid) => {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Details1()))
                })
            .catchError((e) {});
      }
    }

    signUp(String email, String password) async {
      if (_formkey.currentState!.validate()) {
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                email: email,
                password: password,
              )
              .whenComplete(() => {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Details1(),
                      ),
                    )
                  });
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
        } catch (e) {
          print(e);
        }
      }

      CircularProgressIndicator();
    }
  }
}
