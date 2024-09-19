import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0, 
      leadingWidth: 60, 
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 250, 
          width: 250, 
          child: Image.asset(
            'assets/nlogo.png',
            fit: BoxFit.contain, 
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

  
}
