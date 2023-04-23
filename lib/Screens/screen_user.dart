import 'package:app/widgets/appbar_user.dart';
import 'package:app/widgets/sign_off.dart';
import 'package:app/widgets/user_activities.dart';
import 'package:app/widgets/user_activities_list.dart';
import 'package:app/widgets/user_message.dart';

import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color myColor = const Color(0xFF0247E1);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: const [
          AppBarUser(),
          UserActivities(),
          UserMessage(),
          UserActivitiesList(),
        ],
      ),
      bottomNavigationBar: SignOff(myColor: myColor),
    );
  }
}
