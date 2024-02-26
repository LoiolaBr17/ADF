
import 'package:get/get.dart';

class GetbuilderController extends GetxController{
  var nome = 'nome';
  int contador = 0;

  void alterarNome() {
    nome = 'nome alterado';
    update();
  }

  void increment() {
    contador++;
    update(['contador']);
  }
}