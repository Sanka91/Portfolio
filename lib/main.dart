import 'package:flutter/material.dart';
import 'package:portfolio_philipp_lemke/presentation/index_presentation.dart';
import 'package:portfolio_philipp_lemke/presentation/views/responsive_root.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        buttonTheme: ButtonThemeData(
          colorScheme: lightColorScheme,
        ),
        fontFamily: "Quicksand",
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        buttonTheme: ButtonThemeData(
          colorScheme: darkColorScheme,
        ),
        fontFamily: "Quicksand",
      ),
      themeMode: ThemeMode.light,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ResponsiveRoot(
      mobile: MobileRootView(),
      desktop: DesktopRootView(),
    );
  }
}
