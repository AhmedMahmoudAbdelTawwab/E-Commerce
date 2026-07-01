part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

// ignore: must_be_immutable
final class AuthSuccess extends AuthState {
  AuthEntity _authEntity;
  AuthSuccess({required this._authEntity});
}

final class AuthLoginSuccess extends AuthState {
  bool _response;
  AuthLoginSuccess({required this._response});
}

// ignore: must_be_immutable
final class AuthErorr extends AuthState {
  String authErorrMessage;
  AuthErorr({required this.authErorrMessage});
}
