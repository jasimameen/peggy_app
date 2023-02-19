// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:peggy/core/type_defs.dart';
import 'package:peggy/core/usecase/usecases.dart';
import 'package:peggy/features/home/domain/entities/post.dart';
import 'package:peggy/features/home/domain/repositories/home_feed_repository.dart';
import 'package:peggy/features/home/domain/usecases/get_all_posts.dart';

import '../../../../core/error/failures.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllPosts _getAllPosts;

  HomeBloc(this._getAllPosts) : super(HomeState.initial()) {
    //
    on<_GetPosts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final postsResponce = await _getAllPosts(NoParams());

      emit(postsResponce.fold(
          (l) => state.copyWith(isLoading: false, hasError: true),
          (posts) => state.copyWith(
                isLoading: false,
                posts: posts,
                hasError: false,
              )));
    });
  }
}
