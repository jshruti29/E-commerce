import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Setting_Page extends StatefulWidget {
  const Setting_Page({Key? key}) : super(key: key);

  @override
  _Setting_PageState createState() => _Setting_PageState();
}

// ignore: camel_case_types
class _Setting_PageState extends State<Setting_Page> {
  // ignore: non_constant_identifier_names
  Widget Tile(IconData icons, String title, String pageToRoute) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          icons,
          color: Colors.black87,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        titleSpacing: 15,
        title: const Text(
          "Setting",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            color: Colors.white,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/images/avatar.png",
                  height: 40.0,
                  width: 40.0,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "XXXXXXXXXXXXXXXX",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "+00000000000000000",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "");
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black87,
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Tile(Icons.account_circle, "Title", ""),
          Tile(Icons.shopping_cart, "Orders", ""),
          const SizedBox(
            height: 10,
          ),
          Tile(Icons.settings_display, "Appearance", ""),
          Tile(Icons.message, "Notification", ""),
          Tile(Icons.lock, "Privacy", ""),
          Tile(Icons.data_usage, "Data Usages", ""),
          const SizedBox(
            height: 10,
          ),
          Tile(Icons.help, "Help", ""),
          Tile(Icons.mail, "Invite your friend", ""),
        ]),
      ),
    );
  }
}
