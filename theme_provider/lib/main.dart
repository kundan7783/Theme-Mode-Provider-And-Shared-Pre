import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/screens/home_screen.dart';
import 'package:theme_provider/themes/dark_theme.dart';
import 'package:theme_provider/themes/light_theme.dart';
import 'package:theme_provider/provider/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider=Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.lightTheme(context),
      darkTheme: DarkTheme.darkTheme(context),
      themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(),
    );
  }
}
