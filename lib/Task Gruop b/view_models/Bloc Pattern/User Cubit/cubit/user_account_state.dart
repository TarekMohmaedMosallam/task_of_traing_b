part of 'user_account_cubit.dart';

sealed class UserAccountState extends Equatable {
  const UserAccountState();

  @override
  List<Object> get props => [];
}

final class UserAccountInitial extends UserAccountState {}

final class UserAccountLoading extends UserAccountState {}

final class UserAccountLoaded extends UserAccountState {
  final UserAccount userAccount;
  const UserAccountLoaded(this.userAccount);
}

final class UserAccountError extends UserAccountState {
 final  String error;
 const  UserAccountError({required this.error});
}
