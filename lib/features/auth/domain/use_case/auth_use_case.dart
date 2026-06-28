// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:e_commerce/features/auth/domain/repo/repo_interfasce/auth_repo_interface.dart';

class AuthUseCase {
  AuthRepoInterface _authRepoInterface;
  AuthUseCase({required this._authRepoInterface});
  Future<void> invoke() async => await _authRepoInterface.regstier();
}
