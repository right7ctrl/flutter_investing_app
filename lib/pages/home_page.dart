import 'package:flutter/material.dart';
import 'package:investing_app/pages/market_page.dart';
import 'package:investing_app/utils/constants.dart';
import 'package:investing_app/widgets/custom_topbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _topBarIndex = 0;
  int _bottomBarIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  GlobalKey itemKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TERTIARY_DARK,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomBarIndex,
        backgroundColor: SECONDARY_DARK,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        onTap: (int val) {
          setState(() {
            _bottomBarIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.multiline_chart), title: Text('Piyasalar')),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), title: Text('Haberler')),
          BottomNavigationBarItem(icon: Icon(Icons.multiline_chart), title: Text('Takip Listesi')),
        ],
      ),
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
              //  Scrollable.ensureVisible(itemKey.currentContext);
              _setTopBarIndex(val);

              _pageController.animateToPage(val, duration: Duration(milliseconds: 300), curve: Curves.ease);
            },
            currentIndex: _topBarIndex,
            items: [
              TopbarItem(id: 0, title: 'Endeksler', key: Key('0')),
              TopbarItem(id: 1, title: 'Vadeli Endeksler', key: Key('1')),
              TopbarItem(id: 2, title: 'Hisse Senetleri'),
              TopbarItem(id: 3, title: 'Emtia'),
              TopbarItem(id: 4, title: 'Döviz'),
              TopbarItem(id: 5, title: 'Kripto Paralar'),
              TopbarItem(id: 6, title: 'Tahviller', key: itemKey),
              TopbarItem(id: 7, title: 'ETF\'ler'),
              TopbarItem(id: 8, title: 'Fonlar'),
            ],
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int val) {
                _setTopBarIndex(val);
              },
              children: <Widget>[
                MarketPage(),
                MarketPage(),
                MarketPage(),
                MarketPage(),
                MarketPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _setTopBarIndex(int index) {
    if (_topBarIndex == index) return;
    setState(() {
      _topBarIndex = index;
    });
  }
}
