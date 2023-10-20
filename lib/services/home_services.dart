abstract class HomeServices {
  Future<List<dynamic>> getAllLanguages();
  Future<void> translateText(
      {required String text, required String to, required String from});
}
