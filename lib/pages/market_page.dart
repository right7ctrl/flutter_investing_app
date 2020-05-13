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
    ListItemModel(title: 'Dow 30', volume: '23.247,97', meta: '23:20:01 | NYSE', difference: '-516,81 (-2,71%)', type: ItemType.DECREASE),
    ListItemModel(title: 'S&P 500', volume: '2.820,00', meta: '23:20:02 | NYSE', difference: '-50,12 (-1,75%)', type: ItemType.DECREASE),
    ListItemModel(title: 'Nasdaq', volume: '8.863,17', meta: '23:54:12 | NASDAQ', difference: '-139,38 (-1,55%)', type: ItemType.DECREASE),
    ListItemModel(title: 'DAX', volume: '10.542,66', meta: '22:54:12 | Xetra', difference: '-276,84 (-2,56%)', type: ItemType.DECREASE),
    ListItemModel(title: 'FTSE 100', volume: '5.904,05', meta: '18:54:58 | Londra', difference: '-90,72 (-1,52%)', type: ItemType.DECREASE),
    ListItemModel(title: 'CAC 40', volume: '4.344,15', meta: '18:54:58 | Paris', difference: '+90,72 (+3,12%)', type: ItemType.INCREASE),
    ListItemModel(title: 'FTSE MIB', volume: '17.183,44', meta: '18:54:43 | Milano', difference: '-375,12 (-2,14%)', type: ItemType.DECREASE),
    ListItemModel(title: 'LOREM', volume: '17.183,44', meta: '18:54:43 | World', difference: '-375,12 (-2,14%)', type: ItemType.INCREASE),
    ListItemModel(title: 'LOREM', volume: '17.183,44', meta: '18:54:43 | World', difference: '-375,12 (-2,14%)', type: ItemType.INCREASE),
    ListItemModel(title: 'LOREM', volume: '17.183,44', meta: '18:54:43 | World', difference: '-375,12 (-2,14%)', type: ItemType.DECREASE),
    ListItemModel(title: 'LOREM', volume: '17.183,44', meta: '18:54:43 | World', difference: '-375,12 (-2,14%)', type: ItemType.INCREASE),
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
