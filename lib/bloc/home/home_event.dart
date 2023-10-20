part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllLanguages() = GetAllLanguages;
  const factory HomeEvent.translateText({
    required String text,
    required String from,
    required String to,
  }) = TranslateText;
}
