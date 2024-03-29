import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/bindings/bindings_controller.dart';
import 'package:get_comecando/bindings/bindings_example.dart';
import 'package:get_comecando/bindings/home_bindings_page.dart';
import 'package:get_comecando/bindings/middleware_bindings.dart';
import 'package:get_comecando/initialBinding/initial_binding.dart';
import 'package:get_comecando/middlewares/route_middlewares.dart';
import 'package:get_comecando/navegacao_nomeada/nomeada_home_page.dart';
import 'package:get_comecando/navegacao_nomeada/nomeada_page1.dart';
import 'package:get_comecando/service/storage_service.dart';
import 'package:get_comecando/stateManagement/controllers/getxControllerExample/controller.dart';
import 'package:get_comecando/stateManagement/controllers/getxControllerExample/getxControllerExamplePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: InitialBinding(),
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
        GetPage(
          name: '/bindings',
          binding: BindingsExample(),
          page: () => const HomeBindingsPage(),
        ),
        GetPage(
          name: '/bindings2',
          binding: BindingsBuilder(() {
            Get.put(BindingsController(name: 'criando dependência'));
          }),
          page: () => const HomeBindingsPage(),
        ),
        GetPage(
          name: '/bindings3',
          middlewares: [MiddlewareBindings()],
          binding: BindingsBuilder.put(
              () => BindingsController(name: 'criando dependência')),
          page: () => const HomeBindingsPage(),
        ),
        GetPage(
          name: '/controllersExample',
          binding: BindingsBuilder((){
            Get.lazyPut(() => Controller());
          }),
          page: () => const GetxControllerExamplePage(),
        )
      ],
    );
  }
}
