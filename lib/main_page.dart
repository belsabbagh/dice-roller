import 'dart:io';

import 'package:dice_roller/roller.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DiceRoller roller = DiceRoller();
  Image dieFace = Image.file(File("assets/images/dice-1.png"));
  Color thatPurple = const Color.fromARGB(255, 47, 5, 128);
  void _incrementCounter() {
    setState(() {
      dieFace = roller.rollImg();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            thatPurple, // Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have rolled this:',
            ),
            dieFace,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Roll',
        child: const Icon(Icons.loop),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
