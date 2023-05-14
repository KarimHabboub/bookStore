import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://www.googleapis.com/books/v1/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?> getData({
    required String path,
  }) async {
    return await dio?.get(
      path,
    );
  }
}
