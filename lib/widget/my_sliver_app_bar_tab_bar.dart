import 'package:flutter/material.dart';

class MySliverAppBarTabBar extends StatelessWidget {
  MySliverAppBarTabBar({Key? key}) : super(key: key);

  List<String> tabs = [
    '인기',
    '팔로잉',
    '사진',
    '집들이',
    '노하우',
    '전문가집들이',
    '질문과답변',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.all(0),
        title: TabBar(
          isScrollable: true,
          tabs: [
            for (String tab in tabs)
              Text(
                tab,
                style: TextStyle(
                  color: Colors.black,
                ),
              )
          ],
        ),
      ),
    );
  }
}
