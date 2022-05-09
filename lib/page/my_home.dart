import 'package:flutter/material.dart';
import 'package:house_of_today/layout/my_app_bar.dart';
import 'package:house_of_today/layout/my_sliver_app_bar.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(),
        body: CustomScrollView(
          slivers: [
            MySliverAppBar(),
          ],
        ),
      ),
    );
  }
}
