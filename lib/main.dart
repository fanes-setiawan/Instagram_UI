import 'package:flutter/material.dart';
import 'package:instagram_ui/nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram_UI',
      debugShowCheckedModeBanner: false,
      home: nav_bar(),
    );
  }
}
