void outer(String name, String id) {
  String message = inner(name);
  print("$message your id is $id");
}

String inner(String name) {
  List<String> partname = name.split(' ');
  String firstname = partname[0];
  String lastname = partname[1][0];
  String initials = lastname + "." + firstname;
  return "Hello Agent $initials";
}
