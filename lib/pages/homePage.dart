import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:fitness_app/pages/Diet.dart';
import 'package:fitness_app/pages/yoga.dart';
import 'package:fitness_app/pages/stepCounter.dart';

const TitleStyle =
    TextStyle(fontSize: 50, fontWeight: FontWeight.w400, color: Colors.white);

const ButtonStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white);

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF36d1dc), Color(0xFF5b86e5)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pedometer 🏃🏻‍♂️',
                    style: TitleStyle,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      '''👋🏻 Hello everyone now you can easily count your steps while walking and running.
By completing the target 🎯 you can get a exciting 'Rewards'🏆. Click on below button and let's get started''',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StepCounter())),
                    child: Text(
                      'Get Started...',
                      style: ButtonStyle,
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Made with ❤️ by Kartik More.",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF36d1dc), Color(0xFF5b86e5)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Yoga 🧘🏻‍♂️',
                    style: TitleStyle,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: Text(
                      "Now you can easily learn yoga by following given tutorials ✨. Click on below button and let's get started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Yoga())),
                    child: Text(
                      'Get Started...',
                      style: ButtonStyle,
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Made with ❤️ by Kartik More.",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF36d1dc), Color(0xFF5b86e5)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Diet 🍲',
                    style: TitleStyle,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: Text(
                      "Now you can easily plan 📅 your diet according to your needs. Click on below button and let's get started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Diet())),
                    child: Text(
                      'Get Started...',
                      style: ButtonStyle,
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Made with ❤️ by Kartik More.",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(title: Text('Pedometer'), icon: Icon(Icons.home)),
          BottomNavyBarItem(
              title: Text("Yoga's"), icon: Icon(Icons.fitness_center)),
          BottomNavyBarItem(
              title: Text('Diet'), icon: Icon(Icons.dinner_dining)),
        ],
      ),
    );
  }
}
