import 'package:ecommerce/UI/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFE5E5E5),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text("Enter your email and password and\nstart selling or buying",
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                FlutterToggleTab(
                  width: 88,
                  height: 30,
                  borderRadius: 15,
                  selectedBackgroundColors: const [Colors.green],
                  unSelectedBackgroundColors: const [Colors.white],
                  selectedTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  unSelectedTextStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  labels: const ["Customer", "Vendor"],
                  selectedLabelIndex: (index) {
                    setState(() {
                      this.index = index;
                      print((MediaQuery
                          .of(context)
                          .size
                          .width));
                    });
                  },
                  selectedIndex: index,
                ),
                const SizedBox(
                  height: 25,
                ),
                const TextField(
                  //This will obscure text dynamically
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const TextField(
                  //This will obscure text dynamically
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Expanded(
                        child: Divider(
                          color: Colors.black,
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or continue With",
                            style: TextStyle(color: Colors.black87))),
                    Expanded(
                        child: Divider(
                          color: Colors.black,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icon/facebook.png",
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text("Continue With Facebook"),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icon/google.png",
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      const Text(
                        "Continue With Google",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account?',
                        style: const TextStyle(
                            fontSize: 15, color: Colors.black87),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign in',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                  );
                                },
                              style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
