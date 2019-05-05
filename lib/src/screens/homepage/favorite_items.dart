import 'package:flutter/material.dart';
import '../../resources/dummydata.dart';

class FavoriteItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            'Your Favorite Drinks :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 130,
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favouritedata.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        favouritedata[index][1],
                      ),
                    ),
                    Text(
                      favouritedata[index][0],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
