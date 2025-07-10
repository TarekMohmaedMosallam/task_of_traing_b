import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/Api/User_Api.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/DataClass/UserDataClass.dart';

part 'user_account_state.dart';

class UserAccountCubit extends Cubit<UserAccountState> {
  UserAccountCubit() : super(UserAccountInitial());

  Future<void> getUserAccount() async {
    emit(UserAccountLoading());
    try {
      final userAccount = await UserData.getUserAccount(
        firstName: '',
        lastName: '',
        image: '',
        accessToken: ''
      );
      emit(UserAccountLoaded(userAccount));
    } catch (e) {
      emit(UserAccountError(error: e.toString()));
    }
  }
}
