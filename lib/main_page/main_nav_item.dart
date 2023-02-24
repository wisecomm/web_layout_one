import 'package:flutter/material.dart';

class MainNavItem extends StatelessWidget {
  /// a. definition of variables
  final String title;
  final bool isSelected;
  final VoidCallback action;
  final IconData? icon;
  const MainNavItem(this.title, this.icon, this.isSelected, this.action,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// b. returning a container
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),

      /// c. making the item clickable
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        color: isSelected ? Colors.deepPurple.withOpacity(0.15) : null,
        onPressed: action,

        /// d. Row for text and icon
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
