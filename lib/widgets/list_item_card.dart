import 'package:flutter/material.dart';
import 'package:investing_app/utils/constants.dart';


class ListItemCard extends StatelessWidget {
  final String title;
  final String volume;
  final String meta;
  final String difference;
  final Type type;

  const ListItemCard({Key key, this.title, this.volume, this.meta, this.difference, this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
                  child: Container(
            height: 54,
            padding: EdgeInsets.symmetric(horizontal: 12),
            color: TERTIARY_DARK,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '$title',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      '$volume',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '$meta',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '$difference',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: type == Type.INCREASE ? Colors.lightGreen : Colors.redAccent),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
