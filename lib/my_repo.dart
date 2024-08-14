import 'package:handling_apis_flutter/user.dart';
import 'package:handling_apis_flutter/web_services.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);
  Future<List<User>> getAllUsers() async {
    return await webServices.getAllUsers();
  }

  Future<User> getUserById(int userId) async {
    return await webServices.getUserById(userId);
  }

  Future<User> createNewUser(User newUser) async {
    return await webServices.createNewUser(newUser,
        'Bearer f2794958cd2abf98b7f5abe6e71efdbe44316040dc3ef820511cf186c434f459');
  }
   Future<dynamic> deleteUser(String id) async {
    return await webServices.deleteUser(id,
        'Bearer f2794958cd2abf98b7f5abe6e71efdbe44316040dc3ef820511cf186c434f459');
  }
}
