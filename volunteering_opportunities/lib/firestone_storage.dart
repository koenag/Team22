/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final db = FirebaseFirestore.instance;

final city = <String, String>{
  "name": "Los Angeles",
  "state": "CA",
  "country": "USA"
};

db.collection("cities")
    .doc("LA")
    .set(city)
    .onError((e, _) => print("Error writing document: $e"));






//////////////////////////

import 'package:cloud_firestore/cloud_firestore.dart';

// Example function to add a document to Firestore
Future<void> addDocument() async {
  await FirebaseFirestore.instance.collection('name of opportunity').add({
    'NAME1': 'value1',
    'field2': 'value2',
  });
}
*/




//////////////////////////
class VolunteeringOpportunity {
  String name;
  int length;
  bool onCampus;
  String location;

  VolunteeringOpportunity({required this.name,required this.length,required this.onCampus, required this.location});
}


Future<void> addVolunteeringOpportunity(VolunteeringOpportunity opportunity) async {
  await FirebaseFirestore.instance.collection('volunteering_opportunities').add({
    'name': opportunity.name,
    'length': opportunity.length,
    'onCampus': opportunity.onCampus,
    'location': opportunity.location,
  });
}

Stream<List<VolunteeringOpportunity>> getVolunteeringOpportunities() {
  return FirebaseFirestore.instance.collection('volunteering_opportunities').snapshots().map((snapshot) {
    return snapshot.docs.map((doc) {
      return VolunteeringOpportunity(
        name: doc['name'],
        length: doc['length'],
        onCampus: doc['onCampus'],
        location: doc['location'],
      );
    }).toList();
  });
}


StreamBuilder<List<VolunteeringOpportunity>>(
  stream: getVolunteeringOpportunities(),
  builder: (context, snapshot) {
    if (!snapshot.hasData) {
      return CircularProgressIndicator(); // or some loading indicator
    }
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (context, index) {
        VolunteeringOpportunity opportunity = snapshot.data[index];
        return ListTile(
          title: Text(opportunity.name),
          subtitle: Text('Length: ${opportunity.length}, Location: ${opportunity.location}'),
          // Add more widgets to display other details as needed
        );
      },
    );
  }
);

