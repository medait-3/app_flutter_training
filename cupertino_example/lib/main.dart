import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MainApp()
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Example"),
      ),
      child: SafeArea(
              child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Text("Hi This is the Text demo"),

              CupertinoButton(
                child: Text("Click me"),
                onPressed: () {},
              ),

              CupertinoButton.filled(
                child: Text("Click me"),
                onPressed: () {},
              ),

              CupertinoSlider(
                value: 10,
                min: 0,
                max: 100,
                onChanged: (value) {},
              ),

              CupertinoTextField(),

            ],
          ),
        ),
      ),
    );
  }
}