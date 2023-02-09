import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/constants/ui_constants.dart';
import 'package:peggy/presentation/widgets/app_bar.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 90),
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
          ],
        ),
      ),
    );
  }
}

class NotificationCard {
  
}