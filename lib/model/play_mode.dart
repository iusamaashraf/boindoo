import 'package:boindo/constants/images_and_icons.dart';

class PlayModel {
  String? imagePath;
  String? title;
  String? subTitle;
  double? percentage;
  PlayModel({this.imagePath, this.percentage, this.subTitle, this.title});
}

List<PlayModel> playModelList = [
  PlayModel(
      imagePath: old,
      title: 'A Promised Land',
      subTitle: 'Barrack Obama',
      percentage: 0.5),
  PlayModel(
      imagePath: hand,
      title: 'Harry Potter risoner of Azkaban',
      subTitle: 'J.K. Rowling',
      percentage: 1),
  PlayModel(
      imagePath: bold,
      title: 'The Black Witch',
      subTitle: 'Laurie Forest',
      percentage: 0.8),
  PlayModel(
      imagePath: harry,
      title: 'Harry Potter risoner of Azkaban',
      subTitle: 'J.K. Rowling',
      percentage: 0.3)
];
