abstract class SearchCepState {}

class SearchCepSuccess implements SearchCepState {
  final Map data;

  SearchCepSuccess(this.data);
}

class SearchCepEmpty implements SearchCepState {}

class SearchCepLoading implements SearchCepState {}

class SearchCepError implements SearchCepState {
  final String message;

  SearchCepError(this.message);
}
