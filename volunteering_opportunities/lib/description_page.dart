import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'color_palette.dart';
import 'exploremore.dart';
import 'profile_page.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  void signUp() {
    print("Please fill out the sign up form");
  }

  static void navigateTo(double lat, double lng) async {
    var uri = Uri.parse("https://maps.google.com/?q=$lat,$lng");
    if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
    } else {
        throw 'Could not launch ${uri.toString()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.grey[200],

      body: Center(
        child: 
        Column(
          children:[

            // Title of Opportunity

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Title of Opportunity',
                style: TextStyle(
                  color: AppColors.dgreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),

            // Description section
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 350,
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

            // Contact Information Section

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.dbrown,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'CONTACT INFORMATION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                    color: AppColors.lgreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('lib/images/phone.png', height: 20, width: 20),
                    )
                    ),
              
                  Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                    color: AppColors.lgreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "(408)123-4567",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )
                      ),
                    ),
                  ),
                ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                    color: AppColors.lgreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('lib/images/email.png', height: 20, width: 20),
                    )
                    ),
              
                  Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                    color: AppColors.lgreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "volunteer@gmail.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )
                      ),
                    ),
                  ),
                ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                    color: AppColors.lgreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('lib/images/www.png', height: 20, width: 20),
                    )
                    ),
              
                  Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                    color: AppColors.lgreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "volunteeropportunity.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )
                      ),
                    ),
                  ),
                ]
              ),
            ),

            // Favorite Button and Map button

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                    },
                  ),
            
                  IconButton (
                    iconSize: 40,
                    onPressed: () {
                      navigateTo(36.974117,-122.030792);
                    },
                    icon: Icon(Icons.location_pin),
                  ),
                ]
              ),
            ),

            // Sign up Button

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.dbrown),
                ),
                child: Text(
                  'Sign Up!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    )
                  ),
                onPressed: () {
                  signUp();
                },
              ),
            ),

            // Back button, Home button, and Profile button

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton (
                    iconSize: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> ExploreMore(),
                          )
                        );
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  IconButton (
                    iconSize: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> ExploreMore(),
                          )
                        );
                    },
                    icon: Icon(Icons.home_rounded),
                  ),
                  IconButton (
                    iconSize: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> ProfilePage(),
                          )
                        );
                    },
                    icon: Icon(Icons.person),
                  ),
                ]
              ),
            )

          ]
        ),
      )
    )
    );
  }
}