import 'dart:convert';
import 'package:peggy/features/home/data/models/user_model.dart';
import 'package:peggy/features/home/domain/entities/post.dart';
import 'package:peggy/features/home/domain/entities/user.dart';

class PostModel {
  const PostModel({
    required this.id,
    required this.createdAt,
    required this.imageUrl,
    required this.user,
  });

  final String id;
  final String createdAt;
  final String imageUrl;
  final User user;

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as String,
      createdAt: map['created_at'] ?? '',
      imageUrl: map['urls']['small'] ?? '',
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>).toEntiy,
    );
  }

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Post get toEntity => Post(
        id: id,
        createdAt: createdAt,
        imageUrl: imageUrl,
        user: user,
      );
}
