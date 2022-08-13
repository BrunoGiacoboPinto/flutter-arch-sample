import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.error({
    required String message,
    Object? error,
    StackTrace? stackTrace,
  }) = _ResultError;

  const factory Result.value({required T value}) = _ResultValue;
}
