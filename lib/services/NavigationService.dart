import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

abstract class NavigationService {
  Future<void> navigateTo<T>({
    required String routeName,
    T? object,
    PageTransitionType? transition,
  });

  Future<void> popAllAndNavigateTo<T>({required String routeName, T? object});
  
  void pop();

  BuildContext? get context;

  GlobalKey<NavigatorState> get navigator;
  set navigator(GlobalKey<NavigatorState> navigator);
}
