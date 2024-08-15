import 'package:bloc/bloc.dart';
import '../network_exceptions.dart';
import 'result_state.dart';
import '../my_repo.dart';
import '../user.dart';

class MyCubit extends Cubit<ResultState<User>> {
  final MyRepo myRepo;

  MyCubit(this.myRepo) : super(const Idle());

  // void emitGetAllUsers(List<User> allUsersList) async {
  //   var data = await myRepo.getAllUsers();
  //   data.when(success: (List<User> allUsers) {
  //     emit(ResultState.success(allUsers));
  //   }, failure: (NetworkExceptions networkExceptions) {
  //     emit(ResultState.error(networkExceptions));
  //   });

 
  // }

  // void emitGetUserDetails(int userId) {
  //   myRepo.getUserById(userId).then((userDetails) {
  //     emit(GetUserDetails(userDetails));
  //   });
  // }

  void emitCreateNewUser(User newUser)async {

var data = await myRepo.createNewUser(newUser);
    data.when(success: (User newUser) {
      emit(ResultState.success(newUser));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(ResultState.error(networkExceptions));
    });
    
 
  }

  // void emitDeleteUser(String id) {
  //   myRepo.deleteUser(id).then((data) {
  //     emit(DeleteUser(data));
  //   });
  // }
}
