import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Ver 0.0.1',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('stateless初版'),
        ]),
      ),
    );
  }
}
