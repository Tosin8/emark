import 'package:emark/routes.dart';
import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'EMART App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              scaffoldBackgroundColor: Colors.white,
              fontFamily: "Muli",
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: kTextColor),
              ),
              useMaterial3: true,
            ),
            // home: SplashScreen(),
            initialRoute: SplashScreen.routeName,
            // using routes so that there will be no need of remebering names.
            routes: routes,
          );
        });
  }
}
