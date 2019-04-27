import 'package:flutter/material.dart';
import '../resources/dummydata.dart';

String name;

class DetailsPage extends StatefulWidget {
  DetailsPage(String n){name =n;}

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List _sizes = ['Short', 'Tall', 'Grande', 'Venti'];
  List _flavours = ['Milk', 'Orange', 'Banana'];
  List _shotoptions = ['2 shots', '3 shots', '4 shots'];
  List _toppings = ['Yes', 'No'];

  List<DropdownMenuItem<String>> _sizeMenuItems;
  List<DropdownMenuItem<String>> _flavourMenuItems;
  List<DropdownMenuItem<String>> _shotMenuItems;
  List<DropdownMenuItem<String>> _toppingMenuItems;

  String _currentsize;
  String _currentflavour;
  String _currentshot;
  String _currenttopping;


  @override
  void initState() {
    _sizeMenuItems = getSizeMenuItems();
    _flavourMenuItems = getFlavourMenuItems();
    _shotMenuItems = getShotMenuItems();
    _toppingMenuItems = getToppingMenuItems();

    _currentsize = null;
    _currentflavour = null;
    _currentshot = null;
    _currenttopping = null;

    super.initState();
  }

  List<DropdownMenuItem<String>> getSizeMenuItems(){
    List<DropdownMenuItem<String>> items = List();
    for (String size in _sizes){
      items.add(
        DropdownMenuItem(
          value: size,
          child: Text(size),
        )
      );
    }
    return items;
  }

  void changeSizeMenuItem(String value){
    setState(() {
      _currentsize = value;
    });
  }

  List<DropdownMenuItem<String>> getFlavourMenuItems(){
    List<DropdownMenuItem<String>> items = List();
    for (String flavour in _flavours){
      items.add(
          DropdownMenuItem(
            value: flavour,
            child: Text(flavour),
          )
      );
    }
    return items;
  }

  void changeFlavourMenuItem(String value){
    setState(() {
      _currentflavour = value;
    });
  }

  List<DropdownMenuItem<String>> getShotMenuItems(){
    List<DropdownMenuItem<String>> items = List();
    for (String shot in _shotoptions){
      items.add(
          DropdownMenuItem(
            value: shot,
            child: Text(shot),
          )
      );
    }
    return items;
  }

  void changeShotMenuItem(String value){
    setState(() {
      _currentshot = value;
    });
  }

  List<DropdownMenuItem<String>> getToppingMenuItems(){
    List<DropdownMenuItem<String>> items = List();
    for (String topping in _toppings){
      items.add(
          DropdownMenuItem(
            value: topping,
            child: Text(topping),
          )
      );
    }
    return items;
  }

  void changeToppingMenuItem(String value){
    setState(() {
      _currenttopping = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/caflattebig.jpg',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              alignment: Alignment.center,
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 10.0),
                alignment: Alignment.center,
                child: Text(
                  'Customisations',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                        )
                    )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0, bottom: 10.0),
              child:DropdownButton(
                value: _currentsize,
                items: _sizeMenuItems,
                onChanged: changeSizeMenuItem,
                hint: Text('Size'),
                isExpanded: true,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0, bottom: 10.0),
              child:DropdownButton(
                value: _currentflavour,
                items: _flavourMenuItems,
                onChanged: changeFlavourMenuItem,
                hint: Text('Flavour'),
                isExpanded: true,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0, bottom: 10.0),
              child:DropdownButton(
                value: _currentshot,
                items: _shotMenuItems,
                onChanged: changeShotMenuItem,
                hint: Text('Shot options'),
                isExpanded: true,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0, bottom: 10.0),
              child:DropdownButton(
                value: _currenttopping,
                items: _toppingMenuItems,
                onChanged: changeToppingMenuItem,
                hint: Text('Topping'),
                isExpanded: true,
              ),
            ),



          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.add),
        label: Text('Add to Order'),
        backgroundColor: Color.fromRGBO(220, 20, 60, 0.7),
      ),
    );
  }
}
