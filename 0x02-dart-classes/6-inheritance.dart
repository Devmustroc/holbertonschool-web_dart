import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String _user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : _user_password = user_password, super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'].toDouble(),
      user_password: userJson['user_password'],
    );
  }

  set user_password(String newPassword) {
    _user_password = newPassword;
    super.password = newPassword;
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, password: ${isValid()})';
  }
}
