import 'package:flutter/material.dart';
import 'package:space/ui/home/screen/home_screen.dart';
import 'package:space/ui/login/screen/login_screen.dart';
import 'package:space/ui/planet_details/screen/planet_details_screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "space",
      debugShowCheckedModeBanner: false,
      routes: {LoginScreen.routeName: (context) => LoginScreen()
        ,HomeScreen.routeName: (context) => HomeScreen(),
        PlanetDetailsScreen.routeName:(context)=>PlanetDetailsScreen()
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}