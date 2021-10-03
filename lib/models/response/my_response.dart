
import 'package:freezed_annotation/freezed_annotation.dart';


part 'my_response.freezed.dart';

@freezed
abstract class MyResponse<T> with _$MyResponse{
  const factory MyResponse.data(T data) = Data;
  const factory MyResponse.loading() = Loading;
  const factory MyResponse.error(Object error) = Error;
}