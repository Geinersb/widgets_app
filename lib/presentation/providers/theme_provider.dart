
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);

//un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

//Listado de colores inmutable

