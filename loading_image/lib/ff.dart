ListView.builder(
itemCount: "${notes['imageurl']}",,
itemBuilder: (context, index) {
return GestureDetector(
onTap: () {
},
// Card Which Holds Layout Of ListView Item
child: Card(
child: Row(
children: <Widget>[
Container(
width: 100,
height: 100,
child:  Image.network(
"${notes['imageurl']}",
),
Padding(
padding: const EdgeInsets.all(10.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Text(
"${notes['title']}",
style: TextStyle(
fontSize: 25,
color: Colors.grey,
fontWeight: FontWeight.bold,
),
),
SizedBox(
height: 10,
),
Container(
width: width,
child: Text(
"${notes['note']}",
maxLines: 3,
style: TextStyle(
fontSize: 15, color: Colors.grey[500]),
),
),
],
),
)
],
),
),
);
},
),
);