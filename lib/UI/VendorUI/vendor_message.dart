import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Vendor_message_page extends StatefulWidget {
  const Vendor_message_page({Key? key}) : super(key: key);

  @override
  _Vendor_message_pageState createState() => _Vendor_message_pageState();
}

// ignore: camel_case_types
class _Vendor_message_pageState extends State<Vendor_message_page> {
  
  Widget messageUI(String imageURL){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/chat_page");
            },
            leading: Image.asset(imageURL),
            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Subham",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Hello, How are you?",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            trailing: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.keyboard_arrow_right)),
          ),
        ),
      ),
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
                  "Messages",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Text(
                  "All Messages",
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
          children: [
           messageUI("assets/images/image20.1.png"),
           messageUI("assets/images/image20.2.png"),
           messageUI("assets/images/image20.3.png"),
          ],
        ),
      ),
    );
  }
}
