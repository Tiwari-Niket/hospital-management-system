import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Rate Us'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rate this App: ',
              style: TextStyle(fontSize: 40, fontStyle: FontStyle.normal),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 8),
            Text(
              'Please leave a star rating. ',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 35),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              itemSize: 46,
              itemPadding: EdgeInsets.symmetric(horizontal: 4),
              updateOnDrag: true,
              itemBuilder: (context, _) =>
                  Icon(Icons.star, color: Colors.amber),
              onRatingUpdate: (rating) => setState(() {
                this.rating = rating;
              }),
            ),
            SizedBox(height: 25),
            Text(
              'Rating: $rating',
              style: TextStyle(fontSize: 27),
            ),
          ],
        ),
      ),
    );
  }
}
