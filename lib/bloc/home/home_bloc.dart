import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:language_translator/services/home_services.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices homeServices;
  HomeBloc(this.homeServices) : super(HomeState.initial()) {
    on<GetAllLanguages>((event, emit) async {
      final allanguageList = await homeServices.getAllLanguages();
      print("Final Language List:$allanguageList");
      emit(state.copyWith(
        languages: allanguageList,
     
      ));
    });
    on<TranslateText>((event, emit) async {
      final translatedTextBloc = await homeServices.translateText(
          text: event.text, to: event.to, from: event.from);
      emit(state.copyWith(translatedText: translatedTextBloc));

      print("event.text:${event.text}");
      print("event.text:${event.from}");
      print("event.text:${event.to}");

      print("Final Translated String:$translatedTextBloc");
    });
  }
}
