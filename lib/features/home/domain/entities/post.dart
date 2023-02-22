import 'user.dart';

enum PostType {
  single,
  stacked,
}

class Post {
  const Post({
    required this.id,
    required this.createdAt,
    required this.imageUrl,
    this.width,
    this.height,
    required this.user,
    this.type = PostType.single,
  });

  final String? id;
  final String? createdAt;
  final String? imageUrl;
  final int? width;
  final int? height;

  final User? user;
  final PostType type;
}
