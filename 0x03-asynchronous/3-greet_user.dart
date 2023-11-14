import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
  const Duration(seconds: 2),
      () =>
  '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
);

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    final Map<String, dynamic> userMap = jsonDecode(userData);
    String username = userMap['username'];
    return 'Hello $username';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    bool credentials = await checkCredentials();
    print('There is a user: $credentials');
    if (credentials) {
      return await greetUser();
    } else {
      return 'No user found';
    }
  } catch (err) {
    return 'error caught: $err';
  }
}
