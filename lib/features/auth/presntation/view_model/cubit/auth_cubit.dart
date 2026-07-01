// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/neywork/fire_base_result.dart';
import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';
import 'package:e_commerce/features/auth/domain/use_case/auth_use_case.dart';

import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authUseCase) : super(AuthInitial());
  AuthUseCase _authUseCase;
  Future<void> regstier({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());

    final result = await _authUseCase.invoke(email: email, password: password);
    switch (result) {
      case SuccessFireBase<AuthEntity>():
        emit(AuthSuccess(authEntity: result.successFB));
      case ErorrFireBase<AuthEntity>():
        emit(AuthErorr(authErorrMessage: result.fireBaseErorrMassege));
    }
  }

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    final result = await _authUseCase.callLogin(
      email: email,
      password: password,
    );
    switch (result) {
      case SuccessFireBase<bool>():
        emit(AuthLoginSuccess(response: result.successFB));
      case ErorrFireBase<bool>():
        emit(AuthErorr(authErorrMessage: result.fireBaseErorrMassege));
    }
  }
}
