
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = '';
  String imageAvatar = '';
  String birthDate = '03/04/1999';

  void alterarDados() {
    imageAvatar = 'https://picsum.photos/200';
    notifyListeners();
  }
}