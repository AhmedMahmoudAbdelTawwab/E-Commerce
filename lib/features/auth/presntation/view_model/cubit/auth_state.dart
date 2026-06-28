part of 'auth_cubit.dart';

@immutable
sealed class AuthState<AuthEntity> {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  AuthEntity authSuccess;
  AuthSuccess(this.authSuccess);
}

final class AuthErorr extends AuthState {
  String authErorrMessage;
  AuthErorr(this.authErorrMessage);
}
