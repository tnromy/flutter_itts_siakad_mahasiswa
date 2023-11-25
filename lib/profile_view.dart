import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/donghae.jpg"),
            ),
          ),
          Container(
            child: Text("Romi Fadli", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Container(
            child: Text("1003210076", style: TextStyle(fontSize: 21)),
          ),
          Container(
            child: Text("Informatika", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}