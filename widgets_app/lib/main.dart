import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final int selectedColor = ref.watch(selectedColorProvider);
    final themeColor = ref.watch(isDarkmodeProvider);
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, themeColor: themeColor).getTheme(),
    );
  }
}
