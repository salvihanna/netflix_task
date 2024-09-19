import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), // Curved edges
        border: Border.all(
          color: Colors.white.withOpacity(0.3), // Light white border
          width: 1.5,
        ),
      ),
      child: Stack(
        children: [
          // Background image that fits the container
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/aay.jpg', // Replace with your image asset
              height: 450,
              width: double.infinity, // Make the image take full width
              fit: BoxFit.cover, // Ensures the image fits the container
            ),
          ),

          // Gradient overlay starting from the middle and going dark at the bottom
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xff314347), // Dark color at the bottom
                  ],
                  stops: [-0.1, 1.0], // Gradient starts from the middle
                ),
              ),
            ),
          ),

          // Bottom text '#5 in Movies Today' above the buttons
          Positioned(
            bottom: 70, // Place the text above the buttons
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                '#5 in Movies Today', // Replace with actual text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // Bottom-left Play button
          Positioned(
            bottom: 10,
            left: 10,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.white, // White background for Play button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: const Text(
                'Play',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),

          // Bottom-right My List button
          Positioned(
            bottom: 10,
            right: 10,
            child: OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white, // White border for My List button
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: const Text(
                'My List',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
