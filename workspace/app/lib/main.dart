import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red,
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/restaurant.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Pode entrar",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                    Text(count.toString(),
                        style: TextStyle(fontSize: 60, color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: decrement,
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: Size(120, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24))),
                            child: Text("Saiu",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black))),
                        const SizedBox(
                          width: 60,
                        ),
                        TextButton(
                            onPressed: increment,
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: Size(120, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24))),
                            child: Text(
                              "Entrou",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ))
                      ],
                    ),
                  ],
                ))));
  }
}
/*home: Scaffold(
            appBar: AppBar(
      title: Text("Aula App 1"),
    ))
    )*/