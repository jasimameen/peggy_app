import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/constants.dart';
import '../../../../core/enums/user_enum.dart';
import '../../../../common/presentation/widgets/app_bar.dart';
import '../../../../common/presentation/widgets/profile_avathar.dart';

const _emptyText =
    "Nothing to see here, yet!\nThis is where you'll be able to come and see helpful notifications.";

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: false,
        label: 'Notifications',
        trailing: UIConstants.blankSpace,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // notifications is empty
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: const Text(
                _emptyText,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            UIConstants.divider,

            // suggestions
            const Text('Suggestions for you'),
            UIConstants.height20,

            const Flexible(child: _SuggessionList())
          ],
        ),
      ),
    );
  }
}

class _SuggessionList extends StatelessWidget {
  const _SuggessionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = Dummy.notificateSuggessions;
    int len = items.length;
    return StatefulBuilder(
      builder: (_, setState) => AnimatedList(
        key: UniqueKey(),
        initialItemCount: len,
        itemBuilder: (_, index, __) {
          final data = items[index];

          return SuggestionTile(
            name: data.name,
            userType: data.userType,
            onClose: () {
              items.removeAt(index);
              len--;
              setState(() {});
            },
          );
        },
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}

class NotifyTileUser {
  final String name;
  final UserType userType;

  const NotifyTileUser(this.name, this.userType);
}

class SuggestionTile extends ListTile {
  SuggestionTile({
    super.key,
    required String name,
    required UserType userType,
    VoidCallback? onClose,
  }) : super(
            // profile image
            leading: ProfileAvathar.byName(name.trim()[0]),

            // user name
            title: Text(
              name,
              style: const TextStyle(
                  fontSize: 12, letterSpacing: .5, fontWeight: FontWeight.w600),
            ),

            // User type
            subtitle: Text(
              userType.name,
              style: const TextStyle(fontSize: 10),
            ),

            /// trailing icons
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // follow button
                const Icon(
                  CupertinoIcons.person_badge_plus_fill,
                  color: Colors.black,
                ),

                // remove button
                IconButton(
                  onPressed: onClose,
                  icon: const Icon(
                    CupertinoIcons.xmark,
                    color: Colors.red,
                  ),
                )
              ],
            ));
}
