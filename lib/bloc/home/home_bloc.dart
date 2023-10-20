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
      emit(state.copyWith(languages: allanguageList,));
    });
  }
}
