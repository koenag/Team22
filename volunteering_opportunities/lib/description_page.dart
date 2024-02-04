import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children:[
              Text(
                'Title of Opportunity',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
              
              const SizedBox(height:25),

              Container(
                height: 300,
                color: Colors.grey[300],
                child: Text(
                  'This is the area where an organization can put a more detailed description of what the volunteering opportunity entails in order for students to make a more informed decision about the time commitment.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ]
          ),
        ),
      )
    );
  }
}