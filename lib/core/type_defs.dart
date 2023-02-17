import 'package:fpdart/fpdart.dart';
import 'package:peggy/core/error/failures.dart';

typedef FutureList<T> = Future<List<T>>;

typedef FutureEither<T> = Future<Either<Failure, T>>;

typedef FutureEitherList<T> = FutureEither<List<T>>;

typedef EitherList<T> = Either<Failure, List<T>>;
