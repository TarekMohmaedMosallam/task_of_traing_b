import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/Api/User_Api.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/DataClass/UserDataClass.dart';

part 'a_pi_cubit_state.dart';

class APiCubitCubit extends Cubit<APiCubitState> {
  APiCubitCubit() : super(APiCubitInitial());

  Future<void> loginMethods({
    required String username,
    required String password,
  }) async {
    emit(APiCubitLoading());
    try {
      final userDataMap = await UserData.loginUser(
        username: username,
        password: password,
      );
      emit(APiCubitSuccess(userDataMap));
    } catch (e) {
      emit(APiCubitError(e.toString()));
    }
  }
}
