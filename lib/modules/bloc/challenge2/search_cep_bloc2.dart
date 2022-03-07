import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterclass_app/modules/bloc/challenge2/search_cep_state2.dart';
import 'package:masterclass_app/modules/bloc/challenge2/search_cep_event2.dart';

class SearchCepBloc2 extends Bloc<SearchCepEvent, SearchCepState> {
  SearchCepBloc2() : super(SearchCepEmpty()) {
    on<FetchCepEvent>(_fetchCep);
  }

  Future<void> _fetchCep(
    FetchCepEvent event,
    Emitter<SearchCepState> emit,
  ) async {
    emit(SearchCepLoading());
    try {
      final response =
          await Dio().get('https://viacep.com.br/ws/${event.cep}/json/');
      emit(SearchCepSuccess(response.data));
    } catch (e) {
      emit(SearchCepError('Deu ruim!'));
    }
  }
}
