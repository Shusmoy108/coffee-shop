import 'package:flutter/material.dart';
import 'big_list_tile.dart';
import '../../resources/dummydata.dart';

class DetailsMenuPage extends StatelessWidget {
  final String title;

  DetailsMenuPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(220, 20, 60, 1.0),
      ),
      body: Container(
        color: Color.fromRGBO(236, 235, 231, 1.0),
        child: CustomScrollView(
          slivers: <Widget>[
            titleRow('Latte', lattedata),
            buildGridList(lattedata),
            titleRow('Mocha', mochadata),
            buildGridList(mochadata),
            titleRow('Macchiato', macchiatodata),
            buildGridList(macchiatodata),
            titleRow('Cappuccino', cappuccinodata),
            buildGridList(cappuccinodata),
            titleRow('Americano', americanodata),
            buildGridList(americanodata),
          ],
        ),
      ),
    );
  }

  Widget titleRow(String t, List<List<String>> l) {
    return SliverList(
      delegate: SliverChildListDelegate([
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
                t,
                style: TextStyle(fontSize: 20.0),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'See all(' + l.length.toString() + ')',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ]),
    );
  }

  Widget buildGridList(List<List<String>> list) {
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(
        List.generate(list.length, (index) {
          return BigListTile(
            name: list[index][0],
            imgUrl: list[index][1],
          );
        }),
      ),
    );
  }
}
