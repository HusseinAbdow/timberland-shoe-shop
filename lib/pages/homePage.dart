import 'package:flutter/material.dart';
import 'package:timberland_app/components/bottomNav.dart';
import 'package:timberland_app/pages/cartPage.dart';
import 'package:timberland_app/pages/shopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  void navbarchange() {}

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedButton = 0;
  void NavigateButtonBar(index) {
    setState(() {
      _selectedButton = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    const shopPage(),

    //cart page
    const cartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => NavigateButtonBar(index),
      ),
      body: _pages[_selectedButton],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Color(0xFF633D1F), size: 30),

            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Color(0xFFF5EEE3),

        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset("lib/assets/images/brownlogo.png"),
                  Divider(color: const Color.fromARGB(255, 211, 209, 209)),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 35,
                      color: Color(0xFF633D1F),
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Color(0xFF633D1F)),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      size: 35,
                      color: Color(0xFF633D1F),
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Color(0xFF633D1F)),
                    ),
                  ),
                ],
              ),

              ListTile(
                leading: Icon(Icons.logout, size: 35, color: Color(0xFF633D1F)),
                title: Text('Home', style: TextStyle(color: Color(0xFF633D1F))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
