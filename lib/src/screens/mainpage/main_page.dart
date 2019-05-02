import 'package:flutter/material.dart';
import '../homepage/home_page.dart';
import '../mainmenupage/main_menu_page.dart';
import '../giftpage/gift_page.dart';
import '../storepage/store_page.dart';
import '../settingspage/settings_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final _pages = [
    HomePage(),
    MainMenuPage(),
    GiftPage(),
    StorePage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color.fromRGBO(220, 20, 60, 1.0),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            title: Text(
              'Menu',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            title: Text(
              'Card',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
            ),
            title: Text(
              'Stores',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text(
              'Settings',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          this.setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
