import 'package:e_commerce/core/neywork/fire_base_result.dart';

import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';

abstract interface class AuthDataSourceInterface {
  Future<FireBaseResult<AuthEntity>> regstier({
    required String email,
    required String password,
  });

  Future<FireBaseResult<bool>> login({
    required String email,
    required String password,
  });
}
