import 'package:handling_apis_flutter/user.dart';
import 'package:handling_apis_flutter/web_services.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);
  Future<List<User>> getAllUsers() async {
    var response = await webServices.getAllUsers();
    return response
        .map((singleUserDataFromJson) =>
            User.fromJson(singleUserDataFromJson.toJson()))
        .toList();
  }
}
