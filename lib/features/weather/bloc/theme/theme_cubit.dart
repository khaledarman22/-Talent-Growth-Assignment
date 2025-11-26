import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeCubit extends Cubit<ThemeMode> {
  static const String _themeBoxName = 'theme_box';
  static const String _themeModeKey = 'theme_mode';

  ThemeCubit() : super(ThemeMode.system) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    try {
      final box = await Hive.openBox(_themeBoxName);
      final savedThemeIndex = box.get(_themeModeKey, defaultValue: 0) as int;
      emit(ThemeMode.values[savedThemeIndex]);
    } catch (e) {
      emit(ThemeMode.system);
    }
  }

  Future<void> toggleTheme() async {
    final newMode = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await _saveTheme(newMode);
    emit(newMode);
  }

  Future<void> setTheme(ThemeMode mode) async {
    await _saveTheme(mode);
    emit(mode);
  }

  Future<void> _saveTheme(ThemeMode mode) async {
    try {
      final box = await Hive.openBox(_themeBoxName);
      await box.put(_themeModeKey, mode.index);
    } catch (e) {}
  }
}
