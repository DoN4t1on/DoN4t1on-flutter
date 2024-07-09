import 'package:donation/pages/hero.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
        indicatorColor: Colors.green[200],
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HeroPage(),
    );
  }
}
