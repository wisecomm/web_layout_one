import 'package:flutter/material.dart';
import 'package:web_layout_one/main_page/title_bar/title_bar.dart';

import 'side_menu.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State createState() => _AppLayoutState();
}

class _AppLayoutState extends State {
  @override
  Widget build(BuildContext context) {
    // main layout
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // left side menu
        Container(
          width: 300,
          color: Colors.indigo.withOpacity(0.55),
          child: const SideMenu(),
        ),
        // right side content
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 120,
              color: Colors.indigo.withOpacity(0.80),
              child: const TitleBar(),
              //child: Text("main aa"),
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple.withOpacity(0.50),
                child: const Center(
                  child: Text("main content section"),
                ),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
