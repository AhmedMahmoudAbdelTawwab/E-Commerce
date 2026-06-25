// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/constant/fire_base_result.dart';
import 'package:e_commerce/features/sign_in/domain/entity/sign_in_entity.dart';
import 'package:e_commerce/features/sign_in/domain/repo/repo_interfasce/sign_in_repo_interface.dart';

class SignInUseCase {
  SignInrepoInterface _repo;
  SignInUseCase(this._repo);
  Future<FireBaseResult<SignInEntity>> invoke() => _repo.signIn();
}
