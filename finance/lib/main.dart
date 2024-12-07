import 'package:finance/common/providers/provider_app.dart';
import 'package:finance/utils/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routers = ref.watch(routesProvider);
    final isDarkMode = ref.watch(isDarkThemeProvider);

    return MaterialApp.router(
      title: 'Finances',
      theme: ThemeApp(isDarkMode: isDarkMode).getTheme(),
      routerConfig: routers,
      debugShowCheckedModeBanner: false,
    );
  }
}
