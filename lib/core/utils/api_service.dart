import 'package:dio/dio.dart';

class ApiService
{
  final baseUrl = 'http://api.themoviedb.org/3/';
  final dio = Dio();
  Future<Map<String, dynamic>> get({required String endPoint}) async{
    final response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }

}