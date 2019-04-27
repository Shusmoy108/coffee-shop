import 'package:flutter/material.dart';
import '../screens/detailspage.dart';
import '../Animations/scale_page_transition.dart';

class BigListTile extends StatelessWidget {

  final String name;
  final String imgUrl;

  BigListTile({this.name, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          ScalePageTransition(animatingWidget: DetailsPage(name)),
        );
      },
      child: Container(
        color: Color.fromRGBO(236, 235, 231, 1.0),
        width: 100,
        height: 100,
        child: Column(
          children: <Widget>[
            Image.asset(
              imgUrl,
              width: 120,
              height: 120,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.black87
              ),
            ),
          ],
        ),
      ),
    );
  }
}
