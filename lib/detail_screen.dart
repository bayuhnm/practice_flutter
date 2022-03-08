// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Positioned(
            //   top: 0.0,
            //   left: 0.0,
            //   right: 0.0,
            //   child: AppBar(
            //     title: Text(''), // You can add title here
            //     leading: IconButton(
            //       icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
            //       onPressed: () => Navigator.of(context).pop(),
            //     ),
            //     backgroundColor: Colors.blue
            //         .withOpacity(0.3), //You can make this transparent
            //     elevation: 0.0, //No shadow
            //   ),
            // ),
            Image.asset('assets/images/PhotoA.jpg'),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.alarm),
                      Text('08.00-16.00'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money),
                      Text('Rp 5.000,-'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Surabaya Submarine Monument or as known as Monumen Kapal Selam (Monkasel) is the largest submarine monument in Asia, which was built in riverside of Kalimas, Surabaya. This monument was built by idea of Navy Veterans.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      child: Image.asset('assets/images/Photo1.jpg'),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      child: Image.asset('assets/images/Photo2.jpg'),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      child: Image.asset('assets/images/Photo3.jpg'),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      child: Image.asset('assets/images/Photo4.jpg'),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
