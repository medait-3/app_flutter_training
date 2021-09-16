import 'package:flutter/material.dart';
import 'package:navigation_demo/second_screen.dart';
import 'package:navigation_demo/third_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: MyHomePage(title: 'Navigation'),
      routes: {
        "/second": (context) => SecondScreen(),
        "/third": (context) => ThirdScreen(),
      },
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
      body: Center(
        child: Column(
          children: <Widget>[

            RaisedButton(
              child: Text("Goto Second Screen"),
              onPressed: () {

                // Navigator.push(
                //   context, 
                //   MaterialPageRoute(
                //     builder: (context) => SecondScreen()
                //   )
                // );

                Navigator.pushNamed(context, "/second");

              },
            ),

            RaisedButton(
              child: Text("Goto Third Screen"),
              onPressed: () {

                // Navigator.push(
                //   context, 
                //   MaterialPageRoute(
                //     builder: (context) => SecondScreen()
                //   )
                // );

                Navigator.pushNamed(context, "/third");

              },
            ),

          ],
        ),
      ),
    );
  }
}
