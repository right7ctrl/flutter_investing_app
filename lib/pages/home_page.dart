import 'package:flutter/material.dart';
import 'package:investing_app/utils/constants.dart';
import 'package:investing_app/utils/widget_utils.dart';
import 'package:investing_app/widgets/custom_topbar.dart';
import 'package:investing_app/widgets/list_item_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _topBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: SECONDARY_DARK,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 30',
                    type: Type.INCREASE,
                    volume: '116.417,97',
                    meta: '18:10:12 | Istanbul',
                    difference: '+299,62 (+0,26%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST Bankalar',
                    type: Type.DECREASE,
                    volume: '120.220,61',
                    meta: '18:10:12 | Istanbul',
                    difference: '+365,47 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'Dow 30',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'S&P 500',
                    type: Type.DECREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | NYSE',
                    difference: '-60,42 (-2,10%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'Nasdaq',
                    type: Type.DECREASE,
                    volume: '8.821.46',
                    meta: '18:10:11 | Nasdaq',
                    difference: '-174,48 (-2,35%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                  ListItemCard(
                    title: 'BIST 100',
                    type: Type.INCREASE,
                    volume: '100.159,13',
                    meta: '18:10:11 | Istanbul',
                    difference: '+543,25 (+0,55%)',
                  ),
                  appDivider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
