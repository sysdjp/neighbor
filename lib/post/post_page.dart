import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  PostPage({Key? key}) : super(key: key);

  final titleTextController = TextEditingController();
  final contentTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(children: [
          TextField(
            controller: titleTextController,
            maxLength: 64,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "タイトル",
                hintText: "タイトルを入力して下さい"),
          ),
          TextField(
            controller: contentTextController,
            maxLines: null,
            maxLength: 250,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '投稿内容',
              hintText: '投稿内容を入力して下さい。改行で複数行入力可',
              alignLabelWithHint: true,
              filled: true,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('送信'),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            )),
          ),
        ]),
      ),
    );
  }
}
