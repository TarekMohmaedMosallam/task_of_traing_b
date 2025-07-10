import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/Api/User_Api.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/DataClass/UserDataClass.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginMethods({
    required String username,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      final userDataMap = await UserData.loginUser(
        username: username,
        password: password,
      );
      emit(LoginSuccess(userDataMap, "Login Successful"));
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }
}
