import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
  const Duration(seconds: 2),
      () =>
  '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
);

Future<String> getUserId() async {
  String data = await fetchUserData();
  Map<String, dynamic> user = jsonDecode(data);
  return user['id'];
}
