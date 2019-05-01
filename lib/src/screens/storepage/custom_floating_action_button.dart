import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';

class CustomFAButton extends StatelessWidget {
  final void Function(double, double) fabAction;

  CustomFAButton({this.fabAction});

  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Dhaka",
        currentButton: FloatingActionButton(
          heroTag: "dhaka",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Text('D'),
          onPressed: () {
            fabAction(23.81, 90.41);
          },
        ),
      ),
    );

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Chittagong",
        currentButton: FloatingActionButton(
          heroTag: "ctg",
          backgroundColor: Colors.greenAccent,
          mini: true,
          child: Text('C'),
          onPressed: () {
            fabAction(43.81, 100.41);
          },
        ),
      ),
    );

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Rajshahi",
        currentButton: FloatingActionButton(
          heroTag: "raj",
          backgroundColor: Colors.blueAccent,
          mini: true,
          child: Text('R'),
          onPressed: () {
            fabAction(10.81, 70.41);
          },
        ),
      ),
    );

    return UnicornDialer(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
      parentButtonBackground: Colors.redAccent,
      orientation: UnicornOrientation.VERTICAL,
      parentButton: Icon(
        Icons.search,
      ),
      childButtons: childButtons,
    );
  }
}
