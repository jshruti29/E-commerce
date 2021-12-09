
import 'package:ecommerce/UI/VendorUI/LandingUI_Vendor/vendor_message.dart';
import 'package:ecommerce/UI/VendorUI/market_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page_vendor.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _bottomNavIndex = 0;
  GlobalKey globalKey = GlobalKey();

  void _onItemTapped(int index) {
    if (index != 4) {
      setState(() {
        _bottomNavIndex = index;
      });
    } else {
    }
  }

  Widget? pageCaller(int index) {
    switch (index) {
      case 0:
        return Vendor_message_page();
      case 1:
        return Market_Page();
      case 2:
        return Home_Page_Vendor();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageCaller(_bottomNavIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // This is all you need!
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _bottomNavIndex,
        selectedItemColor: Colors.deepOrangeAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
