import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timberland_app/models/Cart.dart';
import 'package:timberland_app/pages/introPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5EEE3)),
        home: IntroPage(),
      ),
    );
  }
}
