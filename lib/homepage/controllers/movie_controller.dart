import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:netflix/homepage/model/model.dart';

class MovieController extends GetxController {
  var movies = <Movie>[].obs;
  var upcomingMovies = <Movie>[].obs;
  var isLoading = true.obs;

  final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/movie/',
    queryParameters: {'api_key': '71d368cd5ef3e91680c52686cc513612'},
    
  ));

  @override
  void onInit() {
    fetchMovies();
    fetchUpcomingMovies();
    super.onInit();
  }

  void fetchMovies() async {
    try {
      final response = await dio.get('popular');
      if (response.statusCode == 200) {
        movies.value = (response.data['results'] as List)
            .map((movie) => Movie.fromJson(movie))
            .toList();
      } else {
        throw Exception('Failed to load popular movies. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error loading popular movies: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void fetchUpcomingMovies() async {
    try {
      final response = await dio.get('upcoming');
      if (response.statusCode == 200) {
        upcomingMovies.value = (response.data['results'] as List)
            .map((movie) => Movie.fromJson(movie))
            .toList();
      } else {
        throw Exception('Failed to load upcoming movies. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error loading upcoming movies: $e');
    }
  }
}
