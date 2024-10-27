import 'package:flutter/material.dart';
import 'package:flutter_node/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter - node',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
