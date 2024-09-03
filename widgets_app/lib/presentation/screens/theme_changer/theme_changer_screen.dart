import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeColor = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            icon: Icon(themeColor
                ? Icons.light_mode_rounded
                : Icons.dark_mode_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);


    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final color = colors[index];
          return RadioListTile(
              title: Text('Este color', style: TextStyle(color: color)),
              subtitle: Text('${color.value}'),
              activeColor: color,
              value: index,
              groupValue: selectedColor,
              onChanged: (value) {
                ref.read(selectedColorProvider.notifier).state = index;
              });
        });
  }
}
