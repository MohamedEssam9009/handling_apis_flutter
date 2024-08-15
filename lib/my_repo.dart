import 'package:handling_apis_flutter/api_result.dart';
import 'package:handling_apis_flutter/network_exceptions.dart';

import 'user.dart';
import 'web_services.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);
  Future<ApiResult<List<User>>> getAllUsers() async {
    try {
      var response = await webServices.getAllUsers();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  Future<User> getUserById(int userId) async {
    return await webServices.getUserById(userId);
  }

  Future<ApiResult<User>> createNewUser(User newUser) async {
    try {
      var response = await webServices.createNewUser(
        newUser,
        'Bearer f2794958cd2abf98b7f5abe6e71efdbe44316040dc3ef820511cf186c434f459',
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<dynamic> deleteUser(String id) async {
    return await webServices.deleteUser(id,
        'Bearer f2794958cd2abf98b7f5abe6e71efdbe44316040dc3ef820511cf186c434f459');
  }
}
