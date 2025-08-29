import 'package:flutter/material.dart';

import 'package:timberland_app/pages/homePage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),

              child: Image.asset("lib/assets/images/brownlogo.png"),
            ),

            SizedBox(height: 30),
            Text(
              "Timberland",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF633D1F),
                fontSize: 50,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Step into Your Legacy",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
              child: Container(
                height: 80,
                width: 400,
                decoration: BoxDecoration(
                  color: Color(0xFF633D1F),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
