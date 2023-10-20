part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<dynamic> languages,
      required String translatedText,
    }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(languages: [], translatedText: "");
  }
}
