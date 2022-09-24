import 'package:dio/dio.dart';
import 'package:mercado_poo/app/abstractClasses/AbstractHttpService.dart';
import 'package:mercado_poo/app/dio_interceptors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IHttpService<Params> extends AbstractHttpService {
  Future<Dio> _dio() async {
    var prefs = await SharedPreferences.getInstance();
    var url = prefs.getString('currentUrl')!;
    return Dio(
      BaseOptions(
        baseUrl: url,
        connectTimeout: 9000,
        sendTimeout: 9000,
      ),
    );//..interceptors.add(CustomDioInterceptors(prefs));
  }

  @override
  Future<Response> delete({required String url, data}) async {
    try {
      var dio = await _dio();
      var response = await dio.delete(url, queryParameters: data);

      return response;
    } catch (e) {
      return throw Exception(e);
    }
  }

  @override
  Future<Response> get({required String url, queryParameters}) async {
    try {
      var dio = await _dio();
      var response = await dio.get(
        url,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      return throw Exception(e);
    }
  }

  @override
  Future<Response> post({required String url, data}) async {
    try {
      var dio = await _dio();
      var response = await dio.post(url, data: data);
      return response;
    } catch (e) {
      return throw Exception(e);
    }
  }

  @override
  Future<Response> put({required String url, data}) async {
    try {
      var dio = await _dio();
      var response = await dio.put(url, data: data);
      return response;
    } catch (e) {
      return throw Exception(e);
    }
  }

  @override
  Future<Response> patch({required String url, data}) async {
    try {
      var dio = await _dio();
      var response = await dio.patch(url, data: data);
      return response;
    } catch (e) {
      print('erro patch $e');
      return throw Exception(e);
    }
  }
}
