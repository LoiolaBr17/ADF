import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/home_page.dart';
import 'package:mao_na_massa/navegacao/page1.dart';
import 'package:mao_na_massa/navegacao/page2.dart';
import 'package:mao_na_massa/navegacao/page3.dart';
import 'package:mao_na_massa/navegacao/page4.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      routes: {
        '/': (_) => const HomePage(),
        '/page1': (_) => const Page1(),
        '/page2': (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
      },
    );
  }
}