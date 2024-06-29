import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
/// Represents all app failures
class Failure implements Exception {
  const Failure._();

  /// Expected value is null or empty
  const factory Failure.empty() = _EmptyFailure;

  ///  Expected value has invalid format
  const factory Failure.unprocessableEntity({required String message}) =
      _UnprocessableEntityFailure;

  /// Represent 401 error
  const factory Failure.unauthorized() = _UnauthorizedFailure;

  /// Represents 400 error
  const factory Failure.badRequest() = _BadRequestFailure;

  /// Represents error when saving or reading from the cache
  const factory Failure.cacheFailure() = _CacheRequestFailure;

  /// TODO: Deal with this
  const factory Failure.serverError() = _ServerFailure;

  /// Represents a non indentified error
  const factory Failure.unknown({required String? message}) = _Unknown;

  /// Authentication errors
  ///
  const factory Failure.authUserCancelledFlow({required String? message}) = _AuthUserCancelledFlowFailure;

  /// Get the error message for specified failure
  String get error => this is _UnprocessableEntityFailure
      ? (this as _UnprocessableEntityFailure).message
      : this is _AuthUserCancelledFlowFailure
      ? (this as _AuthUserCancelledFlowFailure).message ?? ''

      : '$this';

  // /// Get the error message for specified failure
  // String get error => this is _UnprocessableEntityFailure
  //     ? (this as _UnprocessableEntityFailure).message
  //     : '$this';
}

// // ignore_for_file: public_member_api_docs

// import 'package:equatable/equatable.dart';

// ///Abstract class that models the most common failures scenarios of app
// // abstract class Failure extends Equatable {
// abstract class Failure {
//   // @override
//   // List<Object> get props => [];

//   String? get message;

//   // Failure(this.message);

//   // @override
//   // String toString() => '$message';
// }

// /// Server Failure
// class ServerFailure extends Failure {
//   ServerFailure({this.message});

//   @override
//   final String? message;

//   // @override
//   // String? get message => '$message';
// }

// /// Cache Failure
// class CacheFailure extends Failure {
//   CacheFailure({message});

//   @override
//   String? get message => message;
// }

// import 'package:equatable/equatable.dart';

// /// Abstract class that models the most common failures scenarios
// abstract class Failure extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// /// Server Failure
// class ServerFailure extends Failure {}

// /// Cache Failure
// class CacheFailure extends Failure {}

enum AuthExceptionCodes {
  authorize_and_exchange_code_failed
}