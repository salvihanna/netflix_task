import 'package:dio/dio.dart';
//import 'package:get/get.dart';

class Api {
  static final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/movie/',
    queryParameters: {'api_key': '71d368cd5ef3e91680c52686cc513612'},
  ));
}
