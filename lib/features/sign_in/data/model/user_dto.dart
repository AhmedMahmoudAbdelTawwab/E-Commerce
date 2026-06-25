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
}
