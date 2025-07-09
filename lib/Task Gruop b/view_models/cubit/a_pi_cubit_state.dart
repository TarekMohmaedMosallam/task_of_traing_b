part of 'a_pi_cubit_cubit.dart';

@immutable
sealed class APiCubitState {}

final class APiCubitInitial extends APiCubitState {}

final class APiCubitLoading extends APiCubitState {}

final class APiCubitSuccess extends APiCubitState {
 
  final Map<String, dynamic> userData;

  APiCubitSuccess(this.userData);
}

final class APiCubitError extends APiCubitState {
  final String message;
  APiCubitError(this.message, );
}
