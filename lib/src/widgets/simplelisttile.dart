import 'package:flutter/material.dart';
import '../screens/itemspage.dart';

class SimpleListTile extends StatelessWidget {

  String name;
  String imgUrl;

  SimpleListTile({this.name, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imgUrl,
        width: 40,
        height: 40,
      ),
      title: Text(name),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<Map>(
            builder: (BuildContext context){
              return ItemsPage(name);
            },
          ),
        );
      },
    );
  }
}
