import 'package:flutter/material.dart';

class ExploreMore extends StatelessWidget {
  const ExploreMore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slug Impact', style: TextStyle(color: Colors.lightBlue, fontStyle: FontStyle.italic),),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 150, // Adjust the height as needed
              child: Image.asset(
                'volunteering_opportunities/lib/headers/image-remove-preview(1).png', // Replace with the path to your image asset
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return buildListItem(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap functionality here
        print("Card clicked!");
      },
    child : Card (
      margin: EdgeInsets.all(12),
      elevation: 4,
      color: Color.fromRGBO(32, 50, 76, .9),
      child: Container(
        decoration: BoxDecoration(
          //color : Colors.blue,
          //borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
          border: Border(
            right: BorderSide(color: Colors.blue, width: 5.0),
            bottom: BorderSide(color: Colors.blue, width: 5.0),),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      // Add your onTap functionality here
                      print("Name of Opportunity clicked!");
                    },
                    child: Text(
                      "Name of Opportunity",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("Off Campus/On Campus", style: TextStyle(color: Colors.white70)),
                  Text("Remote/In-Person/Hybrid", style: TextStyle(color: Colors.white70)),
                  Text("Length of Volunteering", style: TextStyle(color: Colors.white70)),
                ],
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.grey), // Heart-shaped icon
                onPressed: () {
                  // Add your onPressed functionality here
                  icon: Icon(Icons.favorite, color: Colors.red);
                  print("Added to Favorites!");
                },
              ),
            ],
          ),
        ),
      )
      ),
    );
  }
}
