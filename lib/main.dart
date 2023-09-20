import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:gardenink/Activity/SplashScreen.dart";
import "package:gardenink/Activity/loginPage.dart";
import "package:gardenink/Routes/Route.dart";


void main(){

  runApp(
    MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();


}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
       () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: ((BuildContext context) => LoginPage())
    ));
     });  

  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: (ctx, child) => MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.generateRoute,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.lightGreen,
            brightness: Brightness.light
          ),
          primaryColor: const Color.fromRGBO(118, 181, 90, 1)
        ),
      ),
    );
  }
}
