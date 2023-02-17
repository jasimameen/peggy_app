// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';


class Post extends Equatable {
  final int id;
  final String user;
  final String image;
  final DateTime createdAt;
  
  const Post({
    required this.id,
    required this.user,
    required this.image,
    required this.createdAt,
  });

  @override
  List<Object> get props => [id, user, image, createdAt];
}
