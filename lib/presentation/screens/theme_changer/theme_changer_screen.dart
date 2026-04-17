import 'package:e301_widgets_app_01/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cambiar Tema'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
            icon: Icon(
              isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
          ),
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return RadioGroup<int>(
      groupValue: selectedColor,
      onChanged: (int ? value) {
        if (value != null) {
          ref.read(themeNotifierProvider.notifier).changeColorIndex(value);
        }
      },
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final Color color = colors[index];
          return RadioListTile(
            title: Text('Este color', style: TextStyle(color: color)),
            subtitle: Text('${color.hashCode}'),
            value: index,
          );
        },
      ),
    );
  }
}
