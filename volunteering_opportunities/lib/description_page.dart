import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Center(
        child: Column(
          children:[
            Text(
              'Title of Opportunity',
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'This is the area where an organization can put a more detailed description of what the volunteering opportunity entails in order for students to make a more informed decision about the time commitment.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 40,
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Contact Information',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )
                  ),
                ),
              ),
            ),
          

          ]
        ),
      )
    );
  }
}