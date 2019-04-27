import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/orderpage.dart';
import 'screens/giftpage.dart';
import 'screens/storepage.dart';
import 'screens/settingspage.dart';


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final _pages = [HomePage(), OrderPage(), GiftPage(), StorePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffe shop app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Color.fromRGBO(220, 20, 60, 1.0),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text('Home',),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              title: Text('Order',),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard,),
              title: Text('Gift',),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store,),
              title: Text('Stores',),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,),
              title: Text('Settings',),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index){
            this.setState((){
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
