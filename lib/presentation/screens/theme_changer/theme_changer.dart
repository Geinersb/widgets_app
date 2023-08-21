import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme-changer';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final bool isDarkmode = ref.watch(isDarkModeProvider);
    final isDarkmode = ref.watch(themeNotifierprovider).isDarkmode;

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambiar Tema'),
        foregroundColor: colors.primary,
        actions: [
          IconButton(
            onPressed: () {
              // ref.read(isDarkModeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierprovider.notifier).toggleDarkmode();
            },
            icon: Icon(isDarkmode ? Icons.dark_mode : Icons.light_mode),
          )
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierprovider).selectedColor;

    // final int selectedcolor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        final Color color = colors[index];

        return RadioListTile(
            title: Text('Este Color', style: TextStyle(color: color)),
            subtitle: Text('${color.value}'),
            activeColor: color,
            value: index,
            groupValue: selectedColor,
            onChanged: (value) {
              //  ref.read(selectedColorProvider.notifier).update((state) => index);

              ref.watch(themeNotifierprovider.notifier).changeColorIndex(index);
            });
      },
    );
  }
}
