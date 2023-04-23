import 'package:app/widgets/activities_list.dart';
import 'package:app/widgets/banner_image.dart';
import 'package:app/widgets/appbar_home.dart';
import 'package:app/widgets/home_date.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: const [
          HomeAppBar(),
          BannerImage(),
          Date(),
          ListActivities(),
        ],
      ),
    );
  }
}
