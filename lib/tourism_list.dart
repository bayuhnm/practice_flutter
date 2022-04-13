import 'package:flutter/material.dart';
import 'package:practice_flutter/detail_screen.dart';
import 'package:practice_flutter/list_item.dart';
import 'package:practice_flutter/model/tourism_place.dart';
import 'package:practice_flutter/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
  TourismPlace(
    name: 'Kuta Beach',
    location: 'Jl. Pantai Kuta, Kuta, Kabupaten Badung',
    imageAsset: 'assets/images/kuta1.jpg',
    description:
        "Kuta is a tourist area, administratively an urban village (kelurahan), and the capital of Kuta District, Badung Regency, southern Bali, Indonesia. A former fishing village, it was one of the first towns on Bali to see substantial tourist development, and as a beach resort remains one of Indonesia's major tourist destinations. It is known internationally for its long sandy beach, varied accommodation, many restaurants and bars, and many renowned surfers who visit from Australia",
    openDay: 'Open Everyday',
    openTime: 'Ticket Free',
    price: '24 Hours',
    img1: 'assets/images/kuta2.jpg',
    img2: 'assets/images/kuta3.jpg',
    img3: 'assets/images/kuta4.jpg'
  ),
  TourismPlace(
    name: 'The Keranjang Bali',
    location: 'Jl. By Pass Ngurah Rai No. 97, Badung',
    imageAsset: 'assets/images/thekeranjang1.jpg',
    description:
        "Penglipuran village is a beautiful highland village in the regency of Bangli in East Bali, best known for its well-preserved layout and culture. While most of its residents have embraced modernity, its individual compounds are well-kept to look traditional. Manicured gardens line the single stone-paved street that runs through the centre of the village toward the local temple, and age-old arched entrance gates and walls conceal each house.",
    openDay: 'Open Everyday',
    openTime: '7 AM - 9 PM',
    price: 'Ticket Free',
    img1: 'assets/images/thekeranjang2.jpeg',
    img2: 'assets/images/thekeranjang3.jpeg',
    img3: 'assets/images/thekeranjang4.jpeg'
  ),
  TourismPlace(
    name: 'Garuda Wisnu Kencana',
    location: 'Jl. Raya Uluwatu, Desa Ungasan, Kuta Selatan, Kabupaten Badung',
    imageAsset: 'assets/images/gwk1.jpg',
    description:
        "Rise from the rugged hills of Bali's Bukit Peninsula, the magnificent Garuda Wisnu Kencana statue stands watch over the island.  The towering statue is Bali's most iconic landmark and depicts the Hindu God Wisnu, atop his mount, the mythical eagle, Garuda. The Garuda is the national emblem of Indonesia, an enduring symbol of freedom from oppression. Soaring to a height of over 120 meters, this is one of the tallest monumental statues in the world, higher than both the Statue of Liberty and Christ the Redeemer.",
    openDay: 'Open Everyday',
    openTime: '9 AM - 7.30 PM',
    price: 'Rp. 85.000',
    img1: 'assets/images/gwk2.jpg',
    img2: 'assets/images/gwk3.jpg',
    img3: 'assets/images/gwk1.jpg'
  ),
  TourismPlace(
    name: 'Bedugul',
    location: 'Batunya Village, Kec. Baturiti, Kabupaten Tabanan',
    imageAsset: 'assets/images/bedugul1.jpg',
    description:
        "Bedugul is the name of both a small city and a mountain-lake resort area, which Balinese have long used for weekend retreats. Bedugul is an excellent base for walking trips around the lakes and surrounding hills. Bedugul is located in a high plateau at the center of the Island. Cool air and mists are natural for the place. Bedugul is a resort in Beratan Mountains,Beratan Lake and also the Ulun Danu.",
    openDay: 'Open Everyday',
    openTime: '7 AM - 7 PM',
    price: 'Rp. 20.000',
    img1: 'assets/images/bedugul3.jpg',
    img2: 'assets/images/bedugul2.jpg',
    img3: 'assets/images/bedugul1.jpg'
  ),
  TourismPlace(
    name: 'Penglipuran Village',
    location: 'Jl. Penglipuran, Kubu, Kec. Bangli, Kabupaten Bangli',
    imageAsset: 'assets/images/penglipuran1.png',
    description:
        "Penglipuran village is a beautiful highland village in the regency of Bangli in East Bali, best known for its well-preserved layout and culture. While most of its residents have embraced modernity, its individual compounds are well-kept to look traditional. Manicured gardens line the single stone-paved street that runs through the centre of the village toward the local temple, and age-old arched entrance gates and walls conceal each house.",
    openDay: 'Open Everyday',
    openTime: '8 AM - 5 PM',
    price: 'Rp. 30.000',
    img1: 'assets/images/penglipuran2.jpeg',
    img2: 'assets/images/penglipuran3.jpg',
    img3: 'assets/images/penglipuran4.jpg'
  ),
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              final List<TourismPlace> doneTourismPlaceList =
                  Provider.of<DoneTourismProvider>(context, listen: false)
                      .doneTourismPlaceList;
              return ListItem(
                place: place,
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
      itemCount: tourismPlaceList.length,
    );
  }
}
