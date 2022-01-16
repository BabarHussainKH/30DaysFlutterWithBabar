import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        // darkTheme: ThemeData(brightness: Brightness.dark),
        title: 'Flutter Demo A',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily
    ),
    initialRoute: '/',
    // home:const Login(title: "Login Page"),
    routes: {
    "/": (context) => const Login(title: ""),
    "/Home": (context) => const Home(title: "My Home Page"),
    "/Login": (context) => const Login(title: "Login Page")
    },
    );
  }
}
