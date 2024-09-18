import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:dio/dio.dart';
import 'package:netflix/homepage/API/api.dart';
import 'package:netflix/homepage/model/model.dart';
   
final movieProvider = FutureProvider<List<Movie>>((ref) async {
     final dio = ref.watch(dioProvider);
     try {
       final response = await dio.get('https://api.themoviedb.org/3/movie/popular'); 
       List<Movie> movies = (response.data['results'] as List)
           .map((movie) => Movie.fromJson(movie))
           .toList();
       return movies;
     } catch (e) {
       throw Exception('Failed to load movies');
     }
   });

final movieProvidernew = FutureProvider<List<Movie>>((ref) async {
     final dio = ref.watch(dioProvidernew);
     try {
       final response = await dio.get('https://api.themoviedb.org/3/movie/upcoming'); 
       List<Movie> movies = (response.data['results'] as List)
           .map((movie) => Movie.fromJson(movie))
           .toList();
       return movies;
     } catch (e) {
       throw Exception('Failed to load movies');
     }
   });