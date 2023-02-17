import 'package:peggy/core/type_defs.dart';
import 'package:peggy/features/home/domain/entities/post.dart';

abstract class HomeFeedRepository {
  FutureEitherList<Post> getallPosts();
}
