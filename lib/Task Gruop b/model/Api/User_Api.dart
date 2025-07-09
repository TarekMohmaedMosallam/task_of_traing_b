import 'dart:convert';
import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/DataClass/UserDataClass.dart';

class UserData {
  static Future loginUser({
    required String username,
    required String password,
  }) async {
    final dioRequest = dio.Dio();
    try {
      var respons = await dioRequest.post(
        "https://dummyjson.com/auth/login",
        data: {"username": username, "password": password},
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      if (respons.statusCode == 200) {
        return respons.data;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
