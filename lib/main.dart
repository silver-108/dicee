import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple.shade300,
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: Text(
            "Dicee",
            style: GoogleFonts.comicNeue(
                fontSize: 45, color: Colors.white, fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.purple.shade500,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    "images/dice$leftDiceNumber.png",
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                        leftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset(
                      "images/dice$rightDiceNumber.png",
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
