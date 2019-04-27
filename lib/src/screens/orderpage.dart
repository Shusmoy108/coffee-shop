import 'package:flutter/material.dart';
import '../resources/dummydata.dart';
import '../widgets/simplelisttile.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Icon(Icons.camera),
              title: Text('Order Now'),
              backgroundColor: Color.fromRGBO(220,20,60,1.0),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                controller: _tabController,
                tabs: <Tab>[
                  Tab(text: 'Menu',),
                  Tab(text: 'Featured',),
                  Tab(text: 'Favourite',),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            menuFragment(),
            featuredFragment(),
            favouriteFragment(),
          ],
        ),
      ),
    );
  }

  Widget menuFragment() {
    return ListView(
      children: <Widget>[
        simpleListWidget('Drinks', menudrinksdata),
        simpleListWidget('Foods', menufoodsdata),
        simpleListWidget('Others', menuothersdata),
      ],
    );
  }

  Widget featuredFragment() {
    return ListView(
      children: <Widget>[
        simpleListWidget('Featured Drinks', featureddrinksdata),
        simpleListWidget('Featured Foods', featuredfoodsdata),
      ],
    );
  }

  Widget favouriteFragment() {
    return ListView(
      children: <Widget>[
        simpleListWidget('Your Favourites', favouritedata),
      ],
    );
  }

  Widget simpleListWidget(String title, List<List<String>> list){
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: 20.0
                ),
              ),
              FlatButton(
                onPressed: (){},
                child: Text(
                  'See all('+list.length.toString()+')',
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: list.length,
          //we can use fixed itemCount to determine how many list item we want to show..
          itemBuilder: (context, index) {
            return SimpleListTile(
              name: list[index][0],
              imgUrl: list[index][1],
            );
          },
        ),
      ],
    );
  }
}
