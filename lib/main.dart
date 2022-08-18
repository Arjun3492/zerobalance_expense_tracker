import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zerobalance_expense_calculator/modules/home/view/home_screen.dart';
import 'package:zerobalance_expense_calculator/modules/second_screen/view/second_screen.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        //Routes for the app
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/second_screen', page: () => const SecondScreen()),
      ],
      title: "Zerobalance Expense Tracker",
    );
  }
}
