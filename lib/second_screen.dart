import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ostad Assignment - CounterApp"),
      ),
      body: Center(
        child: Container(
          child: Text("Congratulations! You reached 10!",
            style: TextStyle(fontSize: 24),),
        ),
      ),
    );
  }
}