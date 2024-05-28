import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/languages.dart';
import 'package:get_x/screen_one.dart';
import 'package:get_x/screen_two.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // locale: Locale('en', 'US'),
      translations:Languages(), // your translations
      locale: Locale('en', 'US'), // translations will be displayed in that locale
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/homePage', page: () =>HomePage()),
        GetPage(name: '/screenOne', page: () =>ScreenOne()),
        GetPage(name: '/screenTwo', page: () =>ScreenTwo()),],
    );
  }
}

