import 'package:peggy/common/constants/constants.dart';
import 'package:peggy/core/type_defs.dart';
import 'package:peggy/features/home/data/models/post_model.dart';

abstract class HomeFeedRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  FutureList<PostModel> getAllPosts();
}

class HomeFeedRemoteDataSourceImpl implements HomeFeedRemoteDataSource {
  @override
  FutureList<PostModel> getAllPosts() async {
    // TODO: get data from api insted of hardcoding
    await Future.delayed(const Duration(seconds: 2));
    return Dummy.postmodels;
  }
}
