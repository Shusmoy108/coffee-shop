import 'package:flutter/material.dart';
import 'single_list_tile.dart';

class SimpleListWidget extends StatelessWidget {
  final String title;
  final list;

  SimpleListWidget({this.title, this.list});

  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(fontSize: 20.0),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'See all(' + list.length.toString() + ')',
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
            return SingleListTile(
              name: list[index][0],
              imgUrl: list[index][1],
            );
          },
        ),
      ],
    );
  }
}
