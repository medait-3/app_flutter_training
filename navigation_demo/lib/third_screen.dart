import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Third Screen"),

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
