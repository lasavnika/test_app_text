import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_app_text/screens/second_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? color;

  void generateColor() {
    setState(() {
      var rnd = Random();
      var r = rnd.nextInt(256);
      var g = rnd.nextInt(256);
      var b = rnd.nextInt(256);
      color = Color.fromRGBO(r, g, b, 0.5);
    });
  }

  @override
  void initState() {
    generateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateColor(),
      child: Scaffold(
       // backgroundColor: color,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: ()=>generateColor(),
                child: Text(
                  'Hey there!',
                  style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      color: color),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()),
                  );
                },
                icon: const Icon(Icons.arrow_forward, size: 35,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
