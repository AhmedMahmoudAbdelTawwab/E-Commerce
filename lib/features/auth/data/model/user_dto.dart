import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';

class UserDto {
  UserDto({this.name, this.password, this.email, this.userImage, this.uid});
  String? name;
  String? password;
  String? email;
  String? userImage;
  String? uid;
  UserDto.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    password = json["password"];
    email = json["email"];
    userImage = json["userImage"];
    uid = json["uid"];
  }

  AuthEntity toEntity() {
    return AuthEntity(email: email ?? '', id: uid ?? '', name: name ?? '');
  }
}
