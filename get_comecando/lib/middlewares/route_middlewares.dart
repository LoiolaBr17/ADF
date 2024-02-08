import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares();

  // chamado antes de ir para a página
  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('onPageCalled');
    return super.onPageCalled(page);
  }

  // chamado antes de renderizar a página
  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('onPageBuilt');
    return super.onPageBuilt(page);
  }

  // usado para validações 
  @override
  RouteSettings? redirect(String? route) {
    debugPrint('redirect');
    return super.redirect(route);
  }
}
