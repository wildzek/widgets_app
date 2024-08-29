import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'Counter Screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final themeColor = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen'), actions: [
        IconButton(
          icon: Icon(themeColor ? Icons.light_mode_rounded : Icons.dark_mode_rounded),
          onPressed: () {
            ref.read(isDarkmodeProvider.notifier).state = !themeColor;
          },
          )
      ]),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Valor: $clickCounter',
              style: Theme.of(context).textTheme.titleLarge)
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          child: const Icon(Icons.add)),
    );
  }
}
