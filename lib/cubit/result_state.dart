import 'package:freezed_annotation/freezed_annotation.dart';

import '../network_exceptions.dart';

part 'result_state.freezed.dart';

@freezed
abstract class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;
  const factory ResultState.loading() = Loading<T>;
  const factory ResultState.success(T data) = Success<T>;
  const factory ResultState.error(NetworkExceptions networkExceptions) =
      Error<T>;
  // const factory ResultState.initial() = _Initial;
  // const factory ResultState.getAllUsers(List<User> usersList) = _GetAllUsers;
  // const factory ResultState.getUserDetails(User user) = _GetUserDetails;
  // const factory ResultState.createNewUser(User user) = _CreateNewUser;
  // const factory ResultState.deleteUser() = _DeleteUser;
}
