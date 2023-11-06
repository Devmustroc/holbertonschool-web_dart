class User {
  String? name;
  int? age;
  double? height;
  toJson() {
    return {
      "name": name,
      "age": age,
      "height": height,
    };
  }
}
