import 'dart:convert';

import 'package:ecommerce/Logic/user_data.dart';
import 'package:ecommerce/Static/toast.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:string_validator/string_validator.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController otpController = TextEditingController();

  var emailAuth = EmailAuth(sessionName: "Ecommerce App");

  Future<bool> verifyNumberOTP() async {
    print('${UserData.username} ${otpController.text}');
    final response = await http.get(Uri.parse(
        'http://10.0.2.2:3000/verify?phone_number=${UserData.username}&number=${otpController.text}'));

    // ignore: unrelated_type_equality_checks
    return response.body == 'approved' ? true : false;
  }

  Future<bool> verifyEmailOTP() async {
    var res = emailAuth.validateOtp(
        recipientMail: '${UserData.username}', userOtp: otpController.text);
    if (res) return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authentication"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextField(
              controller: otpController,
              maxLength: 6,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
                letterSpacing: 20,
              ),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: '000000',
                hintStyle: TextStyle(color: Colors.black26),
                contentPadding: EdgeInsets.all(17.0),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  isEmail(UserData.username!)
                      ? await verifyEmailOTP()
                          ? Navigator.pushNamed(context, '/home_page')
                          : Toast.ShowToast("OTP Invalid")
                      : await verifyNumberOTP()
                          ? Navigator.pushNamed(context, '/home_page')
                          : Toast.ShowToast("OTP Invalid");
                },
                child: const Text("Verify")),
          ],
        ),
      ),
    );
  }
}
