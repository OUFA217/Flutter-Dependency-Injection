import 'package:flutter/foundation.dart';

class AppService {
  AppService() {
    debugPrint("AppService Applying DI is being created.");
  }

  String execute() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    return date.toString();
  }
}
