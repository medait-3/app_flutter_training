import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Loading images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Image(
              image: NetworkImage("https://images.pexels.com/photos/915972/pexels-photo-915972.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
            ),

            FadeInImage(
              image: NetworkImage("https://images.pexels.com/photos/915972/pexels-photo-915972.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
              placeholder: AssetImage("assets/placeholder.jpg"),
            ),

            Image(
              image: AssetImage("assets/dog.jpg"),
            ),

            Image(
              image: AssetImage("assets/village.jpg"),
            ),

            Image(
              image: AssetImage("assets/friends.png"),
            ),

          ],
        ),
      ),
    );
  }
}
