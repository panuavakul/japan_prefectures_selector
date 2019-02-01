import 'package:flutter/material.dart';
import 'package:japan_prefectures_selector/prefecture_selector_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('県選択'),
        ),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: FlatButton(
            child: const Text('県を選択'),
            onPressed: () async {
              final selected =
                  await PrefectureSelectorDialog.showPrefectureSelectorDialog(
                      context);

              print(selected);
            },
          ),
        ),
      ],
    );
  }
}
