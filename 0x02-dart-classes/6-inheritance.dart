import '6-password.dart';

class User {
  String name;
  int age;
  double height;
  int id;
  String user_password;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
    required this.user_password,
  });

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson["id"],
      name: userJson["name"],
      age: userJson["age"],
      height: userJson["height"],
      user_password: userJson["user_password"],
    );
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isUserPasswordValid()})";
  }

  bool isUserPasswordValid() {
    final pwd = Password(password: user_password);
    return pwd.isValid();
  }
}
