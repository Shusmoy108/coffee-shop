import 'package:flutter/material.dart';
import 'simple_list_widget.dart';
import '../../resources/dummydata.dart';

class MainMenuPage extends StatefulWidget {
  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage>
    with SingleTickerProviderStateMixin {
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
              backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                controller: _tabController,
                tabs: <Tab>[
                  Tab(
                    text: 'Menu',
                  ),
                  Tab(
                    text: 'Featured',
                  ),
                  Tab(
                    text: 'Favourite',
                  ),
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
        SimpleListWidget(
          title: 'Drinks',
          list: menudrinksdata,
        ),
        SimpleListWidget(
          title: 'Foods',
          list: menufoodsdata,
        ),
        SimpleListWidget(
          title: 'Others',
          list: menuothersdata,
        ),
      ],
    );
  }

  Widget featuredFragment() {
    return ListView(
      children: <Widget>[
        SimpleListWidget(title: 'Featured Drinks', list: featureddrinksdata),
        SimpleListWidget(
          title: 'Featured Foods',
          list: featuredfoodsdata,
        ),
      ],
    );
  }

  Widget favouriteFragment() {
    return ListView(
      children: <Widget>[
        SimpleListWidget(
          title: 'Your Favourites',
          list: favouritedata,
        ),
      ],
    );
  }
}
