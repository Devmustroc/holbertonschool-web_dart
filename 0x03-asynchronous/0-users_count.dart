import 'dart:convert';

Future<int> fetchUsersCount() => Future.delayed(
  const Duration(seconds: 2),
      () => 19,
);

Future<void> userCount() async {
  int count = await fetchUsersCount();
  print(count);
}
