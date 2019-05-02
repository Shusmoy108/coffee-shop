import 'package:flutter/material.dart';
import '../detailsmenupage/details_menu_page.dart';

class SingleListTile extends StatelessWidget {
  final String name;
  final String imgUrl;

  SingleListTile({this.name, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imgUrl,
        width: 40,
        height: 40,
      ),
      title: Text(name),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<Map>(
            builder: (BuildContext context) {
              return DetailsMenuPage(name);
            },
          ),
        );
      },
    );
  }
}
