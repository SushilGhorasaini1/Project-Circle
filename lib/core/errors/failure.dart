import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure{
  const factory Failure.serverError() = _ServerError;
  const factory Failure.cancelledByUser() = _CancelledByUser;
  const factory Failure.noInternetConnection() = _NoInternetConnection;
}