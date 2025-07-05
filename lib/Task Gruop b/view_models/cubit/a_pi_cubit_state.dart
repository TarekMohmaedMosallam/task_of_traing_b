part of 'a_pi_cubit_cubit.dart';

@immutable
sealed class APiCubitState {}

class APiCubitInitial extends APiCubitState {}

class APiCubitLoginRequest extends APiCubitState {
  final List<String> loginUser;
  final List<String> Password;

  APiCubitLoginRequest({required this.loginUser, required this.Password});
}

class APiCubitLoginSucess extends APiCubitState {
  final List<String> user;

  APiCubitLoginSucess({required this.user});
}

class APiCubitLoginFailed extends APiCubitState {
  final String error;
  APiCubitLoginFailed({required this.error});
}