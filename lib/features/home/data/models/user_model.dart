import 'dart:convert';

import 'package:peggy/features/home/domain/entities/user.dart';

class UserModel {
  final String? id;
  final String? updatedAt;
  final String? username;
  final String? name;

  final String profileImage;
  UserModel({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.profileImage,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      updatedAt: map['updated_at'] ?? 'empty',
      username: map['username'] ?? 'empty',
      name: map['name'] ?? 'empty',
      profileImage: map['profile_image']['small'] ?? 'no image',
    );
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);


  User get toEntiy => User(
      id: id,
      updatedAt: updatedAt,
      username: username,
      name: name,
      profileImage: profileImage);
}
