import 'package:flutter/material.dart';

class NavigatorObserverCustom extends NavigatorObserver {

  /* Antes de entrar na página */
  @override
  void didPush(Route route, Route? previousRoute) {
    // TODO: implement didPush
    super.didPush(route, previousRoute);
  }

  /* Antes de sair da página */
  @override
  void didPop(Route route, Route? previousRoute) {
    // TODO: implement didPop
    super.didPop(route, previousRoute);
  }
}