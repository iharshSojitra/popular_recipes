import 'package:flutter/material.dart';
import 'package:popular_recipes/nav_screen.dart';

import 'common_items/common_btn.dart';
import 'common_items/common_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();

  final Email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Add your details to login",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommonTextField(
                    controller: Email,
                    onChanged: (p0) {
                      formkey.currentState!.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email must be entered..";
                      }
                    },
                    hintText: "Your Email ",
                    filled: true,
                    fillcolor: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CommonTextField(
                    controller: password,
                    onChanged: (p0) {
                      formkey.currentState!.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password must be entered..";
                      }
                    },
                    hintText: "Password",
                    filled: true,
                    obscure: true,
                    fillcolor: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CommonBtn(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Nav_Screen(),
                            ));
                      }
                    },
                    text: "Login",
                    textcolor: Colors.white,
                    color: Colors.tealAccent.shade400,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "or Login With",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CommonBtn(
                    onTap: () {},
                    text: "Login with Facebook",
                    textcolor: Colors.white,
                    icon2: Icons.facebook_outlined,
                    color: Color(0xff367FC0),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommonBtn(
                    onTap: () {},
                    text: "Login with Google",
                    icon2: Icons.g_mobiledata_sharp,
                    textcolor: Colors.white,
                    color: Color(0xffDD4B39),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account? ",
                          style: TextStyle(color: Colors.black54)),
                      Text("Sign Up",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xffDD4B39))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
