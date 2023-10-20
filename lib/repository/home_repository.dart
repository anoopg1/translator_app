import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:language_translator/core/api_endpoints.dart';
import 'package:language_translator/services/home_services.dart';
import 'package:http/http.dart' as http;

@Singleton(as: HomeServices)
class HomeRepository implements HomeServices {
  @override
  Future<List<dynamic>> getAllLanguages() async {
    List<dynamic> languages = [];
    await http
        .get(Uri.parse(allLanguagesurl), headers: headers)
        .then((response) {
      if (response.statusCode == 200) {
        List<dynamic> allanguages = jsonDecode(response.body);
        print("All Languages:$allanguages");
        languages = allanguages.map((langMap) => langMap['language']).toList();
        print('final language data: $languages');
      } else {
        print('Request failed with status: ${response.statusCode}');
        return [];
      }
    });
    return languages;
  }

  @override
  Future<void> translateText(
      {required String text, required String to, required String from}) {
    // TODO: implement translateText
    throw UnimplementedError();
  }
}
