// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/bloc/count_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: camel_case_types
class Product_Page extends StatefulWidget {
  const Product_Page({Key? key}) : super(key: key);

  @override
  _Product_PageState createState() => _Product_PageState();
}

// ignore: camel_case_types
class _Product_PageState extends State<Product_Page> {
  final _counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Image.asset(
                  "assets/images/image17.png",
                  fit: BoxFit.fill,
                )),
            ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/home_page");
                    },
                  )),
              trailing: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                              height: 25,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "2 HALLS LEFT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink),
                                ),
                              )),
                          trailing: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(100)),
                              child: IconButton(
                                icon: Icon(
                                  Icons.message_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/chat_page");
                                },
                              )),
                        ),
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tridal Hotel",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "5 Star Hall Booking",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        RatingBarIndicator(
                                          rating: 5,
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          itemCount: 5,
                                          itemSize: 20.0,
                                          direction: Axis.horizontal,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("5/5 (480 Ratings)")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green[200],
                                      ),
                                      child: Center(
                                        child: ListTile(
                                          leading: Image.asset(
                                            "assets/images/hand_rock.png",
                                          ),
                                          trailing: IconButton(
                                            icon: Icon(
                                              Icons.keyboard_arrow_right,
                                              color: Colors.green[800],
                                            ),
                                            onPressed: () {},
                                          ),
                                          horizontalTitleGap: 0,
                                          title: Text(
                                            "Book now to get 10% discount",
                                            style: TextStyle(
                                              color: Colors.green[800],
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Product Details",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Choosed by many for marriage, birthdays, celebrations and your every happy moments. Best services at affordable price. Book your first five star hall at discount.",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),

/*
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.green,
                                        ),
                                        child: IconButton(
                                            onPressed: () {
                                              _counter.eventSink
                                                  .add(ActionCounter.add);
                                            },
                                            icon: Icon(Icons.add,
                                                color: Colors.white))),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    StreamBuilder(
                                      stream: _counter.userStream,
                                      initialData: 1,
                                      builder: (context, snapshot) {
                                        return Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '${snapshot.data as int}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.green,
                                        ),
                                        child: IconButton(
                                            onPressed: () {
                                              _counter.eventSink
                                                  .add(ActionCounter.subs);
                                            },
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ))),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "BOOK",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
*/
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.green,
                      ),
                      child: IconButton(
                          onPressed: () {
                            _counter.eventSink.add(ActionCounter.add);
                          },
                          icon: Icon(Icons.add, color: Colors.white))),
                  SizedBox(
                    width: 5,
                  ),
                  StreamBuilder(
                    stream: _counter.userStream,
                    initialData: 1,
                    builder: (context, snapshot) {
                      return Align(
                        alignment: Alignment.center,
                        child: Text(
                          '${snapshot.data as int}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.green,
                      ),
                      child: IconButton(
                          onPressed: () {
                            _counter.eventSink.add(ActionCounter.subs);
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ))),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "BOOK",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
