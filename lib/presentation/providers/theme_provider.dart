import 'package:e301_widgets_app_01/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Dark mode
class IsDarkModeNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggle() => state = !state;
}

final isDarkModeProvider = NotifierProvider<IsDarkModeNotifier, bool>(
  IsDarkModeNotifier.new,
);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Color seleccionado
class SelectedColorNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void select(int index) => state = index;
}

final selectedColorProvider = NotifierProvider<SelectedColorNotifier, int>(
  SelectedColorNotifier.new,
);

// Tema completo
class ThemeNotifier extends Notifier<AppTheme> {
  @override
  AppTheme build() => AppTheme();

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}

final themeNotifierProvider = NotifierProvider<ThemeNotifier, AppTheme>(
  ThemeNotifier.new,
);
