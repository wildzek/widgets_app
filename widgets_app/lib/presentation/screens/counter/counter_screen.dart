import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const name = 'Counter Screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int clickCounter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Valor: $clickCounter', style: Theme.of(context).textTheme.titleLarge)
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        clickCounter++;
      }, child: const Icon(Icons.add)),
    );
  }
}
