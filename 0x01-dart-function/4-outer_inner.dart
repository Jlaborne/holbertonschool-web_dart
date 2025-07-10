void outer(String name, String id) {
  var newName = inner(name);
  print("Hello Agent $newName your id is $id");
}

String inner(String name) {
  var list = name.split(' ');
  var firstname = list[0];
  var initial = list[1].substring(0, 1);
  return ("$initial.$firstname");
}
