import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';
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
  Locale _locale = const Locale('en'); // اللغة الافتراضية

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: _locale, // هنا بيتحدد اللغة
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // اللغات اللي مدعومة
      supportedLocales: const [Locale('en'), Locale('ar')],
      theme: ThemeData(fontFamily: 'Suwannaphum'),
      home: PageRegistration(onChangeLanguage: setLocale),
    );
  }
}

// flutter gen-l10n
