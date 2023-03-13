import 'package:flutter/material.dart';
import 'package:social_network/component/home_body.dart';

var myDefaultBg = Colors.grey[300];

var myPrimaryColor = Colors.grey[700];

const double defaultPadding = 20.0;

var myAppBar = AppBar(
  backgroundColor: Colors.grey[700],
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.account_circle)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Trang chủ'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.trending_up),
        title: Text('Bài viết nổi bật'),
      ),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text('Bài viết bạn đã thích'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Cài đặt'),
      ),
      ListTile(
        leading: Icon(Icons.logout_outlined),
        title: Text('Đăng nhập/Đăng xuất'),
      ),
    ],
  ),
);
