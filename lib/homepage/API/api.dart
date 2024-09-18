import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/movie/popular',
    queryParameters: {'api_key': '71d368cd5ef3e91680c52686cc513612'}, 
  ));
});


