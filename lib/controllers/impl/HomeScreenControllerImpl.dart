import 'package:tasked/controllers/HomeScreenController.dart';
import 'package:tasked/controllers/NavigationController.dart';

class HomeScreenControllerImpl implements HomeScreenController {
  HomeScreenControllerImpl({required this.navigationController});

  final NavigationController navigationController;

  @override
  void fabPressed() {
    navigationController.goToCalendar();
  }
}
