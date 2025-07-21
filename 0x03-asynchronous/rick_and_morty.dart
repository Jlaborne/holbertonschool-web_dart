import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  final url = Uri.parse('https://rickandmortyapi.com/api/character');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final results = data["results"];
      for (var character in results) {
        print(character["name"]);
      }
    } else {
      print('error caught: ${response.statusCode}');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
