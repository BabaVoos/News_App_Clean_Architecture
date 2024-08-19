import 'package:dio/dio.dart';

/// Represents the state of a data operation, encapsulating either the resulting data
/// (on success) or an error (on failure). Designed to be extended by specific
/// success (`DataSuccess`) and error (`DataError`) states for clear and type-safe
/// handling of data operation outcomes.
abstract class DataState<T> {
  final T? data;
  final DioException? error;

  const DataState(this.data, this.error);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data, null);
}

class DataError<T> extends DataState<T> {
  const DataError(DioException error) : super(null, error);
}
