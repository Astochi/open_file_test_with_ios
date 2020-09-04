import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({this.title});

  Future<void> _openFile() async {
    final documentDirectory = await getApplicationDocumentsDirectory();
    final file = File('${documentDirectory.path}/text.txt');
    file.writeAsStringSync("Hello world");
    final openResult = await OpenFile.open(file.path);
    print(openResult.type);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Click at floating button to open file',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openFile,
        tooltip: 'Open file',
        child: Icon(Icons.insert_drive_file),
      ),
    );
  }
}
