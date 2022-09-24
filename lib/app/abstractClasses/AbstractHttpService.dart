import 'package:dio/dio.dart';

abstract class AbstractHttpService {
  Future<Response> post({required String url, dynamic data});
  Future<Response> get({required String url, dynamic queryParameters});
  Future<Response> delete({required String url, dynamic data});
  Future<Response> put({required String url, dynamic data});
}
