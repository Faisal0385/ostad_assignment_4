import 'package:flutter/material.dart';
import 'package:untitled/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterApp(),
    );
  }
}

///1. Create a Flutter application that consists of a stateful widget called CounterApp.
class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int initialValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ostad - CounterApp"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text("Counter Value:\n ${initialValue}", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            // Both buttons should be in a Row and have different sizes (responsive).
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Press the "Increment" button to increase the counter value by 1
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        initialValue++;

                        if (initialValue == 5) {
                          ///4 show a dialog box with the message
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Counter Alert!!"),
                                content: const Text("Counter value is 5!"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  )
                                ],
                              );
                            },
                          );
                        }

                        if (initialValue == 10) {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SecondScreen(),
                              ),
                            );
                          });
                        }

                        setState(() {});
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Press the "Decrement" button to decrease the counter value by 1.
                  Flexible(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        initialValue--;
                        if (initialValue == 5) {
                          ///4 show a dialog box with the message
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Counter Alert!!"),
                                content: const Text("Counter value is 5!"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  )
                                ],
                              );
                            },
                          );
                        }
                        setState(() {});
                      },
                      child: Icon(Icons.remove),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}