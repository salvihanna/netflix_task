import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/jessicaimg.jpeg', 
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
                  Positioned(
                    top: 5,
                    //left: 5,
                    child: Image.asset(
                      'assets/logo.png', 
                      height: 90,
                     
                    ),
                  ),
                   Positioned(
                    bottom: 10,
                    left: 15,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 238, 16, 0),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero, 
                      ),
                      ),
                      child: const Text(
                        'NEW EPISODES',
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                 
        ]
      ),
    );
  }
}
