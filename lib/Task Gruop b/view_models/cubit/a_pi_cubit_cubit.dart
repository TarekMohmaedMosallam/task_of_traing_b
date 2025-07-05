import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/Api/User_Api.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/DataClass/UserDataClass.dart';

part 'a_pi_cubit_state.dart';

class APiCubitCubit extends Cubit<APiCubitState> {
  APiCubitCubit() : super(APiCubitInitial());

  Future<void> loginAuth({
    required String username,
    required String password,
  }) async {
    emit(APiCubitLoginRequest(loginUser: [username], Password: [password]));
    final users = await UserApi.getUserData();
    final user = users.firstWhere(
      (u) => u.username == username && u.password == password,
      orElse: () => Users(username: null, password: null), // Replace with a default Users object
    );
    if (user.username != null && user.password != null) {
      emit(APiCubitLoginSucess(user: [user.username ?? ""]));
    } else {
      emit(APiCubitLoginFailed(error: "Invalid username or password"));
    }
  }
}