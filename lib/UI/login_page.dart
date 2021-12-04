import 'package:ecommerce/Logic/user_data.dart';
import 'package:ecommerce/UI/signup_page.dart';
import 'package:ecommerce/bloc/password_visibility_bloc.dart';
import 'package:ecommerce/bloc/usertype_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordIcon = IconVisibility();
  final userTypeChoose = UserTypeChoose();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

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
                    "Login",
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
                  child: Text("Welcome back! We missed you!"),
                ),
                const SizedBox(height: 20),
                StreamBuilder(
                    initialData: 0,
                    stream: userTypeChoose.userStream,
                    builder: (context, snapshot) {
                      return FlutterToggleTab(
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
                            print(snapshot.data);
                          });
                          index == 0
                              ? userTypeChoose.eventSink
                                  .add(UserAction.customer)
                              : userTypeChoose.eventSink.add(UserAction.vendor);
                        },
                        selectedIndex: snapshot.data as int,
                      );
                    }),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: usernameController,
                  //This will obscure text dynamically
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.start,
                  decoration: const InputDecoration(
                    hintText: "Email or Phone",
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
                StreamBuilder(
                    stream: passwordIcon.userStream,
                    initialData: true,
                    builder: (context, snapshot) {
                      return TextField(
                          controller: passwordController,
                          obscureText: snapshot.data as bool,
                          //This will obscure text dynamically
                          style: const TextStyle(color: Colors.black),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              color: Colors.black54,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(snapshot.data as bool
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                snapshot.data as bool
                                    ? passwordIcon.eventSink
                                        .add(ContainVisibility.hide)
                                    : passwordIcon.eventSink
                                        .add(ContainVisibility.show);
                              },
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            filled: true,
                            fillColor: const Color.fromRGBO(255, 255, 255, 1),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                              borderSide: BorderSide(color: Colors.white70),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ));
                    }),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      print("Forget password is called");
                    },
                    child: const Text(
                      "Forget Password",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
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
                      "Login",
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
                    text: 'Don\'t have an account?',
                    style: const TextStyle(fontSize: 15, color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign Up',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/sign_up_page');
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
