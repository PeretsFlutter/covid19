import 'package:covid19/tools/icons.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboardstate createState() => _Dashboardstate();
}

class _Dashboardstate extends State<Dashboard> with TickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> children = [];
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onTapTaped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: height * 0.02,
        iconSize: height * 0.035,
        onTap: onTapTaped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
              child: Icon(MyIcons.globe_1),
            ),
            icon: Icon(MyIcons.globe_1),
            title: Text(
              'Світ',
              style: TextStyle(fontFamily: 'MyFont'),
            ),
          )
        ],
      ),
      body: Text('ghkdhkg'),
    );
  }
}
