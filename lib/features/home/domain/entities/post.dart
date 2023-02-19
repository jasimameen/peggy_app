
import 'user.dart';

class Post {
  final String? id;
  final String? createdAt;
  final String? imageUrl;
  final User? user;
  Post({
    required this.id,
    required this.createdAt,
    required this.imageUrl,
    required this.user,
  });
}
