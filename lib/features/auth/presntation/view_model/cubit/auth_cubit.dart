// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';
import 'package:meta/meta.dart';

import 'package:e_commerce/features/auth/domain/use_case/auth_use_case.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthUseCase _authUseCase;
  AuthCubit(this._authUseCase) : super(AuthInitial());
  Future<AuthEntity> regstier() async {
    emit(AuthLoading());
    try {
      final result = await _authUseCase.invoke();
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthErorr());
    }
  }
}
