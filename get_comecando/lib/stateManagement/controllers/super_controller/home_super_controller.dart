import 'package:get/get.dart';

class CepModel {
  String logradouro;

  CepModel({
    required this.logradouro,
  });
}

class HomeSuperController extends SuperController<CepModel>{
  @override
  void onDetached() {
    // 
  }

  @override
  void onHidden() {
    // 
  }

  @override
  void onInactive() {
    // 
  }

  @override
  void onPaused() {
    // 
  }

  @override
  void onResumed() {
    // 
  }
  
}