import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tasked/services/NavigationService.dart';

class NavigationServiceImpl implements NavigationService {
  @override
  late GlobalKey<NavigatorState> navigator;

  @override
  Future<void> navigateTo<T>({
    required String routeName,
    T? object,
    PageTransitionType? transition,
  }) async {
    if (transition == null) {
      await navigator.currentState?.pushNamed(routeName, arguments: object);
    } else {
      await context?.pushNamedTransition(
        routeName: routeName,
        type: transition,
        arguments: object,
      );
    }
  }

  @override
  Future<void> popAllAndNavigateTo<T>({
    required String routeName,
    T? object,
  }) async {
    await navigator.currentState?.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: object,
    );
  }

  @override
  void pop() {
    navigator.currentState?.pop();
  }

  @override
  BuildContext? get context => navigator.currentContext;
}
