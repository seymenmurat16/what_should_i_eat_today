import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:
            AppBar(title: Text('What Should I Eat Today'), centerTitle: true),
        body: MealPage(),
      ),
    );
  }
}

class MealPage extends StatefulWidget {
  MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  int yemekNo = 1;

  int corbaNo = 1;

  int tatliNo = 1;

  List<String> corbaNames = [
    'Mercimek',
    'Tarhana',
    'Tavuk Suyu',
    'Dugun Corbasi',
    'Yogurtlu Corba',
  ];

  List<String> yemekNames = [
    'Karniyarik',
    'Manti',
    'Kuru Fasulye',
    'Icli Kofte',
    'Izgara Balik',
  ];

  List<String> tatliNames = [
    'Kadayif',
    'Baklava',
    'Sutlac',
    'Kazandibi',
    'Dondurma',
  ];

  void changeMeals() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () => changeMeals(),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                    ),
                    child: Image.asset('assets/images/corba_$corbaNo.jpg')),
              ),
            ),
            Text(
              corbaNames[corbaNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(width: 250, child: Divider()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () => changeMeals(),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                    ),
                    child: Image.asset('assets/images/yemek_$yemekNo.jpg')),
              ),
            ),
            Text(
              yemekNames[yemekNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(width: 250, child: Divider()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () => changeMeals(),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                    ),
                    child: Image.asset('assets/images/tatli_$tatliNo.jpg')),
              ),
            ),
            Text(
              tatliNames[tatliNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(width: 250, child: Divider()),
          ],
        ),
      ),
    );
  }
}
