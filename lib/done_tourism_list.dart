// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter/model/tourism_place.dart';
import 'package:practice_flutter/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class DoneTourismList extends StatelessWidget {
  const DoneTourismList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(context, listen: false)
            .doneTourismPlaceList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Destinasi Wisata Favorit'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = doneTourismPlaceList[index];
          return Card(
            color: Colors.indigo.shade50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    place.imageAsset,
                    fit: BoxFit.cover,
                    height: 80,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(place.location),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}
