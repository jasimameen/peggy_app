// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:peggy/features/home/domain/entities/post.dart';

class PostModel {
  final int id;
  final String user;
  final String image;
  final DateTime createdAt;
  PostModel({
    required this.id,
    required this.user,
    required this.image,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'user': user,
      'image': image,
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as int,
      user: map['user'] as String,
      image: map['image'] ?? '',
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);


  Post toEntity() => Post(id: id, user: user, image: image, createdAt: createdAt);
}
