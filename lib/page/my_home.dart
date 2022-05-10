import 'package:flutter/material.dart';
import 'package:house_of_today/widget/home/my_home_expert_housewarming_party.dart';
import 'package:house_of_today/widget/home/my_home_following.dart';
import 'package:house_of_today/widget/home/my_home_housewarming_party.dart';
import 'package:house_of_today/widget/home/my_home_knowhow.dart';
import 'package:house_of_today/widget/home/my_home_picture.dart';
import 'package:house_of_today/widget/home/my_home_popular.dart';
import 'package:house_of_today/widget/home/my_home_qna.dart';
import 'package:house_of_today/widget/my_sliver_app_bar_tab_bar.dart';
import 'package:house_of_today/widget/my_sliver_app_bar_top.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  List<Widget> getTabBarView(BuildContext context) {
    return [
      MyHomePopular(),
      MyHomeFollowing(),
      MyHomePicture(),
      MyHomeHousewarmingParty(),
      MyHomeKnowhow(),
      MyHomeExpertHousewarmingParty(),
      MyHomeExpertQna(),
    ];
  }

  List<Widget> getHeaderSliverBuilder(
      BuildContext context, bool innerBoxIsScrolled) {
    return [
      MySliverAppBarTop(),
      MySliverAppBarTabBar(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabBarViews = getTabBarView(context);
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: tabBarViews.length,
          child: NestedScrollView(
            headerSliverBuilder: getHeaderSliverBuilder,
            body: TabBarView(
              children: [for (Widget view in tabBarViews) view],
            ),
          ),
        ),
      ),
    );
  }
}
