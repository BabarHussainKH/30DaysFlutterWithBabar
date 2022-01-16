import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      title: 'Flutter Demo A',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'Flutter Demo A'),
    );
  }
}
