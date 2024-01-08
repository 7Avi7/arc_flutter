import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_arc/locator.dart';
import 'package:test_arc/ui/route_navigation.dart';

import 'core/models/theme_provider.dart';
import 'core/view_models/searched_pet_provider.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PetsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          builder: (context, child) {
            final provider = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              theme: provider.theme,
              debugShowCheckedModeBanner: false,
              title: 'Personal Practice Project',
              initialRoute: RouteNavigation.signIn,
              onGenerateRoute: RouteNavigation.generateRoute,
            );
          },
        )
      ],
      // child: Column(),
    );
  }
}

// MaterialApp(
// debugShowCheckedModeBanner: false,
// title: 'Personal Practice Project',
// initialRoute: RouteNavigation.signIn,
// onGenerateRoute: RouteNavigation.generateRoute,
// )

// ChangeNotifierProvider(
// create: (context) => ThemeProvider(),
// builder: (context, child) {
// final provider = Provider.of<ThemeProvider>(context);
// return MaterialApp(
// theme: provider.theme,
// debugShowCheckedModeBanner: false,
// home: ConsumerAddCardText(),
// );
// },
// )
