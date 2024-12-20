abstract class DataState<T> {
  final T? data;
  final String? error;

  DataState({required this.data, required this.error});
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess(T data) : super(data: data, error: null);
}

class DataFailed<T> extends DataState<T> {
  DataFailed(String error) : super(data: null, error: error);
}
