import 'package:dependency_inject/injection_container.dart';
import 'package:dependency_inject/view/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  initializeDependencyInjection(
      singletion: true, lazySingleton: false, factory: false);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
