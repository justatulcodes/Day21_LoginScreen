import 'dart:ui';

import 'package:flutter/material.dart';

//https://pngtree.com/freebackground/fresh-and-simple-mobile-phone-app-login-page_518395.html

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const textFieldBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, style: BorderStyle.solid),
      borderRadius: BorderRadius.zero,
    );
  
    const textStyle = TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.3);

    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          color: Colors.black.withOpacity(0.2),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40, right: 20, left: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsetsDirectional.symmetric(
                        horizontal: 50, vertical: 10),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      style: textStyle,
                      decoration: InputDecoration(
                          hintText: "Email Address",
                          filled: true,
                          fillColor: Colors.transparent,
                          focusedBorder: textFieldBorder,
                          enabledBorder: textFieldBorder,
                          hintStyle: textStyle),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsetsDirectional.symmetric(
                        horizontal: 50, vertical: 10),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      style: textStyle,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          filled: true,
                          fillColor: Colors.transparent,
                          focusedBorder: textFieldBorder,
                          enabledBorder: textFieldBorder,
                          hintStyle: textStyle),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsetsDirectional.symmetric(
                        horizontal: 50, vertical: 10),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 20)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xFF2fad64)),
                      ),
                      child: const Text("Login", style: textStyle),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const Text(
                        "|",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
