import 'package:investing_app/utils/constants.dart';

class ListItemModel {
  final String title;
  final String volume;
  final String meta;
  final String difference;
  final ItemType type;

  ListItemModel({this.title, this.volume, this.meta, this.difference, this.type});
}
