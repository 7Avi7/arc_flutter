import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Architecture MVVM Provider',
      initialRoute: RouteNavigation.signIn,
      onGenerateRoute: RouteNavigation.generateRoute,
    );
  }
}
