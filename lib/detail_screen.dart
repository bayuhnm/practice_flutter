// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(place.imageAsset),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  place.name,
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
                        Text(place.openDay),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.schedule),
                        Text(place.openTime),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.attach_money),
                        Text(place.price),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  place.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.img1),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.img2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.img3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
