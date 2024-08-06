// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'my_cubit.dart';

@immutable
sealed class MyState {}

final class MyInitial extends MyState {}

class GetAllUsers extends MyState {
  final List<User> allUsersList;
  GetAllUsers(this.allUsersList);
}
