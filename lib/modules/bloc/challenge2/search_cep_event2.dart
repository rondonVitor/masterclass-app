abstract class SearchCepEvent {}

class FetchCepEvent extends SearchCepEvent {
  final String cep;

  FetchCepEvent({
    required this.cep,
  });
}
