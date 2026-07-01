// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/constant/fire_base_result.dart';
import 'package:e_commerce/features/auth/data/repo/repo_imp/auth_repo_inp.dart';
import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';
import 'package:e_commerce/features/auth/domain/repo/repo_interfasce/auth_repo_interface.dart';

class AuthUseCase {
  AuthRepoInterface _authRepoInterface;
  AuthUseCase({required this._authRepoInterface});

  Future<FireBaseResult<AuthEntity>> invoke({
    required String email,
    required String password,
  }) async => _authRepoInterface.regstier(email: email, password: password);
}

AuthUseCase authUseCaseinjectable() =>
    AuthUseCase(authRepoInterface: authRepoInterfaceinjectable());
