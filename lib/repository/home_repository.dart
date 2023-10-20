import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:language_translator/core/api_endpoints.dart';

import 'package:language_translator/services/home_services.dart';
import 'package:http/http.dart' as http;

String translatedString = "";

@Singleton(as: HomeServices)
class HomeRepository implements HomeServices {
  @override
  Future<List<dynamic>> getAllLanguages() async {
    List<dynamic> languages = [];
    List<dynamic> languageCode = [];

    await http
        .get(Uri.parse(allLanguagesurl), headers: headers)
        .then((response) {
      if (response.statusCode == 200) {
        List<dynamic> allanguages = jsonDecode(response.body);
        print("All Languages:$allanguages");
        languages = allanguages.map((langMap) => langMap['code']).toList();
        languageCode =
            allanguages.map((langMap) => langMap['language']).toList();

        print('final language data: $languages');
        return languageCode;
      } else {
        print('Request failed with status: ${response.statusCode}');
        return [];
      }
    });
    return languages;
  }

  @override
  Future<String> translateText(
      {required String text, required String to, required String from}) async {
    final body = {
      'from': from,
      'to': to,
      'text': text,
    };

    final response = await http.post(
      Uri.parse(translatelextUrl),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);

      final translatedString = jsonResponse['trans'];
      print("translatedString: $translatedString");
      return translatedString;
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
    return translatedString;
  }
}
