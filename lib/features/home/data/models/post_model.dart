// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:peggy/features/home/data/models/user_model.dart';
import 'package:peggy/features/home/domain/entities/post.dart';
import 'package:peggy/features/home/domain/entities/user.dart';

class PostModel {
  const PostModel({
    required this.id,
    required this.createdAt,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.user,
  });

  final String id;
  final String createdAt;
  final String imageUrl;
  final int width;
  final int height;
  final User user;

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as String,
      createdAt: map['created_at'] ?? '',
      imageUrl: map['urls']['small'] ?? '',
      width: map['width'],
      height: map['height'],
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>).toEntiy,
    );
  }

  Post get toEntity => Post(
        id: id,
        createdAt: createdAt,
        imageUrl: imageUrl,
        width: width,
        height: height,
        user: user,
      );
}
