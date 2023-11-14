import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}
