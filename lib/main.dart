import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:neighbor/post/post_page.dart';
import 'package:neighbor/result/result_page.dart';
import 'package:neighbor/setting/setting_page.dart';
import 'info/info_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  int _selectedIndex = 0;
  List<Widget> pageList = [
    InfoPage(),
    SettingsPage(),
    PostPage(),
    ResultPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('neighborhood'),
      ),
      body: pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Theme.of(context).disabledColor,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    print(_selectedIndex);
  }
}
