import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiServices {
  Dio dio = Dio();

  Future<Map<String, dynamic>> post(String path,
      {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.post(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ));

      if (response.statusCode == 200) {
        return response.data;
      }
      return response.data;
    } catch (error) {
      debugPrint("Error: $error");
      throw Exception("Failed to make the request");
    }
  }
}
