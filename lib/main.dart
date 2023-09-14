import 'package:flutter/material.dart';
import 'package:flutter_job_portal/models/bottomsheet.dart';
import 'package:flutter_job_portal/models/routes.dart';
import 'package:flutter_job_portal/ui/screens/introscreen.dart';
import 'package:flutter_job_portal/ui/screens/login.dart';
import 'package:flutter_job_portal/ui/screens/screens.dart';
import 'package:flutter_job_portal/ui/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyBottomSheetModel>(
      create: (_) => MyBottomSheetModel(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'OpenSans',
          ),
          initialRoute: homeRoute,
          routes: {
            splashRoute: (context) => const SplashScreen(),
            introRoute: (context) => const IntroScreen(),
            loginRoute: (context) => const LoginScreen(),
            homeRoute: (context) => HomeScreen(),
          }),
    );
  }
}
