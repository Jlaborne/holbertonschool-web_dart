import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final jsonString = await fetchUserData();
  final userMap = jsonDecode(jsonString);
  return userMap["id"];
}
