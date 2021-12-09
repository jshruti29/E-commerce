import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Page_Vendor extends StatefulWidget {
  const Home_Page_Vendor({Key? key}) : super(key: key);

  @override
  _Home_Page_VendorState createState() => _Home_Page_VendorState();
}

// ignore: camel_case_types
class _Home_Page_VendorState extends State<Home_Page_Vendor> {
  Widget Tile(String imageSource, String title, String pageToRoute) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Image.asset(
          imageSource,
          height: 30,
          width: 30,
        ),
        title: Text(title),
        trailing: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, pageToRoute);
            },
            child: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black87,
            )),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Heading(String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Colors.black45,
          thickness: 1,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(name)),
        const Divider(
          color: Colors.black45,
          thickness: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xFF77DD77),
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/images/vendor.png"),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "Home",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Text(
                  "Karol Bagh,New Delhi",
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/setting_page");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading("ENGAGEMENT"),
            Tile("assets/icon/review.png", "Review", ""),
            Tile("assets/icon/picture.png", "Product", ""),
            Tile("assets/icon/activity-feed.png", "Message", ""),
            Heading("DEALS & DISCOUNT"),
            Tile("assets/icon/sale.png", "Promos", ""),
            Tile("assets/icon/events.png", "Events", ""),
            Tile("assets/icon/star.png", "Featured", ""),
            Heading("ANALYTICS"),
            Tile("assets/icon/analytics.png", "Data & Analytics", ""),
            Heading("Your Listings"),
            Tile("assets/icon/info.png", "Manage Your Info", ""),
          ],
        ),
      ),
    );
  }
}
