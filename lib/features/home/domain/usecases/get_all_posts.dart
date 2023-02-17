import 'package:peggy/core/type_defs.dart';
import 'package:peggy/core/usecase/usecases.dart';
import 'package:peggy/features/home/domain/entities/post.dart';
import 'package:peggy/features/home/domain/repositories/home_feed_repository.dart';

class GetAllPosts implements UseCase<List<Post>, NoParams> {
  final HomeFeedRepository _repository;

  GetAllPosts(this._repository);

  @override
  FutureEitherList<Post> call(NoParams params) async {
    return await _repository.getallPosts();
  }
}
