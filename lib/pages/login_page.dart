import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/AppRoutes.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  "assets/images/login_image.png",
                  height: 300,
                ),
                const Text(
                  "Welcome to Crypto App",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text([false, "", null, 0].contains(name) ? "" : "Hello $name"),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter your name", labelText: "Name"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter your password",
                            labelText: "Password"),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: TextButton.styleFrom(
                            elevation: 5,
                            textStyle: TextStyle(
                                fontSize: 22,
                                fontFamily: GoogleFonts.adamina().fontFamily),
                            fixedSize: Size(150, 50),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return myDialog("Login Successful",
                                    "Welcome, Are you sure want to enter in Alien space");
                              },
                            );
                          },
                          child: const Text("Login")),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(const Duration(milliseconds: 600));
                          Navigator.pushNamed(context, AppRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                            duration: const Duration(milliseconds: 600),
                            alignment: Alignment.center,
                            // color: Colors.purple,
                            width: changeButton ? 50 : 150,
                            height: 50,
                            child: changeButton
                                ? Icon(Icons.done)
                                : const Text(
                                    "Register",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                            decoration: BoxDecoration(
                              shape: changeButton
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              color: Colors.orangeAccent,
                              // borderRadius: BorderRadius.circular(changeButton? 70:40)
                            )),
                      )
                    ],
                  ),
                )
              ]),
        ));
  }

  myDialog(String title, String content) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Text(content),
      actions: [
        TextButton(
          child: const Text("Continue",
              style: TextStyle(fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).pop(); // dismiss dialog
            Navigator.pushNamed(context, AppRoutes.homeRoute);
          },
        ),
        TextButton(
          child: const Text("Cancel",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
          onPressed: () {
            Navigator.of(context).pop();
            // dismiss dialog
          },
        )
      ],
    );
  }
}
