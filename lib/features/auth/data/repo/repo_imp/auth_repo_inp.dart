// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/constant/fire_base_result.dart';
import 'package:e_commerce/features/auth/data/repo/data_source_imp/auth_data_source_imp.dart';
import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';
import 'package:e_commerce/features/auth/domain/repo/data_source_interface/auth_data_source_interfce.dart';
import 'package:e_commerce/features/auth/domain/repo/repo_interfasce/auth_repo_interface.dart';

class AuthRepoInp implements AuthRepoInterface {
  AuthDataSourceInterface _authDataSourceImp;
  AuthRepoInp(this._authDataSourceImp);
  @override
  Future<FireBaseResult<AuthEntity>> regstier({
    required String email,
    required String password,
  }) {
    final result = _authDataSourceImp.regstier(
      email: email,
      password: password,
    );
    return result;
  }
}

AuthRepoInterface authRepoInterfaceinjectable() =>
    AuthRepoInp(authDataSourceInterfaceinjectable());
