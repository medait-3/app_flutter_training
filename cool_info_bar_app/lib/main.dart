import 'package:flutter/material.dart';
import 'package:cool_info_bar_app/widgets/InfoBar.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            brightness: Brightness.light,
            color: Colors.white,
          ),
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              textTheme: ButtonTextTheme.primary),
          brightness: Brightness.light),
      darkTheme: ThemeData(
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textTheme: ButtonTextTheme.primary),
        brightness: Brightness.dark,
      ),
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Cool Info Bar"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            InfoBar(
              content: "This is the cool info bar",
            ),
            InfoBar(
              content: "This is the cool info bar",
              backgroundColor: Colors.redAccent,
              textColor: Colors.white,
            ),
            RaisedButton(
              child: Text("Button"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Button"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
