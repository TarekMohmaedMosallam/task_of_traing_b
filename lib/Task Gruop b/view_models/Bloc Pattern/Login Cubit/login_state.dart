part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final String sucess;

  final Map<String, dynamic> userData;

  LoginSuccess(this.userData, this.sucess);
}

final class LoginError extends LoginState {
  final String errorMessage;
  LoginError(this.errorMessage);
}
