import 'package:flutter/material.dart';
import 'package:investing_app/utils/draw_triangle.dart';
import 'package:investing_app/widgets/custom_topbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _topBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text('Investing.com'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.blueGrey.shade300,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CustomTopbar(
            onTap: (int val) {
              setState(() {
                _topBarIndex = val;
              });
            },
            currentIndex: _topBarIndex,
            items: [
              TopbarItem(id: 0, title: 'Endeksler'),
              TopbarItem(id: 1, title: 'Vadeli Endeksler'),
              TopbarItem(id: 2, title: 'Hisse Senetleri'),
              TopbarItem(id: 3, title: 'Emtia'),
              TopbarItem(id: 4, title: 'Döviz'),
              TopbarItem(id: 5, title: 'Kripto Paralar'),
              TopbarItem(id: 6, title: 'Tahviller'),
              TopbarItem(id: 7, title: 'ETF\'ler'),
              TopbarItem(id: 8, title: 'Fonlar'),
            ],
          ),
        ],
      ),
    );
  }
}
