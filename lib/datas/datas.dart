import 'package:trave_app/models/basemodel.dart';
import 'package:trave_app/models/tabmodel.dart';

class Datas {
  static List<PlaceModel> datas = [
    PlaceModel(
      image: 'asset/rock-island-kutabeach.jpg',
      location: 'Goa,India',
      content:
          'One of the most happeningbeaches in Goa Baga Beach is where you wii find water sports,fine dining restaurants,bars,and clubs.Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.',
      title: 'Kuta Beach',
      rate: 4.8,
    ),
    PlaceModel(
        image: 'asset/bagabeach1.jpg',
        location: 'Goa, India',
        content:
            'One of the most happeningbeaches in Goa Baga Beach is where you wii find water sports,fine dining restaurants,bars,and clubs.Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.',
        title: 'Baga Beach',
        rate: 4.8)
  ];
  static List<TabModel> tabModel = [
    TabModel(
      image: 'asset/beach.jpg',
      title: 'Beach',
    ),
    TabModel(
      image: 'asset/mountain.jpg',
      title: 'Mountain',
    ),
  ];
}
