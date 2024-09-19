import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0, // Remove the shadow under the AppBar
      leadingWidth: 60, // Increase the width to accommodate a larger logo
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 250, // Set desired height
          width: 250, // Set desired width
          child: Image.asset(
            'assets/nlogo.png',
            fit: BoxFit.contain, // Ensure it scales to fit the given box
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.download, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  // Adjusted size to match larger logo
}
