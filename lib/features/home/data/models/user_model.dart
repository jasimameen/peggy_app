import 'package:peggy/features/home/domain/entities/user.dart';

class UserModel {
  final String id;
  final String updatedAt;
  final String username;
  final String name;

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
      updatedAt: map['updated_at'] ?? '',
      username: map['username'] ?? '',
      name: map['name'] ?? 'no-name',
      profileImage: map['profile_image']['small'] ?? '',
    );
  }

  User get toEntiy => User(
      id: id,
      updatedAt: updatedAt,
      username: username,
      name: name,
      profileImage: profileImage);
}
