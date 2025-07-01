import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const QuoteApp());

class QuoteApp extends StatefulWidget {
  const QuoteApp({super.key});

  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  List<String> quote = [
    "Believe in yourself!",
    "You can do it!",
    "Stay positive, work hard.",
    "Dream big!",
    "Never give up.",
    "Keep going, no matter what.",
    "You are stronger than you think.",
    "Progress, not perfection.",
    "Dream big, start small.",
    "Make it happen.",
    "Push past your limits.",
    "Stay focused and never quit.",
    "One day at a time.",
    "You’ve got this.",
  ];
  String currentQuote = "Press the button for Motivation!";

  void showNewQuote() {
    final random = Random();
    int index = random.nextInt(quote.length);
    setState(() {
      currentQuote = quote[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffc8b9ff),
        appBar: AppBar(
          title: Text("Motivational App",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 1.5,
                  color: Colors.white)),
          backgroundColor: Color(0xff4200b5),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Text(
                  currentQuote,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: showNewQuote,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4200b5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  'Inspire Me!',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
