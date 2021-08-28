import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Ver 0.0.9',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('stateless初版'),
        ]),
      ),
    );
  }
}
