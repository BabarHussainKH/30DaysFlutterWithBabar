import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 20),
              Image.asset("assets/images/login_image.png"),
              const Text(
                "Welcome to Crypto App",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter your email",
                          labelText: "Email type"),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password type"),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style:TextButton.styleFrom(
                        elevation: 5,
                        textStyle: TextStyle(fontSize: 22, fontFamily: GoogleFonts.adamina().fontFamily),
                        fixedSize:Size(150,50),
                      ),
                        onPressed: () {
                          // showDialog(
                          //   context: context,
                          // git  builder: (BuildContext context) {
                          //     return myDialog(
                          //         "Login Successful", "Welcome, Are you sure want to enter in Alien space");
                          //   },
                          // );
                        },
                        child: const Text("Login"))
                  ],
                ),
              )
            ]));
  }

  myDialog(String title, String content) {
    return AlertDialog(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      content: Text(content),
      actions: [
        TextButton(
          child: const Text("Continue",
              style: TextStyle(fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).pop(); // dismiss dialog
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
