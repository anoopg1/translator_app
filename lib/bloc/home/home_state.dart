part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<dynamic> languages,
    required List<dynamic> languageCode,
    
    required String translatedText,
    required String seletedFromLanguage,
    required String selectedToLnaguage,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
        languages: [],
        translatedText: "",
        seletedFromLanguage: 'From',
        selectedToLnaguage: 'To',
        languageCode: []);
  }
}
