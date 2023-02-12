import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final styleText = const TextStyle(fontSize: 25);
  final conteo = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        centerTitle: true,
        elevation: 5.0,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cantidad de taps:', style: styleText),
          Text('$conteo', style: styleText)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {},
        backgroundColor: Colors.orangeAccent,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
