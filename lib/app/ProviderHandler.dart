import 'package:provider/provider.dart';
import 'package:tasked/app/App.dart';
import 'package:tasked/controllers/HomeScreenController.dart';
import 'package:tasked/controllers/NavigationController.dart';
import 'package:tasked/controllers/impl/HomeScreenControllerImpl.dart';
import 'package:tasked/controllers/impl/NavigationControllerImpl.dart';
import 'package:tasked/services/NavigationService.dart';
import 'package:tasked/services/impl/NavigationServiceImpl.dart';

MultiProvider providerHandler = MultiProvider(
  providers: [
    Provider<NavigationService>(create: (context) => NavigationServiceImpl()),
    ProxyProvider<NavigationService, NavigationController>(
      update:
          (context, navigationService, previous) =>
              NavigationControllerImpl(navigationService: navigationService),
    ),
    ProxyProvider<NavigationController, HomeScreenController>(
      update:
          (context, navigationController, previous) => HomeScreenControllerImpl(
            navigationController: navigationController,
          ),
    ),
  ],
  child: MyApp(),
);
