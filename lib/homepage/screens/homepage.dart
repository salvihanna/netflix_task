import 'package:flutter/material.dart';
import 'package:netflix/homepage/screens/bottomnav.dart';
import 'package:netflix/homepage/screens/firstcontainer.dart';
import 'package:netflix/homepage/screens/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: 85,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FirstContainer(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: MovieListScreen(),
            ),
            SizedBox(height: 3),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Upcoming',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: UpcomingList(),
            ),
            SizedBox(height: 6),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),  
    );
  }
}
