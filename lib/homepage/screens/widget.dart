import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/homepage/provider/provider.dart';

class MovieListScreen extends ConsumerWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieAsyncValue = ref.watch(movieProvider);

    return movieAsyncValue.when(
      data: (movies) => SizedBox(
        height: 200, 
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return Container(
              width: 120, 
              margin: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500${movie.posterPath}', 
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100, // Circular size
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
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}



class UpcomingList extends ConsumerWidget {
  const UpcomingList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieAsyncValuenew = ref.watch(movieProvidernew);

    return movieAsyncValuenew.when(
      data: (movies) => SizedBox(
        height: 250, 
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return Container(
              width: 150, 
              margin: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://image.tmdb.org/t/p/w500${movie.posterPath}', 
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100, 
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
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Release Date: ${movie.releaseDate}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          },
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}