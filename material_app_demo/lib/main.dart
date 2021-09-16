import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material App Demo"),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Text("Text One"),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text("Flat button"),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text("Raised button"),
                  onPressed: () {},
                  color: Color(0xFF00FF00),
                  elevation: 10,
                  // textColor: Colors.white,
                ),
                OutlineButton(
                  child: Text("Outline button"),
                  onPressed: () {},
                ),
              ],
            ),
            Switch(
              onChanged: (isEnabled) {},
              value: true,
            ),
            Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 100,
            ),
            Container(
              margin: EdgeInsets.all(12),

              child: Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTxEOVTcvf8wEI1bGPVZrCVADRvWGpFsVzrowss8S1SuQl_xJjK"),
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 10,),

            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input",
                  hintText: "Write here",
                  suffix: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  prefix: IconButton(
                    icon: Icon(Icons.security),
                    onPressed: () {},
                  ),

                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile Number",
                  hintText: "Write here",
                  

                ),
                keyboardType: TextInputType.phone,
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Write here",
                ),
                
                obscureText: true,
                maxLength: 20,
              ),
            ),

            SizedBox(height: 80,),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){},
      ),
    );
  }
}
