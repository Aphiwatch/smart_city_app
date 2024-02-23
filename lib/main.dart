import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/home.dart';
// import 'package:flutter_application_1/page/welcome.dart';
import 'package:flutter_application_1/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // home:  const WelcomePage(),
      home:  const HomePage(),
      theme: SMCAppTheme.lightTheme,
      darkTheme: SMCAppTheme.darkTheme,
    );
  }
}
