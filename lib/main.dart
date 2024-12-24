  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/Screens/home_screen.dart';
  import 'package:store/constants.dart';
  import 'package:flutter_localizations/flutter_localizations.dart';

  void main(){
    runApp(const MyApp());
  }
  class MyApp extends StatelessWidget{
  const MyApp({super.key});

    @override
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Electro Store',
        theme: ThemeData(
          textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
          primaryColor: kPrimaryColor,
          hintColor: kPrimaryColor,
        ),
        //Arabic RTL
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,

        ],
        supportedLocales: const [Locale("ar","AE")],
        locale: const Locale("ar","AE"),
        home: const HomeScreen(),
      );
    }
  }