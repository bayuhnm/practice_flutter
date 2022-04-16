// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice_flutter/done_tourism_list.dart';
import 'package:practice_flutter/model/tourism_place.dart';
import 'package:practice_flutter/tourism_list.dart';
import 'done_tourism_list.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
final List<TourismPlace> doneTourismPlaceList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Bali'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoneTourismList();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: TourismList(),
    );
  }
}
