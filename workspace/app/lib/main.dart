import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const Batata());
}

class Batata extends StatelessWidget {
  const Batata({Key? key}) : super(key: key);

  void decrement() {
    print("decrement");
  }

  void increment() {
    print("increment");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Pode entrar",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                Text("0", style: TextStyle(fontSize: 60, color: Colors.white)),
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
                            style:
                                TextStyle(fontSize: 16, color: Colors.black))),
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
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ))
                  ],
                ),
              ],
            )));
  }
}

/*home: Scaffold(
            appBar: AppBar(
      title: Text("Aula App 1"),
    ))
    )*/