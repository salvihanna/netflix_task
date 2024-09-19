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
      movies.value = (response.data['results'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
    } catch (e) {
      throw Exception('Failed to load movies');
    } finally {
      isLoading.value = false;
    }
  }

  void fetchUpcomingMovies() async {
    try {
      final response = await dio.get('upcoming');
      upcomingMovies.value = (response.data['results'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
    } catch (e) {
      throw Exception('Failed to load upcoming movies');
    }
  }
}
