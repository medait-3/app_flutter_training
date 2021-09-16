import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Second Screen"),

            RaisedButton(
              child: Text("Go back to home screen"),
              onPressed: () {

                Navigator.of(context).pop();

              },
            ),
          ],
        ),
      ),
    );
  }
}
