import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('更新履歴'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          'Ver 0.0.1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('stateless初版'),
      ]),
    );
  }
}
