import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.green,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: TabBar(
              tabs: [
                Tab(
                  child: Text('1'),
                ),
                Tab(
                  child: Text('1'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
