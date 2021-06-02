import 'package:flutter/material.dart';

class NotificationDetailsView extends StatelessWidget {
  static const route = 'notification_details_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text('Notification - Request Details'),
      ),
      body: Text('data'),
    ));
  }
}
