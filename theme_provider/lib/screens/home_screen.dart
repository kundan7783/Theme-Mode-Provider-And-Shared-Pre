import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/provider/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Screen"),
        actions: [
          IconButton(
            icon: Icon(themeProvider.isDark ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Kundan Kumar Singh"),
            subtitle: Text("7783065335"),
            leading: CircleAvatar(),
          );
        },
      ),
    );
  }
}
