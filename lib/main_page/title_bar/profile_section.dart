import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Rexford Nyarko",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(
          width: 20,
        ),

        /// Circular profile thumbnail
        CircleAvatar(
          backgroundImage: AssetImage("/images/profile.thumbnail.jpg"),
          radius: 35,
        ),
        SizedBox(
          width: 15,
        ),

        /// setting icon
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        SizedBox(
          width: 40,
        ),

        /// Text widget for user's name
/*
        SizedBox(
          width: 20,
        ),

        /// Circular profile thumbnail
        CircleAvatar(
          backgroundImage: AssetImage("/images/profile.thumbnail.jpg"),
          radius: 35,
        ),
        SizedBox(
          width: 15,
        ),

        /// setting icon
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        SizedBox(
          width: 40,
        ),
        */
      ],
    );
  }
}
