import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ostad Assignment - CounterApp", style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: const Text("Congratulations! You reached 10!",
          style: TextStyle(fontSize: 24),),
      ),
    );
  }
}