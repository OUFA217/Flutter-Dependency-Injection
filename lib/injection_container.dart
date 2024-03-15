import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import 'controller/app_service.dart';

final locator = GetIt.instance;

void initializeDependencyInjection({
  required bool? singletion,
  required bool? lazySingleton,
  required bool? factory,
}) {
  debugPrint("setup is called");
  singletion == true && lazySingleton == false && factory == false
      ? locator.registerSingleton<AppService>(AppService())
      : lazySingleton == true && singletion == false && factory == false
          ? locator.registerLazySingleton<AppService>(() => AppService())
          : factory == true && singletion == false && lazySingleton == false
              ? locator.registerFactory<AppService>(() => AppService())
              : debugPrint("Error While Handling DI");
}
