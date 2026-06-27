// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/constant/fire_base_result.dart';
import 'package:e_commerce/features/auth/data/fire_base/auth_fire_base.dart';
import 'package:e_commerce/features/auth/data/model/user_dto.dart';
import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';
import 'package:e_commerce/features/auth/domain/repo/data_source_interface/auth_data_source_interfce.dart';

class AuthDataSourceImp implements AuthDataSourceInterface {
  AuthDataSourceImp({required this.authFB});
  AuthFireBase authFB;
  @override
  Future<FireBaseResult<AuthEntity>> regstier() async {
    final result = await authFB.regstier();
    switch (result) {
      case SuccessFireBase<UserDto>():
        return SuccessFireBase<AuthEntity>(result.successFB.toEntity());
      case ErorrFireBase<UserDto>():
        return ErorrFireBase<AuthEntity>(result.fireBaseErorrMassege);
    }
  }
}
