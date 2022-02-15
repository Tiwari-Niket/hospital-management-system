import 'package:flutter/material.dart';
import 'package:register/Patient/Patient registration/register.dart';

class Screen5 extends StatefulWidget {
  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logout'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Are you sure you want to Log out?",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 16),
          FlatButton(
            color: Color.fromARGB(255, 129, 23, 23),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      SignOut())); //add signout function and package
            },
            child: Text('LOGOUT'),
          ),
        ]),
      ),
    );
  }
}


//FirebaseAuth auth = FirebaseAuth.instance;

// Future<void> _signOut() async {
//   await FirebaseAuth.instance.signOut();
// }