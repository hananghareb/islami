import 'package:flutter/material.dart';
import 'package:islami_1/ahadethdetails.dart';
import 'package:islami_1/home.dart';
import 'package:islami_1/mytheme.dart';
import 'package:islami_1/suradetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      debugShowMaterialGrid: false,
      themeMode: ThemeMode.light,
      theme: Mythemedata.LightTheme,
      darkTheme: Mythemedata.DarkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Homelayout.routeNmme,
      routes: {
        Homelayout.routeNmme:(context) => Homelayout(),
        Suradetails.routeName:(context) => Suradetails(),
        HadethDetails.routeName:(context) => HadethDetails(),





      },

    );
  }
}
