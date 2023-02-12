import 'package:contador/src/pages/contador_page.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}
