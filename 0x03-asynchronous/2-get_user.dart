Future<String> fetchUser() =>
    // Imagine that this function is
// more complex and slow.
Future.delayed(
  const Duration(seconds: 2),
      () => throw 'Cannot locate user',
);

Future<void> getUser() async {
  try {
    String user = await fetchUser();
    print(user);
  } catch (e) {
    print('error caught: $e');
  }
}
