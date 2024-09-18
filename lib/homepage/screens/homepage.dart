import 'package:flutter/material.dart';
import 'package:netflix/firstcontainer.dart';
import 'package:netflix/homepage/screens/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Image.asset('assets/logo.png',height: 85,),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            FirstContainer(),
            SizedBox(height: 50,),
            Text('Popular',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 250, 
              child: MovieListScreen(),
            ),
            //SizedBox(height: 10,),
            Text('Upcoming',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}
