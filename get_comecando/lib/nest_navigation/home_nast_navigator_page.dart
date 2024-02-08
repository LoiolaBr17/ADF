import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comecando/nest_navigation/pages/android_page.dart';
import 'package:get_comecando/nest_navigation/pages/apple_page.dart';

class HomeNastNavigatorPage extends StatelessWidget {
  final currentIndex = 0.obs;

  HomeNastNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: "/",
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;

          if(settings.name == '/') {
            page = const ApplePage();
            transition = Transition.leftToRight;           
          } else if(settings.name == '/android') {
            page = const AndroidPage();
             transition = Transition.rightToLeft;
          } else {
            page = const Center(child: Text('Página não encontrada'));
            transition = Transition.fade;
          }

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: currentIndex.value,
        onTap: (value) {
          currentIndex(value);
          switch(value){
            case 0:
              Get.offNamed('/', id: 1);
              break;
            case 1:
              Get.offNamed('/android', id: 1);
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.android), label: 'android'),
          BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'apple'),
        ],
      ),)
    );
  }
}
