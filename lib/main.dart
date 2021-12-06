import 'package:ecommerce/UI/LandingUI/one_landing_page.dart';
import 'package:ecommerce/UI/LandingUI/two_landing_page.dart';
import 'package:ecommerce/UI/auth_page.dart';
import 'package:ecommerce/UI/home_page.dart';
import 'package:ecommerce/UI/login_page.dart';
import 'package:ecommerce/UI/signup_page.dart';
import 'package:flutter/material.dart';

import 'UI/LandingUI/three_landing_page.dart';
import 'UI/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home_page',
      routes: {
        '/one_landing_page': (context) => One_LandingPage(),
        '/two_landing_page': (context) =>Two_LandingPage(),
        '/three_landing_page': (context) => Three_LandingPage(),
        '/login_page': (context) => const LoginPage(),
        '/sign_up_page': (context) => const SignupPage(),
        '/auth_page': (context) => const AuthPage(),
        '/home_page': (context) => Home_Page(),
        '/product_page': (context) => const Product_Page(),
      },
    );
  }
}
