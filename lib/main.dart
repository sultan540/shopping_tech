import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sprints_shopping_app/main_shopping_screen.dart';
import 'package:sprints_shopping_app/pageView_provider.dart';
import 'package:sprints_shopping_app/page_registration.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageviewProvider()),
        ChangeNotifierProvider(create: (_) => Lapimages()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Suwannaphum'),
      home: MainShoppingScreen(),
    );
  }
}
