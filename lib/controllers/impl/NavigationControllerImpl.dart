import 'package:page_transition/page_transition.dart';
import 'package:tasked/app/NamedRoutes.dart';
import 'package:tasked/controllers/NavigationController.dart';
import 'package:tasked/services/NavigationService.dart';

class NavigationControllerImpl implements NavigationController {
  NavigationControllerImpl({required this.navigationService});

  final NavigationService navigationService;

  @override
  Future<void> goToCalendar() async {
    navigationService.navigateTo(
      routeName: NamedRoutes.calendar,
      transition: PageTransitionType.rightToLeft,
    );
  }

  @override
  Future<void> goToNewTask() async {
    navigationService.navigateTo(
      routeName: NamedRoutes.newTask,
      transition: PageTransitionType.rightToLeft,
    );
  }
}
