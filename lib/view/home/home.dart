import 'package:dependency_inject/controller/app_service.dart';
import 'package:dependency_inject/injection_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Dependency Injection',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                String currentDate = locator<AppService>().execute();
                showSnackBar(currentDate, context);
              },
              child: const Text('Get Date'),
            ),
          ],
        ),
      ),
    );
  }
}

void showSnackBar(String currentDate, BuildContext context) {
  SnackBar snackBar = SnackBar(
    content: Text(currentDate),
    duration: const Duration(milliseconds: 500),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
