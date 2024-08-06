import 'package:bloc/bloc.dart';
import 'package:handling_apis_flutter/my_repo.dart';
import 'package:handling_apis_flutter/user.dart';
import 'package:meta/meta.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;

  MyCubit(this.myRepo) : super(MyInitial());

  void emitGetAllUsers(List<User> allUsersList) {
    myRepo.getAllUsers().then((usersList) {
      emit(GetAllUsers(usersList));
    });
  }
}
