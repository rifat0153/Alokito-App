import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_state.freezed.dart';

@freezed
class MyState<T> with _$MyState{
    const factory MyState.data(T data) = Data;
  const factory MyState.loading() = Loading;
  const factory MyState.error(String message) = Error;
}