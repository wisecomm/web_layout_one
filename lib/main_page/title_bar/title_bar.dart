import 'package:flutter/material.dart';

import 'profile_section.dart';
import 'sesrch_bar.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SearchBar(),
        ProfileSection(),
      ],
    );
  }
}
