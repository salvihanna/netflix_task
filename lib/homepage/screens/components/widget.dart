import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/homepage/controllers/movie_controller.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieController movieController = Get.put(MovieController());

    return Obx(
      () {
        if (movieController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieController.movies.length,
              itemBuilder: (context, index) {
                final movie = movieController.movies[index];
                return Container(
                  width: 130,
                  margin: const EdgeInsets.all(0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 238, 16, 0),
                          ),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        movie.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class UpcomingList extends StatelessWidget {
  const UpcomingList({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieController movieController = Get.find();

    return Obx(
      () {
        if (movieController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieController.upcomingMovies.length,
              itemBuilder: (context, index) {
                final movie = movieController.upcomingMovies[index];
                return Container(
                  width: 130,
                  margin: const EdgeInsets.all(0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                        fit: BoxFit.cover,
                       width: 120,         
                       height: 160,                  
                           ),             
                         ],
                        ),
                       );
                    },
                ),          
                ),
              );
            },  
          );
                 }}
