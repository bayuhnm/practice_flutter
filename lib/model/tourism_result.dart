class TourismResult {
  TourismResult({
    required this.status,
    required this.totalResults,
    required this.tourismPlaces,
  });

  String status;
  int totalResults;
  List<TourismPlace> tourismPlaces;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
        status: json["status"],
        totalResults: json["totalResults"],
        tourismPlaces: List<TourismPlace>.from((json["tourismPlaces"] as List)
            .map((x) => TourismPlace.fromJson(x))
            .where((article) =>
                article.name != null &&
                article.description != null &&
                article.openDay != null &&
                article.openTime != null &&
                article.price != null &&
                article.imageAsset != null &&
                article.location != null)),
      );
}

class TourismPlace{
  String name;
  String description;
  String openDay;
  String openTime;
  String price;
  String imageAsset;
  String img1;
  String img2;
  String img3;
  String location;

  TourismPlace({
      required this.location,
      required this.name, 
      required this.description, 
      required this.openDay, 
      required this.openTime, 
      required this.price, 
      required this.imageAsset, 
      required this.img1, 
      required this.img2, 
      required this.img3
  });

  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
    location: json['location'],
    name: json['name'],
    description: json['description'],
    openDay: json['openDay'],
    openTime: json['openTime'],
    price: json['price'],
    imageAsset: json['imageAsset'],
    img1: json['img1'],
    img2: json['img2'],
    img3: json['img3']
  );
}