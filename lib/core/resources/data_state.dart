import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? error;

  DataState({this.data, this.error});

  factory DataState.loading() {
    return LoadingDataState();
  }
}

class LoadingDataState<T> extends DataState<T> {
  LoadingDataState() : super();
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  DataFailed(DioException error) : super(error: error);
}
