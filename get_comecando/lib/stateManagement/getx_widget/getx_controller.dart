import 'package:get/get.dart';

class GetxWidgetController extends GetxController {
  final _nome = 'loiola'.obs;

  String get nome => _nome.value;

  void alterarNome(String nome){
    _nome.value = nome;
  }
}