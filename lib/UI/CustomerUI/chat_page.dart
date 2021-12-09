// ignore: camel_case_types
import 'package:ecommerce/Logic/user_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Chat_Page extends StatefulWidget {
  const Chat_Page({Key? key}) : super(key: key);

  @override
  _Chat_PageState createState() => _Chat_PageState();
}

// ignore: camel_case_types
class _Chat_PageState extends State<Chat_Page> {
  bool isDark = true;
  bool hasInternet = true;
  final message = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  double getWidth() {
    return MediaQuery.of(context).size.width * 0.3;
  }

  String? getTime() {
    DateTime now = DateTime.now();
    String time = now.hour.toString() + ":" + now.minute.toString();
    return time;
  }

  // ignore: non_constant_identifier_names
  Widget ChatUI(double left, double right, String message, bool isBot,
      Color bgcolor, Color textColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
          mainAxisAlignment:
              isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
          //this will determine if the message should be displayed left or right
          children: [
            isBot
                ? Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "assets/images/avatar.png",
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  )
                : Container(),
            Flexible(
              //Wrapping the container with flexible widget
              child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: EdgeInsets.only(
                      right: right, left: left, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                          child: Text(
                        message,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                        ),
                      )),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          getTime()!,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            !isBot
                ? Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "assets/images/avatar.png",
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  )
                : Container(),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Trival Hotel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.call,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      )),
                ],
              )),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: Container(
              color: const Color(0xFFFDF7F0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    reverse: true,
                    itemCount: Logic.data.length,
                    itemBuilder: (context, index) {
                      return Logic.data[index]["data"] == 1
                          ? ChatUI(getWidth(), 4, Logic.data[index]["message"],
                              false, Colors.green, Colors.white)
                          : ChatUI(4, getWidth(), Logic.data[index]["message"],
                              true, Colors.white, Colors.black);
                    }),
              ),
            )),
            const Divider(
              height: 0,
              color: Colors.white,
              thickness: 1,
            ),
            AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Colors.black26,
                ),
              ),
              title: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  border: Border.all(
                      color: Colors.white,
                      // Set border color
                      width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Center(
                  child: TextField(
                    controller: message,
                    decoration: const InputDecoration(
                      hintText: "Enter"
                          " your message",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                      isDense: true,
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                    // ignore: void_checks
                    onPressed: () {
                      setState(() {
                        // ignore: unnecessary_null_comparison
                        if (message.text.isEmpty) return;
                        Logic.data
                            .insert(0, {"data": 1, "message": message.text});

                        Logic.data.insert(0,
                            {"data": 0, "message": "No Internet Connection"});

                        message.clear();
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
