import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title), elevation: 10,),
        drawer: const Drawer(
         backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children:  [
            const SizedBox(height: 20),
            const Text(
              "Hello from baban",
              style: TextStyle(fontSize: 40),
            ),
            const Text(
              "Home Screen",
              style: TextStyle(color: Colors.orange, fontSize: 30),
            ),
            Image.asset("assets/images/babar1.jpg"),
          ],
        )));
  }
}
