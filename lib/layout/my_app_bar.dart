import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            onChanged: (val) {
              print('TextField onChanged $val');
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search_outlined,
              ),
              hintText: '오늘의집 통합검색',
              hintStyle: TextStyle(
                color: Colors.grey[500],
              ),
              contentPadding: EdgeInsets.all(10),
              filled: true,
              fillColor: Colors.grey[300],
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: [
                Icon(Icons.bookmark_outline),
                Icon(Icons.shopping_cart),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(68);
}
