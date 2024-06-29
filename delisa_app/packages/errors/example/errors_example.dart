import 'package:errors/errors.dart';

void main() {
  // final failure = CacheFailure();
  final failure = Failure.cacheFailure();
  // ignore: avoid_print
  print('failure: ${failure.runtimeType}');
}
