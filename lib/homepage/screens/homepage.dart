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
            Text('Popular'),
            SizedBox(
              height: 400, 
              child: MovieListScreen(),
            )
          ],
        ),
      ),
    );
  }
}
