import 'package:e_commerce/core/constant/fire_base_result.dart';
import 'package:e_commerce/features/sign_in/domain/entity/sign_in_entity.dart';

abstract interface class SignInrepoInterface {
  Future<FireBaseResult<SignInEntity>> signIn();
}
