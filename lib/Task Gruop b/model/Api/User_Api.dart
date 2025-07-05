import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_of_traing_b/Task%20Gruop%20b/model/DataClass/UserDataClass.dart';

class UserApi {
  static Future<List<Users>> getUserData() async {
    const String url = "https://dummyjson.com/users";
    var uri = Uri.parse(url);
    try {
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
        var usersJson = jsonMap['users'] as List;
        return usersJson.map((e) => Users.fromJson(e)).toList();
      } else {
        print("Error: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("Exception: $e");
      return [];
    }
  }
}