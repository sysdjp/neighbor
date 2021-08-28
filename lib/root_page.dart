import 'package:flutter/material.dart';
import 'package:neighbor/post/post_page.dart';
import 'package:neighbor/result/result_page.dart';
import 'package:neighbor/setting/setting_page.dart';
import 'package:provider/provider.dart';

import 'info/info_page.dart';
import 'main_model.dart';

class RootPage extends StatelessWidget {
  final List<Widget> _pageList = <Widget>[
    InfoPage(),
    SettingsPage(),
    PostPage(),
    ResultPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
      create: (_) => MainModel(),
      child: Consumer<MainModel>(
        builder: (context, model, child) {
          final tabItems = const [
            BottomNavigationBarItem(
                icon: Icon(Icons.info),
                backgroundColor: Colors.grey,
                label: '情報'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                backgroundColor: Colors.grey,
                label: '設定'),
            BottomNavigationBarItem(
                backgroundColor: Colors.grey,
                icon: Icon(Icons.post_add),
                label: '投稿'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.grey,
                label: '検索'),
          ];

          return Scaffold(
            appBar: AppBar(
              title: Text('neighborhood'),
            ),
            body: _pageList[model.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: model.currentIndex,
              onTap: (index) {
                model.currentIndex = index;
              },
              items: tabItems,
            ),
          );
        },
      ),
    );
  }
}
