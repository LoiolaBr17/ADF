
import 'package:flutter/material.dart';

class BasicoHomePageController extends ChangeNotifier {
  var nome = 'Sem nome';

  void alterarNome(String novoNome) {
    nome = novoNome;
    notifyListeners();
  }
}