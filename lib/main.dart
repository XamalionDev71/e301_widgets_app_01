import 'package:e301_widgets_app_01/config/router/app_router.dart';
import 'package:e301_widgets_app_01/config/theme/app_theme.dart';
import 'package:e301_widgets_app_01/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Escuchar el provider del tema
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme()
    );
  }
}
