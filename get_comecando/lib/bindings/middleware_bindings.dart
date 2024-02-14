
import 'package:get/get.dart';

class MiddlewareBindings extends GetMiddleware{

  // Executado logo antes da chamada da página  
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('onBindingsStart');
    return super.onBindingsStart(bindings);
  }

  // Executado logo depois de start dos bindings
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('onPageBuildStart');
    return super.onPageBuildStart(page);
  }
}