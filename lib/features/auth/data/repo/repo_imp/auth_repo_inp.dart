// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/constant/fire_base_result.dart';
import 'package:e_commerce/features/auth/data/repo/data_source_imp/auth_data_source_imp.dart';
import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';
import 'package:e_commerce/features/auth/domain/repo/repo_interfasce/auth_repo_interface.dart';

class AuthRepoInp implements AuthRepoInterface {
  AuthDataSourceImp _authDataSourceImp;
  AuthRepoInp({required this._authDataSourceImp});
  @override
  Future<FireBaseResult<AuthEntity>> regstier() {
    final result = _authDataSourceImp.regstier();
    return result;
  }
}
