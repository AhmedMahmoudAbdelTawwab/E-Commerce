import 'package:e_commerce/features/auth/domain/entity/auth_entity.dart';

class UserDto {
  UserDto({
    required this.name,
    required this.password,
    required this.email,
    required this.userImage,
    required this.id,
  });
  String? name;
  String? password;
  String? email;
  String? userImage;
  String? id;
  UserDto.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    password = json["password"];
    email = json["email"];
    userImage = json["userImage"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["password"] = password;
    data["email"] = email;
    data["userImage"] = userImage;
    data["id"] = id;
    return data;
  }

  SignInEntity toEntity() {
    return SignInEntity(
      email: email ?? '',
      password: password ?? '',
      name: name ?? '',
    );
  }
}
