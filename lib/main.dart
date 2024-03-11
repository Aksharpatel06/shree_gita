import 'package:flutter/material.dart';
import 'package:shree_gita/view/screen/homescreen.dart';
import 'package:shree_gita/view/screen/secondscreen/adhayayslock.dart';
import 'package:shree_gita/view/screen/secondscreen/bhagvatgita.dart';
import 'package:shree_gita/view/screen/secondscreen/gita_arti.dart';
import 'package:shree_gita/view/screen/secondscreen/gita_mahatmya.dart';
import 'package:shree_gita/view/screen/secondscreen/gita_sar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => homescreen(),
        '/adhyay':(context) => adhyay(),
        '/arti':(context)=>gita_arti(),
        '/mahatmya':(context)=>gita_mahatmay(),
        '/saar':(context) => gitta_saar(),
        '/adhayayslock':(context)=>adhayayslock(),
      },
    );
  }
}