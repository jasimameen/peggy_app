import 'package:dio/dio.dart';
import 'package:peggy/core/error/exceptions.dart';
import 'package:peggy/core/error/failures.dart';
import 'package:peggy/core/type_defs.dart';
import 'package:peggy/features/home/data/datasources/apis.dart';
import 'package:peggy/features/home/data/models/post_model.dart';

abstract class HomeFeedRemoteDataSource {
  /// Calls the unsplash photos endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  FutureList<PostModel> getAllPosts();
}

class HomeFeedRemoteDataSourceImpl implements HomeFeedRemoteDataSource {
  final Dio _client;

  HomeFeedRemoteDataSourceImpl(this._client);

  @override
  FutureList<PostModel> getAllPosts() async {
    try {
      final res = await _client.get(Apis.postsEndpoint);

      if (res.statusCode != 200) throw ServerException('requst failed');

      final posts = (res.data['results'] as List)
          .map((map) => PostModel.fromMap(map))
          .toList();

      return posts;
    } on Exception catch (err) {
      throw ServerException('$err');
    }
  }
}
