import 'package:flutter/material.dart';
import 'package:practice_flutter/detail_screen.dart';
import 'package:practice_flutter/list_item.dart';
import 'package:practice_flutter/model/tourism_place.dart';
import 'package:practice_flutter/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'api/api_response.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  late Future<TourismResult> _tourism;
  @override
  void initState() {
    super.initState();
    _tourism = ApiService().topHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _tourism,
      builder: (context, AsyncSnapshot<TourismResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var place = snapshot.data?.tourismPlaces[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: place!);
                    }));
                  },
                  child: Consumer<DoneTourismProvider>(
                    builder: (context, DoneTourismProvider data, widget) {
                      final List<TourismPlace> doneTourismPlaceList =
                          Provider.of<DoneTourismProvider>(context,
                                  listen: false)
                              .doneTourismPlaceList;
                      return ListItem(
                        place: place!,
                        isDone: doneTourismPlaceList.contains(place),
                        onCheckboxClick: (bool? value) {
                          setState(() {
                            if (value != null) {
                              value
                                  ? doneTourismPlaceList.add(place)
                                  : doneTourismPlaceList.remove(place);
                            }
                          });
                        },
                      );
                    },
                  ),
                );
              },
              itemCount: snapshot.data?.tourismPlaces.length,
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Text('');
          }
        }
      },
    );
  }
}
