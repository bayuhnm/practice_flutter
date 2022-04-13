// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter/model/tourism_place.dart';

class ListItem extends StatelessWidget {
  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  // ignore: use_key_in_widget_constructors
  const ListItem({
    required this.place,
    required this.isDone,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.indigo.shade50 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                children: [
                  Text(
                    place.name,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700
                      // fontFamily: 'Lobster',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.location,
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: <Widget>[
                  Checkbox(value: isDone, onChanged: onCheckboxClick),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
