import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:peggy/features/home/domain/entities/post.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/presentation/widgets/post_card.dart';

import '../bloc/home_bloc.dart';
import 'filter_bar.dart';

class HomeExploreTabView extends StatelessWidget {
  const HomeExploreTabView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getPosts());
    });

    return Column(
      children: [
        // filterbar
        const FilterBar(),

        // post cards
        Flexible(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(
                  child: FractionallySizedBox(
                    widthFactor: .45,
                    child: Lottie.asset(
                      LottiFiles.loadingPaint,
                      repeat: true,
                      reverse: true,
                      animate: true,
                    ),
                  ),
                );
              }

              if (state.hasError) {
                const Center(child: Text('Failed to load data'));
              }

              return ListView.separated(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final post = state.posts[index];

                  return PostCard(
                    post: post,
                    type: PostType.stacked,
                  );
                },
                separatorBuilder: (_, __) => UIConstants.divider,
                physics: const BouncingScrollPhysics(),
              );
            },
          ),
        ),
      ],
    );
  }
}
