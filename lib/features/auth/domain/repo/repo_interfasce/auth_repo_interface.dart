import 'package:e_commerce/core/constant/fire_base_result.dart';
import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';

abstract interface class AuthRepoInterface {
  Future<FireBaseResult<AuthEntity>> regstier();
}
