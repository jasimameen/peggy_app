import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                return const Center(child: CupertinoActivityIndicator());
              }

              if (state.hasError) {
                const Center(child: Text('Failed to load data'));
              }

              return ListView.separated(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final post = state.posts[index];

                  return PostCard.stacked(
                    profileImages: [
                      AssetConstants.artwork1,
                      post.user!.profileImage,
                    ],
                    postImageUrl: post.imageUrl ?? '',
                    username: post.user?.name ?? 'Kayl Lock',
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
