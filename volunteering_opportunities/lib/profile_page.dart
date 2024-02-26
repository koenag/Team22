import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'color_palette.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.dbrown,
        title: const Text(
          'Profile',
          textAlign: TextAlign.center,
          ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.dgreen,
                  AppColors.lgreen
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: AppColors.lblue,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 70.0,
                        //backgroundImage: NetworkImage('images/profile.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'First & Last Name',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'email@ucsc.edu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Favorites',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}