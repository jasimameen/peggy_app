import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/type_defs.dart';
import '../../domain/entities/post.dart';
import '../../domain/repositories/home_feed_repository.dart';
import '../datasources/home_feed_remote_datasource.dart';

class HomeFeedRepositoryImpl implements HomeFeedRepository {
  final HomeFeedRemoteDataSource _remoteDataSource;

  HomeFeedRepositoryImpl(this._remoteDataSource);

  @override
  FutureEitherList<Post> getallPosts() async {
    try {
      final remotePosts = await _remoteDataSource.getAllPosts();
      return right(remotePosts.map((postModel) => postModel.toEntity).toList());
    } on ServerException {
      return left(ServerFailure());
    } on Exception {
      return left(ClientFailure());
    }
  }
}
