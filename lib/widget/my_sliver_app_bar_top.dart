import 'package:flutter/material.dart';

class MySliverAppBarTop extends StatelessWidget implements PreferredSizeWidget {
  const MySliverAppBarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.all(0),
        title: Center(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.grey[500],
                              size: 20,
                            ),
                          ),
                          Text(
                            '오늘의집 통합검색',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Icon(Icons.bookmark_border_outlined),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Icon(Icons.shopping_cart_outlined),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48);
}
