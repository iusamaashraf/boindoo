import 'package:boindo/constants/images_and_icons.dart';

class SongsModel {
  String? imagePath;
  String? title;
  String? auther;
  double? percentage;
  String? time;
  String? rating;
  SongsModel(
      {this.imagePath,
      this.percentage,
      this.auther,
      this.title,
      this.rating,
      this.time});
}

List<SongsModel> searchResult = [
  SongsModel(
      imagePath: cryngMan,
      title: 'The good guy',
      auther: 'Mark mcallister',
      time: '95m',
      rating: '4,7',
      percentage: 0.5),
];

List<SongsModel> recomendedList = [
  SongsModel(
      imagePath: harry,
      title: 'The good guy',
      auther: 'Mark mcallister',
      time: '95m',
      rating: '4,7',
      percentage: 1),
  SongsModel(
      imagePath: bold,
      title: 'The Black Witch',
      auther: 'Laurie Forest',
      time: '95m',
      rating: '4,7',
      percentage: 0.8),
];

List<SongsModel> categoryList = [
  SongsModel(
      imagePath: old,
      title: 'The good guy',
      auther: 'Mark mcallister',
      time: '95m',
      rating: '4,7',
      percentage: 1),
  SongsModel(
      imagePath: hand,
      title: 'The Black Witch',
      auther: 'Laurie Forest',
      time: '95m',
      rating: '4,7',
      percentage: 0.8),
  SongsModel(
      imagePath: bold,
      title: 'The Black Witch',
      auther: 'Laurie Forest',
      time: '95m',
      rating: '4,7',
      percentage: 0.8),
  SongsModel(
      imagePath: old,
      title: 'The good guy',
      auther: 'Mark mcallister',
      time: '95m',
      rating: '4,7',
      percentage: 1),
  SongsModel(
      imagePath: hand,
      title: 'The Black Witch',
      auther: 'Laurie Forest',
      time: '95m',
      rating: '4,7',
      percentage: 0.8),
  SongsModel(
      imagePath: bold,
      title: 'The Black Witch',
      auther: 'Laurie Forest',
      time: '95m',
      rating: '4,7',
      percentage: 0.8),
];

List<SongsModel> trendingList = [
  SongsModel(
      imagePath: old,
      title: 'The good guy',
      auther: 'Mark mcallister',
      time: '95m',
      rating: '4,7',
      percentage: 1),
  SongsModel(
      imagePath: hand,
      title: 'The Black Witch',
      auther: 'Laurie Forest',
      time: '95m',
      rating: '4,7',
      percentage: 0.8),
  SongsModel(
      imagePath: bold,
      title: 'The Black Witch',
      auther: 'Laurie Forest',
      time: '95m',
      rating: '4,7',
      percentage: 0.8),
];
