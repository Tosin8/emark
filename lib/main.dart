import 'package:emark/firebase_options.dart';
import 'package:emark/widgets/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/splash/splash_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// Future main()  async {
//   WidgetsFlutterBinding.ensureInitialized(); 

//   final prefs = await SharedPreferences.getInstance(); 
//   // ignore: unused_local_variable
//   final showHome = prefs.getBool('showHome') ?? false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform, 
); 
  runApp(  MyApp(showHome: showHome,)); 
    
    //showHome: showHome)); 
}
class MyApp extends StatelessWidget {
  final bool showHome; 
  const MyApp({super.key, required this.showHome});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
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
             home: //showHome ? const Home() : 
             const SplashScreen(),
           // initialRoute: SplashScreen.routeName,
            // using routes so that there will be no need of remebering names.
           // routes: routes,
          );
        });
  }
}
