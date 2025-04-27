import 'package:freezed_annotation/freezed_annotation.dart';
part 'resources.freezed.dart';
@freezed
class Resource<T> with _$Resource<T> {
  const factory Resource.initial() = ResourceInitial;
  const factory Resource.loading({T? data}) = ResourceLoading;
  const factory Resource.success({required T data}) = ResourceSuccess;
  const factory Resource.error({@Default('Something went wrong') String message}) = ResourceError;
}