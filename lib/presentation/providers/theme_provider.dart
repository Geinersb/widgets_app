import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Listado de colores inmutable(provider para valores inmutables)
final colorListProvider = Provider((ref) => colorList);

//(stateProvider es para mantener una pieza de estado)
//un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);
//un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

//Un objeto de tipo AppTheme(custom)(cuando el estado es mas elavorado uso StateNotifierProvider)
final themeNotifierprovider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppThme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {}
}
