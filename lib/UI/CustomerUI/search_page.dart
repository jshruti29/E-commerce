import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Search_Page extends StatefulWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  _Search_PageState createState() => _Search_PageState();
}

// ignore: camel_case_types
class _Search_PageState extends State<Search_Page> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  horizontalTitleGap: 0,
                  leading: const Icon(
                    Icons.search,
                    color: Colors.green,
                    size: 30,
                  ),
                  title: TextField(
                    controller: searchController,
                    //This will obscure text dynamically
                    style: const TextStyle(color: Colors.black),
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      hintText: "Search food or restaurant",
                      hintStyle: TextStyle(
                          color: Colors.black54, fontStyle: FontStyle.italic),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      filled: true,
                      fillColor: Color.fromRGBO(255, 255, 255, 1),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.menu_book,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Filter",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
