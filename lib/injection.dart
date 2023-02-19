import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:peggy/features/home/data/datasources/home_feed_remote_datasource.dart';
import 'package:peggy/features/home/data/repositories/home_feed_repository_impl.dart';
import 'package:peggy/features/home/domain/repositories/home_feed_repository.dart';
import 'package:peggy/features/home/domain/usecases/get_all_posts.dart';
import 'package:peggy/features/home/presentation/bloc/home_bloc.dart';

import 'core/navigation/app_router.gr.dart';

/// service locater
///
/// ``` dart
/// //eg for accessing autorouter
/// final router = sl<AppRouter>(); // Router instance
/// router.pop(); // usage
/// ```
final sl = GetIt.I;

Future<void> initInjection() async {
  // routing
  sl.registerSingleton<AppRouter>(AppRouter());

  // blocs
  sl.registerLazySingleton(() => HomeBloc(sl()));

  // usecases
  sl.registerLazySingleton(() => GetAllPosts(sl()));

  // repositories
  sl.registerLazySingleton<HomeFeedRepository>(
      () => HomeFeedRepositoryImpl(sl()));

  // datasources
  sl.registerLazySingleton<HomeFeedRemoteDataSource>(
      () => HomeFeedRemoteDataSourceImpl(sl()));

  //! External
  sl.registerLazySingleton(() => Dio());
}
