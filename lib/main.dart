import 'package:e301_widgets_app_01/config/router/app_router.dart';
import 'package:e301_widgets_app_01/config/theme/app_theme.dart';
import 'package:e301_widgets_app_01/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).getTheme(),
    );
  }
}
