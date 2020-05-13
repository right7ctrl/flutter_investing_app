import 'package:flutter/material.dart';
import 'package:investing_app/utils/constants.dart';
import 'package:investing_app/utils/draw_triangle.dart';

class CustomTopbar extends StatelessWidget {
  final List<TopbarItem> items;
  final int currentIndex;
  final void Function(int id) onTap;

  const CustomTopbar({Key key, @required this.items, @required this.currentIndex, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return Container(
      height: 54,
      width: double.infinity,
      color: SECONDARY_DARK,
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items.map((f) {
            bool _isSelected = f.id == currentIndex;
            return Container(
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  _scrollController.jumpTo(5);

                  this.onTap(f.id);
                },
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Text(
                        '${f.title}',
                        style: TextStyle(
                            fontSize: 16, color: _isSelected ? Colors.white : Colors.blueGrey.shade300, fontWeight: _isSelected ? FontWeight.w500 : null),
                      ),
                    ),
                    _isSelected
                        ? Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                child: CustomPaint(size: Size(10, 10), painter: DrawTriangle(Colors.white)),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TopbarItem {
  final String title;
  final int id;

  TopbarItem({Key key, this.title, this.id});
}
