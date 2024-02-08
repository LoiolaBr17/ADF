import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/middlewares/route_middlewares.dart';
import 'package:get_comecando/navegacao_comuns/navegacao_comum_home_page.dart';
import 'package:get_comecando/navegacao_nomeada/nomeada_home_page.dart';
import 'package:get_comecando/navegacao_nomeada/nomeada_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      unknownRoute: GetPage(name: '/404', page: () => Container()),
      routingCallback: (routing) {
        print(routing?.previous);
        print(routing?.current);
      },
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const NomeadaHomePage()),
        GetPage(
          name: '/page1',
          page: () => const NomeadaPage1(),
          middlewares: [
            RouteMiddlewares(),
          ],
        ),
      ],
    );
  }
}
