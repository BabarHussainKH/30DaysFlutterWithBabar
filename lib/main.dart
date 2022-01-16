import 'package:flutter/material.dart';
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
      ),
      initialRoute: '/Home',
      home:const Login(title: "Login Page"),
      routes: {
        "/Home":(context)=>const Home(title: "My Home Page")
      },
    );
  }
}
