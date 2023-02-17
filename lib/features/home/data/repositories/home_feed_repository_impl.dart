import 'package:fpdart/fpdart.dart';
import 'package:peggy/core/error/exceptions.dart';
import 'package:peggy/core/error/failures.dart';
import 'package:peggy/features/home/data/datasources/home_feed_remote_datasource.dart';
import 'package:peggy/features/home/domain/entities/post.dart';
import 'package:peggy/core/type_defs.dart';
import 'package:peggy/features/home/domain/repositories/home_feed_repository.dart';

class HomeFeedRepositoryImpl implements HomeFeedRepository {
  final HomeFeedRemoteDataSource _remoteDataSource;

  HomeFeedRepositoryImpl(this._remoteDataSource);

  @override
  FutureEitherList<Post> getallPosts() async {
    try {
      final res = await _remoteDataSource.getAllPosts();
      return right(res.map((model) => model.toEntity()).toList());
    } on ServerException {
      return left(ServerFailure());
    } on Exception {
      return left(ClientFailure());
    }
  }
}
