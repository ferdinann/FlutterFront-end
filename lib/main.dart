import 'package:flutter/material.dart';
import 'package:tiketkuu/MyLogin.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          appBarTheme: AppBarTheme(backgroundColor: Colors.blue[100])),
      home: const MyLogin(),
    );
  }
}
