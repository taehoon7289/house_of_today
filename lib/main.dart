import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_of_today/page/my_home.dart';

void main() => runApp(MyMain());

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '오늘의집 clone coding',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => MyHome(),
      },
    );
  }
}
