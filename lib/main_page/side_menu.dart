import 'package:flutter/material.dart';

import 'main_nav_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          /// the logo
          Container(
            height: 170,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 4)),
                image: DecorationImage(
                    image: AssetImage("/images/logo.png"), fit: BoxFit.cover)),
          ),
          // The Upper or Main Navigation Menu
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              MainNavItem(
                  "New Releases", Icons.rocket_launch_outlined, false, () {}),
              MainNavItem(
                  "Most Popular", Icons.emoji_events_outlined, false, () {}),
              MainNavItem("Recommended", Icons.verified_outlined, false, () {}),
              MainNavItem("Top Chart", Icons.diamond_outlined, true, () {}),
            ],
          ),
        ],
      ),
    );
  }
}
