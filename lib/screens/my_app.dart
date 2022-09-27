// ignore_for_file: avoid_print

import 'package:boillerplt_v2/bindings/bindings.dart';
import 'package:boillerplt_v2/screens/login/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) => GetMaterialApp(
              initialBinding: DashboardBinding(),
              debugShowCheckedModeBanner: false,
              locale: const Locale('es', 'ES'),
              fallbackLocale: const Locale('en', 'EN'),
              title: 'Boiller Plate V2',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              getPages: Routes.routes,
              initialRoute: Routes.initialRoute,
            ));
  }
}
