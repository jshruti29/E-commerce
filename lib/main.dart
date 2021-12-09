import 'package:flutter/material.dart';
import 'UI/CustomerUI/LandingUI_Customer/one_customer_landing_page.dart';
import 'UI/CustomerUI/LandingUI_Customer/three_customer_landing_page.dart';
import 'UI/CustomerUI/LandingUI_Customer/two_customer_landing_page.dart';
import 'UI/CustomerUI/chat_page.dart';
import 'UI/CustomerUI/home_page.dart';
import 'UI/CustomerUI/product_page.dart';
import 'UI/CustomerUI/search_page.dart';
import 'UI/CustomerUI/setting_page.dart';
import 'UI/VendorUI/LandingUI_Vendor/one_vendor_landing_page.dart';
import 'UI/VendorUI/LandingUI_Vendor/two_vendor_landing_page.dart';
import 'UI/VendorUI/bottom_navigation.dart';
import 'UI/VendorUI/home_page_vendor.dart';
import 'UI/auth_page.dart';
import 'UI/login_page.dart';
import 'UI/signup_page.dart';

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
      initialRoute: '/vendor_home_controller',
      routes: {
        '/one_vendor_landing_page': (context) => const One_Vendor_LandingPage(),
        '/two_vendor_landing_page': (context) => const Two_Vendor_LandingPage(),
        '/one_customer_landing_page': (context) => const One_Customer_LandingPage(),
        '/two_customer_landing_page': (context) => const Two_Customer_LandingPage(),
        '/three_customer_landing_page': (context) => const Three_Customer_LandingPage(),
        '/login_page': (context) => const LoginPage(),
        '/sign_up_page': (context) => const SignupPage(),
        '/auth_page': (context) => const AuthPage(),
        '/home_page': (context) => Home_Page(),
        '/home_page_vendor': (context) => const Home_Page_Vendor(),
        '/product_page': (context) => const Product_Page(),
        '/chat_page': (context) => const Chat_Page(),
        '/search_page': (context) => const Search_Page(),
        '/setting_page': (context) => const Setting_Page(),
        '/vendor_home_controller': (context) => const BottomNavigation(),

      },
    );
  }
}
