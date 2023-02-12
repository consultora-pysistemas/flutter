import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateFul'),
        centerTitle: true,
        elevation: 5.0,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cantidad de taps:', style: _styleText),
          Text('$_conteo', style: _styleText)
        ],
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            onPressed: (setearZero),
            backgroundColor: Colors.orangeAccent,
            child: const Icon(Icons.exposure_zero)),
        const Expanded(child: SizedBox(width: 15.0)),
        FloatingActionButton(
          onPressed: (disminuir),
          backgroundColor: Colors.orangeAccent,
          child: const Icon(Icons.remove),
        ),
        const Expanded(child: SizedBox(width: 15.0)),
        FloatingActionButton(
          onPressed: (agregar),
          backgroundColor: Colors.orangeAccent,
          child: const Icon(Icons.add),
        )
      ],
    );
  }

  void agregar() {
    _conteo++;
    setState(() {});
  }

  void disminuir() {
    if (_conteo > 0) _conteo--;
    setState(() {});
  }

  void setearZero() {
    _conteo = 0;
    setState(() {});
  }
}
