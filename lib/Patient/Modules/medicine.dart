import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MEDICINES")),
      body: ListView.builder(
          // itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.list),
          title: Text("Prescription $index"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen()));
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                const Text(
                  'PRESCRIPTION STATUS',
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.all(20))
              ],
            ),
            SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  const Text(
                    'MEDICINE NAME:',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 30),
                  const Text(
                    'LAST PRECRIBED ON:',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 30),
                  const Text(
                    'DAILY DOSAGE:',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 30),
                  const Text(
                    'AMOUNT:',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 30),
                ],
              ),
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(50),
              alignment: Alignment.topLeft,
              color: Color.fromARGB(255, 188, 223, 252),
              width: 500,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
