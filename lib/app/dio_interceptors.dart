import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomDioInterceptors extends Interceptor {
  final SharedPreferences localStorage;

  CustomDioInterceptors(this.localStorage);
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String? token = localStorage.getString('token');
    if (token == null || token.isEmpty) {
      return super.onRequest(options, handler);
    }

    final optionsWithToken =
        options.copyWith(headers: {'Authorization': 'Bearer $token'});

    return super.onRequest(optionsWithToken, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        'error[${err.response?.statusCode}] => [${err.response?.data}] [${err.requestOptions.path}]');
    return super.onError(err, handler);
  }
}
