import 'package:e301_widgets_app_01/presentation/providers/counter_provider.dart';
import 'package:e301_widgets_app_01/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
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
      body: Center(
        child: Text('Valor: $clickCounter', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
      ),
    );
  }
}
