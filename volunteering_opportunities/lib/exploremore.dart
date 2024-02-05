import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Volunteering Fun'),
        ),
        body: Center(
          child: buildListItem(context),
        ),
      ),
    );
  }

  Widget buildListItem(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      elevation: 4,
      color: Color.fromRGBO(32, 50, 76, .9),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Name of Opportunity", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 4),
                Text("Off Campus/On Campus", style: TextStyle(color: Colors.white70)),
                Text("Remote/In-Person/Hybrid", style: TextStyle(color: Colors.white70)),
                Text("Length of Volunteering", style: TextStyle(color: Colors.white70)),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.red), // Heart-shaped icon
              onPressed: () {
                // Add your onPressed functionality here
                print("Added to Favorites!");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
      ],
    );
  }
}
