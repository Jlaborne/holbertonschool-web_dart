import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final jsonString = await fetchUserData();
    final userMap = jsonDecode(jsonString);
    final user = userMap["username"];
    return "Hello $user";
  } catch (err) {
    return "error caught: $err";
  }
}

Future<String> loginUser() async {
  try {
    final isLogin = await checkCredentials();
    if (isLogin) {
      print("There is a user: $isLogin");
      return (await greetUser());
    } else {
      return "Wrong credentials";
    }
  } catch (err) {
    return "error caught: $err";
  }
}
