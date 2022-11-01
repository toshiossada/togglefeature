import 'package:flutter/material.dart';

class TecnologyPage extends StatefulWidget {
  const TecnologyPage({Key? key}) : super(key: key);

  @override
  State<TecnologyPage> createState() => _TecnologyPageState();
}

class _TecnologyPageState extends State<TecnologyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tecnology'),
      ),
      body: Column(
        children: [
          const Text('Tecnology'),
          ElevatedButton(onPressed: () {}, child: const Text('Botao 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Botao 2')),
          ElevatedButton(onPressed: () {}, child: const Text('Botao 3')),
        ],
      ),
    );
  }
}
