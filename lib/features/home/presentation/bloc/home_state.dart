part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<Post> posts,
    required bool isLoading,
    required bool hasError,
  }) = _HState;

  factory HomeState.initial() => HomeState(
        posts: [],
        isLoading: false,
        hasError: false,
      );
}
