import 'package:flutter/material.dart';
import 'package:investing_app/models/list_item_model.dart';
import 'package:investing_app/utils/constants.dart';
import 'package:investing_app/utils/widget_utils.dart';
import 'package:investing_app/widgets/list_item_card.dart';

class MarketPage extends StatelessWidget {
  final List<ListItemModel> _items = [
    ListItemModel(title: 'BIST 100', volume: '100.159,13', meta: '18:10:11 | Istanbul', difference: '+543,25 (+0,55%)', type: ItemType.INCREASE),
    ListItemModel(title: 'BIST 30', volume: '116.417,97', meta: '18:10:12 | Istanbul', difference: '+299,62 (+0,26%)', type: ItemType.INCREASE),
    ListItemModel(title: 'Bankalar', volume: '120.220,61', meta: '18:10:12 | Istanbul', difference: '-365,47 (-0,30%)', type: ItemType.DECREASE),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          var f = _items[index];
          return ListItemCard(
            title: f.title,
            meta: f.meta,
            difference: f.difference,
            volume: f.volume,
            type: f.type,
          );
        },
        separatorBuilder: (context, index) {
          return appDivider();
        },
        itemCount: _items?.length ?? 0);
  }
}
